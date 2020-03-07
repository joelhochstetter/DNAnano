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
	<36.919769, 52.838730, 49.693043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639683, 52.913307, 49.968704>,  <36.471630, 52.958054, 50.134102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639683, 52.913307, 49.968704>,  <36.919769, 52.838730, 49.693043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639683, 52.913307, 49.968704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709860, 0.284752, 0.644217,
		-0.076132, 0.940296, -0.331733,
		-0.700216, 0.186439, 0.689157,
		36.429619, 52.969238, 50.175453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035805, 52.857025, 48.947464>,  <36.919769, 52.838730, 49.693043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035805, 52.857025, 48.947464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231514, 53.117897, 48.715851>,  <37.348938, 53.274418, 48.576885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231514, 53.117897, 48.715851>,  <37.035805, 52.857025, 48.947464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231514, 53.117897, 48.715851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445582, 0.383802, 0.808797,
		0.749713, -0.653728, -0.102814,
		0.489273, 0.652178, -0.579031,
		37.378296, 53.313549, 48.542141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722065, 52.750774, 48.937996>,  <37.035805, 52.857025, 48.947464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722065, 52.750774, 48.937996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663784, 53.141365, 48.874420>,  <37.628815, 53.375721, 48.836277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663784, 53.141365, 48.874420>,  <37.722065, 52.750774, 48.937996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663784, 53.141365, 48.874420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545363, 0.213314, 0.810602,
		0.825438, 0.031431, -0.563616,
		-0.145705, 0.976478, -0.158936,
		37.620071, 53.434307, 48.826740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363274, 53.201069, 49.046707>,  <37.722065, 52.750774, 48.937996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363274, 53.201069, 49.046707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058018, 53.456547, 49.086060>,  <37.874863, 53.609833, 49.109669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058018, 53.456547, 49.086060>,  <38.363274, 53.201069, 49.046707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058018, 53.456547, 49.086060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513127, 0.506357, 0.693039,
		0.392829, 0.579367, -0.714156,
		-0.763142, 0.638698, 0.098377,
		37.829075, 53.648155, 49.115574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544895, 54.034744, 48.959282>,  <38.363274, 53.201069, 49.046707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544895, 54.034744, 48.959282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226685, 53.971630, 49.193283>,  <38.035759, 53.933762, 49.333683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226685, 53.971630, 49.193283>,  <38.544895, 54.034744, 48.959282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226685, 53.971630, 49.193283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481112, 0.422411, 0.768180,
		-0.368323, 0.892565, -0.260127,
		-0.795531, -0.157788, 0.585007,
		37.988026, 53.924294, 49.368786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114479, 54.481064, 49.085327>,  <38.544895, 54.034744, 48.959282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114479, 54.481064, 49.085327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392239, 54.231697, 49.229080>,  <39.558895, 54.082077, 49.315331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392239, 54.231697, 49.229080>,  <39.114479, 54.481064, 49.085327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392239, 54.231697, 49.229080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532695, 0.781114, 0.325725,
		-0.483783, -0.034741, 0.874498,
		0.694398, -0.623421, 0.359383,
		39.600559, 54.044670, 49.336895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388725, 54.928802, 49.649284>,  <39.114479, 54.481064, 49.085327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388725, 54.928802, 49.649284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646915, 54.631054, 49.580849>,  <39.801830, 54.452404, 49.539787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646915, 54.631054, 49.580849>,  <39.388725, 54.928802, 49.649284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646915, 54.631054, 49.580849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715886, 0.511555, 0.475205,
		-0.266208, -0.429214, 0.863081,
		0.645478, -0.744371, -0.171088,
		39.840557, 54.407742, 49.529522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794724, 54.566689, 50.277405>,  <39.388725, 54.928802, 49.649284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794724, 54.566689, 50.277405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032314, 54.544529, 49.956375>,  <40.174870, 54.531235, 49.763756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032314, 54.544529, 49.956375>,  <39.794724, 54.566689, 50.277405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032314, 54.544529, 49.956375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800730, 0.136988, 0.583152,
		0.077640, -0.989023, 0.125724,
		0.593973, -0.055395, -0.802575,
		40.210506, 54.527912, 49.715603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481499, 54.157925, 50.459732>,  <39.794724, 54.566689, 50.277405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481499, 54.157925, 50.459732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487038, 54.461754, 50.199623>,  <40.490360, 54.644051, 50.043560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487038, 54.461754, 50.199623>,  <40.481499, 54.157925, 50.459732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487038, 54.461754, 50.199623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492134, 0.560932, 0.665702,
		0.870409, -0.329238, -0.366047,
		0.013847, 0.759577, -0.650270,
		40.491192, 54.689629, 50.004543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055431, 54.586643, 50.601032>,  <40.481499, 54.157925, 50.459732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055431, 54.586643, 50.601032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803928, 54.830379, 50.407799>,  <40.653027, 54.976620, 50.291859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803928, 54.830379, 50.407799>,  <41.055431, 54.586643, 50.601032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803928, 54.830379, 50.407799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242272, 0.743834, 0.622908,
		0.738895, 0.274622, -0.615319,
		-0.628760, 0.609338, -0.483082,
		40.615299, 55.013180, 50.262875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733204, 54.649178, 50.621716>,  <41.055431, 54.586643, 50.601032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733204, 54.649178, 50.621716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747047, 54.362488, 50.343117>,  <41.755356, 54.190475, 50.175957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747047, 54.362488, 50.343117>,  <41.733204, 54.649178, 50.621716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747047, 54.362488, 50.343117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964834, -0.157743, 0.210269,
		-0.260573, -0.679282, 0.686060,
		0.034611, -0.716724, -0.696497,
		41.757431, 54.147472, 50.134167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167576, 54.176456, 50.873741>,  <41.733204, 54.649178, 50.621716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167576, 54.176456, 50.873741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148529, 54.081043, 50.485756>,  <42.137100, 54.023796, 50.252964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148529, 54.081043, 50.485756>,  <42.167576, 54.176456, 50.873741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148529, 54.081043, 50.485756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994178, -0.105287, -0.022908,
		-0.096660, -0.965409, 0.242161,
		-0.047612, -0.238537, -0.969965,
		42.134247, 54.009483, 50.194767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526714, 53.521664, 50.817993>,  <42.167576, 54.176456, 50.873741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526714, 53.521664, 50.817993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529709, 53.679531, 50.450478>,  <42.531506, 53.774250, 50.229969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529709, 53.679531, 50.450478>,  <42.526714, 53.521664, 50.817993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529709, 53.679531, 50.450478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934207, -0.330465, -0.134345,
		-0.356651, -0.857338, -0.371176,
		0.007482, 0.394670, -0.918792,
		42.531952, 53.797932, 50.174839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693882, 53.048416, 50.239197>,  <42.526714, 53.521664, 50.817993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693882, 53.048416, 50.239197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836964, 53.415951, 50.172516>,  <42.922813, 53.636471, 50.132507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836964, 53.415951, 50.172516>,  <42.693882, 53.048416, 50.239197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836964, 53.415951, 50.172516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810352, -0.394138, -0.433572,
		-0.464086, 0.020000, -0.885564,
		0.357706, 0.918834, -0.166707,
		42.944275, 53.691601, 50.122505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043430, 52.982063, 49.582645>,  <42.693882, 53.048416, 50.239197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043430, 52.982063, 49.582645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193649, 53.282688, 49.799576>,  <43.283779, 53.463062, 49.929733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193649, 53.282688, 49.799576>,  <43.043430, 52.982063, 49.582645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193649, 53.282688, 49.799576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924093, -0.258925, -0.281087,
		-0.070832, 0.606724, -0.791750,
		0.375546, 0.751561, 0.542330,
		43.306313, 53.508156, 49.962276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401474, 53.440979, 49.176476>,  <43.043430, 52.982063, 49.582645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401474, 53.440979, 49.176476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553951, 53.409760, 49.544952>,  <43.645439, 53.391029, 49.766041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553951, 53.409760, 49.544952>,  <43.401474, 53.440979, 49.176476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553951, 53.409760, 49.544952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914497, -0.114308, -0.388110,
		0.135591, 0.990375, 0.027799,
		0.381196, -0.078046, 0.921194,
		43.668312, 53.386345, 49.821312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954887, 53.932087, 49.188450>,  <43.401474, 53.440979, 49.176476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954887, 53.932087, 49.188450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023251, 53.643013, 49.456333>,  <44.064266, 53.469566, 49.617065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023251, 53.643013, 49.456333>,  <43.954887, 53.932087, 49.188450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023251, 53.643013, 49.456333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944072, -0.074422, -0.321230,
		0.281991, 0.687155, 0.669551,
		0.170906, -0.722689, 0.669711,
		44.074524, 53.426205, 49.657246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537621, 53.931850, 49.472549>,  <43.954887, 53.932087, 49.188450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537621, 53.931850, 49.472549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421848, 53.608269, 49.267872>,  <44.352386, 53.414120, 49.145065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421848, 53.608269, 49.267872>,  <44.537621, 53.931850, 49.472549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421848, 53.608269, 49.267872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609108, -0.256720, 0.750388,
		-0.738388, 0.528862, -0.418434,
		-0.289432, -0.808949, -0.511693,
		44.335018, 53.365585, 49.114365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632996, 53.970509, 50.198170>,  <44.537621, 53.931850, 49.472549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632996, 53.970509, 50.198170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407719, 53.688248, 50.370152>,  <44.272552, 53.518890, 50.473339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407719, 53.688248, 50.370152>,  <44.632996, 53.970509, 50.198170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407719, 53.688248, 50.370152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251131, -0.641881, -0.724515,
		0.787238, -0.300068, 0.538716,
		-0.563196, -0.705654, 0.429956,
		44.238758, 53.476551, 50.499138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042274, 53.436409, 50.457760>,  <44.632996, 53.970509, 50.198170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042274, 53.436409, 50.457760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683197, 53.289803, 50.359936>,  <44.467751, 53.201839, 50.301243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683197, 53.289803, 50.359936>,  <45.042274, 53.436409, 50.457760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683197, 53.289803, 50.359936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419275, -0.539936, -0.729848,
		0.135455, -0.757719, 0.638369,
		-0.897697, -0.366514, -0.244556,
		44.413887, 53.179848, 50.286568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250774, 54.060749, 50.673332>,  <45.042274, 53.436409, 50.457760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250774, 54.060749, 50.673332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500767, 53.749420, 50.649323>,  <45.650764, 53.562622, 50.634914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500767, 53.749420, 50.649323>,  <45.250774, 54.060749, 50.673332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500767, 53.749420, 50.649323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316289, -0.182172, -0.931007,
		0.713692, 0.600851, -0.360031,
		0.624984, -0.778326, -0.060028,
		45.688263, 53.515923, 50.631313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651661, 54.145248, 50.024010>,  <45.250774, 54.060749, 50.673332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651661, 54.145248, 50.024010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633797, 53.764790, 50.146210>,  <45.623077, 53.536514, 50.219532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633797, 53.764790, 50.146210>,  <45.651661, 54.145248, 50.024010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633797, 53.764790, 50.146210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265979, -0.283448, -0.921365,
		0.962944, -0.122408, -0.240324,
		-0.044663, -0.951143, 0.305502,
		45.620399, 53.479446, 50.237862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335129, 53.815826, 50.145332>,  <45.651661, 54.145248, 50.024010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335129, 53.815826, 50.145332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582649, 54.056610, 49.943447>,  <46.731159, 54.201080, 49.822315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582649, 54.056610, 49.943447>,  <46.335129, 53.815826, 50.145332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.582649, 54.056610, 49.943447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785315, 0.458354, -0.416162,
		-0.019172, 0.653882, 0.756353,
		0.618799, 0.601955, -0.504716,
		46.768288, 54.237198, 49.792034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.210537, 54.647232, 50.312435>,  <46.335129, 53.815826, 50.145332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.210537, 54.647232, 50.312435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367477, 54.555653, 49.956089>,  <46.461643, 54.500706, 49.742283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367477, 54.555653, 49.956089>,  <46.210537, 54.647232, 50.312435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367477, 54.555653, 49.956089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794960, 0.402810, -0.453633,
		0.462709, 0.886186, -0.023962,
		0.392352, -0.228949, -0.890866,
		46.485184, 54.486969, 49.688828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191566, 55.248096, 49.929340>,  <46.210537, 54.647232, 50.312435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191566, 55.248096, 49.929340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199963, 54.934986, 49.680561>,  <46.205002, 54.747120, 49.531292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199963, 54.934986, 49.680561>,  <46.191566, 55.248096, 49.929340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199963, 54.934986, 49.680561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841210, 0.322357, -0.434110,
		0.540300, 0.532303, -0.651712,
		0.020994, -0.782777, -0.621949,
		46.206261, 54.700153, 49.493977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262390, 55.547733, 49.209229>,  <46.191566, 55.248096, 49.929340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262390, 55.547733, 49.209229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086777, 55.189301, 49.235413>,  <45.981411, 54.974239, 49.251125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086777, 55.189301, 49.235413>,  <46.262390, 55.547733, 49.209229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086777, 55.189301, 49.235413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708610, 0.300542, -0.638393,
		0.552379, -0.326663, -0.766922,
		-0.439032, -0.896083, 0.065463,
		45.955067, 54.920475, 49.255051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584999, 55.246449, 48.999611>,  <46.262390, 55.547733, 49.209229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584999, 55.246449, 48.999611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910778, 55.265751, 48.768318>,  <46.106247, 55.277332, 48.629543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910778, 55.265751, 48.768318>,  <45.584999, 55.246449, 48.999611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910778, 55.265751, 48.768318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375333, -0.803779, 0.461589,
		-0.442496, -0.592968, -0.672745,
		0.814446, 0.048252, -0.578230,
		46.155113, 55.280228, 48.594849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740059, 54.532864, 48.684277>,  <45.584999, 55.246449, 48.999611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740059, 54.532864, 48.684277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069298, 54.759613, 48.697983>,  <46.266842, 54.895664, 48.706207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069298, 54.759613, 48.697983>,  <45.740059, 54.532864, 48.684277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069298, 54.759613, 48.697983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482713, -0.730132, 0.483628,
		0.299177, -0.381528, -0.874602,
		0.823092, 0.566872, 0.034270,
		46.316227, 54.929676, 48.708263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328194, 54.140881, 48.465553>,  <45.740059, 54.532864, 48.684277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328194, 54.140881, 48.465553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457516, 54.425587, 48.714989>,  <46.535110, 54.596409, 48.864651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457516, 54.425587, 48.714989>,  <46.328194, 54.140881, 48.465553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457516, 54.425587, 48.714989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522784, -0.683636, 0.509253,
		0.788777, 0.161358, -0.593123,
		0.323308, 0.711762, 0.623592,
		46.554508, 54.639114, 48.902065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158245, 54.179695, 48.600418>,  <46.328194, 54.140881, 48.465553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158245, 54.179695, 48.600418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940876, 54.280849, 48.920601>,  <46.810455, 54.341541, 49.112713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940876, 54.280849, 48.920601>,  <47.158245, 54.179695, 48.600418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.940876, 54.280849, 48.920601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521882, -0.645101, 0.558108,
		0.657515, 0.721036, 0.218589,
		-0.543427, 0.252887, 0.800459,
		46.777847, 54.356716, 49.160740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.522148, 54.822388, 48.432869>,  <47.158245, 54.179695, 48.600418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.522148, 54.822388, 48.432869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656849, 55.048515, 48.734070>,  <47.737671, 55.184193, 48.914791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656849, 55.048515, 48.734070>,  <47.522148, 54.822388, 48.432869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656849, 55.048515, 48.734070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296392, -0.695413, 0.654639,
		0.893729, -0.443633, -0.066624,
		0.336751, 0.565323, 0.753000,
		47.757874, 55.218113, 48.959969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.132973, 54.502277, 48.601734>,  <47.522148, 54.822388, 48.432869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.132973, 54.502277, 48.601734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869671, 54.668861, 48.852577>,  <47.711689, 54.768810, 49.003082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869671, 54.668861, 48.852577>,  <48.132973, 54.502277, 48.601734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.869671, 54.668861, 48.852577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352748, -0.906560, 0.231773,
		0.665034, -0.068645, 0.743652,
		-0.658254, 0.416458, 0.627108,
		47.672195, 54.793800, 49.040710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.479500, 53.934952, 48.891506>,  <48.132973, 54.502277, 48.601734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.479500, 53.934952, 48.891506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.577034, 54.233059, 49.139740>,  <48.635555, 54.411922, 49.288681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.577034, 54.233059, 49.139740>,  <48.479500, 53.934952, 48.891506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.577034, 54.233059, 49.139740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231829, -0.666140, 0.708882,
		0.941700, -0.028981, -0.335202,
		0.243836, 0.745264, 0.620586,
		48.650185, 54.456638, 49.325916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.750713, 53.594238, 49.476593>,  <48.479500, 53.934952, 48.891506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.750713, 53.594238, 49.476593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.828278, 53.980747, 49.544365>,  <48.874817, 54.212654, 49.585030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.828278, 53.980747, 49.544365>,  <48.750713, 53.594238, 49.476593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.828278, 53.980747, 49.544365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208290, -0.209324, 0.955405,
		0.958651, -0.149977, -0.241857,
		0.193915, 0.966276, 0.169430,
		48.886452, 54.270630, 49.595196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.437321, 53.611412, 49.698437>,  <48.750713, 53.594238, 49.476593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.437321, 53.611412, 49.698437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.229183, 53.935314, 49.806904>,  <49.104301, 54.129658, 49.871983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.229183, 53.935314, 49.806904>,  <49.437321, 53.611412, 49.698437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.229183, 53.935314, 49.806904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208642, -0.187364, 0.959877,
		0.828074, 0.556046, -0.071455,
		-0.520347, 0.809758, 0.271166,
		49.073078, 54.178242, 49.888252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.869823, 53.952324, 50.133617>,  <49.437321, 53.611412, 49.698437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.869823, 53.952324, 50.133617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.490204, 54.055744, 50.205673>,  <49.262432, 54.117798, 50.248905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.490204, 54.055744, 50.205673>,  <49.869823, 53.952324, 50.133617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.490204, 54.055744, 50.205673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094092, -0.313054, 0.945063,
		0.300740, 0.913864, 0.272778,
		-0.949053, 0.258552, 0.180135,
		49.205486, 54.133308, 50.259712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.352875, 53.278477, 50.108936>,  <49.869823, 53.952324, 50.133617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.352875, 53.278477, 50.108936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.445663, 53.400398, 49.739441>,  <50.501335, 53.473553, 49.517746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.445663, 53.400398, 49.739441>,  <50.352875, 53.278477, 50.108936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.445663, 53.400398, 49.739441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972527, -0.053609, 0.226532,
		0.019528, -0.950905, -0.308864,
		0.231968, 0.304803, -0.923735,
		50.515255, 53.491840, 49.462322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.574795, 52.724552, 49.695168>,  <50.352875, 53.278477, 50.108936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.574795, 52.724552, 49.695168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.724426, 53.090183, 49.632526>,  <50.814205, 53.309563, 49.594944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.724426, 53.090183, 49.632526>,  <50.574795, 52.724552, 49.695168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.724426, 53.090183, 49.632526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877370, -0.294102, 0.379112,
		0.300483, -0.279213, -0.912003,
		0.374075, 0.914081, -0.156601,
		50.836647, 53.364407, 49.585545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.262035, 52.432655, 49.375935>,  <50.574795, 52.724552, 49.695168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.262035, 52.432655, 49.375935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.236469, 52.798851, 49.534828>,  <51.221130, 53.018570, 49.630165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.236469, 52.798851, 49.534828>,  <51.262035, 52.432655, 49.375935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.236469, 52.798851, 49.534828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873533, -0.141150, 0.465850,
		0.482550, 0.376768, -0.790690,
		-0.063911, 0.915490, 0.397231,
		51.217297, 53.073498, 49.653999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.794937, 52.699795, 49.185299>,  <51.262035, 52.432655, 49.375935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.794937, 52.699795, 49.185299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.712566, 52.875568, 49.535042>,  <51.663143, 52.981033, 49.744888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.712566, 52.875568, 49.535042>,  <51.794937, 52.699795, 49.185299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.712566, 52.875568, 49.535042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953264, -0.111792, 0.280695,
		0.221092, 0.891292, -0.395874,
		-0.205926, 0.439432, 0.874353,
		51.650787, 53.007397, 49.797348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.040451, 53.362038, 49.295650>,  <51.794937, 52.699795, 49.185299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.040451, 53.362038, 49.295650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.993401, 53.192303, 49.654785>,  <51.965168, 53.090462, 49.870266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.993401, 53.192303, 49.654785>,  <52.040451, 53.362038, 49.295650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.993401, 53.192303, 49.654785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992491, -0.080774, 0.091857,
		0.033544, 0.901896, 0.430650,
		-0.117631, -0.424334, 0.897833,
		51.958111, 53.065002, 49.924133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.414246, 53.662701, 49.780216>,  <52.040451, 53.362038, 49.295650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.414246, 53.662701, 49.780216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.375839, 53.273922, 49.866096>,  <52.352795, 53.040653, 49.917625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.375839, 53.273922, 49.866096>,  <52.414246, 53.662701, 49.780216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.375839, 53.273922, 49.866096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982652, -0.058177, 0.176100,
		-0.158669, 0.227886, 0.960673,
		-0.096020, -0.971948, 0.214702,
		52.347034, 52.982338, 49.930508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.725800, 53.654709, 50.367435>,  <52.414246, 53.662701, 49.780216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.725800, 53.654709, 50.367435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.706360, 53.283936, 50.218613>,  <52.694695, 53.061470, 50.129318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.706360, 53.283936, 50.218613>,  <52.725800, 53.654709, 50.367435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.706360, 53.283936, 50.218613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779671, -0.268036, 0.565924,
		-0.624300, -0.262578, 0.735733,
		-0.048604, -0.926935, -0.372059,
		52.691780, 53.005856, 50.106995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.541138, 53.230865, 50.892982>,  <52.725800, 53.654709, 50.367435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.541138, 53.230865, 50.892982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.746716, 52.989697, 50.648903>,  <52.870064, 52.844997, 50.502457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.746716, 52.989697, 50.648903>,  <52.541138, 53.230865, 50.892982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.746716, 52.989697, 50.648903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628577, -0.219362, 0.746171,
		-0.583736, -0.767051, 0.266241,
		0.513948, -0.602920, -0.610201,
		52.900902, 52.808819, 50.465843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.545204, 52.524059, 51.202206>,  <52.541138, 53.230865, 50.892982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.545204, 52.524059, 51.202206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.890087, 52.566269, 51.004028>,  <53.097015, 52.591595, 50.885124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.890087, 52.566269, 51.004028>,  <52.545204, 52.524059, 51.202206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.890087, 52.566269, 51.004028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462565, -0.562676, 0.685150,
		-0.206469, -0.819915, -0.533957,
		0.862209, 0.105527, -0.495439,
		53.148750, 52.597927, 50.855396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.164097, 52.085918, 51.183800>,  <52.545204, 52.524059, 51.202206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.164097, 52.085918, 51.183800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.320534, 51.720955, 51.232071>,  <53.414394, 51.501976, 51.261032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.320534, 51.720955, 51.232071>,  <53.164097, 52.085918, 51.183800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.320534, 51.720955, 51.232071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897493, 0.407129, 0.169564,
		-0.203843, 0.041993, 0.978103,
		0.391093, -0.912405, 0.120679,
		53.437862, 51.447235, 51.268276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.570587, 52.003330, 51.859131>,  <53.164097, 52.085918, 51.183800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.570587, 52.003330, 51.859131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.715511, 51.744709, 51.590591>,  <53.802464, 51.589539, 51.429466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.715511, 51.744709, 51.590591>,  <53.570587, 52.003330, 51.859131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.715511, 51.744709, 51.590591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931966, 0.241166, 0.270700,
		-0.013114, -0.723749, 0.689938,
		0.362309, -0.646549, -0.671347,
		53.824203, 51.550743, 51.389187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.035767, 51.558731, 52.182514>,  <53.570587, 52.003330, 51.859131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.035767, 51.558731, 52.182514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.112465, 51.625801, 51.795708>,  <54.158485, 51.666042, 51.563625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.112465, 51.625801, 51.795708>,  <54.035767, 51.558731, 52.182514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.112465, 51.625801, 51.795708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882167, 0.402377, 0.244693,
		0.430133, -0.899988, -0.070758,
		0.191749, 0.167670, -0.967016,
		54.169991, 51.676102, 51.505604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.807140, 51.373585, 51.959518>,  <54.035767, 51.558731, 52.182514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.807140, 51.373585, 51.959518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.656715, 51.633244, 51.695038>,  <54.566460, 51.789040, 51.536350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.656715, 51.633244, 51.695038>,  <54.807140, 51.373585, 51.959518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.656715, 51.633244, 51.695038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855272, 0.517720, 0.021833,
		0.356489, -0.557295, -0.749892,
		-0.376066, 0.649144, -0.661200,
		54.543896, 51.827988, 51.496677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.027996, 50.934444, 52.471973>,  <54.807140, 51.373585, 51.959518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.027996, 50.934444, 52.471973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.151642, 51.045494, 52.835815>,  <55.225830, 51.112125, 53.054119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.151642, 51.045494, 52.835815>,  <55.027996, 50.934444, 52.471973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.151642, 51.045494, 52.835815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599917, 0.685216, -0.413011,
		-0.737936, 0.673351, 0.045255,
		0.309111, 0.277627, 0.909601,
		55.244373, 51.128780, 53.108696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.883644, 51.689335, 52.748276>,  <55.027996, 50.934444, 52.471973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.883644, 51.689335, 52.748276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.217278, 51.507416, 52.873146>,  <55.417458, 51.398262, 52.948067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.217278, 51.507416, 52.873146>,  <54.883644, 51.689335, 52.748276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.217278, 51.507416, 52.873146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542759, 0.777707, -0.317149,
		-0.098540, 0.433966, 0.895524,
		0.834088, -0.454802, 0.312174,
		55.467503, 51.370975, 52.966797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.363377, 52.033493, 53.135487>,  <54.883644, 51.689335, 52.748276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.363377, 52.033493, 53.135487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.578583, 51.777985, 52.915485>,  <55.707706, 51.624680, 52.783485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.578583, 51.777985, 52.915485>,  <55.363377, 52.033493, 53.135487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.578583, 51.777985, 52.915485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616226, 0.743266, -0.260424,
		0.575153, -0.198816, 0.793518,
		0.538018, -0.638771, -0.550007,
		55.739990, 51.586353, 52.750484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.140003, 52.154003, 53.052719>,  <55.363377, 52.033493, 53.135487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.140003, 52.154003, 53.052719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.104866, 51.860062, 52.783714>,  <56.083786, 51.683697, 52.622311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.104866, 51.860062, 52.783714>,  <56.140003, 52.154003, 53.052719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.104866, 51.860062, 52.783714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607864, 0.495313, -0.620618,
		0.789167, -0.463313, 0.403182,
		-0.087839, -0.734851, -0.672516,
		56.078514, 51.639606, 52.581959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.875141, 52.510826, 53.094570>,  <56.140003, 52.154003, 53.052719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.875141, 52.510826, 53.094570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.848831, 52.259777, 53.404861>,  <56.833046, 52.109146, 53.591038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.848831, 52.259777, 53.404861>,  <56.875141, 52.510826, 53.094570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.848831, 52.259777, 53.404861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994144, -0.108021, -0.003099,
		0.085740, 0.770985, 0.631055,
		-0.065778, -0.627625, 0.775732,
		56.829098, 52.071491, 53.637581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.425880, 52.238270, 53.524544>,  <56.875141, 52.510826, 53.094570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.425880, 52.238270, 53.524544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.431503, 51.843666, 53.459297>,  <57.434875, 51.606903, 53.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.431503, 51.843666, 53.459297>,  <57.425880, 52.238270, 53.524544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.431503, 51.843666, 53.459297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763399, 0.115946, -0.635436,
		0.645775, -0.115594, 0.754727,
		0.014055, -0.986506, -0.163119,
		57.435719, 51.547714, 53.410362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.636929, 51.972527, 54.273052>,  <57.425880, 52.238270, 53.524544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.636929, 51.972527, 54.273052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.892426, 52.077644, 53.983795>,  <58.045723, 52.140717, 53.810242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.892426, 52.077644, 53.983795>,  <57.636929, 51.972527, 54.273052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.892426, 52.077644, 53.983795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763516, -0.332686, 0.553501,
		-0.095121, -0.905681, -0.413153,
		0.638745, 0.262799, -0.723147,
		58.084049, 52.156483, 53.766850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.143612, 51.369625, 54.082623>,  <57.636929, 51.972527, 54.273052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.143612, 51.369625, 54.082623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.284904, 51.735050, 54.001991>,  <58.369678, 51.954304, 53.953613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.284904, 51.735050, 54.001991>,  <58.143612, 51.369625, 54.082623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.284904, 51.735050, 54.001991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816843, -0.196134, 0.542493,
		0.456064, -0.356284, -0.815517,
		0.353232, 0.913561, -0.201578,
		58.390873, 52.009117, 53.941517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.841473, 51.330193, 53.913239>,  <58.143612, 51.369625, 54.082623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.841473, 51.330193, 53.913239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.769890, 51.683430, 54.086735>,  <58.726940, 51.895370, 54.190830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.769890, 51.683430, 54.086735>,  <58.841473, 51.330193, 53.913239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.769890, 51.683430, 54.086735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844914, -0.087928, 0.527625,
		0.504078, 0.460892, -0.730400,
		-0.178956, 0.883089, 0.433737,
		58.716202, 51.948357, 54.216854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.444580, 51.852455, 53.907650>,  <58.841473, 51.330193, 53.913239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.444580, 51.852455, 53.907650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.250206, 51.973846, 54.235497>,  <59.133579, 52.046680, 54.432205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.250206, 51.973846, 54.235497>,  <59.444580, 51.852455, 53.907650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.250206, 51.973846, 54.235497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763427, -0.309157, 0.567098,
		0.425492, 0.901289, -0.081452,
		-0.485938, 0.303479, 0.819613,
		59.104424, 52.064892, 54.481380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.840973, 52.210545, 54.463871>,  <59.444580, 51.852455, 53.907650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.840973, 52.210545, 54.463871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.160698, 52.056931, 54.648750>,  <60.352531, 51.964764, 54.759678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.160698, 52.056931, 54.648750>,  <59.840973, 52.210545, 54.463871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.160698, 52.056931, 54.648750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569405, 0.729845, -0.378292,
		-0.192053, 0.565548, 0.802042,
		0.799308, -0.384034, 0.462195,
		60.400490, 51.941719, 54.787407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.114437, 52.686138, 55.048832>,  <59.840973, 52.210545, 54.463871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.114437, 52.686138, 55.048832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.387657, 52.443691, 54.885822>,  <60.551590, 52.298225, 54.788017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.387657, 52.443691, 54.885822>,  <60.114437, 52.686138, 55.048832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.387657, 52.443691, 54.885822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615017, 0.778267, -0.126706,
		0.393958, -0.164086, 0.904363,
		0.683045, -0.606115, -0.407520,
		60.592571, 52.261856, 54.763565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.749065, 52.712513, 55.315884>,  <60.114437, 52.686138, 55.048832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.749065, 52.712513, 55.315884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.829170, 52.573616, 54.949425>,  <60.877232, 52.490276, 54.729549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.829170, 52.573616, 54.949425>,  <60.749065, 52.712513, 55.315884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.829170, 52.573616, 54.949425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682235, 0.720546, -0.123975,
		0.703173, -0.600198, 0.381196,
		0.200259, -0.347241, -0.916144,
		60.889248, 52.469444, 54.674580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.456455, 52.766083, 55.298851>,  <60.749065, 52.712513, 55.315884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.456455, 52.766083, 55.298851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.314789, 52.758320, 54.924858>,  <61.229790, 52.753662, 54.700462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.314789, 52.758320, 54.924858>,  <61.456455, 52.766083, 55.298851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.314789, 52.758320, 54.924858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686350, 0.673695, -0.273970,
		0.635209, -0.738755, -0.225280,
		-0.354166, -0.019407, -0.934981,
		61.208538, 52.752499, 54.644363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.981876, 52.502636, 54.781963>,  <61.456455, 52.766083, 55.298851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.981876, 52.502636, 54.781963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.735405, 52.783741, 54.639725>,  <61.587521, 52.952404, 54.554382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.735405, 52.783741, 54.639725>,  <61.981876, 52.502636, 54.781963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.735405, 52.783741, 54.639725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787318, 0.561839, -0.253904,
		0.021353, -0.436416, -0.899492,
		-0.616177, 0.702765, -0.355594,
		61.550552, 52.994572, 54.533047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.560452, 52.096825, 54.526394>,  <61.981876, 52.502636, 54.781963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.560452, 52.096825, 54.526394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.499107, 52.046593, 54.918457>,  <62.462299, 52.016453, 55.153694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.499107, 52.046593, 54.918457>,  <62.560452, 52.096825, 54.526394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.499107, 52.046593, 54.918457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918312, -0.384429, 0.094430,
		0.364943, 0.914573, 0.174275,
		-0.153359, -0.125577, 0.980159,
		62.453098, 52.008919, 55.212505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.063259, 52.447311, 54.899952>,  <62.560452, 52.096825, 54.526394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.063259, 52.447311, 54.899952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.951424, 52.134106, 55.122200>,  <62.884323, 51.946182, 55.255550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.951424, 52.134106, 55.122200>,  <63.063259, 52.447311, 54.899952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.951424, 52.134106, 55.122200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928768, -0.367247, -0.050189,
		0.243348, 0.502009, 0.829921,
		-0.279591, -0.783018, 0.555619,
		62.867546, 51.899200, 55.288887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.640873, 52.507904, 55.388981>,  <63.063259, 52.447311, 54.899952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.640873, 52.507904, 55.388981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.459755, 52.176693, 55.256714>,  <63.351082, 51.977966, 55.177353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.459755, 52.176693, 55.256714>,  <63.640873, 52.507904, 55.388981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.459755, 52.176693, 55.256714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884620, -0.463567, -0.050524,
		-0.111449, -0.315388, 0.942396,
		-0.452798, -0.828031, -0.330663,
		63.323914, 51.928284, 55.157516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.078480, 53.048878, 55.730705>,  <63.640873, 52.507904, 55.388981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.078480, 53.048878, 55.730705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.896446, 53.405014, 55.736351>,  <62.787228, 53.618694, 55.739738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.896446, 53.405014, 55.736351>,  <63.078480, 53.048878, 55.730705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.896446, 53.405014, 55.736351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158726, 0.065514, 0.985147,
		0.876189, 0.450562, -0.171134,
		-0.455082, 0.890338, 0.014114,
		62.759922, 53.672115, 55.740585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.417873, 53.719025, 55.834778>,  <63.078480, 53.048878, 55.730705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.417873, 53.719025, 55.834778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.138290, 53.600426, 55.574455>,  <62.970543, 53.529266, 55.418262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.138290, 53.600426, 55.574455>,  <63.417873, 53.719025, 55.834778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.138290, 53.600426, 55.574455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229345, -0.769018, 0.596668,
		-0.677394, 0.566303, 0.469508,
		-0.698955, -0.296500, -0.650807,
		62.928604, 53.511475, 55.379211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.925743, 53.823444, 56.393520>,  <63.417873, 53.719025, 55.834778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.925743, 53.823444, 56.393520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.133682, 53.642357, 56.103745>,  <64.258446, 53.533707, 55.929878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.133682, 53.642357, 56.103745>,  <63.925743, 53.823444, 56.393520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.133682, 53.642357, 56.103745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853764, 0.246417, 0.458657,
		-0.029127, -0.856929, 0.514611,
		0.519845, -0.452716, -0.724438,
		64.289635, 53.506542, 55.886414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.458290, 53.283234, 56.621361>,  <63.925743, 53.823444, 56.393520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.458290, 53.283234, 56.621361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.520432, 53.516819, 56.302650>,  <64.557716, 53.656971, 56.111423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.520432, 53.516819, 56.302650>,  <64.458290, 53.283234, 56.621361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.520432, 53.516819, 56.302650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864551, 0.309841, 0.395664,
		0.477928, -0.750320, -0.456733,
		0.155359, 0.583968, -0.796772,
		64.567039, 53.692009, 56.063618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.092155, 53.103981, 56.164425>,  <64.458290, 53.283234, 56.621361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.092155, 53.103981, 56.164425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.998222, 53.492275, 56.184502>,  <64.941864, 53.725254, 56.196548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.998222, 53.492275, 56.184502>,  <65.092155, 53.103981, 56.164425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.998222, 53.492275, 56.184502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906734, 0.200164, 0.371170,
		0.350261, 0.132678, -0.927207,
		-0.234840, 0.970737, 0.050194,
		64.927773, 53.783497, 56.199558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.699471, 53.418026, 56.285435>,  <65.092155, 53.103981, 56.164425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.699471, 53.418026, 56.285435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.442757, 53.722164, 56.325424>,  <65.288727, 53.904648, 56.349419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.442757, 53.722164, 56.325424>,  <65.699471, 53.418026, 56.285435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.442757, 53.722164, 56.325424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692629, 0.518733, 0.501181,
		0.329211, 0.390891, -0.859549,
		-0.641783, 0.760343, 0.099970,
		65.250221, 53.950268, 56.355415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.091171, 54.029636, 56.176365>,  <65.699471, 53.418026, 56.285435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.091171, 54.029636, 56.176365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.772285, 54.097134, 56.408218>,  <65.580956, 54.137630, 56.547333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.772285, 54.097134, 56.408218>,  <66.091171, 54.029636, 56.176365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.772285, 54.097134, 56.408218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544509, 0.615604, 0.569686,
		-0.260697, 0.769778, -0.582649,
		-0.797212, 0.168742, 0.579637,
		65.533119, 54.147755, 56.582108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.926079, 54.792938, 56.173141>,  <66.091171, 54.029636, 56.176365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.926079, 54.792938, 56.173141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.776978, 54.600796, 56.490707>,  <65.687515, 54.485508, 56.681248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.776978, 54.600796, 56.490707>,  <65.926079, 54.792938, 56.173141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.776978, 54.600796, 56.490707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578469, 0.548688, 0.603586,
		-0.725550, 0.684250, 0.073343,
		-0.372762, -0.480358, 0.793918,
		65.665146, 54.456688, 56.728882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.682442, 55.472271, 56.418079>,  <65.926079, 54.792938, 56.173141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.682442, 55.472271, 56.418079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.614845, 55.850887, 56.527985>,  <65.574287, 56.078056, 56.593929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.614845, 55.850887, 56.527985>,  <65.682442, 55.472271, 56.418079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.614845, 55.850887, 56.527985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211208, 0.307080, -0.927951,
		-0.962721, -0.098787, -0.251813,
		-0.168996, 0.946543, 0.274767,
		65.564148, 56.134850, 56.610416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.357330, 55.815773, 55.853786>,  <65.682442, 55.472271, 56.418079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.357330, 55.815773, 55.853786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.559227, 56.096134, 56.055367>,  <65.680367, 56.264351, 56.176315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.559227, 56.096134, 56.055367>,  <65.357330, 55.815773, 55.853786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.559227, 56.096134, 56.055367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170122, 0.491565, -0.854062,
		-0.846339, 0.516818, 0.128877,
		0.504746, 0.700902, 0.503952,
		65.710648, 56.306404, 56.206551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.093460, 56.460014, 55.718014>,  <65.357330, 55.815773, 55.853786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.093460, 56.460014, 55.718014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.429039, 56.588799, 55.893524>,  <65.630386, 56.666069, 55.998829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.429039, 56.588799, 55.893524>,  <65.093460, 56.460014, 55.718014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.429039, 56.588799, 55.893524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179569, 0.597325, -0.781638,
		-0.513747, 0.734537, 0.443305,
		0.838939, 0.321961, 0.438774,
		65.680717, 56.685387, 56.025158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.983711, 57.164665, 55.629673>,  <65.093460, 56.460014, 55.718014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.983711, 57.164665, 55.629673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.365189, 57.054214, 55.677391>,  <65.594070, 56.987946, 55.706024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.365189, 57.054214, 55.677391>,  <64.983711, 57.164665, 55.629673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.365189, 57.054214, 55.677391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269449, 0.607954, -0.746853,
		0.133698, 0.744410, 0.654201,
		0.953689, -0.276126, 0.119298,
		65.651299, 56.971378, 55.713181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.504494, 57.737564, 55.878132>,  <64.983711, 57.164665, 55.629673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.504494, 57.737564, 55.878132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.692978, 57.477634, 55.639572>,  <65.806068, 57.321674, 55.496437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.692978, 57.477634, 55.639572>,  <65.504494, 57.737564, 55.878132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.692978, 57.477634, 55.639572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434774, 0.759440, -0.483966,
		0.767420, -0.031248, 0.640383,
		0.471209, -0.649827, -0.596395,
		65.834343, 57.282688, 55.460655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.048012, 57.645248, 56.315102>,  <65.504494, 57.737564, 55.878132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.048012, 57.645248, 56.315102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.088394, 57.270103, 56.182304>,  <66.112625, 57.045017, 56.102627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.088394, 57.270103, 56.182304>,  <66.048012, 57.645248, 56.315102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.088394, 57.270103, 56.182304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555899, -0.329917, 0.762975,
		-0.825097, 0.107530, -0.554664,
		0.100950, -0.937865, -0.331990,
		66.118683, 56.988743, 56.082706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.226837, 57.359543, 56.960388>,  <66.048012, 57.645248, 56.315102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.226837, 57.359543, 56.960388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.047462, 57.077686, 57.180344>,  <65.939835, 56.908573, 57.312317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.047462, 57.077686, 57.180344>,  <66.226837, 57.359543, 56.960388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.047462, 57.077686, 57.180344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599108, -0.219592, -0.769967,
		0.663305, -0.674726, -0.323685,
		-0.448438, -0.704645, 0.549890,
		65.912933, 56.866291, 57.345310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.791672, 56.892590, 57.197395>,  <66.226837, 57.359543, 56.960388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.791672, 56.892590, 57.197395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.884491, 56.748932, 57.558983>,  <66.940186, 56.662739, 57.775936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.884491, 56.748932, 57.558983>,  <66.791672, 56.892590, 57.197395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.884491, 56.748932, 57.558983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943598, 0.308757, -0.119554,
		-0.236170, 0.880729, 0.410536,
		0.232051, -0.359145, 0.903973,
		66.954109, 56.641190, 57.830173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.185410, 57.409225, 57.454754>,  <66.791672, 56.892590, 57.197395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.185410, 57.409225, 57.454754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.280655, 57.063637, 57.632233>,  <67.337799, 56.856285, 57.738720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.280655, 57.063637, 57.632233>,  <67.185410, 57.409225, 57.454754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.280655, 57.063637, 57.632233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967483, 0.170843, -0.186521,
		0.085346, 0.473677, 0.876553,
		0.238104, -0.863969, 0.443694,
		67.352089, 56.804447, 57.765339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.814522, 57.624405, 57.851883>,  <67.185410, 57.409225, 57.454754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.814522, 57.624405, 57.851883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.778610, 57.240471, 57.745560>,  <67.757065, 57.010109, 57.681767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.778610, 57.240471, 57.745560>,  <67.814522, 57.624405, 57.851883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.778610, 57.240471, 57.745560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853034, 0.063648, -0.517960,
		0.514075, -0.273243, 0.813059,
		-0.089780, -0.959837, -0.265805,
		67.751678, 56.952518, 57.665817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.466690, 57.175846, 58.023808>,  <67.814522, 57.624405, 57.851883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.466690, 57.175846, 58.023808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.265503, 57.030148, 57.710289>,  <68.144791, 56.942730, 57.522179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.265503, 57.030148, 57.710289>,  <68.466690, 57.175846, 58.023808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.265503, 57.030148, 57.710289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831206, 0.044694, -0.554165,
		0.236882, -0.930230, 0.280282,
		-0.502974, -0.364244, -0.783800,
		68.114609, 56.920876, 57.475147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.801384, 56.580677, 57.578896>,  <68.466690, 57.175846, 58.023808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.801384, 56.580677, 57.578896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.867310, 56.325455, 57.879753>,  <68.906868, 56.172321, 58.060268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.867310, 56.325455, 57.879753>,  <68.801384, 56.580677, 57.578896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.867310, 56.325455, 57.879753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953759, 0.297433, 0.043327,
		-0.251358, 0.710224, 0.657572,
		0.164812, -0.638056, 0.752145,
		68.916756, 56.134037, 58.105396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.257889, 56.982773, 58.042377>,  <68.801384, 56.580677, 57.578896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.257889, 56.982773, 58.042377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.337555, 56.598907, 58.121750>,  <69.385353, 56.368587, 58.169373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.337555, 56.598907, 58.121750>,  <69.257889, 56.982773, 58.042377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.337555, 56.598907, 58.121750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973438, 0.217079, 0.072763,
		-0.112904, 0.178670, 0.977410,
		0.199174, -0.959663, 0.198433,
		69.397308, 56.311008, 58.181278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.693733, 56.979576, 58.698132>,  <69.257889, 56.982773, 58.042377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.693733, 56.979576, 58.698132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.735695, 56.680897, 58.435394>,  <69.760872, 56.501690, 58.277752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.735695, 56.680897, 58.435394>,  <69.693733, 56.979576, 58.698132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.735695, 56.680897, 58.435394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954710, 0.260535, -0.143701,
		0.278432, -0.612021, 0.740207,
		0.104902, -0.746694, -0.656843,
		69.767166, 56.456890, 58.238342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.985458, 56.362225, 58.770374>,  <69.693733, 56.979576, 58.698132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.985458, 56.362225, 58.770374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.080231, 56.432480, 58.388168>,  <70.137093, 56.474632, 58.158844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.080231, 56.432480, 58.388168>,  <69.985458, 56.362225, 58.770374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.080231, 56.432480, 58.388168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951378, 0.157312, 0.264826,
		0.196827, -0.971805, -0.129824,
		0.236937, 0.175637, -0.955517,
		70.151314, 56.485172, 58.101513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.538460, 55.895321, 58.598137>,  <69.985458, 56.362225, 58.770374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.538460, 55.895321, 58.598137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.531944, 56.255291, 58.423843>,  <70.528038, 56.471275, 58.319267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.531944, 56.255291, 58.423843>,  <70.538460, 55.895321, 58.598137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.531944, 56.255291, 58.423843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941049, 0.161061, 0.297467,
		0.337878, -0.405199, -0.849501,
		-0.016288, 0.899929, -0.435732,
		70.527061, 56.525269, 58.293125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.258492, 56.021950, 58.359077>,  <70.538460, 55.895321, 58.598137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.258492, 56.021950, 58.359077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.104279, 56.386238, 58.418358>,  <71.011749, 56.604809, 58.453926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.104279, 56.386238, 58.418358>,  <71.258492, 56.021950, 58.359077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.104279, 56.386238, 58.418358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863261, 0.299298, 0.406450,
		0.325807, 0.284630, -0.901574,
		-0.385527, 0.910718, 0.148196,
		70.988617, 56.659454, 58.462818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.588554, 56.566589, 57.941429>,  <71.258492, 56.021950, 58.359077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.588554, 56.566589, 57.941429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.447166, 56.693489, 58.293434>,  <71.362335, 56.769630, 58.504635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.447166, 56.693489, 58.293434>,  <71.588554, 56.566589, 57.941429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.447166, 56.693489, 58.293434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933044, 0.186970, 0.307362,
		-0.067026, 0.929729, -0.362093,
		-0.353464, 0.317248, 0.880010,
		71.341125, 56.788662, 58.557438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.202003, 56.723152, 58.188057>,  <71.588554, 56.566589, 57.941429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.202003, 56.723152, 58.188057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.936607, 56.817902, 58.471939>,  <71.777374, 56.874752, 58.642269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.936607, 56.817902, 58.471939>,  <72.202003, 56.723152, 58.188057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.936607, 56.817902, 58.471939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747956, 0.233682, 0.621253,
		-0.018683, 0.943017, -0.332219,
		-0.663486, 0.236878, 0.709701,
		71.737564, 56.888966, 58.684849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.266678, 57.457039, 58.425720>,  <72.202003, 56.723152, 58.188057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.266678, 57.457039, 58.425720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.136551, 57.195438, 58.698906>,  <72.058472, 57.038479, 58.862820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.136551, 57.195438, 58.698906>,  <72.266678, 57.457039, 58.425720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.136551, 57.195438, 58.698906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771256, 0.234368, 0.591807,
		-0.547109, 0.719273, 0.428157,
		-0.325324, -0.654002, 0.682969,
		72.038956, 56.999237, 58.903797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.167793, 57.783661, 59.155445>,  <72.266678, 57.457039, 58.425720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.167793, 57.783661, 59.155445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.259262, 57.394398, 59.165886>,  <72.314140, 57.160839, 59.172150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.259262, 57.394398, 59.165886>,  <72.167793, 57.783661, 59.155445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.259262, 57.394398, 59.165886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752108, 0.193624, 0.629955,
		-0.618097, -0.124419, 0.776193,
		0.228668, -0.973155, 0.026101,
		72.327866, 57.102451, 59.173717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.232224, 57.524963, 59.810200>,  <72.167793, 57.783661, 59.155445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.232224, 57.524963, 59.810200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.500725, 57.301456, 59.615387>,  <72.661827, 57.167355, 59.498501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.500725, 57.301456, 59.615387>,  <72.232224, 57.524963, 59.810200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.500725, 57.301456, 59.615387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653477, 0.136008, 0.744627,
		-0.349832, -0.818097, 0.456436,
		0.671257, -0.558765, -0.487028,
		72.702103, 57.133827, 59.469280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.433128, 56.791115, 60.031799>,  <72.232224, 57.524963, 59.810200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.433128, 56.791115, 60.031799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.709114, 57.031406, 59.870270>,  <72.874702, 57.175583, 59.773354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.709114, 57.031406, 59.870270>,  <72.433128, 56.791115, 60.031799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.709114, 57.031406, 59.870270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431818, 0.106139, 0.895694,
		0.580931, -0.792375, -0.186174,
		0.689965, 0.600730, -0.403821,
		72.916107, 57.211624, 59.749123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.157677, 56.523922, 60.026840>,  <72.433128, 56.791115, 60.031799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.157677, 56.523922, 60.026840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.136017, 56.920742, 60.072273>,  <73.123016, 57.158833, 60.099533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.136017, 56.920742, 60.072273>,  <73.157677, 56.523922, 60.026840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.136017, 56.920742, 60.072273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426697, -0.079849, 0.900862,
		0.902771, 0.097255, -0.418981,
		-0.054159, 0.992051, 0.113584,
		73.119766, 57.218357, 60.106350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.829277, 56.853378, 60.122871>,  <73.157677, 56.523922, 60.026840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.829277, 56.853378, 60.122871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.575172, 57.092567, 60.318367>,  <73.422707, 57.236080, 60.435665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.575172, 57.092567, 60.318367>,  <73.829277, 56.853378, 60.122871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.575172, 57.092567, 60.318367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602256, -0.012584, 0.798204,
		0.483456, 0.801416, -0.352140,
		-0.635262, 0.597975, 0.488741,
		73.384590, 57.271961, 60.464989>
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
