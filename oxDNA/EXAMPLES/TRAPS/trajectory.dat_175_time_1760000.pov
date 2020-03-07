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
	<35.678932, 53.145260, 49.877724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860104, 52.836159, 50.055580>,  <35.968807, 52.650696, 50.162292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860104, 52.836159, 50.055580>,  <35.678932, 53.145260, 49.877724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860104, 52.836159, 50.055580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825359, 0.174865, -0.536846,
		0.337099, 0.610141, 0.717002,
		0.452931, -0.772755, 0.444639,
		35.995983, 52.604332, 50.188972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351364, 53.360569, 50.207882>,  <35.678932, 53.145260, 49.877724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351364, 53.360569, 50.207882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350273, 52.987709, 50.063057>,  <36.349617, 52.763992, 49.976162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350273, 52.987709, 50.063057>,  <36.351364, 53.360569, 50.207882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350273, 52.987709, 50.063057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828647, 0.200560, -0.522608,
		0.559765, -0.301447, 0.771876,
		-0.002732, -0.932151, -0.362060,
		36.349453, 52.708065, 49.954437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986950, 53.111725, 50.259575>,  <36.351364, 53.360569, 50.207882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986950, 53.111725, 50.259575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825859, 52.896637, 49.963287>,  <36.729206, 52.767586, 49.785515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825859, 52.896637, 49.963287>,  <36.986950, 53.111725, 50.259575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825859, 52.896637, 49.963287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779542, 0.222634, -0.585447,
		0.479717, -0.813198, 0.329517,
		-0.402722, -0.537721, -0.740723,
		36.705044, 52.735321, 49.741070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504810, 52.539471, 49.941704>,  <36.986950, 53.111725, 50.259575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504810, 52.539471, 49.941704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229183, 52.662830, 49.679382>,  <37.063805, 52.736847, 49.521992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229183, 52.662830, 49.679382>,  <37.504810, 52.539471, 49.941704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229183, 52.662830, 49.679382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722868, 0.228302, -0.652181,
		-0.051409, -0.923456, -0.380245,
		-0.689071, 0.308395, -0.655800,
		37.022461, 52.755348, 49.482643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665741, 52.329239, 49.216129>,  <37.504810, 52.539471, 49.941704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665741, 52.329239, 49.216129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420883, 52.637238, 49.144142>,  <37.273968, 52.822037, 49.100948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420883, 52.637238, 49.144142>,  <37.665741, 52.329239, 49.216129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420883, 52.637238, 49.144142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546715, 0.247687, -0.799847,
		-0.571301, -0.588014, -0.572587,
		-0.612143, 0.769994, -0.179972,
		37.237240, 52.868237, 49.090149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407349, 52.486298, 49.290596>,  <37.665741, 52.329239, 49.216129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407349, 52.486298, 49.290596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553341, 52.856857, 49.327633>,  <38.640938, 53.079193, 49.349857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553341, 52.856857, 49.327633>,  <38.407349, 52.486298, 49.290596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553341, 52.856857, 49.327633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018578, -0.092190, 0.995568,
		0.930829, -0.365084, -0.016437,
		0.364981, 0.926399, 0.092595,
		38.662834, 53.134777, 49.355412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042618, 52.451344, 49.727425>,  <38.407349, 52.486298, 49.290596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042618, 52.451344, 49.727425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877319, 52.814434, 49.756424>,  <38.778141, 53.032288, 49.773823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877319, 52.814434, 49.756424>,  <39.042618, 52.451344, 49.727425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877319, 52.814434, 49.756424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115405, -0.131180, 0.984618,
		0.903276, 0.398524, 0.158967,
		-0.413247, 0.907728, 0.072500,
		38.753345, 53.086754, 49.778175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388538, 52.696159, 50.332466>,  <39.042618, 52.451344, 49.727425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388538, 52.696159, 50.332466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028618, 52.857735, 50.266510>,  <38.812664, 52.954681, 50.226936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028618, 52.857735, 50.266510>,  <39.388538, 52.696159, 50.332466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028618, 52.857735, 50.266510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263530, -0.201973, 0.943270,
		0.347720, 0.892210, 0.288186,
		-0.899801, 0.403940, -0.164894,
		38.758678, 52.978916, 50.217041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903736, 52.369408, 50.969627>,  <39.388538, 52.696159, 50.332466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903736, 52.369408, 50.969627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100471, 52.152657, 51.242233>,  <40.218513, 52.022606, 51.405796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100471, 52.152657, 51.242233>,  <39.903736, 52.369408, 50.969627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100471, 52.152657, 51.242233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572511, -0.791000, -0.215758,
		0.655994, -0.284059, -0.699273,
		0.491837, -0.541877, 0.681518,
		40.248024, 51.990093, 51.446690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037949, 51.755547, 50.515594>,  <39.903736, 52.369408, 50.969627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037949, 51.755547, 50.515594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295685, 52.060616, 50.493156>,  <40.450329, 52.243656, 50.479694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295685, 52.060616, 50.493156>,  <40.037949, 51.755547, 50.515594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295685, 52.060616, 50.493156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727172, -0.588334, 0.353672,
		0.236734, -0.268678, -0.933686,
		0.644343, 0.762676, -0.056097,
		40.488987, 52.289417, 50.476326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825600, 51.880058, 50.779774>,  <40.037949, 51.755547, 50.515594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825600, 51.880058, 50.779774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002182, 51.652000, 51.056915>,  <41.108131, 51.515167, 51.223202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002182, 51.652000, 51.056915>,  <40.825600, 51.880058, 50.779774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002182, 51.652000, 51.056915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893557, 0.349638, -0.281620,
		-0.081685, 0.743431, 0.663806,
		0.441456, -0.570144, 0.692858,
		41.134621, 51.480957, 51.264774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145237, 52.189003, 51.469913>,  <40.825600, 51.880058, 50.779774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145237, 52.189003, 51.469913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338921, 51.863968, 51.340149>,  <41.455132, 51.668945, 51.262291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338921, 51.863968, 51.340149>,  <41.145237, 52.189003, 51.469913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338921, 51.863968, 51.340149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806924, 0.558072, -0.193465,
		0.338252, -0.168098, 0.925920,
		0.484209, -0.812588, -0.324412,
		41.484184, 51.620193, 51.242825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787262, 52.372330, 51.865364>,  <41.145237, 52.189003, 51.469913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787262, 52.372330, 51.865364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004955, 52.694992, 51.957554>,  <42.135571, 52.888588, 52.012867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004955, 52.694992, 51.957554>,  <41.787262, 52.372330, 51.865364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004955, 52.694992, 51.957554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032372, -0.294708, 0.955039,
		0.838310, -0.512301, -0.186502,
		0.544232, 0.806656, 0.230472,
		42.168224, 52.936989, 52.026695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453228, 52.272152, 52.255558>,  <41.787262, 52.372330, 51.865364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453228, 52.272152, 52.255558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276367, 52.611954, 52.370686>,  <42.170250, 52.815834, 52.439762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276367, 52.611954, 52.370686>,  <42.453228, 52.272152, 52.255558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276367, 52.611954, 52.370686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264923, -0.182884, 0.946768,
		0.856924, 0.494864, -0.144192,
		-0.442151, 0.849508, 0.287818,
		42.143723, 52.866806, 52.457031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161037, 52.290730, 52.615623>,  <42.453228, 52.272152, 52.255558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161037, 52.290730, 52.615623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368294, 52.578117, 52.801239>,  <43.492645, 52.750549, 52.912609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368294, 52.578117, 52.801239>,  <43.161037, 52.290730, 52.615623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368294, 52.578117, 52.801239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738370, 0.649574, -0.181282,
		-0.431673, -0.248703, 0.867067,
		0.518139, 0.718471, 0.464038,
		43.523735, 52.793659, 52.940449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775650, 52.658775, 53.187130>,  <43.161037, 52.290730, 52.615623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775650, 52.658775, 53.187130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034504, 52.917614, 53.025894>,  <43.189816, 53.072918, 52.929153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034504, 52.917614, 53.025894>,  <42.775650, 52.658775, 53.187130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034504, 52.917614, 53.025894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731528, 0.675934, -0.089332,
		0.214656, 0.352682, 0.910790,
		0.647140, 0.647093, -0.403090,
		43.228645, 53.111740, 52.904968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792812, 53.279640, 53.546425>,  <42.775650, 52.658775, 53.187130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792812, 53.279640, 53.546425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842308, 53.332966, 53.153099>,  <42.872005, 53.364960, 52.917103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842308, 53.332966, 53.153099>,  <42.792812, 53.279640, 53.546425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842308, 53.332966, 53.153099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651902, 0.758019, 0.020739,
		0.748140, 0.638462, 0.180702,
		0.123735, 0.133316, -0.983319,
		42.879429, 53.372959, 52.858105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923996, 53.962955, 53.358376>,  <42.792812, 53.279640, 53.546425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923996, 53.962955, 53.358376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773701, 53.844021, 53.007282>,  <42.683521, 53.772659, 52.796627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773701, 53.844021, 53.007282>,  <42.923996, 53.962955, 53.358376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773701, 53.844021, 53.007282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603073, 0.797595, -0.012022,
		0.703648, 0.524819, -0.479002,
		-0.375741, -0.297333, -0.877731,
		42.660980, 53.754822, 52.743961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229458, 54.004822, 54.108231>,  <42.923996, 53.962955, 53.358376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229458, 54.004822, 54.108231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234501, 53.882790, 54.489128>,  <43.237526, 53.809570, 54.717667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234501, 53.882790, 54.489128>,  <43.229458, 54.004822, 54.108231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234501, 53.882790, 54.489128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937214, 0.335539, 0.095095,
		-0.348526, 0.891258, 0.290153,
		0.012603, -0.305079, 0.952244,
		43.238281, 53.791267, 54.774799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350510, 54.566612, 54.655216>,  <43.229458, 54.004822, 54.108231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350510, 54.566612, 54.655216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481884, 54.228958, 54.824715>,  <43.560707, 54.026363, 54.926414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481884, 54.228958, 54.824715>,  <43.350510, 54.566612, 54.655216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481884, 54.228958, 54.824715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876369, 0.439677, 0.196625,
		-0.352290, 0.306778, 0.884183,
		0.328435, -0.844140, 0.423744,
		43.580414, 53.975716, 54.951839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571644, 54.524860, 55.449463>,  <43.350510, 54.566612, 54.655216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571644, 54.524860, 55.449463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804157, 54.279980, 55.235054>,  <43.943665, 54.133049, 55.106407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804157, 54.279980, 55.235054>,  <43.571644, 54.524860, 55.449463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804157, 54.279980, 55.235054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807616, 0.353638, 0.471908,
		-0.099348, -0.707210, 0.699989,
		0.581280, -0.612205, -0.536021,
		43.978542, 54.096317, 55.074249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051956, 53.970482, 55.776947>,  <43.571644, 54.524860, 55.449463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051956, 53.970482, 55.776947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206203, 54.112865, 55.436455>,  <44.298752, 54.198296, 55.232159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206203, 54.112865, 55.436455>,  <44.051956, 53.970482, 55.776947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206203, 54.112865, 55.436455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764569, 0.393142, 0.510758,
		0.516464, -0.847781, -0.120554,
		0.385615, 0.355960, -0.851230,
		44.321888, 54.219654, 55.181084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641945, 53.676800, 55.448048>,  <44.051956, 53.970482, 55.776947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641945, 53.676800, 55.448048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580933, 54.072056, 55.440948>,  <44.544327, 54.309208, 55.436687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580933, 54.072056, 55.440948>,  <44.641945, 53.676800, 55.448048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580933, 54.072056, 55.440948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847750, 0.140047, 0.511574,
		0.507992, 0.062982, -0.859056,
		-0.152528, 0.988140, -0.017749,
		44.535175, 54.368496, 55.435623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696194, 53.178104, 55.871105>,  <44.641945, 53.676800, 55.448048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696194, 53.178104, 55.871105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584488, 53.364590, 56.206879>,  <44.517464, 53.476482, 56.408344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584488, 53.364590, 56.206879>,  <44.696194, 53.178104, 55.871105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584488, 53.364590, 56.206879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943638, -0.028485, 0.329752,
		0.177647, 0.884212, -0.431984,
		-0.279265, 0.466216, 0.839436,
		44.500710, 53.504456, 56.458710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935593, 53.919029, 56.061348>,  <44.696194, 53.178104, 55.871105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935593, 53.919029, 56.061348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889923, 53.697266, 56.391098>,  <44.862522, 53.564205, 56.588947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889923, 53.697266, 56.391098>,  <44.935593, 53.919029, 56.061348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889923, 53.697266, 56.391098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979918, 0.073697, 0.185282,
		-0.163477, 0.828972, 0.534865,
		-0.114176, -0.554414, 0.824372,
		44.855671, 53.530941, 56.638409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762436, 54.242657, 56.737782>,  <44.935593, 53.919029, 56.061348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762436, 54.242657, 56.737782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973186, 53.905571, 56.693542>,  <45.099636, 53.703320, 56.667000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973186, 53.905571, 56.693542>,  <44.762436, 54.242657, 56.737782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973186, 53.905571, 56.693542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840669, 0.535864, -0.078263,
		0.125218, -0.051741, 0.990779,
		0.526873, -0.842717, -0.110597,
		45.131248, 53.652756, 56.660362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279808, 54.183376, 57.302444>,  <44.762436, 54.242657, 56.737782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279808, 54.183376, 57.302444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412258, 53.982845, 56.982689>,  <45.491726, 53.862526, 56.790836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412258, 53.982845, 56.982689>,  <45.279808, 54.183376, 57.302444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412258, 53.982845, 56.982689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862271, 0.504818, 0.040575,
		0.383206, -0.702728, 0.599438,
		0.331121, -0.501330, -0.799392,
		45.511593, 53.832447, 56.742870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000664, 54.139801, 57.341324>,  <45.279808, 54.183376, 57.302444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000664, 54.139801, 57.341324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924747, 54.092869, 56.951408>,  <45.879196, 54.064709, 56.717461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924747, 54.092869, 56.951408>,  <46.000664, 54.139801, 57.341324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924747, 54.092869, 56.951408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781335, 0.583172, -0.222319,
		0.594554, -0.803831, -0.019009,
		-0.189792, -0.117329, -0.974789,
		45.867809, 54.057671, 56.658974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610146, 53.765522, 56.899048>,  <46.000664, 54.139801, 57.341324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610146, 53.765522, 56.899048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379215, 54.057533, 56.752754>,  <46.240658, 54.232738, 56.664978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379215, 54.057533, 56.752754>,  <46.610146, 53.765522, 56.899048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.379215, 54.057533, 56.752754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808200, 0.574680, -0.128674,
		0.116247, -0.369875, -0.921781,
		-0.577322, 0.730025, -0.365737,
		46.206020, 54.276539, 56.643032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783043, 53.970638, 56.136440>,  <46.610146, 53.765522, 56.899048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783043, 53.970638, 56.136440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656567, 54.282146, 56.353157>,  <46.580681, 54.469051, 56.483189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656567, 54.282146, 56.353157>,  <46.783043, 53.970638, 56.136440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656567, 54.282146, 56.353157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839740, 0.495475, -0.222127,
		-0.441432, 0.384733, -0.810628,
		-0.316187, 0.778771, 0.541794,
		46.561710, 54.515778, 56.515694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.506912, 54.203377, 56.375874>,  <46.783043, 53.970638, 56.136440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.506912, 54.203377, 56.375874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708218, 54.548508, 56.394867>,  <47.829002, 54.755585, 56.406265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708218, 54.548508, 56.394867>,  <47.506912, 54.203377, 56.375874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708218, 54.548508, 56.394867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735639, -0.456615, 0.500339,
		0.453389, -0.216868, -0.864527,
		0.503263, 0.862827, 0.047487,
		47.859196, 54.807358, 56.409115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.199997, 54.163574, 56.767448>,  <47.506912, 54.203377, 56.375874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.199997, 54.163574, 56.767448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.363186, 54.507355, 56.644226>,  <48.461102, 54.713623, 56.570293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.363186, 54.507355, 56.644226>,  <48.199997, 54.163574, 56.767448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.363186, 54.507355, 56.644226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815697, -0.191558, 0.545843,
		0.410116, -0.473969, -0.779204,
		0.407975, 0.859452, -0.308054,
		48.485580, 54.765190, 56.551811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.866695, 54.091446, 56.348480>,  <48.199997, 54.163574, 56.767448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.866695, 54.091446, 56.348480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.898949, 54.446423, 56.530006>,  <48.918301, 54.659409, 56.638920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.898949, 54.446423, 56.530006>,  <48.866695, 54.091446, 56.348480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.898949, 54.446423, 56.530006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945011, -0.212842, 0.248301,
		0.316943, 0.408836, -0.855804,
		0.080637, 0.887441, 0.453813,
		48.923141, 54.712654, 56.666149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.515938, 54.552376, 56.199867>,  <48.866695, 54.091446, 56.348480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.515938, 54.552376, 56.199867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.384151, 54.632912, 56.568848>,  <49.305080, 54.681232, 56.790237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.384151, 54.632912, 56.568848>,  <49.515938, 54.552376, 56.199867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.384151, 54.632912, 56.568848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894080, -0.247457, 0.373344,
		0.303437, 0.947748, -0.098487,
		-0.329465, 0.201342, 0.922450,
		49.285313, 54.693314, 56.845581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.125149, 54.899803, 56.489483>,  <49.515938, 54.552376, 56.199867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.125149, 54.899803, 56.489483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.879612, 54.711502, 56.742966>,  <49.732288, 54.598522, 56.895058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.879612, 54.711502, 56.742966>,  <50.125149, 54.899803, 56.489483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.879612, 54.711502, 56.742966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748870, -0.601241, 0.278754,
		0.249786, 0.645676, 0.721602,
		-0.613841, -0.470757, 0.633709,
		49.695461, 54.570274, 56.933079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.536938, 54.805305, 57.072971>,  <50.125149, 54.899803, 56.489483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.536938, 54.805305, 57.072971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.236591, 54.543697, 57.109756>,  <50.056385, 54.386730, 57.131828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.236591, 54.543697, 57.109756>,  <50.536938, 54.805305, 57.072971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.236591, 54.543697, 57.109756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584091, -0.592582, 0.554694,
		-0.308287, 0.470214, 0.826957,
		-0.750864, -0.654023, 0.091963,
		50.011333, 54.347492, 57.137344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.294792, 54.601540, 57.858494>,  <50.536938, 54.805305, 57.072971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.294792, 54.601540, 57.858494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.274315, 54.325718, 57.569527>,  <50.262028, 54.160225, 57.396145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.274315, 54.325718, 57.569527>,  <50.294792, 54.601540, 57.858494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.274315, 54.325718, 57.569527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594829, -0.602119, 0.532570,
		-0.802221, -0.402451, 0.440993,
		-0.051197, -0.689554, -0.722422,
		50.258957, 54.118851, 57.352798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.490009, 53.901234, 58.201649>,  <50.294792, 54.601540, 57.858494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.490009, 53.901234, 58.201649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.517498, 53.868759, 57.803917>,  <50.533993, 53.849274, 57.565277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.517498, 53.868759, 57.803917>,  <50.490009, 53.901234, 58.201649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.517498, 53.868759, 57.803917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694695, -0.711436, 0.106102,
		-0.716014, -0.698046, 0.007503,
		0.068726, -0.081183, -0.994327,
		50.538116, 53.844406, 57.505619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.536480, 53.177254, 58.056068>,  <50.490009, 53.901234, 58.201649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.536480, 53.177254, 58.056068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.697651, 53.392670, 57.760063>,  <50.794353, 53.521919, 57.582458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.697651, 53.392670, 57.760063>,  <50.536480, 53.177254, 58.056068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.697651, 53.392670, 57.760063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841273, -0.536349, 0.067745,
		-0.360424, -0.649854, -0.669167,
		0.402931, 0.538536, -0.740017,
		50.818531, 53.554230, 57.538059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.743412, 52.785702, 57.376820>,  <50.536480, 53.177254, 58.056068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.743412, 52.785702, 57.376820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.956196, 53.083500, 57.538185>,  <51.083866, 53.262180, 57.635006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.956196, 53.083500, 57.538185>,  <50.743412, 52.785702, 57.376820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.956196, 53.083500, 57.538185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735152, -0.642477, 0.216276,
		0.420202, 0.181522, -0.889089,
		0.531960, 0.744496, 0.403416,
		51.115784, 53.306850, 57.659210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.560452, 52.679184, 57.214542>,  <50.743412, 52.785702, 57.376820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.560452, 52.679184, 57.214542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.512093, 52.898804, 57.545341>,  <51.483078, 53.030575, 57.743820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.512093, 52.898804, 57.545341>,  <51.560452, 52.679184, 57.214542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.512093, 52.898804, 57.545341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835469, -0.393626, 0.383470,
		0.536073, 0.737294, -0.411126,
		-0.120900, 0.549051, 0.826998,
		51.475822, 53.063519, 57.793442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.171852, 53.094685, 57.275536>,  <51.560452, 52.679184, 57.214542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.171852, 53.094685, 57.275536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.993370, 53.016220, 57.624802>,  <51.886280, 52.969143, 57.834362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.993370, 53.016220, 57.624802>,  <52.171852, 53.094685, 57.275536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.993370, 53.016220, 57.624802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877762, -0.286121, 0.384277,
		0.174450, 0.937899, 0.299853,
		-0.446207, -0.196163, 0.873166,
		51.859509, 52.957371, 57.886753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.436287, 53.536060, 57.827892>,  <52.171852, 53.094685, 57.275536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.436287, 53.536060, 57.827892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.287224, 53.188828, 57.959076>,  <52.197784, 52.980488, 58.037785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.287224, 53.188828, 57.959076>,  <52.436287, 53.536060, 57.827892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.287224, 53.188828, 57.959076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885877, -0.227571, 0.404269,
		-0.276306, 0.441184, 0.853822,
		-0.372662, -0.868083, 0.327955,
		52.175426, 52.928402, 58.057461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.882320, 54.090721, 57.815788>,  <52.436287, 53.536060, 57.827892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.882320, 54.090721, 57.815788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.866684, 54.468086, 57.684067>,  <52.857300, 54.694504, 57.605034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.866684, 54.468086, 57.684067>,  <52.882320, 54.090721, 57.815788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.866684, 54.468086, 57.684067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994756, 0.005577, -0.102120,
		-0.094505, -0.331572, -0.938685,
		-0.039095, 0.943413, -0.329306,
		52.854954, 54.751110, 57.585274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.292873, 54.224979, 57.171959>,  <52.882320, 54.090721, 57.815788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.292873, 54.224979, 57.171959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.286518, 54.541088, 57.416977>,  <53.282703, 54.730755, 57.563988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.286518, 54.541088, 57.416977>,  <53.292873, 54.224979, 57.171959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.286518, 54.541088, 57.416977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977839, 0.140187, -0.155493,
		-0.208753, 0.596499, -0.774991,
		-0.015892, 0.790276, 0.612545,
		53.281750, 54.778172, 57.600739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.570969, 54.725281, 56.781128>,  <53.292873, 54.224979, 57.171959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.570969, 54.725281, 56.781128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.617897, 54.755497, 57.177216>,  <53.646053, 54.773624, 57.414867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.617897, 54.755497, 57.177216>,  <53.570969, 54.725281, 56.781128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.617897, 54.755497, 57.177216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979877, 0.153335, -0.127789,
		-0.161488, 0.985283, -0.056029,
		0.117317, 0.075538, 0.990217,
		53.653091, 54.778160, 57.474281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.053505, 55.323292, 56.751068>,  <53.570969, 54.725281, 56.781128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.053505, 55.323292, 56.751068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.431725, 55.223156, 56.667854>,  <54.658657, 55.163074, 56.617928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.431725, 55.223156, 56.667854>,  <54.053505, 55.323292, 56.751068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.431725, 55.223156, 56.667854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006024, 0.652474, -0.757787,
		0.325437, 0.715268, 0.618452,
		0.945545, -0.250337, -0.208030,
		54.715389, 55.148056, 56.605446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.431637, 55.891659, 56.737717>,  <54.053505, 55.323292, 56.751068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.431637, 55.891659, 56.737717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.630157, 55.640507, 56.497902>,  <54.749271, 55.489815, 56.354012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.630157, 55.640507, 56.497902>,  <54.431637, 55.891659, 56.737717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.630157, 55.640507, 56.497902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055028, 0.666451, -0.743515,
		0.866402, 0.402002, 0.296212,
		0.496306, -0.627883, -0.599536,
		54.779049, 55.452141, 56.318043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.947094, 56.578445, 56.705387>,  <54.431637, 55.891659, 56.737717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.947094, 56.578445, 56.705387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.665863, 56.735847, 56.942314>,  <54.497124, 56.830288, 57.084473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.665863, 56.735847, 56.942314>,  <54.947094, 56.578445, 56.705387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.665863, 56.735847, 56.942314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092088, 0.876312, -0.472861,
		-0.705128, -0.277911, -0.652349,
		-0.703075, 0.393501, 0.592320,
		54.454941, 56.853897, 57.120010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.092464, 57.255455, 56.940914>,  <54.947094, 56.578445, 56.705387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.092464, 57.255455, 56.940914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.748108, 57.455589, 56.977875>,  <54.541496, 57.575668, 57.000053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.748108, 57.455589, 56.977875>,  <55.092464, 57.255455, 56.940914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.748108, 57.455589, 56.977875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495778, 0.784102, 0.373348,
		0.114342, 0.367224, -0.923078,
		-0.860889, 0.500331, 0.092406,
		54.489841, 57.605690, 57.005596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.071793, 57.898109, 56.573799>,  <55.092464, 57.255455, 56.940914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.071793, 57.898109, 56.573799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.855209, 57.884094, 56.909798>,  <54.725258, 57.875687, 57.111397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.855209, 57.884094, 56.909798>,  <55.071793, 57.898109, 56.573799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.855209, 57.884094, 56.909798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488869, 0.799731, 0.348479,
		-0.683981, 0.599335, -0.415894,
		-0.541459, -0.035035, 0.839997,
		54.692772, 57.873585, 57.161797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.827972, 58.654823, 56.661423>,  <55.071793, 57.898109, 56.573799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.827972, 58.654823, 56.661423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.813774, 58.462093, 57.011642>,  <54.805256, 58.346455, 57.221775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.813774, 58.462093, 57.011642>,  <54.827972, 58.654823, 56.661423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.813774, 58.462093, 57.011642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233528, 0.847847, 0.476047,
		-0.971702, 0.221363, 0.082424,
		-0.035497, -0.481824, 0.875549,
		54.803123, 58.317547, 57.274307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.335041, 58.779785, 57.230652>,  <54.827972, 58.654823, 56.661423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.335041, 58.779785, 57.230652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.694336, 58.680801, 57.375938>,  <54.909912, 58.621410, 57.463108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.694336, 58.680801, 57.375938>,  <54.335041, 58.779785, 57.230652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.694336, 58.680801, 57.375938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176701, 0.960025, 0.217092,
		-0.402416, -0.130821, 0.906062,
		0.898242, -0.247463, 0.363213,
		54.963810, 58.606564, 57.484901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.426872, 59.240078, 57.852280>,  <54.335041, 58.779785, 57.230652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.426872, 59.240078, 57.852280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.765495, 59.151108, 57.658844>,  <54.968670, 59.097725, 57.542782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.765495, 59.151108, 57.658844>,  <54.426872, 59.240078, 57.852280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.765495, 59.151108, 57.658844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360436, 0.908066, 0.213310,
		0.391687, -0.354884, 0.848905,
		0.846562, -0.222425, -0.483591,
		55.019463, 59.084381, 57.513767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.938210, 59.470596, 58.203053>,  <54.426872, 59.240078, 57.852280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.938210, 59.470596, 58.203053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.109665, 59.443970, 57.842644>,  <55.212540, 59.427994, 57.626400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.109665, 59.443970, 57.842644>,  <54.938210, 59.470596, 58.203053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.109665, 59.443970, 57.842644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450793, 0.880030, 0.149444,
		0.782976, -0.470231, 0.407222,
		0.428641, -0.066562, -0.901019,
		55.238258, 59.424000, 57.572338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.388779, 60.057079, 58.309662>,  <54.938210, 59.470596, 58.203053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.388779, 60.057079, 58.309662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.422455, 59.973820, 57.919876>,  <55.442661, 59.923866, 57.686005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.422455, 59.973820, 57.919876>,  <55.388779, 60.057079, 58.309662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.422455, 59.973820, 57.919876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343315, 0.924122, -0.167731,
		0.935440, -0.320429, 0.149259,
		0.084188, -0.208145, -0.974468,
		55.447712, 59.911377, 57.627537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.022942, 60.201405, 58.000599>,  <55.388779, 60.057079, 58.309662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.022942, 60.201405, 58.000599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.747803, 60.243416, 57.713310>,  <55.582722, 60.268623, 57.540939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.747803, 60.243416, 57.713310>,  <56.022942, 60.201405, 58.000599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.747803, 60.243416, 57.713310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232432, 0.969245, -0.080864,
		0.687637, -0.222559, -0.691103,
		-0.687845, 0.105029, -0.718218,
		55.541451, 60.274925, 57.497845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.041351, 60.060104, 57.274475>,  <56.022942, 60.201405, 58.000599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.041351, 60.060104, 57.274475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.276154, 59.848473, 57.029366>,  <56.417034, 59.721493, 56.882298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.276154, 59.848473, 57.029366>,  <56.041351, 60.060104, 57.274475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.276154, 59.848473, 57.029366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728529, 0.675325, 0.114809,
		0.353082, -0.513820, 0.781871,
		0.587008, -0.529079, -0.612778,
		56.452255, 59.689751, 56.845531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.633278, 60.278584, 57.599651>,  <56.041351, 60.060104, 57.274475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.633278, 60.278584, 57.599651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.701614, 60.099190, 57.248726>,  <56.742615, 59.991554, 57.038170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.701614, 60.099190, 57.248726>,  <56.633278, 60.278584, 57.599651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.701614, 60.099190, 57.248726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881382, 0.467573, -0.067391,
		0.440431, -0.761734, 0.475165,
		0.170840, -0.448483, -0.877312,
		56.752865, 59.964645, 56.985531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.314514, 60.101284, 57.575787>,  <56.633278, 60.278584, 57.599651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.314514, 60.101284, 57.575787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.202675, 60.107819, 57.191795>,  <57.135571, 60.111740, 56.961399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.202675, 60.107819, 57.191795>,  <57.314514, 60.101284, 57.575787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.202675, 60.107819, 57.191795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804156, 0.550251, -0.224849,
		0.524555, -0.834839, -0.166989,
		-0.279599, 0.016340, -0.959978,
		57.118793, 60.112720, 56.903801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.816311, 59.900951, 57.171242>,  <57.314514, 60.101284, 57.575787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.816311, 59.900951, 57.171242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.602020, 60.156193, 56.950035>,  <57.473446, 60.309338, 56.817310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.602020, 60.156193, 56.950035>,  <57.816311, 59.900951, 57.171242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.602020, 60.156193, 56.950035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844387, 0.407099, -0.348253,
		0.002910, -0.653526, -0.756899,
		-0.535725, 0.638102, -0.553014,
		57.441303, 60.347622, 56.784130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.000023, 59.846252, 56.510796>,  <57.816311, 59.900951, 57.171242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.000023, 59.846252, 56.510796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.859695, 60.212448, 56.589600>,  <57.775501, 60.432163, 56.636883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.859695, 60.212448, 56.589600>,  <58.000023, 59.846252, 56.510796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.859695, 60.212448, 56.589600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845364, 0.400110, -0.353937,
		-0.402850, 0.042377, -0.914284,
		-0.350816, 0.915487, 0.197008,
		57.754452, 60.487095, 56.648701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.104198, 60.290272, 55.850777>,  <58.000023, 59.846252, 56.510796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.104198, 60.290272, 55.850777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.114952, 60.473579, 56.206139>,  <58.121403, 60.583565, 56.419357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.114952, 60.473579, 56.206139>,  <58.104198, 60.290272, 55.850777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.114952, 60.473579, 56.206139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752329, 0.575934, -0.319846,
		-0.658239, 0.676973, -0.329287,
		0.026880, 0.458267, 0.888408,
		58.123016, 60.611061, 56.472660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.941566, 60.960670, 55.753002>,  <58.104198, 60.290272, 55.850777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.941566, 60.960670, 55.753002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.180847, 60.947411, 56.073265>,  <58.324417, 60.939453, 56.265423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.180847, 60.947411, 56.073265>,  <57.941566, 60.960670, 55.753002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.180847, 60.947411, 56.073265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544252, 0.750156, -0.375574,
		-0.588168, 0.660430, 0.466788,
		0.598204, -0.033150, 0.800658,
		58.360310, 60.937466, 56.313461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.151085, 61.665974, 55.889969>,  <57.941566, 60.960670, 55.753002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.151085, 61.665974, 55.889969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.412834, 61.405170, 56.043159>,  <58.569885, 61.248688, 56.135075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.412834, 61.405170, 56.043159>,  <58.151085, 61.665974, 55.889969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.412834, 61.405170, 56.043159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755974, 0.575607, -0.311737,
		-0.017187, 0.493514, 0.869568,
		0.654376, -0.652013, 0.382977,
		58.609146, 61.209568, 56.158054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.610146, 62.120453, 56.296253>,  <58.151085, 61.665974, 55.889969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.610146, 62.120453, 56.296253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.755096, 61.780193, 56.143890>,  <58.842068, 61.576038, 56.052471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.755096, 61.780193, 56.143890>,  <58.610146, 62.120453, 56.296253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.755096, 61.780193, 56.143890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704403, 0.517577, -0.485727,
		0.610330, -0.092298, 0.786752,
		0.362373, -0.850644, -0.380907,
		58.863808, 61.525002, 56.029617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.333504, 61.998623, 56.619781>,  <58.610146, 62.120453, 56.296253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.333504, 61.998623, 56.619781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.564430, 62.164745, 56.900986>,  <59.702984, 62.264420, 57.069710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.564430, 62.164745, 56.900986>,  <59.333504, 61.998623, 56.619781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.564430, 62.164745, 56.900986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803041, -0.132981, -0.580896,
		-0.147763, 0.899908, -0.410281,
		0.577313, 0.415308, 0.703014,
		59.737625, 62.289337, 57.111889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.200249, 61.331627, 56.763412>,  <59.333504, 61.998623, 56.619781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.200249, 61.331627, 56.763412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.244240, 60.975166, 56.587341>,  <59.270634, 60.761292, 56.481701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.244240, 60.975166, 56.587341>,  <59.200249, 61.331627, 56.763412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.244240, 60.975166, 56.587341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978396, -0.175061, 0.109974,
		-0.175061, 0.418570, -0.891152,
		-0.109974, 0.891152, 0.440174,
		59.277233, 60.707821, 56.455288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.710934, 60.752075, 56.831760>,  <59.200249, 61.331627, 56.763412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.710934, 60.752075, 56.831760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.888847, 60.841454, 56.484833>,  <59.995594, 60.895081, 56.276676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.888847, 60.841454, 56.484833>,  <59.710934, 60.752075, 56.831760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.888847, 60.841454, 56.484833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890638, -0.212538, 0.401984,
		-0.094518, -0.951262, -0.293540,
		0.444781, 0.223444, -0.867320,
		60.022282, 60.908485, 56.224636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.191990, 60.112579, 56.542572>,  <59.710934, 60.752075, 56.831760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.191990, 60.112579, 56.542572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.280586, 60.488445, 56.438286>,  <60.333744, 60.713963, 56.375713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.280586, 60.488445, 56.438286>,  <60.191990, 60.112579, 56.542572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.280586, 60.488445, 56.438286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868623, -0.068599, 0.490703,
		0.443210, -0.335155, -0.831406,
		0.221495, 0.939662, -0.260720,
		60.347034, 60.770344, 56.360069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.865898, 60.253899, 56.374317>,  <60.191990, 60.112579, 56.542572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.865898, 60.253899, 56.374317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.766968, 60.606716, 56.534729>,  <60.707611, 60.818409, 56.630978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.766968, 60.606716, 56.534729>,  <60.865898, 60.253899, 56.374317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.766968, 60.606716, 56.534729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891856, 0.045464, 0.450030,
		0.378715, 0.468963, -0.797903,
		-0.247323, 0.882047, 0.401029,
		60.692772, 60.871330, 56.655037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.332123, 60.830666, 56.188747>,  <60.865898, 60.253899, 56.374317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.332123, 60.830666, 56.188747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.179123, 60.864590, 56.556770>,  <61.087322, 60.884945, 56.777584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.179123, 60.864590, 56.556770>,  <61.332123, 60.830666, 56.188747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.179123, 60.864590, 56.556770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921858, -0.032024, 0.386202,
		0.062216, 0.995883, -0.065930,
		-0.382500, 0.084806, 0.920055,
		61.064373, 60.890030, 56.832787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.882217, 61.144547, 56.580620>,  <61.332123, 60.830666, 56.188747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.882217, 61.144547, 56.580620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.643585, 61.014305, 56.874031>,  <61.500404, 60.936161, 57.050079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.643585, 61.014305, 56.874031>,  <61.882217, 61.144547, 56.580620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.643585, 61.014305, 56.874031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798142, -0.145046, 0.584749,
		-0.084000, 0.934315, 0.346409,
		-0.596585, -0.325602, 0.733532,
		61.464611, 60.916626, 57.094090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.071541, 61.619347, 57.194714>,  <61.882217, 61.144547, 56.580620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.071541, 61.619347, 57.194714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.919670, 61.254433, 57.256134>,  <61.828548, 61.035484, 57.292988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.919670, 61.254433, 57.256134>,  <62.071541, 61.619347, 57.194714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.919670, 61.254433, 57.256134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827526, -0.260708, 0.497224,
		-0.413580, 0.315850, 0.853926,
		-0.379674, -0.912288, 0.153551,
		61.805767, 60.980747, 57.302200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.915550, 61.344971, 57.858162>,  <62.071541, 61.619347, 57.194714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.915550, 61.344971, 57.858162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.003311, 61.007454, 57.662254>,  <62.055965, 60.804943, 57.544708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.003311, 61.007454, 57.662254>,  <61.915550, 61.344971, 57.858162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.003311, 61.007454, 57.662254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831200, -0.101192, 0.546687,
		-0.510853, -0.527038, 0.679162,
		0.219399, -0.843796, -0.489768,
		62.069130, 60.754314, 57.515324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.043293, 60.735851, 58.268883>,  <61.915550, 61.344971, 57.858162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.043293, 60.735851, 58.268883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.237648, 60.647488, 57.930626>,  <62.354259, 60.594471, 57.727673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.237648, 60.647488, 57.930626>,  <62.043293, 60.735851, 58.268883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.237648, 60.647488, 57.930626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832340, -0.178270, 0.524814,
		-0.266690, -0.958863, 0.097253,
		0.485887, -0.220910, -0.845643,
		62.383415, 60.581215, 57.676933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.330067, 60.135250, 58.441685>,  <62.043293, 60.735851, 58.268883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.330067, 60.135250, 58.441685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.536385, 60.302681, 58.142685>,  <62.660175, 60.403137, 57.963284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.536385, 60.302681, 58.142685>,  <62.330067, 60.135250, 58.441685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.536385, 60.302681, 58.142685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856048, -0.217379, 0.468966,
		0.033806, -0.881783, -0.470442,
		0.515790, 0.418575, -0.747500,
		62.691120, 60.428253, 57.918434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.732876, 59.646252, 58.068707>,  <62.330067, 60.135250, 58.441685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.732876, 59.646252, 58.068707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.881721, 60.016750, 58.092682>,  <62.971027, 60.239052, 58.107067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.881721, 60.016750, 58.092682>,  <62.732876, 59.646252, 58.068707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.881721, 60.016750, 58.092682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863631, -0.369176, 0.343294,
		0.340105, -0.075977, -0.937313,
		0.372116, 0.926249, 0.059943,
		62.993355, 60.294624, 58.110664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.076061, 59.292240, 58.536621>,  <62.732876, 59.646252, 58.068707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.076061, 59.292240, 58.536621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.201874, 58.918648, 58.604439>,  <63.277363, 58.694492, 58.645130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.201874, 58.918648, 58.604439>,  <63.076061, 59.292240, 58.536621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.201874, 58.918648, 58.604439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112209, -0.213941, -0.970381,
		0.942590, 0.286195, -0.172094,
		0.314536, -0.933982, 0.169545,
		63.296234, 58.638454, 58.655304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.695473, 59.174896, 58.078690>,  <63.076061, 59.292240, 58.536621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.695473, 59.174896, 58.078690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.454552, 58.872864, 58.182289>,  <63.309998, 58.691643, 58.244450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.454552, 58.872864, 58.182289>,  <63.695473, 59.174896, 58.078690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.454552, 58.872864, 58.182289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178817, -0.188589, -0.965639,
		0.777981, -0.627923, -0.021433,
		-0.602305, -0.755081, 0.259001,
		63.273861, 58.646339, 58.259991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.984127, 58.599426, 57.694599>,  <63.695473, 59.174896, 58.078690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.984127, 58.599426, 57.694599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.591156, 58.623421, 57.765289>,  <63.355373, 58.637817, 57.807705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.591156, 58.623421, 57.765289>,  <63.984127, 58.599426, 57.694599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.591156, 58.623421, 57.765289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181080, -0.077150, -0.980438,
		-0.045171, -0.995214, 0.086656,
		-0.982431, 0.059978, 0.176728,
		63.296429, 58.641415, 57.818306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.450485, 58.273689, 57.390198>,  <63.984127, 58.599426, 57.694599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.450485, 58.273689, 57.390198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.722466, 58.015949, 57.250206>,  <63.885654, 57.861305, 57.166210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.722466, 58.015949, 57.250206>,  <63.450485, 58.273689, 57.390198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.722466, 58.015949, 57.250206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416722, -0.053157, 0.907478,
		-0.603336, -0.762883, 0.232370,
		0.679948, -0.644347, -0.349982,
		63.926449, 57.822643, 57.145210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.542252, 57.641468, 57.818256>,  <63.450485, 58.273689, 57.390198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.542252, 57.641468, 57.818256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.874916, 57.748726, 57.623756>,  <64.074516, 57.813080, 57.507057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.874916, 57.748726, 57.623756>,  <63.542252, 57.641468, 57.818256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.874916, 57.748726, 57.623756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533592, -0.143525, 0.833475,
		0.153703, -0.952627, -0.262444,
		0.831658, 0.268145, -0.486254,
		64.124413, 57.829170, 57.477879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.234329, 57.210236, 57.784637>,  <63.542252, 57.641468, 57.818256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.234329, 57.210236, 57.784637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.320511, 57.600780, 57.777687>,  <64.372215, 57.835106, 57.773518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.320511, 57.600780, 57.777687>,  <64.234329, 57.210236, 57.784637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.320511, 57.600780, 57.777687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756090, -0.155532, 0.635718,
		0.617988, -0.150103, -0.771725,
		0.215451, 0.976360, -0.017374,
		64.385147, 57.893688, 57.772476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.939751, 57.296406, 57.623745>,  <64.234329, 57.210236, 57.784637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.939751, 57.296406, 57.623745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.820709, 57.595741, 57.860870>,  <64.749283, 57.775341, 58.003143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.820709, 57.595741, 57.860870>,  <64.939751, 57.296406, 57.623745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.820709, 57.595741, 57.860870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696203, -0.254767, 0.671115,
		0.653250, 0.612440, -0.445177,
		-0.297601, 0.748339, 0.592809,
		64.731430, 57.820244, 58.038712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.432884, 57.925823, 57.814396>,  <64.939751, 57.296406, 57.623745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.432884, 57.925823, 57.814396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.190529, 57.781773, 58.098145>,  <65.045113, 57.695343, 58.268394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.190529, 57.781773, 58.098145>,  <65.432884, 57.925823, 57.814396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.190529, 57.781773, 58.098145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795257, -0.298308, 0.527806,
		0.021531, 0.883922, 0.467139,
		-0.605891, -0.360131, 0.709368,
		65.008759, 57.673733, 58.310955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.199188, 57.750629, 57.949894>,  <65.432884, 57.925823, 57.814396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.199188, 57.750629, 57.949894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.487946, 57.870766, 58.199265>,  <66.661201, 57.942848, 58.348888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.487946, 57.870766, 58.199265>,  <66.199188, 57.750629, 57.949894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.487946, 57.870766, 58.199265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033531, -0.915029, 0.401992,
		0.691190, -0.269292, -0.670625,
		0.721895, 0.300340, 0.623429,
		66.704514, 57.960869, 58.386292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.864250, 57.325001, 57.833668>,  <66.199188, 57.750629, 57.949894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.864250, 57.325001, 57.833668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.860245, 57.467072, 58.207565>,  <66.857841, 57.552315, 58.431904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.860245, 57.467072, 58.207565>,  <66.864250, 57.325001, 57.833668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.860245, 57.467072, 58.207565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119181, -0.927707, 0.353774,
		0.992822, 0.114945, -0.033046,
		-0.010008, 0.355173, 0.934747,
		66.857239, 57.573624, 58.487991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.509995, 57.214020, 58.238636>,  <66.864250, 57.325001, 57.833668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.509995, 57.214020, 58.238636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.192200, 57.224850, 58.481308>,  <67.001526, 57.231346, 58.626911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.192200, 57.224850, 58.481308>,  <67.509995, 57.214020, 58.238636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.192200, 57.224850, 58.481308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207294, -0.926914, 0.312825,
		0.570814, 0.374295, 0.730805,
		-0.794482, 0.027073, 0.606684,
		66.953857, 57.232971, 58.663315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.483009, 56.718155, 58.844734>,  <67.509995, 57.214020, 58.238636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.483009, 56.718155, 58.844734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.650543, 56.565502, 59.174324>,  <67.751060, 56.473911, 59.372078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.650543, 56.565502, 59.174324>,  <67.483009, 56.718155, 58.844734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.650543, 56.565502, 59.174324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429083, -0.882883, -0.190803,
		0.800291, -0.273639, -0.533532,
		0.418835, -0.381627, 0.823977,
		67.776192, 56.451015, 59.421516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.857155, 56.037697, 58.693726>,  <67.483009, 56.718155, 58.844734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.857155, 56.037697, 58.693726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.720268, 56.054993, 59.069176>,  <67.638138, 56.065372, 59.294445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.720268, 56.054993, 59.069176>,  <67.857155, 56.037697, 58.693726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.720268, 56.054993, 59.069176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553781, -0.816291, -0.164302,
		0.759085, -0.576020, 0.303300,
		-0.342222, 0.043243, 0.938624,
		67.617599, 56.067966, 59.350761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.526566, 55.891228, 59.032101>,  <67.857155, 56.037697, 58.693726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.526566, 55.891228, 59.032101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.454544, 55.966255, 59.418343>,  <68.411331, 56.011272, 59.650089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.454544, 55.966255, 59.418343>,  <68.526566, 55.891228, 59.032101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.454544, 55.966255, 59.418343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924660, -0.302574, 0.231200,
		0.335534, 0.934487, -0.118958,
		-0.180060, 0.187571, 0.965606,
		68.400528, 56.022526, 59.708023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.133629, 56.216873, 59.350807>,  <68.526566, 55.891228, 59.032101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.133629, 56.216873, 59.350807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.926605, 56.018867, 59.629974>,  <68.802391, 55.900063, 59.797474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.926605, 56.018867, 59.629974>,  <69.133629, 56.216873, 59.350807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.926605, 56.018867, 59.629974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854850, -0.334244, 0.396879,
		0.036813, 0.802024, 0.596157,
		-0.517568, -0.495014, 0.697914,
		68.771332, 55.870361, 59.839348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.452789, 56.439079, 59.987782>,  <69.133629, 56.216873, 59.350807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.452789, 56.439079, 59.987782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.296005, 56.071663, 60.008362>,  <69.201935, 55.851212, 60.020710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.296005, 56.071663, 60.008362>,  <69.452789, 56.439079, 59.987782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.296005, 56.071663, 60.008362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875542, -0.355265, 0.327435,
		-0.282485, 0.173386, 0.943472,
		-0.391955, -0.918545, 0.051449,
		69.178421, 55.796101, 60.023796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.193634, 56.368793, 59.832893>,  <69.452789, 56.439079, 59.987782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.193634, 56.368793, 59.832893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.577957, 56.402000, 59.727097>,  <70.808548, 56.421925, 59.663620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.577957, 56.402000, 59.727097>,  <70.193634, 56.368793, 59.832893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.577957, 56.402000, 59.727097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268987, -0.048449, 0.961925,
		0.067045, -0.995369, -0.068881,
		0.960808, 0.083021, -0.264493,
		70.866196, 56.426907, 59.647747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.696663, 56.906265, 60.210438>,  <70.193634, 56.368793, 59.832893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.696663, 56.906265, 60.210438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.089142, 56.980442, 60.189087>,  <71.324631, 57.024948, 60.176277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.089142, 56.980442, 60.189087>,  <70.696663, 56.906265, 60.210438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.089142, 56.980442, 60.189087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104952, 0.280717, -0.954035,
		-0.161931, 0.941706, 0.294903,
		0.981205, 0.185438, -0.053377,
		71.383507, 57.036072, 60.173073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.849922, 57.640083, 60.074493>,  <70.696663, 56.906265, 60.210438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.849922, 57.640083, 60.074493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.079269, 57.344734, 59.932480>,  <71.216881, 57.167522, 59.847271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.079269, 57.344734, 59.932480>,  <70.849922, 57.640083, 60.074493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.079269, 57.344734, 59.932480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258304, 0.248330, -0.933601,
		0.777515, 0.627004, -0.048341,
		0.573367, -0.738376, -0.355038,
		71.251282, 57.123222, 59.825970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.268410, 57.864170, 59.534157>,  <70.849922, 57.640083, 60.074493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.268410, 57.864170, 59.534157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.226059, 57.475380, 59.450203>,  <71.200645, 57.242107, 59.399830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.226059, 57.475380, 59.450203>,  <71.268410, 57.864170, 59.534157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.226059, 57.475380, 59.450203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123616, 0.222304, -0.967109,
		0.986666, -0.076449, -0.143689,
		-0.105877, -0.971976, -0.209889,
		71.194298, 57.183788, 59.387238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.046989, 57.510197, 59.456722>,  <71.268410, 57.864170, 59.534157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.046989, 57.510197, 59.456722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.437332, 57.431705, 59.495071>,  <72.671539, 57.384613, 59.518082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.437332, 57.431705, 59.495071>,  <72.046989, 57.510197, 59.456722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.437332, 57.431705, 59.495071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040487, 0.593920, 0.803505,
		-0.214608, -0.780227, 0.587528,
		0.975861, -0.196226, 0.095871,
		72.730087, 57.372837, 59.523834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.119026, 57.289307, 60.081436>,  <72.046989, 57.510197, 59.456722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.119026, 57.289307, 60.081436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.481224, 57.431503, 59.988731>,  <72.698540, 57.516823, 59.933109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.481224, 57.431503, 59.988731>,  <72.119026, 57.289307, 60.081436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.481224, 57.431503, 59.988731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037120, 0.610393, 0.791229,
		0.422744, -0.707845, 0.565899,
		0.905488, 0.355493, -0.231764,
		72.752869, 57.538151, 59.919201>
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
