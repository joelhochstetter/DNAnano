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
	<24.563028, 34.922127, 35.138847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299961, 35.098694, 34.894676>,  <24.142120, 35.204636, 34.748173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299961, 35.098694, 34.894676>,  <24.563028, 34.922127, 35.138847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299961, 35.098694, 34.894676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711527, 0.097897, -0.695806,
		-0.247384, -0.891945, -0.378466,
		-0.657670, 0.441420, -0.610425,
		24.102659, 35.231121, 34.711548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915501, 34.564980, 34.743107>,  <24.563028, 34.922127, 35.138847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915501, 34.564980, 34.743107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030405, 34.912392, 34.581547>,  <25.099348, 35.120838, 34.484612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030405, 34.912392, 34.581547>,  <24.915501, 34.564980, 34.743107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030405, 34.912392, 34.581547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508046, 0.495625, 0.704447,
		0.812016, 0.002838, 0.583628,
		0.287262, 0.868532, -0.403897,
		25.116583, 35.172951, 34.460377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556116, 34.855728, 35.010494>,  <24.915501, 34.564980, 34.743107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556116, 34.855728, 35.010494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946474, 34.896542, 34.933331>,  <26.180689, 34.921032, 34.887032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946474, 34.896542, 34.933331>,  <25.556116, 34.855728, 35.010494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.946474, 34.896542, 34.933331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055826, -0.971274, -0.231321,
		-0.210972, 0.214976, -0.953560,
		0.975897, 0.102036, -0.192911,
		26.239243, 34.927151, 34.875458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756420, 34.381290, 34.551281>,  <25.556116, 34.855728, 35.010494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756420, 34.381290, 34.551281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121769, 34.469990, 34.687859>,  <26.340979, 34.523209, 34.769806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121769, 34.469990, 34.687859>,  <25.756420, 34.381290, 34.551281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121769, 34.469990, 34.687859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275510, -0.954107, -0.117365,
		0.299747, 0.201269, -0.932546,
		0.913371, 0.221746, 0.341443,
		26.395781, 34.536514, 34.790291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324503, 34.094372, 34.029739>,  <25.756420, 34.381290, 34.551281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324503, 34.094372, 34.029739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483622, 34.131096, 34.394886>,  <26.579092, 34.153130, 34.613976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483622, 34.131096, 34.394886>,  <26.324503, 34.094372, 34.029739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483622, 34.131096, 34.394886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573181, -0.801783, -0.169136,
		0.716396, 0.590521, -0.371566,
		0.397794, 0.091806, 0.912870,
		26.602961, 34.158638, 34.668747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997185, 33.829021, 33.969788>,  <26.324503, 34.094372, 34.029739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997185, 33.829021, 33.969788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909702, 33.788532, 34.357998>,  <26.857214, 33.764236, 34.590923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909702, 33.788532, 34.357998>,  <26.997185, 33.829021, 33.969788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909702, 33.788532, 34.357998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487025, -0.873188, 0.018675,
		0.845562, 0.476755, 0.240270,
		-0.218704, -0.101227, 0.970527,
		26.844091, 33.758163, 34.649155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584913, 33.688648, 34.379025>,  <26.997185, 33.829021, 33.969788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584913, 33.688648, 34.379025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275885, 33.520424, 34.569294>,  <27.090467, 33.419491, 34.683456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275885, 33.520424, 34.569294>,  <27.584913, 33.688648, 34.379025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275885, 33.520424, 34.569294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493559, -0.869077, 0.033245,
		0.399415, 0.260457, 0.878993,
		-0.772572, -0.420556, 0.475674,
		27.044113, 33.394257, 34.711994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738251, 33.452137, 35.132141>,  <27.584913, 33.688648, 34.379025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738251, 33.452137, 35.132141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466356, 33.253799, 34.915958>,  <27.303219, 33.134796, 34.786251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466356, 33.253799, 34.915958>,  <27.738251, 33.452137, 35.132141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466356, 33.253799, 34.915958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563092, -0.824960, 0.048662,
		-0.469982, -0.271247, 0.839966,
		-0.679739, -0.495848, -0.540454,
		27.262434, 33.105045, 34.753822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601067, 32.809444, 35.453865>,  <27.738251, 33.452137, 35.132141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601067, 32.809444, 35.453865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484297, 32.728275, 35.079998>,  <27.414234, 32.679573, 34.855679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484297, 32.728275, 35.079998>,  <27.601067, 32.809444, 35.453865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484297, 32.728275, 35.079998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383358, -0.920126, 0.080030,
		-0.876251, -0.334949, 0.346400,
		-0.291926, -0.202922, -0.934667,
		27.396719, 32.667400, 34.799599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231268, 32.137592, 35.430138>,  <27.601067, 32.809444, 35.453865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231268, 32.137592, 35.430138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370363, 32.196777, 35.059799>,  <27.453821, 32.232288, 34.837597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370363, 32.196777, 35.059799>,  <27.231268, 32.137592, 35.430138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370363, 32.196777, 35.059799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392261, -0.919854, 0.000326,
		-0.851592, -0.363285, -0.377909,
		0.347739, 0.147962, -0.925843,
		27.474686, 32.241165, 34.782047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200136, 31.462143, 35.064472>,  <27.231268, 32.137592, 35.430138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200136, 31.462143, 35.064472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432333, 31.696245, 34.838020>,  <27.571651, 31.836706, 34.702148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432333, 31.696245, 34.838020>,  <27.200136, 31.462143, 35.064472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432333, 31.696245, 34.838020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626710, -0.765020, -0.148254,
		-0.519866, -0.268738, -0.810875,
		0.580494, 0.585256, -0.566129,
		27.606482, 31.871822, 34.668182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284727, 31.232868, 34.436512>,  <27.200136, 31.462143, 35.064472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284727, 31.232868, 34.436512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615713, 31.432203, 34.540020>,  <27.814304, 31.551804, 34.602127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615713, 31.432203, 34.540020>,  <27.284727, 31.232868, 34.436512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615713, 31.432203, 34.540020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487439, -0.866257, 0.109560,
		0.278762, 0.035479, -0.959705,
		0.827463, 0.498338, 0.258773,
		27.863953, 31.581705, 34.617653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797836, 30.625134, 34.674255>,  <27.284727, 31.232868, 34.436512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797836, 30.625134, 34.674255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192575, 30.682962, 34.645332>,  <28.429419, 30.717661, 34.627979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192575, 30.682962, 34.645332>,  <27.797836, 30.625134, 34.674255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192575, 30.682962, 34.645332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154710, 0.974378, -0.163257,
		0.046854, 0.172297, 0.983930,
		0.986848, 0.144575, -0.072310,
		28.488630, 30.726336, 34.623638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113367, 31.259521, 35.121983>,  <27.797836, 30.625134, 34.674255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113367, 31.259521, 35.121983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334339, 31.176702, 34.799007>,  <28.466923, 31.127012, 34.605225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334339, 31.176702, 34.799007>,  <28.113367, 31.259521, 35.121983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334339, 31.176702, 34.799007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304240, 0.851752, -0.426564,
		0.776053, 0.481301, 0.407543,
		0.552431, -0.207045, -0.807436,
		28.500069, 31.114590, 34.556778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669987, 31.750763, 35.086639>,  <28.113367, 31.259521, 35.121983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669987, 31.750763, 35.086639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555300, 31.657352, 34.714993>,  <28.486488, 31.601307, 34.492004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555300, 31.657352, 34.714993>,  <28.669987, 31.750763, 35.086639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555300, 31.657352, 34.714993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379123, 0.918320, -0.113818,
		0.879807, 0.319616, -0.351832,
		-0.286716, -0.233526, -0.929118,
		28.469286, 31.587296, 34.436256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751886, 32.263264, 34.561012>,  <28.669987, 31.750763, 35.086639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751886, 32.263264, 34.561012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433048, 32.040974, 34.466515>,  <28.241745, 31.907600, 34.409817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433048, 32.040974, 34.466515>,  <28.751886, 32.263264, 34.561012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433048, 32.040974, 34.466515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561264, 0.826146, -0.049653,
		0.222767, 0.093019, -0.970424,
		-0.797094, -0.555725, -0.236246,
		28.193920, 31.874256, 34.395641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392490, 32.577248, 34.006405>,  <28.751886, 32.263264, 34.561012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392490, 32.577248, 34.006405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128279, 32.338913, 34.189133>,  <27.969751, 32.195911, 34.298771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128279, 32.338913, 34.189133>,  <28.392490, 32.577248, 34.006405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128279, 32.338913, 34.189133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710889, 0.692067, -0.125222,
		-0.241537, -0.407460, -0.880702,
		-0.660528, -0.595836, 0.456818,
		27.930120, 32.160164, 34.326180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709612, 32.518642, 33.504028>,  <28.392490, 32.577248, 34.006405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709612, 32.518642, 33.504028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626774, 32.415131, 33.881420>,  <27.577072, 32.353024, 34.107853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626774, 32.415131, 33.881420>,  <27.709612, 32.518642, 33.504028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626774, 32.415131, 33.881420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804018, 0.594453, -0.013433,
		-0.557376, -0.761353, -0.331172,
		-0.207093, -0.258781, 0.943475,
		27.564646, 32.337498, 34.164463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047962, 32.502968, 33.511848>,  <27.709612, 32.518642, 33.504028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047962, 32.502968, 33.511848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143757, 32.539631, 33.898476>,  <27.201233, 32.561626, 34.130451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143757, 32.539631, 33.898476>,  <27.047962, 32.502968, 33.511848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143757, 32.539631, 33.898476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737079, 0.665148, 0.119554,
		-0.631950, -0.741065, 0.226852,
		0.239487, 0.091656, 0.966564,
		27.215603, 32.567127, 34.188446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419680, 32.514812, 33.928726>,  <27.047962, 32.502968, 33.511848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419680, 32.514812, 33.928726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688217, 32.689457, 34.168282>,  <26.849340, 32.794243, 34.312016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688217, 32.689457, 34.168282>,  <26.419680, 32.514812, 33.928726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688217, 32.689457, 34.168282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706247, 0.621910, 0.338295,
		-0.224751, -0.650076, 0.725871,
		0.671344, 0.436612, 0.598889,
		26.889620, 32.820442, 34.347950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112944, 32.573521, 34.518250>,  <26.419680, 32.514812, 33.928726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112944, 32.573521, 34.518250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368916, 32.880871, 34.514542>,  <26.522499, 33.065281, 34.512318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368916, 32.880871, 34.514542>,  <26.112944, 32.573521, 34.518250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368916, 32.880871, 34.514542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736692, 0.616878, 0.277030,
		0.218580, -0.170453, 0.960817,
		0.639928, 0.768379, -0.009266,
		26.560894, 33.111385, 34.511761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288160, 32.884739, 35.153614>,  <26.112944, 32.573521, 34.518250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288160, 32.884739, 35.153614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288948, 33.123947, 34.833023>,  <26.289421, 33.267471, 34.640667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288948, 33.123947, 34.833023>,  <26.288160, 32.884739, 35.153614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288948, 33.123947, 34.833023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761908, 0.520003, 0.386126,
		0.647682, 0.609891, 0.456662,
		0.001971, 0.598021, -0.801477,
		26.289539, 33.303352, 34.592579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452959, 33.616501, 35.273666>,  <26.288160, 32.884739, 35.153614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452959, 33.616501, 35.273666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210840, 33.623329, 34.955341>,  <26.065569, 33.627426, 34.764347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210840, 33.623329, 34.955341>,  <26.452959, 33.616501, 35.273666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210840, 33.623329, 34.955341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635048, 0.592430, 0.495722,
		0.479926, 0.805441, -0.347758,
		-0.605297, 0.017066, -0.795816,
		26.029251, 33.628448, 34.716595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721054, 33.928162, 35.922466>,  <26.452959, 33.616501, 35.273666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721054, 33.928162, 35.922466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832273, 33.909210, 35.538708>,  <26.899006, 33.897839, 35.308453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832273, 33.909210, 35.538708>,  <26.721054, 33.928162, 35.922466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832273, 33.909210, 35.538708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058174, 0.996119, -0.066051,
		0.958804, 0.074177, 0.274212,
		0.278048, -0.047378, -0.959398,
		26.915688, 33.894997, 35.250889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222975, 34.428314, 35.794022>,  <26.721054, 33.928162, 35.922466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222975, 34.428314, 35.794022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041981, 34.335388, 35.449631>,  <26.933384, 34.279633, 35.242996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041981, 34.335388, 35.449631>,  <27.222975, 34.428314, 35.794022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041981, 34.335388, 35.449631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214408, 0.965492, -0.147831,
		0.865613, 0.117710, -0.486681,
		-0.452486, -0.232313, -0.860980,
		26.906235, 34.265694, 35.191338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559536, 34.852566, 35.357254>,  <27.222975, 34.428314, 35.794022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559536, 34.852566, 35.357254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207863, 34.751850, 35.195442>,  <26.996859, 34.691422, 35.098354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207863, 34.751850, 35.195442>,  <27.559536, 34.852566, 35.357254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207863, 34.751850, 35.195442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166683, 0.957857, -0.233937,
		0.446383, -0.138245, -0.884099,
		-0.879181, -0.251790, -0.404528,
		26.944109, 34.676311, 35.074085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581081, 35.117649, 34.745300>,  <27.559536, 34.852566, 35.357254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581081, 35.117649, 34.745300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188183, 35.068405, 34.801918>,  <26.952444, 35.038857, 34.835888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188183, 35.068405, 34.801918>,  <27.581081, 35.117649, 34.745300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188183, 35.068405, 34.801918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159384, 0.945616, -0.283563,
		-0.098933, -0.301088, -0.948450,
		-0.982247, -0.123114, 0.141542,
		26.893509, 35.031471, 34.844379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085155, 35.292709, 34.202545>,  <27.581081, 35.117649, 34.745300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085155, 35.292709, 34.202545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854759, 35.384937, 34.516251>,  <26.716522, 35.440273, 34.704475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854759, 35.384937, 34.516251>,  <27.085155, 35.292709, 34.202545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854759, 35.384937, 34.516251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156832, 0.910407, -0.382835,
		-0.802272, -0.343507, -0.488224,
		-0.575989, 0.230569, 0.784267,
		26.681963, 35.454109, 34.751530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092268, 35.558681, 33.464191>,  <27.085155, 35.292709, 34.202545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092268, 35.558681, 33.464191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298584, 35.273693, 33.654495>,  <27.422375, 35.102699, 33.768677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298584, 35.273693, 33.654495>,  <27.092268, 35.558681, 33.464191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298584, 35.273693, 33.654495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687163, 0.675698, 0.266908,
		-0.511632, 0.189253, 0.838103,
		0.515791, -0.712472, 0.475756,
		27.453321, 35.059952, 33.797222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891455, 35.415874, 32.828484>,  <27.092268, 35.558681, 33.464191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891455, 35.415874, 32.828484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118118, 35.100723, 32.732033>,  <27.254116, 34.911633, 32.674160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118118, 35.100723, 32.732033>,  <26.891455, 35.415874, 32.828484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118118, 35.100723, 32.732033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040643, 0.265567, -0.963235,
		0.822950, 0.555625, 0.118463,
		0.566658, -0.787880, -0.241131,
		27.288116, 34.864361, 32.659695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382076, 35.671543, 32.425991>,  <26.891455, 35.415874, 32.828484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382076, 35.671543, 32.425991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334835, 35.285442, 32.332741>,  <27.306490, 35.053783, 32.276791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334835, 35.285442, 32.332741>,  <27.382076, 35.671543, 32.425991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334835, 35.285442, 32.332741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052012, 0.228431, -0.972170,
		0.991638, -0.126942, 0.023226,
		-0.118104, -0.965249, -0.233123,
		27.299404, 34.995869, 32.262802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971657, 35.505810, 31.938711>,  <27.382076, 35.671543, 32.425991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971657, 35.505810, 31.938711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690058, 35.232010, 31.862980>,  <27.521099, 35.067730, 31.817541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690058, 35.232010, 31.862980>,  <27.971657, 35.505810, 31.938711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690058, 35.232010, 31.862980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157559, 0.109412, -0.981429,
		0.692504, -0.720755, 0.030823,
		-0.703998, -0.684501, -0.189330,
		27.478859, 35.026661, 31.806181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301535, 35.006424, 31.411320>,  <27.971657, 35.505810, 31.938711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301535, 35.006424, 31.411320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902840, 34.974957, 31.404142>,  <27.663622, 34.956078, 31.399836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902840, 34.974957, 31.404142>,  <28.301535, 35.006424, 31.411320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902840, 34.974957, 31.404142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014322, 0.046345, -0.998823,
		0.079408, -0.995823, -0.045067,
		-0.996739, -0.078669, -0.017943,
		27.603817, 34.951359, 31.398760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227579, 34.527428, 30.991205>,  <28.301535, 35.006424, 31.411320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227579, 34.527428, 30.991205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862350, 34.690544, 30.990812>,  <27.643213, 34.788414, 30.990576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862350, 34.690544, 30.990812>,  <28.227579, 34.527428, 30.991205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862350, 34.690544, 30.990812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099830, -0.225861, -0.969031,
		-0.395390, -0.884697, 0.246938,
		-0.913072, 0.407797, -0.000983,
		27.588428, 34.812881, 30.990517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742720, 34.080086, 30.630476>,  <28.227579, 34.527428, 30.991205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742720, 34.080086, 30.630476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618113, 34.459454, 30.606977>,  <27.543348, 34.687077, 30.592878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618113, 34.459454, 30.606977>,  <27.742720, 34.080086, 30.630476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618113, 34.459454, 30.606977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249028, -0.141144, -0.958156,
		-0.917030, -0.283851, 0.280153,
		-0.311516, 0.948423, -0.058746,
		27.524658, 34.743980, 30.589354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749840, 34.054104, 30.021469>,  <27.742720, 34.080086, 30.630476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749840, 34.054104, 30.021469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517418, 34.371536, 30.093699>,  <27.377964, 34.561996, 30.137035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517418, 34.371536, 30.093699>,  <27.749840, 34.054104, 30.021469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517418, 34.371536, 30.093699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347002, -0.040872, -0.936973,
		-0.736182, -0.607094, 0.299122,
		-0.581056, 0.793579, 0.180574,
		27.343102, 34.609612, 30.147871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055037, 34.002022, 29.652868>,  <27.749840, 34.054104, 30.021469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055037, 34.002022, 29.652868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127531, 34.389168, 29.722591>,  <27.171028, 34.621456, 29.764425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127531, 34.389168, 29.722591>,  <27.055037, 34.002022, 29.652868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127531, 34.389168, 29.722591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211160, 0.211406, -0.954316,
		-0.960502, 0.136151, 0.242690,
		0.181237, 0.967869, 0.174307,
		27.181902, 34.679527, 29.774883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372854, 34.445366, 29.574629>,  <27.055037, 34.002022, 29.652868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372854, 34.445366, 29.574629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740351, 34.580502, 29.492868>,  <26.960850, 34.661583, 29.443811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740351, 34.580502, 29.492868>,  <26.372854, 34.445366, 29.574629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740351, 34.580502, 29.492868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187637, -0.081935, -0.978815,
		-0.347425, 0.937633, -0.011887,
		0.918743, 0.337835, -0.204401,
		27.015974, 34.681850, 29.431547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611475, 35.060719, 29.063709>,  <26.372854, 34.445366, 29.574629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611475, 35.060719, 29.063709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881952, 34.766087, 29.057796>,  <27.044239, 34.589310, 29.054249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881952, 34.766087, 29.057796>,  <26.611475, 35.060719, 29.063709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881952, 34.766087, 29.057796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148822, -0.116916, -0.981928,
		0.721537, 0.666172, -0.188677,
		0.676192, -0.736577, -0.014782,
		27.084810, 34.545113, 29.053362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475370, 34.712788, 28.383671>,  <26.611475, 35.060719, 29.063709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475370, 34.712788, 28.383671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700333, 35.039528, 28.332365>,  <26.835310, 35.235573, 28.301582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700333, 35.039528, 28.332365>,  <26.475370, 34.712788, 28.383671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700333, 35.039528, 28.332365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570855, -0.271358, 0.774913,
		0.598185, -0.509033, -0.618918,
		0.562404, 0.816854, -0.128262,
		26.869055, 35.284584, 28.293886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219103, 34.485199, 28.354744>,  <26.475370, 34.712788, 28.383671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219103, 34.485199, 28.354744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165920, 34.863293, 28.473976>,  <27.134010, 35.090149, 28.545515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165920, 34.863293, 28.473976>,  <27.219103, 34.485199, 28.354744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165920, 34.863293, 28.473976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588370, -0.166750, 0.791211,
		0.797586, 0.280578, -0.533978,
		-0.132955, 0.945236, 0.298081,
		27.126034, 35.146862, 28.563400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854774, 34.687469, 28.796062>,  <27.219103, 34.485199, 28.354744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854774, 34.687469, 28.796062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549963, 34.929218, 28.889051>,  <27.367077, 35.074268, 28.944845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549963, 34.929218, 28.889051>,  <27.854774, 34.687469, 28.796062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549963, 34.929218, 28.889051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287262, -0.006236, 0.957832,
		0.580341, 0.796674, -0.168863,
		-0.762027, 0.604377, 0.232473,
		27.321356, 35.110531, 28.958794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073845, 35.217796, 29.301413>,  <27.854774, 34.687469, 28.796062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073845, 35.217796, 29.301413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676348, 35.178219, 29.322153>,  <27.437849, 35.154472, 29.334597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676348, 35.178219, 29.322153>,  <28.073845, 35.217796, 29.301413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676348, 35.178219, 29.322153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037969, 0.137349, 0.989795,
		-0.105057, 0.985568, -0.132732,
		-0.993741, -0.098945, 0.051850,
		27.378225, 35.148537, 29.337708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802233, 35.828747, 29.661686>,  <28.073845, 35.217796, 29.301413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802233, 35.828747, 29.661686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585073, 35.494968, 29.699560>,  <27.454779, 35.294701, 29.722284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585073, 35.494968, 29.699560>,  <27.802233, 35.828747, 29.661686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585073, 35.494968, 29.699560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156792, 0.010052, 0.987580,
		-0.825033, 0.551000, 0.125377,
		-0.542896, -0.834445, 0.094686,
		27.422205, 35.244637, 29.727966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547272, 35.758472, 30.431973>,  <27.802233, 35.828747, 29.661686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547272, 35.758472, 30.431973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377668, 35.424885, 30.290718>,  <27.275908, 35.224731, 30.205965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377668, 35.424885, 30.290718>,  <27.547272, 35.758472, 30.431973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377668, 35.424885, 30.290718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098212, -0.345282, 0.933346,
		-0.900318, 0.430428, 0.064495,
		-0.424007, -0.833974, -0.353137,
		27.250465, 35.174694, 30.184776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771862, 35.690285, 30.543915>,  <27.547272, 35.758472, 30.431973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771862, 35.690285, 30.543915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951218, 35.334133, 30.575327>,  <27.058832, 35.120441, 30.594175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951218, 35.334133, 30.575327>,  <26.771862, 35.690285, 30.543915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951218, 35.334133, 30.575327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226778, -0.028337, 0.973534,
		-0.864591, -0.454332, -0.214625,
		0.448389, -0.890381, 0.078532,
		27.085735, 35.067020, 30.598886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348375, 35.262657, 30.937078>,  <26.771862, 35.690285, 30.543915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348375, 35.262657, 30.937078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717482, 35.111130, 30.965366>,  <26.938946, 35.020214, 30.982338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717482, 35.111130, 30.965366>,  <26.348375, 35.262657, 30.937078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717482, 35.111130, 30.965366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101509, -0.061909, 0.992906,
		-0.371751, -0.923399, -0.095581,
		0.922766, -0.378817, 0.070718,
		26.994312, 34.997486, 30.986582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362333, 34.654613, 31.386211>,  <26.348375, 35.262657, 30.937078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362333, 34.654613, 31.386211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756807, 34.714592, 31.358063>,  <26.993492, 34.750580, 31.341173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756807, 34.714592, 31.358063>,  <26.362333, 34.654613, 31.386211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756807, 34.714592, 31.358063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107582, -0.256809, 0.960456,
		0.125948, -0.954759, -0.269393,
		0.986186, 0.149949, -0.070370,
		27.052664, 34.759575, 31.336952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753304, 34.006233, 31.496178>,  <26.362333, 34.654613, 31.386211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753304, 34.006233, 31.496178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991529, 34.313007, 31.591772>,  <27.134464, 34.497070, 31.649130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991529, 34.313007, 31.591772>,  <26.753304, 34.006233, 31.496178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991529, 34.313007, 31.591772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011406, -0.305549, 0.952108,
		0.803226, -0.564316, -0.190721,
		0.595565, 0.766934, 0.238988,
		27.170198, 34.543087, 31.663469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216885, 33.730347, 31.972662>,  <26.753304, 34.006233, 31.496178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216885, 33.730347, 31.972662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223843, 34.127449, 32.020203>,  <27.228018, 34.365711, 32.048729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223843, 34.127449, 32.020203>,  <27.216885, 33.730347, 31.972662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223843, 34.127449, 32.020203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046537, -0.119545, 0.991737,
		0.998765, -0.011719, -0.048279,
		0.017393, 0.992759, 0.118852,
		27.229061, 34.425278, 32.055859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840916, 34.050247, 31.659189>,  <27.216885, 33.730347, 31.972662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840916, 34.050247, 31.659189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910240, 34.394016, 31.851587>,  <27.951836, 34.600277, 31.967026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910240, 34.394016, 31.851587>,  <27.840916, 34.050247, 31.659189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910240, 34.394016, 31.851587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632253, -0.471551, 0.614732,
		0.755128, 0.197569, -0.625098,
		0.173314, 0.859422, 0.480995,
		27.962234, 34.651844, 31.995886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616436, 34.291180, 31.644974>,  <27.840916, 34.050247, 31.659189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616436, 34.291180, 31.644974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433130, 34.402901, 31.982491>,  <28.323147, 34.469933, 32.185001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433130, 34.402901, 31.982491>,  <28.616436, 34.291180, 31.644974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433130, 34.402901, 31.982491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742651, -0.401259, 0.536154,
		0.488329, 0.872342, -0.023543,
		-0.458263, 0.279304, 0.843792,
		28.295650, 34.486691, 32.235626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965857, 34.843693, 32.159031>,  <28.616436, 34.291180, 31.644974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965857, 34.843693, 32.159031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732674, 34.551167, 32.300644>,  <28.592764, 34.375652, 32.385612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732674, 34.551167, 32.300644>,  <28.965857, 34.843693, 32.159031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732674, 34.551167, 32.300644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805204, -0.461727, 0.372096,
		-0.108651, 0.501987, 0.858023,
		-0.582960, -0.731312, 0.354035,
		28.557785, 34.331772, 32.406853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531143, 35.213993, 31.775455>,  <28.965857, 34.843693, 32.159031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531143, 35.213993, 31.775455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206499, 35.432087, 31.859367>,  <29.011713, 35.562943, 31.909716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206499, 35.432087, 31.859367>,  <29.531143, 35.213993, 31.775455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206499, 35.432087, 31.859367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478682, -0.826510, 0.296216,
		0.334894, 0.139993, 0.931798,
		-0.811609, 0.545236, 0.209781,
		28.963017, 35.595657, 31.922302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976189, 35.711540, 32.278633>,  <29.531143, 35.213993, 31.775455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976189, 35.711540, 32.278633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299953, 35.913544, 32.398514>,  <30.494211, 36.034744, 32.470444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299953, 35.913544, 32.398514>,  <29.976189, 35.711540, 32.278633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299953, 35.913544, 32.398514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587219, 0.700613, 0.405357,
		-0.005267, -0.504091, 0.863634,
		0.809411, 0.505008, 0.299702,
		30.542776, 36.065044, 32.488426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882648, 35.853363, 32.966717>,  <29.976189, 35.711540, 32.278633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882648, 35.853363, 32.966717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137888, 36.117237, 32.807899>,  <30.291031, 36.275562, 32.712608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137888, 36.117237, 32.807899>,  <29.882648, 35.853363, 32.966717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137888, 36.117237, 32.807899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529265, 0.750332, 0.396082,
		0.559203, -0.042599, 0.827936,
		0.638099, 0.659687, -0.397042,
		30.329317, 36.315144, 32.688786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933857, 36.282688, 33.510029>,  <29.882648, 35.853363, 32.966717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933857, 36.282688, 33.510029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110720, 36.475586, 33.207523>,  <30.216837, 36.591324, 33.026020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110720, 36.475586, 33.207523>,  <29.933857, 36.282688, 33.510029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110720, 36.475586, 33.207523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505718, 0.830401, 0.233846,
		0.740776, 0.279062, 0.611045,
		0.442155, 0.482244, -0.756267,
		30.243366, 36.620258, 32.980644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222672, 36.881508, 33.756832>,  <29.933857, 36.282688, 33.510029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222672, 36.881508, 33.756832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142187, 36.948353, 33.370758>,  <30.093897, 36.988461, 33.139114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142187, 36.948353, 33.370758>,  <30.222672, 36.881508, 33.756832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142187, 36.948353, 33.370758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520450, 0.816515, 0.249872,
		0.829847, 0.552608, -0.077317,
		-0.201212, 0.167117, -0.965187,
		30.081823, 36.998489, 33.081203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232597, 37.650810, 33.620419>,  <30.222672, 36.881508, 33.756832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232597, 37.650810, 33.620419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004154, 37.483807, 33.337711>,  <29.867088, 37.383606, 33.168087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004154, 37.483807, 33.337711>,  <30.232597, 37.650810, 33.620419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004154, 37.483807, 33.337711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692695, 0.707109, 0.142025,
		0.440466, 0.570687, -0.693042,
		-0.571107, -0.417509, -0.706769,
		29.832823, 37.358555, 33.125679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916866, 38.102322, 33.150539>,  <30.232597, 37.650810, 33.620419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916866, 38.102322, 33.150539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668076, 37.789516, 33.166500>,  <29.518801, 37.601833, 33.176079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668076, 37.789516, 33.166500>,  <29.916866, 38.102322, 33.150539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668076, 37.789516, 33.166500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782427, 0.618681, -0.071009,
		0.030842, -0.075387, -0.996677,
		-0.621978, -0.782017, 0.039904,
		29.481482, 37.554913, 33.178471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266092, 37.967896, 32.654690>,  <29.916866, 38.102322, 33.150539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266092, 37.967896, 32.654690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180466, 37.850521, 33.027370>,  <29.129089, 37.780098, 33.250980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180466, 37.850521, 33.027370>,  <29.266092, 37.967896, 32.654690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180466, 37.850521, 33.027370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727245, 0.684659, 0.048543,
		-0.652144, -0.667185, -0.359962,
		-0.214064, -0.293437, 0.931703,
		29.116247, 37.762489, 33.306881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353592, 37.303070, 32.202648>,  <29.266092, 37.967896, 32.654690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353592, 37.303070, 32.202648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635592, 37.400543, 32.469059>,  <29.804790, 37.459026, 32.628906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635592, 37.400543, 32.469059>,  <29.353592, 37.303070, 32.202648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635592, 37.400543, 32.469059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590519, -0.721786, -0.360987,
		0.392765, 0.647799, -0.652758,
		0.704999, 0.243682, 0.666030,
		29.847092, 37.473648, 32.668869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993593, 37.203701, 31.872242>,  <29.353592, 37.303070, 32.202648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993593, 37.203701, 31.872242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096806, 37.224361, 32.258144>,  <30.158733, 37.236755, 32.489685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096806, 37.224361, 32.258144>,  <29.993593, 37.203701, 31.872242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096806, 37.224361, 32.258144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654847, -0.743545, -0.135339,
		0.710348, 0.666688, -0.225681,
		0.258033, 0.051649, 0.964755,
		30.174215, 37.239857, 32.547569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737728, 37.402725, 32.019421>,  <29.993593, 37.203701, 31.872242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737728, 37.402725, 32.019421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612656, 37.170792, 32.320358>,  <30.537611, 37.031631, 32.500923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612656, 37.170792, 32.320358>,  <30.737728, 37.402725, 32.019421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612656, 37.170792, 32.320358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766049, -0.622245, -0.161183,
		0.561603, 0.525936, 0.638744,
		-0.312683, -0.579830, 0.752347,
		30.518850, 36.996841, 32.546062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323214, 37.041431, 32.314751>,  <30.737728, 37.402725, 32.019421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323214, 37.041431, 32.314751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020142, 36.826546, 32.462978>,  <30.838299, 36.697613, 32.551914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020142, 36.826546, 32.462978>,  <31.323214, 37.041431, 32.314751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020142, 36.826546, 32.462978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585315, -0.810514, 0.021760,
		0.288661, 0.233386, 0.928550,
		-0.757682, -0.537213, 0.370568,
		30.792837, 36.665382, 32.574150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534933, 36.791306, 32.919411>,  <31.323214, 37.041431, 32.314751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534933, 36.791306, 32.919411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235817, 36.568012, 32.775642>,  <31.056347, 36.434036, 32.689381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235817, 36.568012, 32.775642>,  <31.534933, 36.791306, 32.919411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235817, 36.568012, 32.775642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634763, -0.759818, -0.140544,
		-0.194637, -0.333244, 0.922532,
		-0.747791, -0.558234, -0.359419,
		31.011480, 36.400543, 32.667816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525213, 35.975018, 33.170273>,  <31.534933, 36.791306, 32.919411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525213, 35.975018, 33.170273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370586, 36.030190, 32.805519>,  <31.277811, 36.063293, 32.586666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370586, 36.030190, 32.805519>,  <31.525213, 35.975018, 33.170273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370586, 36.030190, 32.805519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540572, -0.767212, -0.345207,
		-0.747227, -0.626387, 0.222016,
		-0.386567, 0.137932, -0.911889,
		31.254616, 36.071568, 32.531952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282181, 35.327488, 32.829475>,  <31.525213, 35.975018, 33.170273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282181, 35.327488, 32.829475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401070, 35.566513, 32.531597>,  <31.472403, 35.709930, 32.352871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401070, 35.566513, 32.531597>,  <31.282181, 35.327488, 32.829475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401070, 35.566513, 32.531597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473354, -0.769569, -0.428601,
		-0.829213, -0.225115, -0.511595,
		0.297224, 0.597567, -0.744696,
		31.490236, 35.745785, 32.308189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200842, 34.936844, 32.309807>,  <31.282181, 35.327488, 32.829475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200842, 34.936844, 32.309807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445822, 35.218700, 32.166481>,  <31.592810, 35.387814, 32.080486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445822, 35.218700, 32.166481>,  <31.200842, 34.936844, 32.309807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445822, 35.218700, 32.166481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542555, -0.704340, -0.457755,
		-0.574928, 0.085947, -0.813678,
		0.612448, 0.704641, -0.358314,
		31.629557, 35.430092, 32.058987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302700, 34.664776, 31.613293>,  <31.200842, 34.936844, 32.309807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302700, 34.664776, 31.613293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602390, 34.914989, 31.700352>,  <31.782204, 35.065117, 31.752586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602390, 34.914989, 31.700352>,  <31.302700, 34.664776, 31.613293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602390, 34.914989, 31.700352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629763, -0.571079, -0.526562,
		-0.205088, 0.531580, -0.821804,
		0.749225, 0.625533, 0.217648,
		31.827158, 35.102650, 31.765646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571451, 34.895954, 30.970087>,  <31.302700, 34.664776, 31.613293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571451, 34.895954, 30.970087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862558, 34.927673, 31.242577>,  <32.037224, 34.946705, 31.406071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862558, 34.927673, 31.242577>,  <31.571451, 34.895954, 30.970087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862558, 34.927673, 31.242577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649665, -0.397980, -0.647724,
		0.219749, 0.913960, -0.341156,
		0.727768, 0.079300, 0.681224,
		32.080887, 34.951462, 31.446943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116989, 35.185432, 30.609392>,  <31.571451, 34.895954, 30.970087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116989, 35.185432, 30.609392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268009, 35.018856, 30.940218>,  <32.358620, 34.918911, 31.138714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268009, 35.018856, 30.940218>,  <32.116989, 35.185432, 30.609392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268009, 35.018856, 30.940218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649215, -0.517837, -0.557104,
		0.660284, 0.747277, 0.074850,
		0.377550, -0.416440, 0.827063,
		32.381275, 34.893925, 31.188337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862675, 35.168495, 30.417717>,  <32.116989, 35.185432, 30.609392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862675, 35.168495, 30.417717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826859, 34.929745, 30.736647>,  <32.805370, 34.786495, 30.928003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826859, 34.929745, 30.736647>,  <32.862675, 35.168495, 30.417717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826859, 34.929745, 30.736647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814385, -0.504734, -0.286391,
		0.573376, 0.623686, 0.531278,
		-0.089536, -0.596875, 0.797323,
		32.799999, 34.750683, 30.975843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580341, 35.109802, 30.818352>,  <32.862675, 35.168495, 30.417717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580341, 35.109802, 30.818352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358570, 34.783016, 30.881823>,  <33.225506, 34.586945, 30.919905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358570, 34.783016, 30.881823>,  <33.580341, 35.109802, 30.818352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358570, 34.783016, 30.881823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799534, -0.575796, -0.170891,
		0.230977, 0.032120, 0.972429,
		-0.554432, -0.816962, 0.158677,
		33.192242, 34.537926, 30.929426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121456, 34.611126, 30.923206>,  <33.580341, 35.109802, 30.818352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121456, 34.611126, 30.923206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781006, 34.405956, 30.878508>,  <33.576736, 34.282852, 30.851688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781006, 34.405956, 30.878508>,  <34.121456, 34.611126, 30.923206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781006, 34.405956, 30.878508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514458, -0.772627, -0.371997,
		0.104468, -0.374106, 0.921483,
		-0.851129, -0.512926, -0.111747,
		33.525669, 34.252079, 30.844984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349014, 33.919693, 30.976618>,  <34.121456, 34.611126, 30.923206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349014, 33.919693, 30.976618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985683, 33.884800, 30.812990>,  <33.767685, 33.863865, 30.714813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985683, 33.884800, 30.812990>,  <34.349014, 33.919693, 30.976618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985683, 33.884800, 30.812990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331313, -0.747006, -0.576380,
		-0.255297, -0.659070, 0.707425,
		-0.908325, -0.087231, -0.409067,
		33.713184, 33.858631, 30.690269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049053, 33.234501, 31.113205>,  <34.349014, 33.919693, 30.976618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049053, 33.234501, 31.113205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866989, 33.364433, 30.781588>,  <33.757751, 33.442394, 30.582617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866989, 33.364433, 30.781588>,  <34.049053, 33.234501, 31.113205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866989, 33.364433, 30.781588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382427, -0.769515, -0.511465,
		-0.804103, -0.549846, 0.226026,
		-0.455157, 0.324832, -0.829045,
		33.730442, 33.461884, 30.532875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818291, 32.621170, 30.762861>,  <34.049053, 33.234501, 31.113205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818291, 32.621170, 30.762861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814240, 32.900547, 30.476624>,  <33.811810, 33.068172, 30.304880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814240, 32.900547, 30.476624>,  <33.818291, 32.621170, 30.762861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814240, 32.900547, 30.476624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424263, -0.645022, -0.635569,
		-0.905482, -0.310038, -0.289790,
		-0.010130, 0.698443, -0.715594,
		33.811199, 33.110081, 30.261946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404995, 32.388313, 30.116623>,  <33.818291, 32.621170, 30.762861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404995, 32.388313, 30.116623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670231, 32.656872, 29.984238>,  <33.829372, 32.818008, 29.904806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670231, 32.656872, 29.984238>,  <33.404995, 32.388313, 30.116623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670231, 32.656872, 29.984238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235718, -0.606937, -0.758989,
		-0.710458, 0.425264, -0.560715,
		0.663089, 0.671400, -0.330961,
		33.869156, 32.858292, 29.884949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469200, 32.209930, 29.432812>,  <33.404995, 32.388313, 30.116623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469200, 32.209930, 29.432812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766956, 32.476711, 29.445807>,  <33.945610, 32.636780, 29.453604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766956, 32.476711, 29.445807>,  <33.469200, 32.209930, 29.432812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766956, 32.476711, 29.445807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529184, -0.559561, -0.637853,
		-0.407237, 0.492005, -0.769473,
		0.744394, 0.666950, 0.032487,
		33.990276, 32.676796, 29.455553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667377, 32.436272, 28.676357>,  <33.469200, 32.209930, 29.432812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667377, 32.436272, 28.676357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993229, 32.450989, 28.907881>,  <34.188740, 32.459820, 29.046795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993229, 32.450989, 28.907881>,  <33.667377, 32.436272, 28.676357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993229, 32.450989, 28.907881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463745, -0.640661, -0.611959,
		0.348302, 0.766942, -0.538968,
		0.814633, 0.036797, 0.578809,
		34.237617, 32.462029, 29.081524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284924, 32.655144, 28.353804>,  <33.667377, 32.436272, 28.676357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284924, 32.655144, 28.353804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444965, 32.458721, 28.663326>,  <34.540989, 32.340866, 28.849041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444965, 32.458721, 28.663326>,  <34.284924, 32.655144, 28.353804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444965, 32.458721, 28.663326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450305, -0.630051, -0.632662,
		0.798212, 0.601580, -0.030959,
		0.400103, -0.491058, 0.773809,
		34.564995, 32.311405, 28.895470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866543, 32.470699, 28.171719>,  <34.284924, 32.655144, 28.353804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866543, 32.470699, 28.171719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791862, 32.193668, 28.450422>,  <34.747055, 32.027451, 28.617645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791862, 32.193668, 28.450422>,  <34.866543, 32.470699, 28.171719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791862, 32.193668, 28.450422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362505, -0.707749, -0.606368,
		0.913090, 0.139371, 0.383200,
		-0.186699, -0.692580, 0.696761,
		34.735851, 31.985895, 28.659451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523014, 32.087284, 28.255692>,  <34.866543, 32.470699, 28.171719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523014, 32.087284, 28.255692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215359, 31.858231, 28.369186>,  <35.030766, 31.720797, 28.437283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215359, 31.858231, 28.369186>,  <35.523014, 32.087284, 28.255692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215359, 31.858231, 28.369186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304955, -0.719033, -0.624495,
		0.561625, -0.393799, 0.727667,
		-0.769142, -0.572638, 0.283736,
		34.984615, 31.686440, 28.454308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655254, 31.461918, 27.958340>,  <35.523014, 32.087284, 28.255692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655254, 31.461918, 27.958340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282330, 31.371134, 28.070967>,  <35.058575, 31.316664, 28.138542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282330, 31.371134, 28.070967>,  <35.655254, 31.461918, 27.958340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282330, 31.371134, 28.070967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011201, -0.796311, -0.604783,
		0.361475, -0.560694, 0.744955,
		-0.932315, -0.226958, 0.281566,
		35.002636, 31.303047, 28.155436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616776, 30.683849, 27.965662>,  <35.655254, 31.461918, 27.958340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616776, 30.683849, 27.965662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232029, 30.791958, 27.948875>,  <35.001179, 30.856823, 27.938805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232029, 30.791958, 27.948875>,  <35.616776, 30.683849, 27.965662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232029, 30.791958, 27.948875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218349, -0.851195, -0.477274,
		-0.164713, -0.449912, 0.877752,
		-0.961869, 0.270269, -0.041965,
		34.943466, 30.873039, 27.936285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279545, 30.099331, 28.021496>,  <35.616776, 30.683849, 27.965662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279545, 30.099331, 28.021496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988674, 30.338701, 27.886974>,  <34.814152, 30.482323, 27.806261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988674, 30.338701, 27.886974>,  <35.279545, 30.099331, 28.021496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988674, 30.338701, 27.886974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374484, -0.756427, -0.536265,
		-0.575303, -0.264020, 0.774158,
		-0.727178, 0.598425, -0.336303,
		34.770519, 30.518229, 27.786083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684223, 29.677906, 28.032507>,  <35.279545, 30.099331, 28.021496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684223, 29.677906, 28.032507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622738, 29.972109, 27.768568>,  <34.585846, 30.148630, 27.610205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622738, 29.972109, 27.768568>,  <34.684223, 29.677906, 28.032507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622738, 29.972109, 27.768568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139610, -0.677251, -0.722385,
		-0.978203, -0.018918, 0.206787,
		-0.153713, 0.735509, -0.659848,
		34.576626, 30.192762, 27.570614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057484, 29.562151, 27.556179>,  <34.684223, 29.677906, 28.032507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057484, 29.562151, 27.556179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259151, 29.830130, 27.338194>,  <34.380154, 29.990917, 27.207403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259151, 29.830130, 27.338194>,  <34.057484, 29.562151, 27.556179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259151, 29.830130, 27.338194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256045, -0.486702, -0.835202,
		-0.824775, 0.560618, -0.073843,
		0.504169, 0.669947, -0.544963,
		34.410400, 30.031115, 27.174706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640522, 29.665169, 26.954393>,  <34.057484, 29.562151, 27.556179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640522, 29.665169, 26.954393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002106, 29.789856, 26.837305>,  <34.219055, 29.864668, 26.767052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002106, 29.789856, 26.837305>,  <33.640522, 29.665169, 26.954393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002106, 29.789856, 26.837305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140188, -0.430683, -0.891549,
		-0.403981, 0.846962, -0.345622,
		0.903962, 0.311717, -0.292721,
		34.273293, 29.883371, 26.749489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587742, 29.795666, 26.281969>,  <33.640522, 29.665169, 26.954393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587742, 29.795666, 26.281969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986156, 29.765131, 26.300232>,  <34.225204, 29.746809, 26.311190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986156, 29.765131, 26.300232>,  <33.587742, 29.795666, 26.281969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986156, 29.765131, 26.300232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004440, -0.469979, -0.882666,
		0.088839, 0.879370, -0.467777,
		0.996036, -0.076339, 0.045657,
		34.284966, 29.742229, 26.313929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893005, 30.057203, 25.593750>,  <33.587742, 29.795666, 26.281969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893005, 30.057203, 25.593750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197021, 29.854548, 25.756554>,  <34.379433, 29.732954, 25.854235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197021, 29.854548, 25.756554>,  <33.893005, 30.057203, 25.593750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197021, 29.854548, 25.756554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187635, -0.428537, -0.883826,
		0.622198, 0.748113, -0.230643,
		0.760041, -0.506638, 0.407007,
		34.425034, 29.702557, 25.878656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334419, 30.005089, 24.984510>,  <33.893005, 30.057203, 25.593750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334419, 30.005089, 24.984510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463409, 29.724974, 25.239260>,  <34.540802, 29.556904, 25.392109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463409, 29.724974, 25.239260>,  <34.334419, 30.005089, 24.984510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463409, 29.724974, 25.239260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303791, -0.560661, -0.770305,
		0.896506, 0.441878, 0.031944,
		0.322471, -0.700287, 0.636875,
		34.560150, 29.514887, 25.430323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998398, 29.865934, 24.849899>,  <34.334419, 30.005089, 24.984510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998398, 29.865934, 24.849899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897411, 29.526146, 25.035227>,  <34.836819, 29.322273, 25.146423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897411, 29.526146, 25.035227>,  <34.998398, 29.865934, 24.849899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897411, 29.526146, 25.035227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494033, -0.524877, -0.693134,
		0.831981, 0.053903, 0.552179,
		-0.252464, -0.849469, 0.463318,
		34.821671, 29.271305, 25.174223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562538, 29.321302, 24.823490>,  <34.998398, 29.865934, 24.849899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562538, 29.321302, 24.823490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251377, 29.087671, 24.916195>,  <35.064678, 28.947493, 24.971817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251377, 29.087671, 24.916195>,  <35.562538, 29.321302, 24.823490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251377, 29.087671, 24.916195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393339, -0.740236, -0.545284,
		0.490047, -0.333019, 0.805576,
		-0.777906, -0.584080, 0.231761,
		35.018005, 28.912447, 24.985723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732899, 28.648823, 25.195154>,  <35.562538, 29.321302, 24.823490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732899, 28.648823, 25.195154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378021, 28.576979, 25.025152>,  <35.165096, 28.533873, 24.923151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378021, 28.576979, 25.025152>,  <35.732899, 28.648823, 25.195154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378021, 28.576979, 25.025152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409093, -0.732197, -0.544546,
		-0.213383, -0.656984, 0.723076,
		-0.887192, -0.179609, -0.425006,
		35.111862, 28.523096, 24.897650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704838, 27.984785, 25.203272>,  <35.732899, 28.648823, 25.195154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704838, 27.984785, 25.203272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456886, 28.112286, 24.916456>,  <35.308117, 28.188786, 24.744368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456886, 28.112286, 24.916456>,  <35.704838, 27.984785, 25.203272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456886, 28.112286, 24.916456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508324, -0.533013, -0.676390,
		-0.597794, -0.783768, 0.168373,
		-0.619878, 0.318754, -0.717040,
		35.270924, 28.207911, 24.701344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605438, 27.431072, 24.755962>,  <35.704838, 27.984785, 25.203272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605438, 27.431072, 24.755962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522579, 27.749134, 24.527990>,  <35.472866, 27.939972, 24.391207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522579, 27.749134, 24.527990>,  <35.605438, 27.431072, 24.755962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522579, 27.749134, 24.527990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461049, -0.434471, -0.773737,
		-0.862859, -0.423040, -0.276608,
		-0.207144, 0.795155, -0.569929,
		35.460438, 27.987680, 24.357012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549309, 27.171820, 24.056828>,  <35.605438, 27.431072, 24.755962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549309, 27.171820, 24.056828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629261, 27.558523, 23.993046>,  <35.677235, 27.790545, 23.954777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629261, 27.558523, 23.993046>,  <35.549309, 27.171820, 24.056828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629261, 27.558523, 23.993046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537806, -0.244285, -0.806901,
		-0.819030, 0.075531, -0.568757,
		0.199885, 0.966757, -0.159456,
		35.689228, 27.848551, 23.945210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540157, 27.159113, 23.416056>,  <35.549309, 27.171820, 24.056828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540157, 27.159113, 23.416056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733662, 27.493322, 23.520267>,  <35.849762, 27.693848, 23.582794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733662, 27.493322, 23.520267>,  <35.540157, 27.159113, 23.416056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733662, 27.493322, 23.520267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728005, -0.218928, -0.649676,
		-0.485783, 0.503953, -0.714175,
		0.483759, 0.835525, 0.260529,
		35.878788, 27.743980, 23.598427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542458, 27.660276, 22.860273>,  <35.540157, 27.159113, 23.416056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542458, 27.660276, 22.860273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869034, 27.764936, 23.066172>,  <36.064980, 27.827732, 23.189711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869034, 27.764936, 23.066172>,  <35.542458, 27.660276, 22.860273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869034, 27.764936, 23.066172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575026, -0.287157, -0.766085,
		-0.052634, 0.921455, -0.384903,
		0.816440, 0.261651, 0.514746,
		36.113964, 27.843431, 23.220596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967258, 27.902355, 22.388790>,  <35.542458, 27.660276, 22.860273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967258, 27.902355, 22.388790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234322, 27.880329, 22.685762>,  <36.394558, 27.867113, 22.863945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234322, 27.880329, 22.685762>,  <35.967258, 27.902355, 22.388790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234322, 27.880329, 22.685762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735420, -0.106217, -0.669234,
		0.115711, 0.992817, -0.030420,
		0.667658, -0.055066, 0.742428,
		36.434620, 27.863810, 22.908491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430359, 28.378307, 22.130638>,  <35.967258, 27.902355, 22.388790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430359, 28.378307, 22.130638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625099, 28.131931, 22.378376>,  <36.741943, 27.984106, 22.527020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625099, 28.131931, 22.378376>,  <36.430359, 28.378307, 22.130638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625099, 28.131931, 22.378376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765090, -0.041400, -0.642591,
		0.421439, 0.786704, 0.451095,
		0.486854, -0.615941, 0.619347,
		36.771156, 27.947149, 22.564180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082413, 28.662239, 22.214125>,  <36.430359, 28.378307, 22.130638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082413, 28.662239, 22.214125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178440, 28.294371, 22.338428>,  <37.236057, 28.073648, 22.413010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178440, 28.294371, 22.338428>,  <37.082413, 28.662239, 22.214125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178440, 28.294371, 22.338428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882413, 0.073310, -0.464728,
		0.404616, 0.385783, 0.829131,
		0.240068, -0.919672, 0.310758,
		37.250462, 28.018469, 22.431656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728729, 28.753891, 22.547684>,  <37.082413, 28.662239, 22.214125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728729, 28.753891, 22.547684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706497, 28.374071, 22.424223>,  <37.693157, 28.146179, 22.350147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706497, 28.374071, 22.424223>,  <37.728729, 28.753891, 22.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706497, 28.374071, 22.424223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838995, 0.123174, -0.530014,
		0.541293, -0.288414, 0.789823,
		-0.055578, -0.949550, -0.308651,
		37.689823, 28.089207, 22.331627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344849, 28.541498, 22.662457>,  <37.728729, 28.753891, 22.547684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344849, 28.541498, 22.662457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190346, 28.299324, 22.384104>,  <38.097645, 28.154018, 22.217093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190346, 28.299324, 22.384104>,  <38.344849, 28.541498, 22.662457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190346, 28.299324, 22.384104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732046, 0.257781, -0.630601,
		0.561175, -0.752991, 0.343639,
		-0.386253, -0.605437, -0.695884,
		38.074471, 28.117693, 22.175339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880390, 28.275232, 22.494238>,  <38.344849, 28.541498, 22.662457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880390, 28.275232, 22.494238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623859, 28.171179, 22.205507>,  <38.469940, 28.108747, 22.032269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623859, 28.171179, 22.205507>,  <38.880390, 28.275232, 22.494238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623859, 28.171179, 22.205507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626880, 0.364798, -0.688436,
		0.442407, -0.894009, -0.070880,
		-0.641325, -0.260135, -0.721825,
		38.431461, 28.093138, 21.988960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242603, 27.792456, 21.968102>,  <38.880390, 28.275232, 22.494238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242603, 27.792456, 21.968102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933926, 27.966682, 21.782732>,  <38.748718, 28.071218, 21.671511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933926, 27.966682, 21.782732>,  <39.242603, 27.792456, 21.968102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933926, 27.966682, 21.782732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592484, 0.227490, -0.772794,
		-0.231180, -0.870935, -0.433621,
		-0.771699, 0.435569, -0.463424,
		38.702415, 28.097353, 21.643705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309742, 27.528006, 21.323296>,  <39.242603, 27.792456, 21.968102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309742, 27.528006, 21.323296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090080, 27.860247, 21.286360>,  <38.958282, 28.059591, 21.264198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090080, 27.860247, 21.286360>,  <39.309742, 27.528006, 21.323296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090080, 27.860247, 21.286360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573833, 0.294429, -0.764217,
		-0.607574, -0.472661, -0.638315,
		-0.549154, 0.830604, -0.092341,
		38.925335, 28.109428, 21.258657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393303, 27.658607, 20.626829>,  <39.309742, 27.528006, 21.323296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393303, 27.658607, 20.626829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266739, 27.998873, 20.794760>,  <39.190800, 28.203032, 20.895519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266739, 27.998873, 20.794760>,  <39.393303, 27.658607, 20.626829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266739, 27.998873, 20.794760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552080, 0.525022, -0.647734,
		-0.771424, 0.026832, -0.635755,
		-0.316406, 0.850665, 0.419828,
		39.171818, 28.254072, 20.920708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640354, 28.322014, 20.815796>,  <39.393303, 27.658607, 20.626829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640354, 28.322014, 20.815796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895897, 28.529181, 20.588245>,  <40.049225, 28.653481, 20.451715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895897, 28.529181, 20.588245>,  <39.640354, 28.322014, 20.815796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895897, 28.529181, 20.588245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112385, -0.794348, -0.596976,
		-0.761071, 0.317451, -0.565683,
		0.638859, 0.517915, -0.568878,
		40.087555, 28.684555, 20.417582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380798, 28.223621, 20.181263>,  <39.640354, 28.322014, 20.815796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380798, 28.223621, 20.181263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756443, 28.326077, 20.089647>,  <39.981831, 28.387550, 20.034678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756443, 28.326077, 20.089647>,  <39.380798, 28.223621, 20.181263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756443, 28.326077, 20.089647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056800, -0.773123, -0.631708,
		-0.338881, 0.580236, -0.740598,
		0.939113, 0.256139, -0.229039,
		40.038177, 28.402918, 20.020935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506065, 28.135519, 19.378248>,  <39.380798, 28.223621, 20.181263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506065, 28.135519, 19.378248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864311, 28.144096, 19.555971>,  <40.079258, 28.149242, 19.662605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864311, 28.144096, 19.555971>,  <39.506065, 28.135519, 19.378248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864311, 28.144096, 19.555971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233017, -0.873441, -0.427556,
		0.378910, 0.486458, -0.787265,
		0.895617, 0.021441, 0.444308,
		40.132996, 28.150528, 19.689264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109821, 27.810610, 18.947571>,  <39.506065, 28.135519, 19.378248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109821, 27.810610, 18.947571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178940, 27.785353, 19.340744>,  <40.220413, 27.770199, 19.576647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178940, 27.785353, 19.340744>,  <40.109821, 27.810610, 18.947571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178940, 27.785353, 19.340744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041800, -0.996574, -0.071367,
		0.984069, 0.053419, -0.169569,
		0.172800, -0.063142, 0.982931,
		40.230782, 27.766411, 19.635624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842590, 27.511974, 19.131687>,  <40.109821, 27.810610, 18.947571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842590, 27.511974, 19.131687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564503, 27.444506, 19.411179>,  <40.397652, 27.404024, 19.578875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564503, 27.444506, 19.411179>,  <40.842590, 27.511974, 19.131687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564503, 27.444506, 19.411179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206464, -0.977974, -0.030651,
		0.688511, 0.122954, 0.714728,
		-0.695216, -0.168669, 0.698731,
		40.355938, 27.393906, 19.620798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140347, 27.285814, 19.753839>,  <40.842590, 27.511974, 19.131687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140347, 27.285814, 19.753839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770248, 27.143394, 19.701448>,  <40.548191, 27.057943, 19.670013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770248, 27.143394, 19.701448>,  <41.140347, 27.285814, 19.753839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770248, 27.143394, 19.701448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360568, -0.932659, -0.011760,
		-0.117971, -0.058107, 0.991316,
		-0.925243, -0.356049, -0.130978,
		40.492676, 27.036579, 19.662155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864239, 26.805756, 20.328630>,  <41.140347, 27.285814, 19.753839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864239, 26.805756, 20.328630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692223, 26.688358, 19.987122>,  <40.589012, 26.617920, 19.782217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692223, 26.688358, 19.987122>,  <40.864239, 26.805756, 20.328630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692223, 26.688358, 19.987122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430615, -0.897860, 0.091750,
		-0.793495, -0.328190, 0.512500,
		-0.430042, -0.293494, -0.853771,
		40.563210, 26.600309, 19.730989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870640, 27.638765, 20.488728>,  <40.864239, 26.805756, 20.328630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870640, 27.638765, 20.488728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878204, 27.757355, 20.106787>,  <40.882744, 27.828508, 19.877623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878204, 27.757355, 20.106787>,  <40.870640, 27.638765, 20.488728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878204, 27.757355, 20.106787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219236, 0.933012, 0.285349,
		0.975489, 0.203942, 0.082643,
		0.018912, 0.296473, -0.954854,
		40.883877, 27.846296, 19.820330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340382, 28.190744, 20.156628>,  <40.870640, 27.638765, 20.488728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340382, 28.190744, 20.156628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976387, 28.185085, 19.990871>,  <40.757988, 28.181690, 19.891417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976387, 28.185085, 19.990871>,  <41.340382, 28.190744, 20.156628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976387, 28.185085, 19.990871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160063, 0.933934, 0.319605,
		0.382493, 0.357166, -0.852134,
		-0.909988, -0.014148, -0.414392,
		40.703392, 28.180841, 19.866554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217060, 28.893093, 19.908747>,  <41.340382, 28.190744, 20.156628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217060, 28.893093, 19.908747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857464, 28.721783, 19.945396>,  <40.641705, 28.618998, 19.967386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857464, 28.721783, 19.945396>,  <41.217060, 28.893093, 19.908747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857464, 28.721783, 19.945396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347734, 0.825169, 0.445171,
		-0.266262, 0.368343, -0.890746,
		-0.898991, -0.428274, 0.091626,
		40.587765, 28.593300, 19.972883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707226, 29.377506, 19.586138>,  <41.217060, 28.893093, 19.908747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707226, 29.377506, 19.586138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525227, 29.147261, 19.857914>,  <40.416027, 29.009113, 20.020981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525227, 29.147261, 19.857914>,  <40.707226, 29.377506, 19.586138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525227, 29.147261, 19.857914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223229, 0.812363, 0.538735,
		-0.862057, 0.093454, -0.498120,
		-0.455001, -0.575616, 0.679441,
		40.388725, 28.974575, 20.061747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095772, 29.595268, 19.508497>,  <40.707226, 29.377506, 19.586138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095772, 29.595268, 19.508497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134464, 29.430231, 19.870804>,  <40.157681, 29.331209, 20.088188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134464, 29.430231, 19.870804>,  <40.095772, 29.595268, 19.508497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134464, 29.430231, 19.870804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298476, 0.856124, 0.421857,
		-0.949502, -0.311157, -0.040332,
		0.096734, -0.412592, 0.905765,
		40.163483, 29.306454, 20.142532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583965, 29.834990, 19.871737>,  <40.095772, 29.595268, 19.508497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583965, 29.834990, 19.871737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791183, 29.709131, 20.189888>,  <39.915516, 29.633615, 20.380779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791183, 29.709131, 20.189888>,  <39.583965, 29.834990, 19.871737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791183, 29.709131, 20.189888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233347, 0.842624, 0.485318,
		-0.822909, -0.437016, 0.363096,
		0.518045, -0.314645, 0.795379,
		39.946598, 29.614738, 20.428501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160305, 29.940645, 20.393560>,  <39.583965, 29.834990, 19.871737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160305, 29.940645, 20.393560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519077, 29.934015, 20.570303>,  <39.734341, 29.930037, 20.676350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519077, 29.934015, 20.570303>,  <39.160305, 29.940645, 20.393560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519077, 29.934015, 20.570303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252963, 0.800375, 0.543516,
		-0.362660, -0.599271, 0.713689,
		0.896932, -0.016574, 0.441858,
		39.788158, 29.929043, 20.702860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056034, 30.036455, 20.996635>,  <39.160305, 29.940645, 20.393560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056034, 30.036455, 20.996635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440220, 30.147736, 21.000971>,  <39.670731, 30.214504, 21.003572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440220, 30.147736, 21.000971>,  <39.056034, 30.036455, 20.996635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440220, 30.147736, 21.000971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246016, 0.829840, 0.500841,
		0.130339, -0.483706, 0.865471,
		0.960462, 0.278199, 0.010839,
		39.728359, 30.231195, 21.004223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180828, 30.108212, 21.684973>,  <39.056034, 30.036455, 20.996635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180828, 30.108212, 21.684973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459854, 30.328180, 21.501242>,  <39.627270, 30.460161, 21.391003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459854, 30.328180, 21.501242>,  <39.180828, 30.108212, 21.684973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459854, 30.328180, 21.501242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255583, 0.789859, 0.557494,
		0.669383, -0.271494, 0.691532,
		0.697569, 0.549922, -0.459329,
		39.669125, 30.493156, 21.363443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579830, 30.263199, 22.286615>,  <39.180828, 30.108212, 21.684973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579830, 30.263199, 22.286615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654491, 30.532705, 22.000622>,  <39.699287, 30.694408, 21.829025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654491, 30.532705, 22.000622>,  <39.579830, 30.263199, 22.286615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654491, 30.532705, 22.000622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195341, 0.738695, 0.645113,
		0.962810, 0.019254, 0.269492,
		0.186651, 0.673765, -0.714985,
		39.710487, 30.734835, 21.786127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999783, 30.688789, 22.657925>,  <39.579830, 30.263199, 22.286615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999783, 30.688789, 22.657925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871807, 30.887810, 22.335413>,  <39.795021, 31.007223, 22.141907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871807, 30.887810, 22.335413>,  <39.999783, 30.688789, 22.657925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871807, 30.887810, 22.335413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408958, 0.695122, 0.591235,
		0.854632, 0.518890, -0.018916,
		-0.319935, 0.497552, -0.806278,
		39.775826, 31.037075, 22.093529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067608, 31.338043, 22.873682>,  <39.999783, 30.688789, 22.657925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067608, 31.338043, 22.873682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826088, 31.381609, 22.557819>,  <39.681175, 31.407749, 22.368301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826088, 31.381609, 22.557819>,  <40.067608, 31.338043, 22.873682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826088, 31.381609, 22.557819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439378, 0.781076, 0.443698,
		0.665108, 0.614864, -0.423760,
		-0.603803, 0.108916, -0.789658,
		39.644947, 31.414284, 22.320923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003269, 32.113918, 22.802950>,  <40.067608, 31.338043, 22.873682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003269, 32.113918, 22.802950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697052, 31.940407, 22.612888>,  <39.513321, 31.836298, 22.498852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697052, 31.940407, 22.612888>,  <40.003269, 32.113918, 22.802950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697052, 31.940407, 22.612888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641860, 0.464198, 0.610357,
		-0.044197, 0.772239, -0.633794,
		-0.765547, -0.433783, -0.475153,
		39.467388, 31.810272, 22.470343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632244, 32.715950, 22.522224>,  <40.003269, 32.113918, 22.802950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632244, 32.715950, 22.522224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397324, 32.393852, 22.554853>,  <39.256371, 32.200592, 22.574430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397324, 32.393852, 22.554853>,  <39.632244, 32.715950, 22.522224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397324, 32.393852, 22.554853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586607, 0.492931, 0.642582,
		-0.557646, 0.329539, -0.761863,
		-0.587302, -0.805247, 0.081571,
		39.221134, 32.152279, 22.579325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930161, 33.002411, 22.470034>,  <39.632244, 32.715950, 22.522224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930161, 33.002411, 22.470034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887718, 32.643169, 22.640751>,  <38.862251, 32.427624, 22.743181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887718, 32.643169, 22.640751>,  <38.930161, 33.002411, 22.470034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887718, 32.643169, 22.640751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711346, 0.368465, 0.598515,
		-0.694786, -0.240090, -0.677959,
		-0.106107, -0.898104, 0.426791,
		38.855885, 32.373737, 22.768787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224457, 32.927155, 22.485111>,  <38.930161, 33.002411, 22.470034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224457, 32.927155, 22.485111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367741, 32.697319, 22.779467>,  <38.453712, 32.559418, 22.956079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367741, 32.697319, 22.779467>,  <38.224457, 32.927155, 22.485111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367741, 32.697319, 22.779467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691688, 0.366081, 0.622537,
		-0.627099, -0.732004, -0.266304,
		0.358210, -0.574592, 0.735887,
		38.475204, 32.524940, 23.000233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672283, 32.530014, 22.748585>,  <38.224457, 32.927155, 22.485111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672283, 32.530014, 22.748585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937061, 32.540546, 23.048222>,  <38.095928, 32.546867, 23.228004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937061, 32.540546, 23.048222>,  <37.672283, 32.530014, 22.748585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937061, 32.540546, 23.048222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717946, 0.309436, 0.623541,
		-0.215379, -0.950556, 0.223732,
		0.661941, 0.026330, 0.749093,
		38.135643, 32.548447, 23.272949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320103, 32.306435, 23.373730>,  <37.672283, 32.530014, 22.748585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320103, 32.306435, 23.373730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633327, 32.502216, 23.527224>,  <37.821262, 32.619686, 23.619320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633327, 32.502216, 23.527224>,  <37.320103, 32.306435, 23.373730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633327, 32.502216, 23.527224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607183, 0.467983, 0.642122,
		0.134707, -0.735817, 0.663646,
		0.783060, 0.489454, 0.383736,
		37.868244, 32.649052, 23.642344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257927, 32.104282, 24.050045>,  <37.320103, 32.306435, 23.373730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257927, 32.104282, 24.050045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475849, 32.438187, 24.018156>,  <37.606602, 32.638531, 23.999023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475849, 32.438187, 24.018156>,  <37.257927, 32.104282, 24.050045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475849, 32.438187, 24.018156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542471, 0.423339, 0.725609,
		0.639463, -0.352068, 0.683473,
		0.544804, 0.834765, -0.079723,
		37.639290, 32.688618, 23.994240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428623, 32.200874, 24.746832>,  <37.257927, 32.104282, 24.050045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428623, 32.200874, 24.746832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470184, 32.555889, 24.567282>,  <37.495121, 32.768898, 24.459551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470184, 32.555889, 24.567282>,  <37.428623, 32.200874, 24.746832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470184, 32.555889, 24.567282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465378, 0.442248, 0.766707,
		0.878993, 0.129235, 0.458988,
		0.103901, 0.887533, -0.448876,
		37.501354, 32.822147, 24.432619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660248, 32.571537, 25.229891>,  <37.428623, 32.200874, 24.746832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660248, 32.571537, 25.229891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503635, 32.833092, 24.970928>,  <37.409668, 32.990025, 24.815550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503635, 32.833092, 24.970928>,  <37.660248, 32.571537, 25.229891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503635, 32.833092, 24.970928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454851, 0.474074, 0.753899,
		0.799883, 0.589650, 0.111805,
		-0.391533, 0.653885, -0.647407,
		37.386177, 33.029259, 24.776707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647549, 33.144730, 25.601870>,  <37.660248, 32.571537, 25.229891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647549, 33.144730, 25.601870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407665, 33.244320, 25.297670>,  <37.263733, 33.304073, 25.115150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407665, 33.244320, 25.297670>,  <37.647549, 33.144730, 25.601870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407665, 33.244320, 25.297670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522471, 0.598009, 0.607790,
		0.606110, 0.761837, -0.228551,
		-0.599713, 0.248976, -0.760497,
		37.227753, 33.319012, 25.069521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722538, 33.953766, 25.464535>,  <37.647549, 33.144730, 25.601870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722538, 33.953766, 25.464535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371738, 33.845509, 25.305729>,  <37.161259, 33.780556, 25.210445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371738, 33.845509, 25.305729>,  <37.722538, 33.953766, 25.464535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371738, 33.845509, 25.305729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477376, 0.584650, 0.655970,
		0.054581, 0.764812, -0.641937,
		-0.877002, -0.270642, -0.397014,
		37.108639, 33.764317, 25.186625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264023, 34.559147, 25.333899>,  <37.722538, 33.953766, 25.464535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264023, 34.559147, 25.333899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006561, 34.253120, 25.341656>,  <36.852085, 34.069504, 25.346310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006561, 34.253120, 25.341656>,  <37.264023, 34.559147, 25.333899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006561, 34.253120, 25.341656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649919, 0.559811, 0.514021,
		-0.404117, 0.318250, -0.857558,
		-0.643658, -0.765068, 0.019393,
		36.813465, 34.023602, 25.347473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571484, 34.790092, 25.139746>,  <37.264023, 34.559147, 25.333899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571484, 34.790092, 25.139746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458118, 34.458790, 25.333105>,  <36.390099, 34.260010, 25.449121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458118, 34.458790, 25.333105>,  <36.571484, 34.790092, 25.139746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458118, 34.458790, 25.333105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444240, 0.560109, 0.699234,
		-0.849899, -0.016574, -0.526685,
		-0.283412, -0.828253, 0.483399,
		36.373096, 34.210316, 25.478125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826897, 34.816025, 25.206463>,  <36.571484, 34.790092, 25.139746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826897, 34.816025, 25.206463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923508, 34.540867, 25.480242>,  <35.981472, 34.375771, 25.644508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923508, 34.540867, 25.480242>,  <35.826897, 34.816025, 25.206463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923508, 34.540867, 25.480242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548400, 0.485138, 0.681101,
		-0.800577, -0.539853, -0.260068,
		0.241525, -0.687895, 0.684446,
		35.995964, 34.334499, 25.685575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187805, 34.679466, 25.560516>,  <35.826897, 34.816025, 25.206463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187805, 34.679466, 25.560516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483521, 34.578873, 25.810385>,  <35.660950, 34.518517, 25.960306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483521, 34.578873, 25.810385>,  <35.187805, 34.679466, 25.560516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483521, 34.578873, 25.810385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510147, 0.396356, 0.763317,
		-0.439555, -0.882982, 0.164725,
		0.739285, -0.251485, 0.624671,
		35.705307, 34.503426, 25.997786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836288, 34.571529, 26.176458>,  <35.187805, 34.679466, 25.560516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836288, 34.571529, 26.176458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211254, 34.596458, 26.313494>,  <35.436234, 34.611416, 26.395716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211254, 34.596458, 26.313494>,  <34.836288, 34.571529, 26.176458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211254, 34.596458, 26.313494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345952, 0.278582, 0.895941,
		-0.039601, -0.958388, 0.282708,
		0.937416, 0.062323, 0.342588,
		35.492477, 34.615154, 26.416269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838718, 34.329594, 26.856373>,  <34.836288, 34.571529, 26.176458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838718, 34.329594, 26.856373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181889, 34.533543, 26.831083>,  <35.387791, 34.655910, 26.815910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181889, 34.533543, 26.831083>,  <34.838718, 34.329594, 26.856373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181889, 34.533543, 26.831083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221213, 0.477651, 0.850244,
		0.463701, -0.715467, 0.522579,
		0.857931, 0.509860, -0.063217,
		35.439266, 34.686504, 26.812117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161572, 34.312195, 27.529749>,  <34.838718, 34.329594, 26.856373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161572, 34.312195, 27.529749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356579, 34.616661, 27.358656>,  <35.473583, 34.799339, 27.256001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356579, 34.616661, 27.358656>,  <35.161572, 34.312195, 27.529749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356579, 34.616661, 27.358656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122149, 0.544533, 0.829797,
		0.864528, -0.352292, 0.358444,
		0.487516, 0.761166, -0.427732,
		35.502834, 34.845013, 27.230337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542282, 34.583675, 28.119476>,  <35.161572, 34.312195, 27.529749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542282, 34.583675, 28.119476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539455, 34.859230, 27.829542>,  <35.537758, 35.024563, 27.655582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539455, 34.859230, 27.829542>,  <35.542282, 34.583675, 28.119476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539455, 34.859230, 27.829542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380811, 0.668381, 0.638944,
		0.924626, 0.280542, 0.257611,
		-0.007069, 0.688885, -0.724835,
		35.537334, 35.065895, 27.612091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817787, 35.055920, 28.454296>,  <35.542282, 34.583675, 28.119476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817787, 35.055920, 28.454296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654964, 35.246918, 28.142836>,  <35.557270, 35.361519, 27.955959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654964, 35.246918, 28.142836>,  <35.817787, 35.055920, 28.454296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654964, 35.246918, 28.142836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184689, 0.791838, 0.582136,
		0.894534, 0.380773, -0.234138,
		-0.407061, 0.477498, -0.778651,
		35.532845, 35.390167, 27.909241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071587, 35.827305, 28.393301>,  <35.817787, 35.055920, 28.454296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071587, 35.827305, 28.393301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701897, 35.783749, 28.246906>,  <35.480083, 35.757614, 28.159069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701897, 35.783749, 28.246906>,  <36.071587, 35.827305, 28.393301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701897, 35.783749, 28.246906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343109, 0.657449, 0.670848,
		0.167567, 0.745589, -0.644995,
		-0.924228, -0.108892, -0.365985,
		35.424629, 35.751080, 28.137112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735390, 36.537373, 28.330462>,  <36.071587, 35.827305, 28.393301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735390, 36.537373, 28.330462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422752, 36.291084, 28.290483>,  <35.235168, 36.143311, 28.266497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422752, 36.291084, 28.290483>,  <35.735390, 36.537373, 28.330462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422752, 36.291084, 28.290483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481463, 0.493601, 0.724259,
		-0.396609, 0.614200, -0.682246,
		-0.781597, -0.615724, -0.099947,
		35.188274, 36.106365, 28.260500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167000, 36.897545, 28.304466>,  <35.735390, 36.537373, 28.330462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167000, 36.897545, 28.304466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990841, 36.546219, 28.378880>,  <34.885147, 36.335423, 28.423527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990841, 36.546219, 28.378880>,  <35.167000, 36.897545, 28.304466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990841, 36.546219, 28.378880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594363, 0.440526, 0.672807,
		-0.672890, 0.185732, -0.716046,
		-0.440398, -0.878317, 0.186033,
		34.858723, 36.282722, 28.434689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548275, 37.132698, 28.386120>,  <35.167000, 36.897545, 28.304466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548275, 37.132698, 28.386120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544373, 36.763393, 28.539734>,  <34.542030, 36.541809, 28.631903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544373, 36.763393, 28.539734>,  <34.548275, 37.132698, 28.386120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544373, 36.763393, 28.539734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628218, 0.304458, 0.715994,
		-0.777977, -0.234275, -0.582982,
		-0.009754, -0.923266, 0.384037,
		34.541447, 36.486412, 28.654945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777275, 36.851055, 28.477053>,  <34.548275, 37.132698, 28.386120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777275, 36.851055, 28.477053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006924, 36.643379, 28.730295>,  <34.144714, 36.518776, 28.882240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006924, 36.643379, 28.730295>,  <33.777275, 36.851055, 28.477053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006924, 36.643379, 28.730295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635715, 0.204637, 0.744305,
		-0.515991, -0.829800, -0.212568,
		0.574125, -0.519187, 0.633107,
		34.179161, 36.487621, 28.920227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332348, 36.431492, 28.896793>,  <33.777275, 36.851055, 28.477053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332348, 36.431492, 28.896793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672581, 36.445599, 29.106657>,  <33.876720, 36.454063, 29.232576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672581, 36.445599, 29.106657>,  <33.332348, 36.431492, 28.896793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672581, 36.445599, 29.106657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521252, 0.188135, 0.832407,
		-0.069350, -0.981510, 0.178408,
		0.850580, 0.035268, 0.524661,
		33.927753, 36.456181, 29.264055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135189, 36.108624, 29.451597>,  <33.332348, 36.431492, 28.896793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135189, 36.108624, 29.451597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465321, 36.306492, 29.560503>,  <33.663399, 36.425213, 29.625847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465321, 36.306492, 29.560503>,  <33.135189, 36.108624, 29.451597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465321, 36.306492, 29.560503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446005, 0.275414, 0.851602,
		0.346278, -0.824286, 0.447934,
		0.825331, 0.494672, 0.272266,
		33.712921, 36.454895, 29.642183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306240, 35.857697, 30.127420>,  <33.135189, 36.108624, 29.451597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306240, 35.857697, 30.127420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487297, 36.213341, 30.100269>,  <33.595932, 36.426727, 30.083979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487297, 36.213341, 30.100269>,  <33.306240, 35.857697, 30.127420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487297, 36.213341, 30.100269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309484, 0.228032, 0.923158,
		0.836264, -0.396851, 0.378381,
		0.452639, 0.889107, -0.067876,
		33.623089, 36.480072, 30.079906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650448, 35.922569, 30.738693>,  <33.306240, 35.857697, 30.127420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650448, 35.922569, 30.738693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607178, 36.289242, 30.584814>,  <33.581215, 36.509247, 30.492487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607178, 36.289242, 30.584814>,  <33.650448, 35.922569, 30.738693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607178, 36.289242, 30.584814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660960, 0.222735, 0.716604,
		0.742583, 0.331791, 0.581795,
		-0.108177, 0.916681, -0.384700,
		33.574726, 36.564247, 30.469404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941360, 36.512150, 31.294659>,  <33.650448, 35.922569, 30.738693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941360, 36.512150, 31.294659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683838, 36.678188, 31.037533>,  <33.529324, 36.777809, 30.883257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683838, 36.678188, 31.037533>,  <33.941360, 36.512150, 31.294659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683838, 36.678188, 31.037533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558447, 0.319428, 0.765573,
		0.523117, 0.851859, 0.026157,
		-0.643805, 0.415092, -0.642817,
		33.490696, 36.802715, 30.844688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595127, 36.687523, 31.302748>,  <33.941360, 36.512150, 31.294659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595127, 36.687523, 31.302748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843681, 36.568409, 31.592632>,  <34.992813, 36.496941, 31.766563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843681, 36.568409, 31.592632>,  <34.595127, 36.687523, 31.302748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843681, 36.568409, 31.592632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767939, 0.048006, -0.638721,
		0.155409, 0.953426, 0.258509,
		0.621383, -0.297783, 0.724712,
		35.030098, 36.479073, 31.810045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165264, 37.119480, 31.173038>,  <34.595127, 36.687523, 31.302748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165264, 37.119480, 31.173038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295593, 36.817181, 31.400259>,  <35.373791, 36.635799, 31.536591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295593, 36.817181, 31.400259>,  <35.165264, 37.119480, 31.173038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295593, 36.817181, 31.400259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842853, -0.039995, -0.536656,
		0.428298, 0.653637, 0.623955,
		0.325823, -0.755751, 0.568049,
		35.393341, 36.590454, 31.570673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868504, 37.275364, 31.437698>,  <35.165264, 37.119480, 31.173038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868504, 37.275364, 31.437698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816971, 36.880138, 31.471485>,  <35.786053, 36.643002, 31.491756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816971, 36.880138, 31.471485>,  <35.868504, 37.275364, 31.437698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816971, 36.880138, 31.471485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858966, -0.153749, -0.488405,
		0.495561, 0.009632, 0.868520,
		-0.128830, -0.988063, 0.084466,
		35.778320, 36.583721, 31.496824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528614, 37.037266, 31.403324>,  <35.868504, 37.275364, 31.437698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528614, 37.037266, 31.403324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337593, 36.689495, 31.352663>,  <36.222980, 36.480831, 31.322266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337593, 36.689495, 31.352663>,  <36.528614, 37.037266, 31.403324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337593, 36.689495, 31.352663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715443, -0.301137, -0.630443,
		0.509984, -0.391684, 0.765833,
		-0.477555, -0.869425, -0.126652,
		36.194328, 36.428669, 31.314667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996281, 36.447170, 31.502277>,  <36.528614, 37.037266, 31.403324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996281, 36.447170, 31.502277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698326, 36.314533, 31.270695>,  <36.519554, 36.234951, 31.131744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698326, 36.314533, 31.270695>,  <36.996281, 36.447170, 31.502277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698326, 36.314533, 31.270695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667193, -0.371604, -0.645573,
		-0.001074, -0.867154, 0.498039,
		-0.744885, -0.331595, -0.578958,
		36.474861, 36.215054, 31.097008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174107, 35.699444, 31.338839>,  <36.996281, 36.447170, 31.502277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174107, 35.699444, 31.338839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907070, 35.815243, 31.064463>,  <36.746849, 35.884724, 30.899837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907070, 35.815243, 31.064463>,  <37.174107, 35.699444, 31.338839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907070, 35.815243, 31.064463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514351, -0.486779, -0.706038,
		-0.538302, -0.824156, 0.176061,
		-0.667588, 0.289504, -0.685940,
		36.706795, 35.902092, 30.858681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024300, 35.057495, 30.960535>,  <37.174107, 35.699444, 31.338839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024300, 35.057495, 30.960535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929470, 35.364590, 30.722418>,  <36.872574, 35.548847, 30.579548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929470, 35.364590, 30.722418>,  <37.024300, 35.057495, 30.960535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929470, 35.364590, 30.722418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549002, -0.399664, -0.734074,
		-0.801494, -0.500847, -0.326739,
		-0.237073, 0.767737, -0.595295,
		36.858349, 35.594910, 30.543829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237350, 34.756199, 30.267899>,  <37.024300, 35.057495, 30.960535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237350, 34.756199, 30.267899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211998, 35.151726, 30.213900>,  <37.196789, 35.389042, 30.181501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211998, 35.151726, 30.213900>,  <37.237350, 34.756199, 30.267899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211998, 35.151726, 30.213900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425705, -0.095557, -0.899802,
		-0.902640, -0.114496, -0.414888,
		-0.063378, 0.988817, -0.134995,
		37.192986, 35.448372, 30.173401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899525, 34.865627, 29.560163>,  <37.237350, 34.756199, 30.267899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899525, 34.865627, 29.560163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105572, 35.195644, 29.653080>,  <37.229202, 35.393654, 29.708830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105572, 35.195644, 29.653080>,  <36.899525, 34.865627, 29.560163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105572, 35.195644, 29.653080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561293, -0.119889, -0.818888,
		-0.647767, 0.552209, -0.524846,
		0.515120, 0.825041, 0.232291,
		37.260109, 35.443157, 29.722767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864075, 35.259430, 28.994261>,  <36.899525, 34.865627, 29.560163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864075, 35.259430, 28.994261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167351, 35.448521, 29.173893>,  <37.349316, 35.561977, 29.281672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167351, 35.448521, 29.173893>,  <36.864075, 35.259430, 28.994261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167351, 35.448521, 29.173893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484735, 0.051986, -0.873115,
		-0.436094, 0.879672, -0.189734,
		0.758191, 0.472731, 0.449079,
		37.394810, 35.590340, 29.308617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937920, 35.965134, 28.825819>,  <36.864075, 35.259430, 28.994261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937920, 35.965134, 28.825819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303051, 35.850735, 28.942406>,  <37.522129, 35.782097, 29.012358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303051, 35.850735, 28.942406>,  <36.937920, 35.965134, 28.825819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303051, 35.850735, 28.942406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285686, -0.062718, -0.956269,
		0.291769, 0.956176, 0.024454,
		0.912828, -0.285996, 0.291465,
		37.576900, 35.764935, 29.029846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336700, 36.240726, 28.329212>,  <36.937920, 35.965134, 28.825819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336700, 36.240726, 28.329212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579826, 35.982418, 28.514053>,  <37.725700, 35.827431, 28.624958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579826, 35.982418, 28.514053>,  <37.336700, 36.240726, 28.329212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579826, 35.982418, 28.514053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504649, -0.135177, -0.852676,
		0.613103, 0.751466, 0.243727,
		0.607811, -0.645775, 0.462104,
		37.762169, 35.788685, 28.652685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665966, 35.908604, 27.773039>,  <37.336700, 36.240726, 28.329212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665966, 35.908604, 27.773039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893204, 35.742603, 28.057302>,  <38.029549, 35.643002, 28.227861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893204, 35.742603, 28.057302>,  <37.665966, 35.908604, 27.773039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893204, 35.742603, 28.057302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526179, -0.480808, -0.701398,
		0.632772, 0.772398, -0.054782,
		0.568098, -0.415000, 0.710661,
		38.063633, 35.618103, 28.270500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476749, 36.139599, 27.690586>,  <37.665966, 35.908604, 27.773039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476749, 36.139599, 27.690586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427883, 35.791786, 27.882002>,  <38.398563, 35.583099, 27.996851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427883, 35.791786, 27.882002>,  <38.476749, 36.139599, 27.690586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427883, 35.791786, 27.882002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495333, -0.471224, -0.729790,
		0.860071, 0.147883, 0.488271,
		-0.122161, -0.869528, 0.478537,
		38.391235, 35.530930, 28.025562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103870, 35.835934, 27.627365>,  <38.476749, 36.139599, 27.690586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103870, 35.835934, 27.627365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842274, 35.546238, 27.714794>,  <38.685318, 35.372421, 27.767252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842274, 35.546238, 27.714794>,  <39.103870, 35.835934, 27.627365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842274, 35.546238, 27.714794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381289, -0.565105, -0.731625,
		0.653389, -0.395135, 0.645717,
		-0.653989, -0.724241, 0.218573,
		38.646076, 35.328964, 27.780365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523514, 35.301353, 27.685057>,  <39.103870, 35.835934, 27.627365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523514, 35.301353, 27.685057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164745, 35.146725, 27.599178>,  <38.949482, 35.053947, 27.547651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164745, 35.146725, 27.599178>,  <39.523514, 35.301353, 27.685057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164745, 35.146725, 27.599178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418209, -0.583887, -0.695828,
		0.143628, -0.713892, 0.685368,
		-0.896924, -0.386568, -0.214694,
		38.895668, 35.030754, 27.534771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650402, 34.535324, 27.588539>,  <39.523514, 35.301353, 27.685057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650402, 34.535324, 27.588539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304047, 34.627213, 27.410791>,  <39.096233, 34.682346, 27.304144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304047, 34.627213, 27.410791>,  <39.650402, 34.535324, 27.588539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304047, 34.627213, 27.410791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317327, -0.434462, -0.842939,
		-0.386695, -0.870904, 0.303303,
		-0.865893, 0.229714, -0.444365,
		39.044281, 34.696129, 27.277481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416046, 33.918262, 27.384893>,  <39.650402, 34.535324, 27.588539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416046, 33.918262, 27.384893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231102, 34.188751, 27.155478>,  <39.120136, 34.351044, 27.017828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231102, 34.188751, 27.155478>,  <39.416046, 33.918262, 27.384893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231102, 34.188751, 27.155478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136391, -0.584895, -0.799560,
		-0.876141, -0.447908, 0.178200,
		-0.462358, 0.676222, -0.573541,
		39.092396, 34.391617, 26.983416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993584, 33.577309, 26.963339>,  <39.416046, 33.918262, 27.384893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993584, 33.577309, 26.963339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041729, 33.928272, 26.777582>,  <39.070618, 34.138851, 26.666128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041729, 33.928272, 26.777582>,  <38.993584, 33.577309, 26.963339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041729, 33.928272, 26.777582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176534, -0.479256, -0.859738,
		-0.976908, 0.021500, -0.212578,
		0.120363, 0.877412, -0.464393,
		39.077839, 34.191494, 26.638264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723427, 33.420483, 26.432373>,  <38.993584, 33.577309, 26.963339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723427, 33.420483, 26.432373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941250, 33.739948, 26.329933>,  <39.071945, 33.931629, 26.268469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941250, 33.739948, 26.329933>,  <38.723427, 33.420483, 26.432373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941250, 33.739948, 26.329933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348196, -0.493065, -0.797274,
		-0.763031, 0.344989, -0.546595,
		0.544558, 0.798667, -0.256100,
		39.104618, 33.979549, 26.253103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464428, 33.606823, 25.743156>,  <38.723427, 33.420483, 26.432373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464428, 33.606823, 25.743156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839664, 33.735554, 25.794405>,  <39.064804, 33.812794, 25.825153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839664, 33.735554, 25.794405>,  <38.464428, 33.606823, 25.743156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839664, 33.735554, 25.794405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282377, -0.496258, -0.820970,
		-0.200630, 0.806321, -0.556411,
		0.938089, 0.321829, 0.128122,
		39.121090, 33.832104, 25.832842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836872, 33.704479, 25.078514>,  <38.464428, 33.606823, 25.743156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836872, 33.704479, 25.078514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129883, 33.680916, 25.349787>,  <39.305691, 33.666779, 25.512550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129883, 33.680916, 25.349787>,  <38.836872, 33.704479, 25.078514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129883, 33.680916, 25.349787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524295, -0.586597, -0.617266,
		0.434181, 0.807733, -0.398815,
		0.732531, -0.058908, 0.678180,
		39.349644, 33.663242, 25.553242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469925, 33.784744, 24.692495>,  <38.836872, 33.704479, 25.078514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469925, 33.784744, 24.692495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576736, 33.608177, 25.035154>,  <39.640823, 33.502235, 25.240749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576736, 33.608177, 25.035154>,  <39.469925, 33.784744, 24.692495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576736, 33.608177, 25.035154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464793, -0.719710, -0.515737,
		0.844194, 0.535880, 0.012984,
		0.267029, -0.441417, 0.856648,
		39.656845, 33.475754, 25.292149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252781, 33.735065, 24.734070>,  <39.469925, 33.784744, 24.692495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252781, 33.735065, 24.734070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095367, 33.439503, 24.952847>,  <40.000919, 33.262165, 25.084112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095367, 33.439503, 24.952847>,  <40.252781, 33.735065, 24.734070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095367, 33.439503, 24.952847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467298, -0.673137, -0.573165,
		0.791682, 0.030022, 0.610195,
		-0.393537, -0.738908, 0.546940,
		39.977306, 33.217831, 25.116928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801804, 33.327950, 24.900064>,  <40.252781, 33.735065, 24.734070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801804, 33.327950, 24.900064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494858, 33.078613, 24.960201>,  <40.310692, 32.929012, 24.996283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494858, 33.078613, 24.960201>,  <40.801804, 33.327950, 24.900064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494858, 33.078613, 24.960201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480364, -0.714154, -0.509151,
		0.424740, -0.318486, 0.847445,
		-0.767363, -0.623339, 0.150340,
		40.264648, 32.891613, 25.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093224, 32.659157, 25.151608>,  <40.801804, 33.327950, 24.900064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093224, 32.659157, 25.151608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722599, 32.540207, 25.059483>,  <40.500225, 32.468838, 25.004208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722599, 32.540207, 25.059483>,  <41.093224, 32.659157, 25.151608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722599, 32.540207, 25.059483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367414, -0.846669, -0.384914,
		-0.080534, -0.441268, 0.893754,
		-0.926564, -0.297379, -0.230313,
		40.444630, 32.450993, 24.990389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998642, 31.901665, 25.411972>,  <41.093224, 32.659157, 25.151608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998642, 31.901665, 25.411972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757523, 31.953196, 25.097002>,  <40.612850, 31.984114, 24.908020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757523, 31.953196, 25.097002>,  <40.998642, 31.901665, 25.411972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757523, 31.953196, 25.097002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297290, -0.879556, -0.371484,
		-0.740439, -0.458024, 0.491898,
		-0.602801, 0.128825, -0.787423,
		40.576683, 31.991842, 24.860775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731842, 31.200331, 25.283058>,  <40.998642, 31.901665, 25.411972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731842, 31.200331, 25.283058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612297, 31.371492, 24.941866>,  <40.540569, 31.474190, 24.737150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612297, 31.371492, 24.941866>,  <40.731842, 31.200331, 25.283058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612297, 31.371492, 24.941866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159401, -0.858892, -0.486720,
		-0.940888, -0.281430, 0.188485,
		-0.298866, 0.427905, -0.852981,
		40.522636, 31.499865, 24.685972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212898, 30.790184, 25.019722>,  <40.731842, 31.200331, 25.283058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212898, 30.790184, 25.019722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367809, 30.999218, 24.715900>,  <40.460754, 31.124638, 24.533607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367809, 30.999218, 24.715900>,  <40.212898, 30.790184, 25.019722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367809, 30.999218, 24.715900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224063, -0.852493, -0.472284,
		-0.894323, 0.012716, -0.447241,
		0.387276, 0.522585, -0.759554,
		40.483994, 31.155993, 24.488033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162331, 30.292578, 24.612123>,  <40.212898, 30.790184, 25.019722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162331, 30.292578, 24.612123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369030, 30.558722, 24.396616>,  <40.493050, 30.718409, 24.267311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369030, 30.558722, 24.396616>,  <40.162331, 30.292578, 24.612123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369030, 30.558722, 24.396616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206184, -0.707494, -0.675973,
		-0.830941, 0.238220, -0.502781,
		0.516745, 0.665359, -0.538769,
		40.524052, 30.758329, 24.234985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057095, 30.136892, 23.859493>,  <40.162331, 30.292578, 24.612123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057095, 30.136892, 23.859493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387527, 30.361517, 23.878412>,  <40.585789, 30.496292, 23.889763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387527, 30.361517, 23.878412>,  <40.057095, 30.136892, 23.859493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387527, 30.361517, 23.878412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458571, -0.621042, -0.635626,
		-0.327570, 0.546768, -0.770547,
		0.826081, 0.561563, 0.047298,
		40.635353, 30.529985, 23.892601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369984, 30.178453, 23.091932>,  <40.057095, 30.136892, 23.859493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369984, 30.178453, 23.091932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669979, 30.241791, 23.348818>,  <40.849976, 30.279793, 23.502949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669979, 30.241791, 23.348818>,  <40.369984, 30.178453, 23.091932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669979, 30.241791, 23.348818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556688, -0.675470, -0.483568,
		0.357226, 0.720185, -0.594746,
		0.749992, 0.158345, 0.642214,
		40.894978, 30.289295, 23.541483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965221, 30.239315, 22.634716>,  <40.369984, 30.178453, 23.091932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965221, 30.239315, 22.634716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105732, 30.145325, 22.997238>,  <41.190041, 30.088930, 23.214752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105732, 30.145325, 22.997238>,  <40.965221, 30.239315, 22.634716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105732, 30.145325, 22.997238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598516, -0.688025, -0.410366,
		0.719986, 0.686592, -0.101052,
		0.351280, -0.234977, 0.906305,
		41.211117, 30.074831, 23.269129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747585, 30.217813, 22.658878>,  <40.965221, 30.239315, 22.634716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747585, 30.217813, 22.658878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614609, 29.989367, 22.959095>,  <41.534824, 29.852299, 23.139225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614609, 29.989367, 22.959095>,  <41.747585, 30.217813, 22.658878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614609, 29.989367, 22.959095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579185, -0.751688, -0.315452,
		0.744332, 0.329833, 0.580672,
		-0.332438, -0.571118, 0.750540,
		41.514877, 29.818031, 23.184258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331566, 29.944233, 22.775036>,  <41.747585, 30.217813, 22.658878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331566, 29.944233, 22.775036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089012, 29.724936, 23.005417>,  <41.943481, 29.593357, 23.143646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089012, 29.724936, 23.005417>,  <42.331566, 29.944233, 22.775036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089012, 29.724936, 23.005417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538344, -0.816122, -0.210072,
		0.585220, 0.182677, 0.790029,
		-0.606385, -0.548246, 0.575954,
		41.907097, 29.560461, 23.178204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697845, 29.553373, 23.217573>,  <42.331566, 29.944233, 22.775036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697845, 29.553373, 23.217573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360363, 29.345686, 23.163059>,  <42.157875, 29.221073, 23.130350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360363, 29.345686, 23.163059>,  <42.697845, 29.553373, 23.217573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360363, 29.345686, 23.163059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535276, -0.794575, -0.286584,
		0.040510, -0.314743, 0.948312,
		-0.843705, -0.519219, -0.136287,
		42.107250, 29.189920, 23.122173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864422, 28.813683, 23.270477>,  <42.697845, 29.553373, 23.217573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864422, 28.813683, 23.270477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524075, 28.839758, 23.061951>,  <42.319866, 28.855402, 22.936834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524075, 28.839758, 23.061951>,  <42.864422, 28.813683, 23.270477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524075, 28.839758, 23.061951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359241, -0.651867, -0.667844,
		-0.383365, -0.755526, 0.531235,
		-0.850868, 0.065187, -0.521319,
		42.268814, 28.859314, 22.905556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678322, 28.127296, 23.098003>,  <42.864422, 28.813683, 23.270477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678322, 28.127296, 23.098003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494522, 28.348505, 22.820002>,  <42.384243, 28.481230, 22.653200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494522, 28.348505, 22.820002>,  <42.678322, 28.127296, 23.098003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494522, 28.348505, 22.820002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559461, -0.427537, -0.710081,
		-0.689830, -0.715107, -0.112942,
		-0.459498, 0.553022, -0.695003,
		42.356674, 28.514412, 22.611502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108162, 27.764221, 23.354933>,  <42.678322, 28.127296, 23.098003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108162, 27.764221, 23.354933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405869, 27.540951, 23.501635>,  <42.584492, 27.406988, 23.589655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405869, 27.540951, 23.501635>,  <42.108162, 27.764221, 23.354933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405869, 27.540951, 23.501635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049272, 0.501745, 0.863611,
		-0.666063, -0.660828, 0.345930,
		0.744267, -0.558174, 0.366754,
		42.629150, 27.373499, 23.611660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833748, 27.355852, 23.995651>,  <42.108162, 27.764221, 23.354933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833748, 27.355852, 23.995651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229191, 27.413849, 24.011814>,  <42.466457, 27.448647, 24.021511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229191, 27.413849, 24.011814>,  <41.833748, 27.355852, 23.995651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229191, 27.413849, 24.011814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102859, 0.454803, 0.884632,
		0.109887, -0.878710, 0.464535,
		0.988607, 0.144991, 0.040406,
		42.525772, 27.457346, 24.023935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931412, 27.338249, 24.768250>,  <41.833748, 27.355852, 23.995651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931412, 27.338249, 24.768250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252617, 27.497322, 24.590700>,  <42.445339, 27.592766, 24.484171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252617, 27.497322, 24.590700>,  <41.931412, 27.338249, 24.768250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252617, 27.497322, 24.590700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159490, 0.574227, 0.803010,
		0.574227, -0.715619, 0.397684,
		-0.803010, -0.397684, 0.443871,
		42.493519, 27.616627, 24.457539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429745, 27.343842, 25.341705>,  <41.931412, 27.338249, 24.768250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429745, 27.343842, 25.341705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552635, 27.591148, 25.052332>,  <42.626369, 27.739532, 24.878708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552635, 27.591148, 25.052332>,  <42.429745, 27.343842, 25.341705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552635, 27.591148, 25.052332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253094, 0.679738, 0.688404,
		0.917364, -0.394592, 0.052352,
		0.307224, 0.618267, -0.723436,
		42.644802, 27.776628, 24.835300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007542, 27.689058, 25.580372>,  <42.429745, 27.343842, 25.341705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007542, 27.689058, 25.580372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889751, 27.934278, 25.287127>,  <42.819077, 28.081411, 25.111179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889751, 27.934278, 25.287127>,  <43.007542, 27.689058, 25.580372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889751, 27.934278, 25.287127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067193, 0.778510, 0.624026,
		0.953295, 0.134498, -0.270443,
		-0.294472, 0.613053, -0.733112,
		42.801411, 28.118195, 25.067192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424747, 28.360912, 25.708385>,  <43.007542, 27.689058, 25.580372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424747, 28.360912, 25.708385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130180, 28.452635, 25.453796>,  <42.953438, 28.507669, 25.301043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130180, 28.452635, 25.453796>,  <43.424747, 28.360912, 25.708385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130180, 28.452635, 25.453796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112196, 0.886380, 0.449158,
		0.667154, 0.402180, -0.627022,
		-0.736422, 0.229308, -0.636475,
		42.909252, 28.521427, 25.262854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528275, 29.124695, 25.515152>,  <43.424747, 28.360912, 25.708385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528275, 29.124695, 25.515152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140457, 29.033333, 25.479782>,  <42.907768, 28.978516, 25.458561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140457, 29.033333, 25.479782>,  <43.528275, 29.124695, 25.515152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140457, 29.033333, 25.479782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237855, 0.791965, 0.562331,
		-0.058410, 0.566236, -0.822171,
		-0.969543, -0.228403, -0.088423,
		42.849594, 28.964811, 25.453255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241497, 29.771227, 25.407648>,  <43.528275, 29.124695, 25.515152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241497, 29.771227, 25.407648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933876, 29.551807, 25.538887>,  <42.749302, 29.420155, 25.617630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933876, 29.551807, 25.538887>,  <43.241497, 29.771227, 25.407648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933876, 29.551807, 25.538887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268777, 0.743252, 0.612646,
		-0.579925, 0.382974, -0.719040,
		-0.769055, -0.548550, 0.328096,
		42.703159, 29.387241, 25.637316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681946, 30.199068, 25.289282>,  <43.241497, 29.771227, 25.407648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681946, 30.199068, 25.289282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583511, 29.923714, 25.562210>,  <42.524452, 29.758501, 25.725967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583511, 29.923714, 25.562210>,  <42.681946, 30.199068, 25.289282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583511, 29.923714, 25.562210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448984, 0.704848, 0.549183,
		-0.858984, -0.171205, -0.482530,
		-0.246087, -0.688388, 0.682322,
		42.509686, 29.717197, 25.766907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998375, 30.369619, 25.543819>,  <42.681946, 30.199068, 25.289282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998375, 30.369619, 25.543819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184155, 30.143150, 25.816214>,  <42.295620, 30.007269, 25.979650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184155, 30.143150, 25.816214>,  <41.998375, 30.369619, 25.543819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184155, 30.143150, 25.816214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412858, 0.541855, 0.732080,
		-0.783478, -0.621161, 0.017914,
		0.464446, -0.566172, 0.680983,
		42.323490, 29.973299, 26.020508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409454, 30.200396, 25.956488>,  <41.998375, 30.369619, 25.543819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409454, 30.200396, 25.956488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764153, 30.157887, 26.136442>,  <41.976971, 30.132381, 26.244415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764153, 30.157887, 26.136442>,  <41.409454, 30.200396, 25.956488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764153, 30.157887, 26.136442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345468, 0.494303, 0.797694,
		-0.307152, -0.862769, 0.401606,
		0.886741, -0.106272, 0.449885,
		42.030174, 30.126005, 26.271408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209202, 29.932032, 26.683922>,  <41.409454, 30.200396, 25.956488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209202, 29.932032, 26.683922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581432, 30.073910, 26.720203>,  <41.804771, 30.159037, 26.741972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581432, 30.073910, 26.720203>,  <41.209202, 29.932032, 26.683922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581432, 30.073910, 26.720203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291099, 0.566595, 0.770864,
		0.222029, -0.743748, 0.630509,
		0.930572, 0.354695, 0.090704,
		41.860603, 30.180319, 26.747414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325825, 30.090141, 27.304026>,  <41.209202, 29.932032, 26.683922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325825, 30.090141, 27.304026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637325, 30.310423, 27.183838>,  <41.824226, 30.442591, 27.111725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637325, 30.310423, 27.183838>,  <41.325825, 30.090141, 27.304026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637325, 30.310423, 27.183838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156458, 0.634314, 0.757078,
		0.607512, -0.542563, 0.580133,
		0.778749, 0.550700, -0.300465,
		41.870949, 30.475634, 27.093699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641014, 30.277773, 27.970959>,  <41.325825, 30.090141, 27.304026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641014, 30.277773, 27.970959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739643, 30.528540, 27.675344>,  <41.798820, 30.678999, 27.497976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739643, 30.528540, 27.675344>,  <41.641014, 30.277773, 27.970959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739643, 30.528540, 27.675344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080414, 0.773188, 0.629057,
		0.965782, -0.095679, 0.241060,
		0.246573, 0.626917, -0.739038,
		41.813614, 30.716616, 27.453632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017258, 30.751518, 28.313610>,  <41.641014, 30.277773, 27.970959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017258, 30.751518, 28.313610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895069, 30.918983, 27.971519>,  <41.821758, 31.019463, 27.766266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895069, 30.918983, 27.971519>,  <42.017258, 30.751518, 28.313610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895069, 30.918983, 27.971519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140342, 0.868552, 0.475313,
		0.941804, 0.265217, -0.206558,
		-0.305467, 0.418662, -0.855226,
		41.803429, 31.044582, 27.714952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230434, 31.378010, 28.397757>,  <42.017258, 30.751518, 28.313610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230434, 31.378010, 28.397757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979080, 31.431395, 28.091211>,  <41.828266, 31.463427, 27.907284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979080, 31.431395, 28.091211>,  <42.230434, 31.378010, 28.397757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979080, 31.431395, 28.091211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278421, 0.881322, 0.381776,
		0.726368, 0.453276, -0.516654,
		-0.628388, 0.133463, -0.766365,
		41.790565, 31.471434, 27.861301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304733, 32.146687, 28.172377>,  <42.230434, 31.378010, 28.397757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304733, 32.146687, 28.172377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956181, 31.998217, 28.044050>,  <41.747047, 31.909134, 27.967054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956181, 31.998217, 28.044050>,  <42.304733, 32.146687, 28.172377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956181, 31.998217, 28.044050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477621, 0.791265, 0.381808,
		0.112134, 0.485930, -0.866775,
		-0.871381, -0.371176, -0.320818,
		41.694767, 31.886864, 27.947805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001205, 32.674713, 27.843798>,  <42.304733, 32.146687, 28.172377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001205, 32.674713, 27.843798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699265, 32.423550, 27.919615>,  <41.518101, 32.272850, 27.965105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699265, 32.423550, 27.919615>,  <42.001205, 32.674713, 27.843798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699265, 32.423550, 27.919615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555649, 0.765744, 0.323869,
		-0.348503, 0.139152, -0.926921,
		-0.754851, -0.627912, 0.189544,
		41.472809, 32.235176, 27.976479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359211, 33.007698, 27.628063>,  <42.001205, 32.674713, 27.843798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359211, 33.007698, 27.628063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272099, 32.728901, 27.901348>,  <41.219833, 32.561623, 28.065319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272099, 32.728901, 27.901348>,  <41.359211, 33.007698, 27.628063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272099, 32.728901, 27.901348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654528, 0.623564, 0.427505,
		-0.723993, -0.354080, -0.591998,
		-0.217778, -0.696990, 0.683211,
		41.206764, 32.519802, 28.106312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612038, 33.158382, 27.943829>,  <41.359211, 33.007698, 27.628063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612038, 33.158382, 27.943829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741158, 32.867668, 28.186342>,  <40.818630, 32.693237, 28.331850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741158, 32.867668, 28.186342>,  <40.612038, 33.158382, 27.943829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741158, 32.867668, 28.186342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556406, 0.372472, 0.742750,
		-0.765645, -0.577099, -0.284156,
		0.322800, -0.726789, 0.606283,
		40.837997, 32.649632, 28.368227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996151, 32.802841, 28.227329>,  <40.612038, 33.158382, 27.943829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996151, 32.802841, 28.227329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302834, 32.760193, 28.480564>,  <40.486843, 32.734604, 28.632505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302834, 32.760193, 28.480564>,  <39.996151, 32.802841, 28.227329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302834, 32.760193, 28.480564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525327, 0.462668, 0.714122,
		-0.369051, -0.880096, 0.298717,
		0.766703, -0.106623, 0.633086,
		40.532845, 32.728207, 28.670490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750675, 32.551575, 28.823750>,  <39.996151, 32.802841, 28.227329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750675, 32.551575, 28.823750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092827, 32.735214, 28.919710>,  <40.298119, 32.845398, 28.977285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092827, 32.735214, 28.919710>,  <39.750675, 32.551575, 28.823750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092827, 32.735214, 28.919710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488594, 0.561261, 0.668029,
		0.172044, -0.688633, 0.704404,
		0.855381, 0.459097, 0.239900,
		40.349442, 32.872944, 28.991680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588329, 32.682159, 29.517559>,  <39.750675, 32.551575, 28.823750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588329, 32.682159, 29.517559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917168, 32.890358, 29.425259>,  <40.114471, 33.015278, 29.369879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917168, 32.890358, 29.425259>,  <39.588329, 32.682159, 29.517559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917168, 32.890358, 29.425259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242457, 0.686743, 0.685273,
		0.515148, -0.507412, 0.690765,
		0.822094, 0.520497, -0.230748,
		40.163795, 33.046509, 29.356033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851723, 32.831692, 30.156082>,  <39.588329, 32.682159, 29.517559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851723, 32.831692, 30.156082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981308, 33.114082, 29.904165>,  <40.059059, 33.283516, 29.753016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981308, 33.114082, 29.904165>,  <39.851723, 32.831692, 30.156082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981308, 33.114082, 29.904165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338408, 0.708123, 0.619711,
		0.883476, 0.012365, 0.468313,
		0.323961, 0.705981, -0.629794,
		40.078495, 33.325878, 29.715227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059582, 33.396797, 30.559355>,  <39.851723, 32.831692, 30.156082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059582, 33.396797, 30.559355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044125, 33.603088, 30.217003>,  <40.034851, 33.726864, 30.011593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044125, 33.603088, 30.217003>,  <40.059582, 33.396797, 30.559355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044125, 33.603088, 30.217003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159184, 0.842402, 0.514800,
		0.986492, 0.156135, 0.049544,
		-0.038642, 0.515733, -0.855878,
		40.032532, 33.757809, 29.960239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477108, 33.950623, 30.688986>,  <40.059582, 33.396797, 30.559355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477108, 33.950623, 30.688986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258953, 34.072845, 30.376783>,  <40.128059, 34.146179, 30.189463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258953, 34.072845, 30.376783>,  <40.477108, 33.950623, 30.688986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258953, 34.072845, 30.376783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199775, 0.856964, 0.475082,
		0.814028, 0.415029, -0.406337,
		-0.545389, 0.305554, -0.780505,
		40.095337, 34.164513, 30.142632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625721, 34.663788, 30.563284>,  <40.477108, 33.950623, 30.688986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625721, 34.663788, 30.563284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260288, 34.572296, 30.428793>,  <40.041027, 34.517403, 30.348099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260288, 34.572296, 30.428793>,  <40.625721, 34.663788, 30.563284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260288, 34.572296, 30.428793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364452, 0.827308, 0.427475,
		0.180385, 0.513073, -0.839176,
		-0.913584, -0.228729, -0.336225,
		39.986214, 34.503677, 30.327925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290211, 35.266209, 30.260702>,  <40.625721, 34.663788, 30.563284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290211, 35.266209, 30.260702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977345, 35.025978, 30.327063>,  <39.789623, 34.881840, 30.366879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977345, 35.025978, 30.327063>,  <40.290211, 35.266209, 30.260702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977345, 35.025978, 30.327063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478007, 0.749196, 0.458492,
		-0.399650, 0.279316, -0.873076,
		-0.782169, -0.600573, 0.165901,
		39.742695, 34.845806, 30.376833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698921, 35.695129, 30.211489>,  <40.290211, 35.266209, 30.260702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698921, 35.695129, 30.211489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567165, 35.382843, 30.423897>,  <39.488113, 35.195469, 30.551342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567165, 35.382843, 30.423897>,  <39.698921, 35.695129, 30.211489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567165, 35.382843, 30.423897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336615, 0.622546, 0.706489,
		-0.882154, 0.053959, -0.467860,
		-0.329386, -0.780721, 0.531018,
		39.468349, 35.148628, 30.583202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234463, 35.988495, 30.559610>,  <39.698921, 35.695129, 30.211489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234463, 35.988495, 30.559610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236984, 35.649811, 30.772417>,  <39.238499, 35.446602, 30.900101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236984, 35.649811, 30.772417>,  <39.234463, 35.988495, 30.559610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236984, 35.649811, 30.772417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286978, 0.508114, 0.812074,
		-0.957917, -0.157794, -0.239785,
		0.006302, -0.846712, 0.532014,
		39.238876, 35.395798, 30.932022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489410, 35.890343, 30.919888>,  <39.234463, 35.988495, 30.559610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489410, 35.890343, 30.919888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753445, 35.662857, 31.116192>,  <38.911865, 35.526367, 31.233974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753445, 35.662857, 31.116192>,  <38.489410, 35.890343, 30.919888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753445, 35.662857, 31.116192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389852, 0.299087, 0.870955,
		-0.642106, -0.766231, -0.024291,
		0.660088, -0.568715, 0.490762,
		38.951469, 35.492241, 31.263420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157722, 35.643917, 31.588440>,  <38.489410, 35.890343, 30.919888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157722, 35.643917, 31.588440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546597, 35.593315, 31.667278>,  <38.779922, 35.562954, 31.714582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546597, 35.593315, 31.667278>,  <38.157722, 35.643917, 31.588440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546597, 35.593315, 31.667278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136461, 0.377976, 0.915703,
		-0.190342, -0.917131, 0.350200,
		0.972187, -0.126508, 0.197097,
		38.838253, 35.555363, 31.726408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300575, 35.299488, 32.214577>,  <38.157722, 35.643917, 31.588440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300575, 35.299488, 32.214577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640190, 35.506298, 32.171093>,  <38.843960, 35.630383, 32.145004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640190, 35.506298, 32.171093>,  <38.300575, 35.299488, 32.214577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640190, 35.506298, 32.171093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111156, 0.375955, 0.919947,
		0.516505, -0.768987, 0.376671,
		0.849039, 0.517026, -0.108705,
		38.894901, 35.661407, 32.138481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669216, 35.068645, 32.847397>,  <38.300575, 35.299488, 32.214577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669216, 35.068645, 32.847397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836571, 35.404491, 32.708836>,  <38.936985, 35.605999, 32.625698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836571, 35.404491, 32.708836>,  <38.669216, 35.068645, 32.847397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836571, 35.404491, 32.708836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121829, 0.326062, 0.937465,
		0.900060, -0.434427, 0.034131,
		0.418389, 0.839617, -0.346402,
		38.962086, 35.656376, 32.604916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195808, 35.143032, 33.244221>,  <38.669216, 35.068645, 32.847397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195808, 35.143032, 33.244221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132950, 35.507614, 33.092136>,  <39.095234, 35.726364, 33.000885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132950, 35.507614, 33.092136>,  <39.195808, 35.143032, 33.244221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132950, 35.507614, 33.092136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158641, 0.403294, 0.901214,
		0.974750, 0.081307, -0.207971,
		-0.157148, 0.911451, -0.380212,
		39.085804, 35.781048, 32.978073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760921, 35.595123, 33.476337>,  <39.195808, 35.143032, 33.244221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760921, 35.595123, 33.476337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432400, 35.806915, 33.391373>,  <39.235287, 35.933990, 33.340393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432400, 35.806915, 33.391373>,  <39.760921, 35.595123, 33.476337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432400, 35.806915, 33.391373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098292, 0.498095, 0.861533,
		0.561966, 0.686698, -0.461129,
		-0.821300, 0.529478, -0.212415,
		39.186008, 35.965759, 33.327648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993450, 36.273373, 33.345737>,  <39.760921, 35.595123, 33.476337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993450, 36.273373, 33.345737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617188, 36.247005, 33.478893>,  <39.391430, 36.231186, 33.558784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617188, 36.247005, 33.478893>,  <39.993450, 36.273373, 33.345737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617188, 36.247005, 33.478893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225481, 0.611688, 0.758285,
		-0.253609, 0.788348, -0.560526,
		-0.940660, -0.065920, 0.332887,
		39.334991, 36.227230, 33.578758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948204, 36.969925, 33.569633>,  <39.993450, 36.273373, 33.345737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948204, 36.969925, 33.569633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644093, 36.754433, 33.714821>,  <39.461624, 36.625137, 33.801933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644093, 36.754433, 33.714821>,  <39.948204, 36.969925, 33.569633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644093, 36.754433, 33.714821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151076, 0.396805, 0.905385,
		-0.631784, 0.743182, -0.220294,
		-0.760279, -0.538727, 0.362972,
		39.416008, 36.592815, 33.823711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601570, 37.447247, 33.955845>,  <39.948204, 36.969925, 33.569633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601570, 37.447247, 33.955845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527401, 37.072395, 34.074100>,  <39.482899, 36.847485, 34.145054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527401, 37.072395, 34.074100>,  <39.601570, 37.447247, 33.955845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527401, 37.072395, 34.074100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212670, 0.255457, 0.943140,
		-0.959369, 0.237756, 0.151932,
		-0.185425, -0.937131, 0.295642,
		39.471775, 36.791256, 34.162792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147179, 37.603161, 34.537708>,  <39.601570, 37.447247, 33.955845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147179, 37.603161, 34.537708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272072, 37.225159, 34.576645>,  <39.347008, 36.998356, 34.600006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272072, 37.225159, 34.576645>,  <39.147179, 37.603161, 34.537708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272072, 37.225159, 34.576645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229411, 0.174434, 0.957572,
		-0.921889, -0.276656, 0.271259,
		0.312235, -0.945005, 0.097341,
		39.365742, 36.941658, 34.605846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818695, 37.298290, 35.055557>,  <39.147179, 37.603161, 34.537708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818695, 37.298290, 35.055557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149834, 37.075138, 35.032104>,  <39.348518, 36.941246, 35.018032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149834, 37.075138, 35.032104>,  <38.818695, 37.298290, 35.055557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149834, 37.075138, 35.032104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212961, 0.215864, 0.952917,
		-0.518952, -0.801359, 0.297510,
		0.827851, -0.557876, -0.058635,
		39.398190, 36.907776, 35.014515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800316, 36.996067, 35.650215>,  <38.818695, 37.298290, 35.055557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800316, 36.996067, 35.650215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173954, 36.933182, 35.521992>,  <39.398136, 36.895451, 35.445057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173954, 36.933182, 35.521992>,  <38.800316, 36.996067, 35.650215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173954, 36.933182, 35.521992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294330, -0.169152, 0.940616,
		-0.202101, -0.972970, -0.111731,
		0.934090, -0.157213, -0.320560,
		39.454182, 36.886021, 35.425823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035564, 36.460758, 36.055756>,  <38.800316, 36.996067, 35.650215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035564, 36.460758, 36.055756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358223, 36.668839, 35.943531>,  <39.551819, 36.793686, 35.876198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358223, 36.668839, 35.943531>,  <39.035564, 36.460758, 36.055756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358223, 36.668839, 35.943531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357310, -0.051084, 0.932588,
		0.470799, -0.852516, -0.227079,
		0.806646, 0.520198, -0.280563,
		39.600216, 36.824898, 35.859364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595757, 36.154835, 36.339935>,  <39.035564, 36.460758, 36.055756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595757, 36.154835, 36.339935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699791, 36.534603, 36.269550>,  <39.762211, 36.762463, 36.227318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699791, 36.534603, 36.269550>,  <39.595757, 36.154835, 36.339935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699791, 36.534603, 36.269550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330980, 0.083537, 0.939933,
		0.907088, -0.302703, -0.292511,
		0.260085, 0.949417, -0.175964,
		39.777817, 36.819427, 36.216763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961308, 36.265663, 36.935043>,  <39.595757, 36.154835, 36.339935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961308, 36.265663, 36.935043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977413, 36.631538, 36.774185>,  <39.987076, 36.851063, 36.677670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977413, 36.631538, 36.774185>,  <39.961308, 36.265663, 36.935043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977413, 36.631538, 36.774185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543476, 0.317679, 0.776990,
		0.838458, -0.249842, -0.484321,
		0.040266, 0.914691, -0.402144,
		39.989494, 36.905945, 36.653542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632030, 36.455608, 36.988331>,  <39.961308, 36.265663, 36.935043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632030, 36.455608, 36.988331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504803, 36.822662, 36.893013>,  <40.428467, 37.042892, 36.835823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504803, 36.822662, 36.893013>,  <40.632030, 36.455608, 36.988331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504803, 36.822662, 36.893013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669377, 0.395357, 0.628989,
		0.671392, 0.040552, -0.739992,
		-0.318068, 0.917632, -0.238295,
		40.409382, 37.097954, 36.821526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210503, 36.931828, 36.776054>,  <40.632030, 36.455608, 36.988331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210503, 36.931828, 36.776054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915840, 37.178650, 36.886738>,  <40.739040, 37.326744, 36.953148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915840, 37.178650, 36.886738>,  <41.210503, 36.931828, 36.776054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915840, 37.178650, 36.886738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662518, 0.576424, 0.478336,
		0.135658, 0.535698, -0.833441,
		-0.736660, 0.617060, 0.276713,
		40.694843, 37.363770, 36.969753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465065, 37.557339, 36.605949>,  <41.210503, 36.931828, 36.776054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465065, 37.557339, 36.605949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195972, 37.569458, 36.901653>,  <41.034515, 37.576729, 37.079075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195972, 37.569458, 36.901653>,  <41.465065, 37.557339, 36.605949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195972, 37.569458, 36.901653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698593, 0.355135, 0.621166,
		-0.243716, 0.934324, -0.260080,
		-0.672733, 0.030302, 0.739264,
		40.994152, 37.578548, 37.123432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551651, 38.169697, 36.930485>,  <41.465065, 37.557339, 36.605949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551651, 38.169697, 36.930485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370346, 37.962517, 37.220669>,  <41.261562, 37.838211, 37.394779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370346, 37.962517, 37.220669>,  <41.551651, 38.169697, 36.930485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370346, 37.962517, 37.220669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557889, 0.469912, 0.684063,
		-0.695209, 0.714782, 0.075965,
		-0.453259, -0.517947, 0.725456,
		41.234367, 37.807133, 37.438305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211079, 38.660133, 37.520550>,  <41.551651, 38.169697, 36.930485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211079, 38.660133, 37.520550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338970, 38.295681, 37.624557>,  <41.415707, 38.077011, 37.686962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338970, 38.295681, 37.624557>,  <41.211079, 38.660133, 37.520550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338970, 38.295681, 37.624557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591450, 0.406314, 0.696489,
		-0.740244, -0.068897, 0.668799,
		0.319728, -0.911133, 0.260022,
		41.434887, 38.022343, 37.702564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254314, 38.783211, 38.232635>,  <41.211079, 38.660133, 37.520550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254314, 38.783211, 38.232635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513859, 38.490208, 38.150253>,  <41.669586, 38.314407, 38.100822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513859, 38.490208, 38.150253>,  <41.254314, 38.783211, 38.232635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513859, 38.490208, 38.150253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687644, 0.448608, 0.570873,
		-0.325774, -0.512041, 0.794786,
		0.648858, -0.732506, -0.205957,
		41.708515, 38.270454, 38.088467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778248, 38.787056, 38.763618>,  <41.254314, 38.783211, 38.232635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778248, 38.787056, 38.763618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976501, 38.563618, 38.497593>,  <42.095455, 38.429554, 38.337978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976501, 38.563618, 38.497593>,  <41.778248, 38.787056, 38.763618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976501, 38.563618, 38.497593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845594, 0.135527, 0.516337,
		-0.198290, -0.818291, 0.539519,
		0.495633, -0.558598, -0.665069,
		42.125191, 38.396038, 38.298073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096870, 38.154385, 39.069706>,  <41.778248, 38.787056, 38.763618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096870, 38.154385, 39.069706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280010, 38.311897, 38.750881>,  <42.389896, 38.406403, 38.559586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280010, 38.311897, 38.750881>,  <42.096870, 38.154385, 39.069706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280010, 38.311897, 38.750881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849958, 0.068981, 0.522315,
		0.260658, -0.916614, -0.303111,
		0.457852, 0.393778, -0.797064,
		42.417366, 38.430031, 38.511761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821518, 37.941864, 39.048149>,  <42.096870, 38.154385, 39.069706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821518, 37.941864, 39.048149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816730, 38.268635, 38.817501>,  <42.813858, 38.464695, 38.679111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816730, 38.268635, 38.817501>,  <42.821518, 37.941864, 39.048149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816730, 38.268635, 38.817501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872756, 0.289973, 0.392698,
		0.488009, -0.498550, -0.716446,
		-0.011970, 0.816923, -0.576622,
		42.813141, 38.513710, 38.644516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445053, 37.997662, 39.156433>,  <42.821518, 37.941864, 39.048149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445053, 37.997662, 39.156433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330482, 38.327808, 38.961811>,  <43.261742, 38.525894, 38.845039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330482, 38.327808, 38.961811>,  <43.445053, 37.997662, 39.156433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330482, 38.327808, 38.961811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817875, 0.475140, 0.324534,
		0.499040, -0.304987, -0.811136,
		-0.286425, 0.825363, -0.486555,
		43.244556, 38.575417, 38.815845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023991, 38.369846, 38.853554>,  <43.445053, 37.997662, 39.156433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023991, 38.369846, 38.853554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773647, 38.681789, 38.857906>,  <43.623440, 38.868958, 38.860519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773647, 38.681789, 38.857906>,  <44.023991, 38.369846, 38.853554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773647, 38.681789, 38.857906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744567, 0.593263, 0.306038,
		0.232212, 0.199638, -0.951957,
		-0.625857, 0.779862, 0.010881,
		43.585892, 38.915749, 38.861172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354652, 38.879745, 38.462685>,  <44.023991, 38.369846, 38.853554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354652, 38.879745, 38.462685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089748, 39.044159, 38.713272>,  <43.930805, 39.142807, 38.863625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089748, 39.044159, 38.713272>,  <44.354652, 38.879745, 38.462685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089748, 39.044159, 38.713272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718963, 0.584012, 0.376858,
		-0.210966, 0.699987, -0.682284,
		-0.662258, 0.411033, 0.626471,
		43.891071, 39.167469, 38.901215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381481, 39.536663, 38.335789>,  <44.354652, 38.879745, 38.462685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381481, 39.536663, 38.335789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227562, 39.476200, 38.700005>,  <44.135212, 39.439922, 38.918533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227562, 39.476200, 38.700005>,  <44.381481, 39.536663, 38.335789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227562, 39.476200, 38.700005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652565, 0.653108, 0.384200,
		-0.652755, 0.742025, -0.152674,
		-0.384799, -0.151159, 0.910539,
		44.112122, 39.430851, 38.973167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211697, 40.211464, 38.590332>,  <44.381481, 39.536663, 38.335789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211697, 40.211464, 38.590332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244038, 39.976185, 38.912197>,  <44.263443, 39.835018, 39.105316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244038, 39.976185, 38.912197>,  <44.211697, 40.211464, 38.590332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244038, 39.976185, 38.912197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640968, 0.648924, 0.409949,
		-0.763298, 0.482622, 0.429478,
		0.080848, -0.588195, 0.804667,
		44.268291, 39.799725, 39.153599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001511, 40.572567, 39.165703>,  <44.211697, 40.211464, 38.590332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001511, 40.572567, 39.165703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279644, 40.287380, 39.201904>,  <44.446526, 40.116268, 39.223625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279644, 40.287380, 39.201904>,  <44.001511, 40.572567, 39.165703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279644, 40.287380, 39.201904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699781, 0.700346, 0.140789,
		-0.163765, -0.034560, 0.985894,
		0.695333, -0.712966, 0.090508,
		44.488243, 40.073490, 39.229057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292732, 40.544865, 39.856415>,  <44.001511, 40.572567, 39.165703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292732, 40.544865, 39.856415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515381, 40.455437, 39.536369>,  <44.648972, 40.401779, 39.344341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515381, 40.455437, 39.536369>,  <44.292732, 40.544865, 39.856415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515381, 40.455437, 39.536369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559021, 0.813240, 0.161666,
		0.614544, -0.537269, 0.577649,
		0.556625, -0.223567, -0.800116,
		44.682369, 40.388367, 39.296333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874165, 40.580914, 40.028545>,  <44.292732, 40.544865, 39.856415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874165, 40.580914, 40.028545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933285, 40.657452, 39.640411>,  <44.968758, 40.703377, 39.407532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933285, 40.657452, 39.640411>,  <44.874165, 40.580914, 40.028545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933285, 40.657452, 39.640411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587627, 0.772165, 0.241775,
		0.795519, -0.605927, 0.001684,
		0.147798, 0.191347, -0.970331,
		44.977623, 40.714855, 39.349312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632847, 40.711662, 39.878536>,  <44.874165, 40.580914, 40.028545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632847, 40.711662, 39.878536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350491, 40.884300, 39.653881>,  <45.181076, 40.987885, 39.519089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350491, 40.884300, 39.653881>,  <45.632847, 40.711662, 39.878536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350491, 40.884300, 39.653881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379980, 0.899909, 0.213961,
		0.597769, -0.062378, -0.799238,
		-0.705894, 0.431594, -0.561640,
		45.138721, 41.013779, 39.485390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703354, 40.013573, 39.574078>,  <45.632847, 40.711662, 39.878536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703354, 40.013573, 39.574078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581783, 39.948120, 39.198662>,  <45.508842, 39.908848, 38.973412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581783, 39.948120, 39.198662>,  <45.703354, 40.013573, 39.574078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581783, 39.948120, 39.198662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020697, -0.983773, 0.178219,
		-0.952471, 0.073590, 0.295606,
		-0.303925, -0.163630, -0.938539,
		45.490604, 39.899033, 38.917099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992451, 39.634766, 39.548038>,  <45.703354, 40.013573, 39.574078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992451, 39.634766, 39.548038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258347, 39.583805, 39.253586>,  <45.417885, 39.553230, 39.076912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258347, 39.583805, 39.253586>,  <44.992451, 39.634766, 39.548038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258347, 39.583805, 39.253586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058965, -0.991225, 0.118305,
		-0.744748, -0.035235, -0.666415,
		0.664736, -0.127403, -0.736135,
		45.457767, 39.545586, 39.032745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877720, 39.290058, 40.159100>,  <44.992451, 39.634766, 39.548038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877720, 39.290058, 40.159100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696266, 39.596718, 39.977348>,  <44.587395, 39.780712, 39.868298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696266, 39.596718, 39.977348>,  <44.877720, 39.290058, 40.159100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696266, 39.596718, 39.977348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708318, -0.619585, -0.338231,
		-0.540833, 0.168413, 0.824098,
		-0.453636, 0.766650, -0.454381,
		44.560177, 39.826714, 39.841034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.179485, 39.256039, 40.339474>,  <44.877720, 39.290058, 40.159100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.179485, 39.256039, 40.339474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197414, 39.419483, 39.974831>,  <44.208172, 39.517551, 39.756046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197414, 39.419483, 39.974831>,  <44.179485, 39.256039, 40.339474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197414, 39.419483, 39.974831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891612, -0.395210, -0.220988,
		-0.450575, 0.822705, 0.346611,
		0.044823, 0.408615, -0.911606,
		44.210861, 39.542068, 39.701347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494003, 39.454227, 40.188782>,  <44.179485, 39.256039, 40.339474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494003, 39.454227, 40.188782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681519, 39.444649, 39.835587>,  <43.794029, 39.438900, 39.623669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681519, 39.444649, 39.835587>,  <43.494003, 39.454227, 40.188782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681519, 39.444649, 39.835587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766006, -0.508799, -0.392885,
		-0.439852, 0.860552, -0.256867,
		0.468791, -0.023951, -0.882984,
		43.822155, 39.437462, 39.570690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979443, 39.820927, 39.647106>,  <43.494003, 39.454227, 40.188782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979443, 39.820927, 39.647106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242058, 39.626183, 39.416653>,  <43.399628, 39.509335, 39.278381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242058, 39.626183, 39.416653>,  <42.979443, 39.820927, 39.647106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242058, 39.626183, 39.416653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751437, -0.355705, -0.555713,
		0.065624, 0.797771, -0.599379,
		0.656533, -0.486864, -0.576132,
		43.439018, 39.480122, 39.243813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006466, 40.001942, 38.872597>,  <42.979443, 39.820927, 39.647106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006466, 40.001942, 38.872597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105484, 39.616814, 38.915867>,  <43.164894, 39.385738, 38.941830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105484, 39.616814, 38.915867>,  <43.006466, 40.001942, 38.872597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105484, 39.616814, 38.915867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730702, -0.258844, -0.631724,
		0.636235, 0.077342, -0.767609,
		0.247549, -0.962818, 0.108172,
		43.179749, 39.327969, 38.948318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521214, 39.696087, 38.513149>,  <43.006466, 40.001942, 38.872597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521214, 39.696087, 38.513149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776924, 39.396790, 38.584091>,  <42.930351, 39.217209, 38.626656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776924, 39.396790, 38.584091>,  <42.521214, 39.696087, 38.513149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776924, 39.396790, 38.584091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509815, -0.585064, -0.630705,
		0.575689, 0.312773, -0.755483,
		0.639274, -0.748246, 0.177359,
		42.968708, 39.172318, 38.637299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914993, 39.490978, 37.827019>,  <42.521214, 39.696087, 38.513149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914993, 39.490978, 37.827019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902271, 39.173576, 38.070114>,  <42.894638, 38.983135, 38.215973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902271, 39.173576, 38.070114>,  <42.914993, 39.490978, 37.827019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902271, 39.173576, 38.070114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540822, -0.497678, -0.678107,
		0.840536, -0.350248, -0.413312,
		-0.031809, -0.793501, 0.607738,
		42.892727, 38.935528, 38.252434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967960, 38.855087, 37.387489>,  <42.914993, 39.490978, 37.827019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967960, 38.855087, 37.387489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802975, 38.739212, 37.732964>,  <42.703983, 38.669689, 37.940247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802975, 38.739212, 37.732964>,  <42.967960, 38.855087, 37.387489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802975, 38.739212, 37.732964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760920, -0.411722, -0.501484,
		0.500871, -0.864041, -0.050605,
		-0.412467, -0.289685, 0.863686,
		42.679234, 38.652306, 37.992069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775776, 38.123829, 37.488781>,  <42.967960, 38.855087, 37.387489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775776, 38.123829, 37.488781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522865, 38.366604, 37.681389>,  <42.371120, 38.512268, 37.796951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522865, 38.366604, 37.681389>,  <42.775776, 38.123829, 37.488781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522865, 38.366604, 37.681389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748049, -0.316508, -0.583306,
		-0.201624, -0.729009, 0.654136,
		-0.632274, 0.606934, 0.481519,
		42.333183, 38.548683, 37.825844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036251, 37.803986, 37.462208>,  <42.775776, 38.123829, 37.488781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036251, 37.803986, 37.462208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017342, 38.198307, 37.526649>,  <42.005997, 38.434898, 37.565315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017342, 38.198307, 37.526649>,  <42.036251, 37.803986, 37.462208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017342, 38.198307, 37.526649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751410, 0.071173, -0.655985,
		-0.658139, -0.152067, 0.737379,
		-0.047272, 0.985804, 0.161106,
		42.003159, 38.494049, 37.574982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069469, 37.660461, 38.223259>,  <42.036251, 37.803986, 37.462208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069469, 37.660461, 38.223259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789986, 37.934074, 38.307072>,  <41.622295, 38.098240, 38.357361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789986, 37.934074, 38.307072>,  <42.069469, 37.660461, 38.223259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789986, 37.934074, 38.307072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681552, -0.547434, -0.485595,
		-0.217456, -0.482099, 0.848701,
		-0.698713, 0.684030, 0.209533,
		41.580372, 38.139282, 38.369930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523533, 37.216614, 38.368301>,  <42.069469, 37.660461, 38.223259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523533, 37.216614, 38.368301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385185, 37.560852, 38.218769>,  <41.302177, 37.767395, 38.129051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385185, 37.560852, 38.218769>,  <41.523533, 37.216614, 38.368301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385185, 37.560852, 38.218769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692063, -0.503018, -0.517708,
		-0.633580, 0.079653, 0.769566,
		-0.345869, 0.860598, -0.373827,
		41.281425, 37.819031, 38.106621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822262, 37.068584, 38.139011>,  <41.523533, 37.216614, 38.368301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822262, 37.068584, 38.139011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880833, 37.414768, 37.947369>,  <40.915977, 37.622478, 37.832382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880833, 37.414768, 37.947369>,  <40.822262, 37.068584, 38.139011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880833, 37.414768, 37.947369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582225, -0.316152, -0.749041,
		-0.799733, 0.388632, 0.457594,
		0.146432, 0.865455, -0.479109,
		40.924763, 37.674404, 37.803635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192619, 37.588131, 38.130272>,  <40.822262, 37.068584, 38.139011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192619, 37.588131, 38.130272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435493, 37.612503, 37.813385>,  <40.581219, 37.627129, 37.623253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435493, 37.612503, 37.813385>,  <40.192619, 37.588131, 38.130272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435493, 37.612503, 37.813385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759311, -0.249185, -0.601127,
		-0.234039, 0.966537, -0.105033,
		0.607185, 0.060934, -0.792221,
		40.617649, 37.630783, 37.575718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754303, 38.014927, 37.607395>,  <40.192619, 37.588131, 38.130272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754303, 38.014927, 37.607395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039326, 37.819527, 37.405949>,  <40.210339, 37.702286, 37.285080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039326, 37.819527, 37.405949>,  <39.754303, 38.014927, 37.607395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039326, 37.819527, 37.405949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678724, -0.298072, -0.671183,
		0.177760, 0.820073, -0.543951,
		0.712556, -0.488502, -0.503617,
		40.253094, 37.672977, 37.254864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647476, 38.123398, 36.846130>,  <39.754303, 38.014927, 37.607395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647476, 38.123398, 36.846130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900200, 37.813599, 36.858562>,  <40.051834, 37.627720, 36.866024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900200, 37.813599, 36.858562>,  <39.647476, 38.123398, 36.846130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900200, 37.813599, 36.858562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342135, -0.314634, -0.885409,
		0.695531, 0.548773, -0.463773,
		0.631807, -0.774502, 0.031083,
		40.089741, 37.581249, 36.867886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954781, 38.123367, 36.259254>,  <39.647476, 38.123398, 36.846130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954781, 38.123367, 36.259254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988457, 37.739323, 36.365906>,  <40.008663, 37.508896, 36.429897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988457, 37.739323, 36.365906>,  <39.954781, 38.123367, 36.259254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988457, 37.739323, 36.365906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038066, -0.270478, -0.961973,
		0.995723, 0.070837, -0.059319,
		0.084187, -0.960116, 0.266625,
		40.013714, 37.451286, 36.445892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547142, 37.777081, 35.945621>,  <39.954781, 38.123367, 36.259254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547142, 37.777081, 35.945621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275066, 37.496754, 36.031593>,  <40.111820, 37.328556, 36.083176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275066, 37.496754, 36.031593>,  <40.547142, 37.777081, 35.945621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275066, 37.496754, 36.031593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034390, -0.262369, -0.964355,
		0.732228, -0.663337, 0.154360,
		-0.680191, -0.700819, 0.214926,
		40.071011, 37.286507, 36.096069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804028, 37.281532, 35.516762>,  <40.547142, 37.777081, 35.945621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804028, 37.281532, 35.516762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430126, 37.168587, 35.603027>,  <40.205784, 37.100819, 35.654785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430126, 37.168587, 35.603027>,  <40.804028, 37.281532, 35.516762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430126, 37.168587, 35.603027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086014, -0.409083, -0.908434,
		0.344733, -0.867710, 0.358103,
		-0.934752, -0.282365, 0.215660,
		40.149700, 37.083878, 35.667725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673454, 36.746803, 35.080967>,  <40.804028, 37.281532, 35.516762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673454, 36.746803, 35.080967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291584, 36.775986, 35.196392>,  <40.062462, 36.793495, 35.265648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291584, 36.775986, 35.196392>,  <40.673454, 36.746803, 35.080967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291584, 36.775986, 35.196392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293830, -0.385725, -0.874574,
		0.047505, -0.919725, 0.389678,
		-0.954677, 0.072953, 0.288567,
		40.005180, 36.797871, 35.282963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354202, 36.086163, 34.828938>,  <40.673454, 36.746803, 35.080967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354202, 36.086163, 34.828938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062500, 36.350872, 34.898495>,  <39.887478, 36.509697, 34.940231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062500, 36.350872, 34.898495>,  <40.354202, 36.086163, 34.828938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062500, 36.350872, 34.898495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427668, -0.242450, -0.870815,
		-0.534121, -0.709417, 0.459828,
		-0.729257, 0.661774, 0.173898,
		39.843723, 36.549404, 34.950665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528660, 35.864647, 35.464005>,  <40.354202, 36.086163, 34.828938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528660, 35.864647, 35.464005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854240, 36.091084, 35.411827>,  <41.049591, 36.226944, 35.380520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854240, 36.091084, 35.411827>,  <40.528660, 35.864647, 35.464005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854240, 36.091084, 35.411827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231866, -0.522462, -0.820531,
		-0.532648, 0.637631, -0.556519,
		0.813956, 0.566092, -0.130444,
		41.098427, 36.260910, 35.372692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107460, 35.649620, 35.847610>,  <40.528660, 35.864647, 35.464005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107460, 35.649620, 35.847610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486343, 35.740562, 35.757183>,  <41.713673, 35.795128, 35.702927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486343, 35.740562, 35.757183>,  <41.107460, 35.649620, 35.847610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486343, 35.740562, 35.757183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318455, -0.585389, 0.745591,
		0.037177, -0.778222, -0.626888,
		0.947208, 0.227355, -0.226066,
		41.770508, 35.808769, 35.689362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538315, 35.014000, 35.675114>,  <41.107460, 35.649620, 35.847610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538315, 35.014000, 35.675114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733925, 35.327591, 35.828075>,  <41.851292, 35.515747, 35.919853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733925, 35.327591, 35.828075>,  <41.538315, 35.014000, 35.675114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733925, 35.327591, 35.828075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361006, -0.580994, 0.729466,
		0.794061, -0.218676, -0.567141,
		0.489022, 0.783982, 0.382401,
		41.880630, 35.562786, 35.942795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206364, 34.871212, 35.681816>,  <41.538315, 35.014000, 35.675114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206364, 34.871212, 35.681816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151604, 35.129478, 35.982315>,  <42.118748, 35.284439, 36.162613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151604, 35.129478, 35.982315>,  <42.206364, 34.871212, 35.681816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151604, 35.129478, 35.982315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288697, -0.699457, 0.653769,
		0.947582, 0.306382, -0.090648,
		-0.136899, 0.645669, 0.751245,
		42.110535, 35.323181, 36.207687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863579, 34.968380, 36.089478>,  <42.206364, 34.871212, 35.681816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863579, 34.968380, 36.089478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550247, 35.041733, 36.327053>,  <42.362247, 35.085743, 36.469597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550247, 35.041733, 36.327053>,  <42.863579, 34.968380, 36.089478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550247, 35.041733, 36.327053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404033, -0.575914, 0.710690,
		0.472383, 0.796677, 0.377041,
		-0.783333, 0.183381, 0.593936,
		42.315247, 35.096748, 36.505234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639790, 35.770000, 35.820114>,  <42.863579, 34.968380, 36.089478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639790, 35.770000, 35.820114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558601, 36.064034, 36.078865>,  <42.509888, 36.240452, 36.234116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558601, 36.064034, 36.078865>,  <42.639790, 35.770000, 35.820114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558601, 36.064034, 36.078865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513492, 0.642413, -0.568887,
		-0.833744, 0.216700, -0.507851,
		-0.202972, 0.735083, 0.646881,
		42.497711, 36.284557, 36.272930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597450, 36.591606, 35.749626>,  <42.639790, 35.770000, 35.820114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597450, 36.591606, 35.749626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770573, 36.952194, 35.747372>,  <42.874447, 37.168549, 35.746017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770573, 36.952194, 35.747372>,  <42.597450, 36.591606, 35.749626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770573, 36.952194, 35.747372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854985, -0.412453, -0.314459,
		-0.285800, 0.131281, -0.949254,
		0.432805, 0.901470, -0.005636,
		42.900414, 37.222633, 35.745682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979568, 36.616425, 35.143715>,  <42.597450, 36.591606, 35.749626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979568, 36.616425, 35.143715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125130, 36.912678, 35.369648>,  <43.212467, 37.090427, 35.505207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125130, 36.912678, 35.369648>,  <42.979568, 36.616425, 35.143715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125130, 36.912678, 35.369648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924115, -0.211203, -0.318441,
		-0.116551, 0.637857, -0.761284,
		0.363906, 0.740629, 0.564837,
		43.234303, 37.134865, 35.539101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316090, 37.069324, 34.685219>,  <42.979568, 36.616425, 35.143715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316090, 37.069324, 34.685219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519535, 37.028301, 35.027164>,  <43.641602, 37.003685, 35.232330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519535, 37.028301, 35.027164>,  <43.316090, 37.069324, 34.685219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519535, 37.028301, 35.027164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857741, -0.025900, -0.513430,
		0.074799, 0.994389, 0.074798,
		0.508612, -0.102562, 0.854866,
		43.672119, 36.997532, 35.283623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903351, 37.552380, 34.751129>,  <43.316090, 37.069324, 34.685219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903351, 37.552380, 34.751129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964039, 37.205368, 34.940601>,  <44.000454, 36.997162, 35.054287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964039, 37.205368, 34.940601>,  <43.903351, 37.552380, 34.751129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964039, 37.205368, 34.940601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854266, -0.125973, -0.504342,
		0.497201, 0.481172, 0.721986,
		0.151725, -0.867528, 0.473683,
		44.009556, 36.945110, 35.082706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626255, 37.530872, 35.074009>,  <43.903351, 37.552380, 34.751129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626255, 37.530872, 35.074009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481964, 37.167740, 34.988476>,  <44.395390, 36.949860, 34.937157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481964, 37.167740, 34.988476>,  <44.626255, 37.530872, 35.074009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481964, 37.167740, 34.988476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793839, -0.178498, -0.581342,
		0.489589, -0.379457, 0.785057,
		-0.360725, -0.907827, -0.213837,
		44.373745, 36.895393, 34.924324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017879, 36.933273, 35.288429>,  <44.626255, 37.530872, 35.074009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017879, 36.933273, 35.288429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819111, 36.838734, 34.954433>,  <44.699852, 36.782009, 34.754036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819111, 36.838734, 34.954433>,  <45.017879, 36.933273, 35.288429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819111, 36.838734, 34.954433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863867, -0.043244, -0.501861,
		0.082507, -0.970705, 0.225665,
		-0.496917, -0.236352, -0.834992,
		44.670036, 36.767830, 34.703938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466923, 36.538494, 34.892410>,  <45.017879, 36.933273, 35.288429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466923, 36.538494, 34.892410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190502, 36.676323, 34.638256>,  <45.024651, 36.759018, 34.485764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190502, 36.676323, 34.638256>,  <45.466923, 36.538494, 34.892410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190502, 36.676323, 34.638256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651815, -0.082839, -0.753841,
		-0.312386, -0.935098, -0.167350,
		-0.691052, 0.344571, -0.635388,
		44.983185, 36.779694, 34.447639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362949, 36.133263, 34.287823>,  <45.466923, 36.538494, 34.892410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362949, 36.133263, 34.287823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253662, 36.492832, 34.150837>,  <45.188087, 36.708572, 34.068645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253662, 36.492832, 34.150837>,  <45.362949, 36.133263, 34.287823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.253662, 36.492832, 34.150837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639356, -0.096303, -0.762856,
		-0.718731, -0.427387, -0.548421,
		-0.273220, 0.898925, -0.342469,
		45.171696, 36.762508, 34.048096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695187, 35.344685, 34.170731>,  <45.362949, 36.133263, 34.287823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695187, 35.344685, 34.170731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472214, 35.102467, 33.943542>,  <45.338428, 34.957138, 33.807232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472214, 35.102467, 33.943542>,  <45.695187, 35.344685, 34.170731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472214, 35.102467, 33.943542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729081, -0.029812, -0.683778,
		0.397125, -0.795254, 0.458108,
		-0.557434, -0.605543, -0.567965,
		45.304985, 34.920803, 33.773151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083187, 34.790859, 33.792458>,  <45.695187, 35.344685, 34.170731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083187, 34.790859, 33.792458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738987, 34.840195, 33.594738>,  <45.532467, 34.869797, 33.476105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738987, 34.840195, 33.594738>,  <46.083187, 34.790859, 33.792458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738987, 34.840195, 33.594738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509312, 0.231446, -0.828875,
		0.012171, -0.964997, -0.261977,
		-0.860496, 0.123340, -0.494302,
		45.480839, 34.877197, 33.446449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104206, 34.188549, 34.238613>,  <46.083187, 34.790859, 33.792458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104206, 34.188549, 34.238613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346642, 34.481934, 34.115524>,  <46.492104, 34.657963, 34.041672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346642, 34.481934, 34.115524>,  <46.104206, 34.188549, 34.238613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346642, 34.481934, 34.115524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574092, -0.135622, 0.807481,
		0.550521, -0.666066, -0.503272,
		0.606090, 0.733460, -0.307720,
		46.528469, 34.701973, 34.023209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514526, 34.191143, 34.810776>,  <46.104206, 34.188549, 34.238613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514526, 34.191143, 34.810776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658176, 34.494709, 34.593494>,  <46.744366, 34.676849, 34.463127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658176, 34.494709, 34.593494>,  <46.514526, 34.191143, 34.810776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.658176, 34.494709, 34.593494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655115, 0.209556, 0.725886,
		0.664721, -0.616545, -0.421923,
		0.359125, 0.758920, -0.543204,
		46.765915, 34.722385, 34.430534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258209, 34.074093, 34.919708>,  <46.514526, 34.191143, 34.810776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258209, 34.074093, 34.919708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205261, 34.448425, 34.789047>,  <47.173492, 34.673023, 34.710651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205261, 34.448425, 34.789047>,  <47.258209, 34.074093, 34.919708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.205261, 34.448425, 34.789047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641399, 0.332121, 0.691594,
		0.755702, -0.117966, -0.644204,
		-0.132369, 0.935831, -0.326648,
		47.165550, 34.729176, 34.691051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909580, 34.373913, 34.689686>,  <47.258209, 34.074093, 34.919708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909580, 34.373913, 34.689686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634411, 34.594887, 34.877975>,  <47.469311, 34.727470, 34.990948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634411, 34.594887, 34.877975>,  <47.909580, 34.373913, 34.689686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.634411, 34.594887, 34.877975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662613, 0.213391, 0.717919,
		0.296159, 0.805776, -0.512849,
		-0.687920, 0.552439, 0.470720,
		47.428036, 34.760620, 35.019192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.209133, 35.034584, 34.846478>,  <47.909580, 34.373913, 34.689686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.209133, 35.034584, 34.846478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.936031, 34.941170, 35.123405>,  <47.772171, 34.885120, 35.289562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.936031, 34.941170, 35.123405>,  <48.209133, 35.034584, 34.846478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.936031, 34.941170, 35.123405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693995, 0.089069, 0.714449,
		-0.228512, 0.968261, 0.101258,
		-0.682754, -0.233533, 0.692321,
		47.731205, 34.871109, 35.331100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.502865, 28.581610, 28.872871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221169, 28.713692, 28.621471>,  <37.052151, 28.792940, 28.470631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221169, 28.713692, 28.621471>,  <37.502865, 28.581610, 28.872871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221169, 28.713692, 28.621471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172393, 0.779230, 0.602562,
		0.688716, 0.532696, -0.491838,
		-0.704238, 0.330205, -0.628501,
		37.009895, 28.812754, 28.432920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555008, 29.281425, 28.943684>,  <37.502865, 28.581610, 28.872871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555008, 29.281425, 28.943684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192585, 29.221230, 28.785492>,  <36.975128, 29.185112, 28.690577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192585, 29.221230, 28.785492>,  <37.555008, 29.281425, 28.943684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192585, 29.221230, 28.785492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376607, 0.712912, 0.591543,
		0.192921, 0.684916, -0.702618,
		-0.906062, -0.150490, -0.395480,
		36.920765, 29.176083, 28.666847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279465, 29.908731, 28.705265>,  <37.555008, 29.281425, 28.943684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279465, 29.908731, 28.705265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940247, 29.699110, 28.736723>,  <36.736713, 29.573338, 28.755598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940247, 29.699110, 28.736723>,  <37.279465, 29.908731, 28.705265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940247, 29.699110, 28.736723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396460, 0.725914, 0.562021,
		-0.351616, 0.445442, -0.823376,
		-0.848048, -0.524052, 0.078643,
		36.685833, 29.541895, 28.760317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698566, 30.337635, 28.535448>,  <37.279465, 29.908731, 28.705265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698566, 30.337635, 28.535448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.523666, 30.047842, 28.748592>,  <36.418728, 29.873966, 28.876478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.523666, 30.047842, 28.748592>,  <36.698566, 30.337635, 28.535448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523666, 30.047842, 28.748592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525055, 0.686682, 0.502778,
		-0.730159, -0.059943, -0.680643,
		-0.437247, -0.724482, 0.532860,
		36.392490, 29.830498, 28.908451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946850, 30.555624, 28.570698>,  <36.698566, 30.337635, 28.535448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946850, 30.555624, 28.570698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035179, 30.308571, 28.872629>,  <36.088177, 30.160339, 29.053789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035179, 30.308571, 28.872629>,  <35.946850, 30.555624, 28.570698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035179, 30.308571, 28.872629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474436, 0.608172, 0.636426,
		-0.852143, -0.498656, -0.158727,
		0.220824, -0.617632, 0.754830,
		36.101425, 30.123281, 29.099077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262058, 30.566183, 28.978823>,  <35.946850, 30.555624, 28.570698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262058, 30.566183, 28.978823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568420, 30.440331, 29.203108>,  <35.752235, 30.364819, 29.337679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568420, 30.440331, 29.203108>,  <35.262058, 30.566183, 28.978823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568420, 30.440331, 29.203108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265710, 0.639244, 0.721641,
		-0.585483, -0.701694, 0.405999,
		0.765903, -0.314630, 0.560714,
		35.798191, 30.345942, 29.371323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999989, 30.480909, 29.746607>,  <35.262058, 30.566183, 28.978823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999989, 30.480909, 29.746607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398895, 30.510447, 29.746698>,  <35.638241, 30.528170, 29.746754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398895, 30.510447, 29.746698>,  <34.999989, 30.480909, 29.746607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398895, 30.510447, 29.746698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036676, 0.492606, 0.869480,
		0.064093, -0.867114, 0.493969,
		0.997270, 0.073844, 0.000230,
		35.698074, 30.532600, 29.746767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191883, 30.363462, 30.558819>,  <34.999989, 30.480909, 29.746607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191883, 30.363462, 30.558819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523872, 30.527866, 30.407974>,  <35.723064, 30.626509, 30.317467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523872, 30.527866, 30.407974>,  <35.191883, 30.363462, 30.558819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523872, 30.527866, 30.407974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025733, 0.647134, 0.761942,
		0.557205, -0.642098, 0.526529,
		0.829976, 0.411008, -0.377109,
		35.772865, 30.651169, 30.294842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740597, 30.502775, 31.125214>,  <35.191883, 30.363462, 30.558819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740597, 30.502775, 31.125214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.823792, 30.763582, 30.833567>,  <35.873711, 30.920067, 30.658579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.823792, 30.763582, 30.833567>,  <35.740597, 30.502775, 31.125214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823792, 30.763582, 30.833567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315365, 0.660912, 0.680984,
		0.925897, -0.371577, -0.068160,
		0.207990, 0.652017, -0.729119,
		35.886189, 30.959187, 30.614832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294376, 30.837732, 31.395273>,  <35.740597, 30.502775, 31.125214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294376, 30.837732, 31.395273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159630, 31.081810, 31.108446>,  <36.078781, 31.228256, 30.936350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159630, 31.081810, 31.108446>,  <36.294376, 30.837732, 31.395273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159630, 31.081810, 31.108446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211236, 0.791146, 0.573993,
		0.917553, 0.041886, -0.395402,
		-0.336863, 0.610192, -0.717070,
		36.058571, 31.264868, 30.893326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758629, 31.335720, 31.220963>,  <36.294376, 30.837732, 31.395273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758629, 31.335720, 31.220963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421902, 31.513659, 31.098677>,  <36.219868, 31.620420, 31.025305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421902, 31.513659, 31.098677>,  <36.758629, 31.335720, 31.220963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421902, 31.513659, 31.098677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011329, 0.551701, 0.833965,
		0.539648, 0.705507, -0.459390,
		-0.841814, 0.444844, -0.305717,
		36.169357, 31.647112, 31.006962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879356, 31.997066, 31.218607>,  <36.758629, 31.335720, 31.220963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879356, 31.997066, 31.218607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480198, 31.974094, 31.230629>,  <36.240704, 31.960312, 31.237843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480198, 31.974094, 31.230629>,  <36.879356, 31.997066, 31.218607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480198, 31.974094, 31.230629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006596, 0.551249, 0.834314,
		-0.064483, 0.832362, -0.550469,
		-0.997897, -0.057430, 0.030056,
		36.180828, 31.956865, 31.239645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542797, 32.649662, 31.162861>,  <36.879356, 31.997066, 31.218607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542797, 32.649662, 31.162861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284431, 32.419777, 31.363855>,  <36.129410, 32.281845, 31.484451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284431, 32.419777, 31.363855>,  <36.542797, 32.649662, 31.162861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284431, 32.419777, 31.363855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090361, 0.711143, 0.697216,
		-0.758040, 0.404939, -0.511272,
		-0.645918, -0.574717, 0.502484,
		36.090656, 32.247360, 31.514601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060154, 33.049122, 31.182280>,  <36.542797, 32.649662, 31.162861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060154, 33.049122, 31.182280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997215, 32.765015, 31.456728>,  <35.959450, 32.594551, 31.621397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997215, 32.765015, 31.456728>,  <36.060154, 33.049122, 31.182280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997215, 32.765015, 31.456728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008521, 0.695726, 0.718257,
		-0.987506, 0.107171, -0.115524,
		-0.157349, -0.710267, 0.686121,
		35.950012, 32.551933, 31.662563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444599, 33.234497, 31.604218>,  <36.060154, 33.049122, 31.182280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444599, 33.234497, 31.604218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669331, 32.978283, 31.813618>,  <35.804169, 32.824554, 31.939259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669331, 32.978283, 31.813618>,  <35.444599, 33.234497, 31.604218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669331, 32.978283, 31.813618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020498, 0.621848, 0.782870,
		-0.826997, -0.450573, 0.336245,
		0.561833, -0.640538, 0.523502,
		35.837879, 32.786121, 31.970669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344582, 33.478863, 32.259209>,  <35.444599, 33.234497, 31.604218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344582, 33.478863, 32.259209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620335, 33.206894, 32.359177>,  <35.785786, 33.043713, 32.419159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620335, 33.206894, 32.359177>,  <35.344582, 33.478863, 32.259209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620335, 33.206894, 32.359177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156506, 0.476655, 0.865047,
		-0.707289, -0.557234, 0.435009,
		0.689383, -0.679919, 0.249922,
		35.827148, 33.002918, 32.434155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170311, 33.254349, 32.928268>,  <35.344582, 33.478863, 32.259209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170311, 33.254349, 32.928268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552834, 33.143764, 32.890228>,  <35.782349, 33.077415, 32.867405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552834, 33.143764, 32.890228>,  <35.170311, 33.254349, 32.928268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552834, 33.143764, 32.890228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209787, 0.422345, 0.881824,
		-0.203627, -0.863246, 0.461890,
		0.956308, -0.276462, -0.095097,
		35.839725, 33.060825, 32.861698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342663, 32.858627, 33.553680>,  <35.170311, 33.254349, 32.928268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342663, 32.858627, 33.553680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676029, 33.001144, 33.384693>,  <35.876049, 33.086655, 33.283302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676029, 33.001144, 33.384693>,  <35.342663, 32.858627, 33.553680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676029, 33.001144, 33.384693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291557, 0.365942, 0.883788,
		0.469482, -0.859735, 0.201103,
		0.833416, 0.356289, -0.422465,
		35.926052, 33.108032, 33.257954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788811, 32.749695, 34.048080>,  <35.342663, 32.858627, 33.553680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788811, 32.749695, 34.048080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994484, 32.999138, 33.812546>,  <36.117889, 33.148804, 33.671227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994484, 32.999138, 33.812546>,  <35.788811, 32.749695, 34.048080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994484, 32.999138, 33.812546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426350, 0.409867, 0.806372,
		0.744203, -0.665674, -0.055128,
		0.514186, 0.623608, -0.588835,
		36.148739, 33.186222, 33.635895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396893, 32.809086, 34.425125>,  <35.788811, 32.749695, 34.048080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396893, 32.809086, 34.425125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388031, 33.123245, 34.177689>,  <36.382713, 33.311741, 34.029224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388031, 33.123245, 34.177689>,  <36.396893, 32.809086, 34.425125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388031, 33.123245, 34.177689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412470, 0.570812, 0.709959,
		0.910702, -0.239426, -0.336597,
		-0.022151, 0.785397, -0.618596,
		36.381386, 33.358864, 33.992111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117310, 33.141865, 34.378666>,  <36.396893, 32.809086, 34.425125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117310, 33.141865, 34.378666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821491, 33.397266, 34.293453>,  <36.644001, 33.550507, 34.242325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821491, 33.397266, 34.293453>,  <37.117310, 33.141865, 34.378666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821491, 33.397266, 34.293453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244000, 0.549267, 0.799231,
		0.627327, 0.539086, -0.562003,
		-0.739544, 0.638508, -0.213033,
		36.599628, 33.588818, 34.229542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452595, 33.788250, 34.493034>,  <37.117310, 33.141865, 34.378666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452595, 33.788250, 34.493034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055050, 33.826557, 34.515202>,  <36.816525, 33.849541, 34.528500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055050, 33.826557, 34.515202>,  <37.452595, 33.788250, 34.493034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055050, 33.826557, 34.515202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090229, 0.411626, 0.906875,
		0.064035, 0.906308, -0.417739,
		-0.993860, 0.095764, 0.055416,
		36.756893, 33.855286, 34.531826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904102, 34.288445, 34.275913>,  <37.452595, 33.788250, 34.493034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904102, 34.288445, 34.275913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238571, 34.314407, 34.493759>,  <38.439251, 34.329987, 34.624466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238571, 34.314407, 34.493759>,  <37.904102, 34.288445, 34.275913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238571, 34.314407, 34.493759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351544, -0.825612, -0.441341,
		0.420994, 0.560493, -0.713170,
		0.836170, 0.064909, 0.544616,
		38.489422, 34.333881, 34.657143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390106, 34.299911, 33.753124>,  <37.904102, 34.288445, 34.275913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390106, 34.299911, 33.753124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498730, 34.127632, 34.097393>,  <38.563904, 34.024265, 34.303955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498730, 34.127632, 34.097393>,  <38.390106, 34.299911, 33.753124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498730, 34.127632, 34.097393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312820, -0.806219, -0.502150,
		0.910166, 0.405596, -0.084201,
		0.271555, -0.430700, 0.860671,
		38.580196, 33.998421, 34.355595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076183, 34.058811, 33.660866>,  <38.390106, 34.299911, 33.753124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076183, 34.058811, 33.660866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928104, 33.821793, 33.947037>,  <38.839256, 33.679581, 34.118740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928104, 33.821793, 33.947037>,  <39.076183, 34.058811, 33.660866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928104, 33.821793, 33.947037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295327, -0.805262, -0.514135,
		0.880757, 0.020952, 0.473105,
		-0.370202, -0.592548, 0.715428,
		38.817043, 33.644028, 34.161667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623871, 33.584431, 33.863575>,  <39.076183, 34.058811, 33.660866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623871, 33.584431, 33.863575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283913, 33.413647, 33.987110>,  <39.079937, 33.311176, 34.061230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283913, 33.413647, 33.987110>,  <39.623871, 33.584431, 33.863575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283913, 33.413647, 33.987110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170076, -0.776976, -0.606120,
		0.498750, -0.462613, 0.732965,
		-0.849895, -0.426963, 0.308838,
		39.028942, 33.285557, 34.079762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801819, 32.899353, 34.057922>,  <39.623871, 33.584431, 33.863575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801819, 32.899353, 34.057922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407299, 32.891014, 33.992474>,  <39.170586, 32.886009, 33.953205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407299, 32.891014, 33.992474>,  <39.801819, 32.899353, 34.057922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407299, 32.891014, 33.992474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084735, -0.915124, -0.394168,
		-0.141512, -0.402633, 0.904357,
		-0.986304, -0.020851, -0.163618,
		39.111408, 32.884758, 33.943390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743977, 32.175426, 33.997494>,  <39.801819, 32.899353, 34.057922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743977, 32.175426, 33.997494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410233, 32.355015, 33.869576>,  <39.209984, 32.462769, 33.792824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410233, 32.355015, 33.869576>,  <39.743977, 32.175426, 33.997494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410233, 32.355015, 33.869576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113971, -0.708137, -0.696816,
		-0.539304, -0.544950, 0.642013,
		-0.834363, 0.448966, -0.319793,
		39.159924, 32.489704, 33.773636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290524, 31.688459, 34.034252>,  <39.743977, 32.175426, 33.997494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290524, 31.688459, 34.034252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139168, 31.950781, 33.772949>,  <39.048355, 32.108173, 33.616169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139168, 31.950781, 33.772949>,  <39.290524, 31.688459, 34.034252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139168, 31.950781, 33.772949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061841, -0.722064, -0.689057,
		-0.923580, -0.220331, 0.313774,
		-0.378385, 0.655803, -0.653258,
		39.025654, 32.147522, 33.576973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794117, 31.342503, 33.685368>,  <39.290524, 31.688459, 34.034252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794117, 31.342503, 33.685368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825489, 31.664383, 33.449978>,  <38.844311, 31.857512, 33.308743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825489, 31.664383, 33.449978>,  <38.794117, 31.342503, 33.685368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825489, 31.664383, 33.449978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293127, -0.545586, -0.785119,
		-0.952851, 0.234074, 0.193090,
		0.078429, 0.804701, -0.588476,
		38.849018, 31.905794, 33.273434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218330, 31.327721, 33.206951>,  <38.794117, 31.342503, 33.685368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218330, 31.327721, 33.206951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531078, 31.528774, 33.059422>,  <38.718727, 31.649406, 32.970901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531078, 31.528774, 33.059422>,  <38.218330, 31.327721, 33.206951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531078, 31.528774, 33.059422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094007, -0.489784, -0.866761,
		-0.616310, 0.712369, -0.335697,
		0.781873, 0.502635, -0.368826,
		38.765640, 31.679565, 32.948772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021317, 31.548695, 32.505894>,  <38.218330, 31.327721, 33.206951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021317, 31.548695, 32.505894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420784, 31.533272, 32.519642>,  <38.660465, 31.524017, 32.527889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420784, 31.533272, 32.519642>,  <38.021317, 31.548695, 32.505894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420784, 31.533272, 32.519642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005790, -0.577584, -0.816310,
		0.051325, 0.815420, -0.576590,
		0.998665, -0.038558, 0.034366,
		38.720383, 31.521704, 32.529953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118690, 31.408382, 31.817703>,  <38.021317, 31.548695, 32.505894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118690, 31.408382, 31.817703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.486217, 31.346907, 31.963112>,  <38.706734, 31.310022, 32.050358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.486217, 31.346907, 31.963112>,  <38.118690, 31.408382, 31.817703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486217, 31.346907, 31.963112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184986, -0.645929, -0.740645,
		0.348637, 0.747767, -0.565064,
		0.918821, -0.153688, 0.363521,
		38.761864, 31.300800, 32.072166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533417, 31.251190, 31.221291>,  <38.118690, 31.408382, 31.817703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533417, 31.251190, 31.221291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738499, 31.086838, 31.522837>,  <38.861549, 30.988226, 31.703764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738499, 31.086838, 31.522837>,  <38.533417, 31.251190, 31.221291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738499, 31.086838, 31.522837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109961, -0.839395, -0.532283,
		0.851494, 0.355799, -0.385180,
		0.512704, -0.410881, 0.753864,
		38.892311, 30.963573, 31.748997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185745, 30.986561, 30.964081>,  <38.533417, 31.251190, 31.221291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185745, 30.986561, 30.964081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.101780, 30.778065, 31.294956>,  <39.051399, 30.652967, 31.493483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.101780, 30.778065, 31.294956>,  <39.185745, 30.986561, 30.964081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101780, 30.778065, 31.294956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301822, -0.839265, -0.452258,
		0.929968, 0.154730, 0.333495,
		-0.209913, -0.521242, 0.827190,
		39.038807, 30.621693, 31.543114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697121, 30.549553, 31.114374>,  <39.185745, 30.986561, 30.964081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697121, 30.549553, 31.114374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377842, 30.399134, 31.302614>,  <39.186275, 30.308882, 31.415558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377842, 30.399134, 31.302614>,  <39.697121, 30.549553, 31.114374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377842, 30.399134, 31.302614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148838, -0.880110, -0.450836,
		0.583716, -0.289814, 0.758474,
		-0.798200, -0.376050, 0.470599,
		39.138382, 30.286318, 31.443794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964085, 29.875969, 31.369837>,  <39.697121, 30.549553, 31.114374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964085, 29.875969, 31.369837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.566406, 29.893637, 31.330614>,  <39.327797, 29.904238, 31.307081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.566406, 29.893637, 31.330614>,  <39.964085, 29.875969, 31.369837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566406, 29.893637, 31.330614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007513, -0.881021, -0.473017,
		-0.107282, -0.471010, 0.875580,
		-0.994200, 0.044168, -0.098057,
		39.268147, 29.906887, 31.301197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641457, 29.306679, 31.763577>,  <39.964085, 29.875969, 31.369837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641457, 29.306679, 31.763577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.412762, 29.402691, 31.449760>,  <39.275543, 29.460299, 31.261471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.412762, 29.402691, 31.449760>,  <39.641457, 29.306679, 31.763577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412762, 29.402691, 31.449760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032035, -0.948986, -0.313687,
		-0.819811, -0.204479, 0.534882,
		-0.571738, 0.240029, -0.784540,
		39.241241, 29.474699, 31.214399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603497, 28.696304, 31.469627>,  <39.641457, 29.306679, 31.763577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603497, 28.696304, 31.469627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.392879, 28.903383, 31.199890>,  <39.266510, 29.027630, 31.038048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.392879, 28.903383, 31.199890>,  <39.603497, 28.696304, 31.469627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392879, 28.903383, 31.199890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120482, -0.830643, -0.543614,
		-0.841569, -0.204989, 0.499741,
		-0.526542, 0.517698, -0.674346,
		39.234917, 29.058693, 30.997587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896400, 28.366135, 31.299391>,  <39.603497, 28.696304, 31.469627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896400, 28.366135, 31.299391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.034462, 28.584053, 30.993694>,  <39.117298, 28.714804, 30.810276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.034462, 28.584053, 30.993694>,  <38.896400, 28.366135, 31.299391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034462, 28.584053, 30.993694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115298, -0.783502, -0.610599,
		-0.931436, 0.298868, -0.207617,
		0.345157, 0.544796, -0.764241,
		39.138008, 28.747492, 30.764421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.433712, 27.952429, 30.615557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.703320, 28.208349, 30.467852>,  <38.865086, 28.361902, 30.379229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.703320, 28.208349, 30.467852>,  <38.433712, 27.952429, 30.615557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703320, 28.208349, 30.467852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118252, -0.586872, -0.800998,
		-0.729188, 0.496222, -0.471221,
		0.674019, 0.639801, -0.369261,
		38.905525, 28.400290, 30.357073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175011, 28.047472, 30.009718>,  <38.433712, 27.952429, 30.615557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175011, 28.047472, 30.009718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564209, 28.134083, 29.977753>,  <38.797729, 28.186050, 29.958572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564209, 28.134083, 29.977753>,  <38.175011, 28.047472, 30.009718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564209, 28.134083, 29.977753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014653, -0.403496, -0.914864,
		-0.230340, 0.888992, -0.395775,
		0.973000, 0.216529, -0.079915,
		38.856110, 28.199041, 29.953779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306965, 28.118023, 29.333921>,  <38.175011, 28.047472, 30.009718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306965, 28.118023, 29.333921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676479, 28.067965, 29.478670>,  <38.898190, 28.037930, 29.565519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676479, 28.067965, 29.478670>,  <38.306965, 28.118023, 29.333921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676479, 28.067965, 29.478670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281178, -0.419792, -0.862968,
		0.259910, 0.898951, -0.352611,
		0.923789, -0.125147, 0.361873,
		38.953617, 28.030420, 29.587233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664696, 28.304810, 28.805645>,  <38.306965, 28.118023, 29.333921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664696, 28.304810, 28.805645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907131, 28.068460, 29.018631>,  <39.052593, 27.926651, 29.146423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907131, 28.068460, 29.018631>,  <38.664696, 28.304810, 28.805645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907131, 28.068460, 29.018631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223766, -0.515734, -0.827011,
		0.763270, 0.620393, -0.180365,
		0.606093, -0.590873, 0.532467,
		39.088959, 27.891199, 29.178371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320469, 28.372120, 28.516178>,  <38.664696, 28.304810, 28.805645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320469, 28.372120, 28.516178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306587, 28.029629, 28.722351>,  <39.298256, 27.824135, 28.846054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306587, 28.029629, 28.722351>,  <39.320469, 28.372120, 28.516178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306587, 28.029629, 28.722351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193507, -0.511738, -0.837066,
		0.980485, 0.070687, 0.183447,
		-0.034707, -0.856228, 0.515430,
		39.296173, 27.772760, 28.876980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976276, 28.037935, 28.376656>,  <39.320469, 28.372120, 28.516178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976276, 28.037935, 28.376656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.734005, 27.748995, 28.510136>,  <39.588642, 27.575630, 28.590223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.734005, 27.748995, 28.510136>,  <39.976276, 28.037935, 28.376656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734005, 27.748995, 28.510136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330316, -0.609786, -0.720453,
		0.723906, -0.326140, 0.607942,
		-0.605683, -0.722353, 0.333699,
		39.552299, 27.532290, 28.610245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357353, 27.476582, 28.237442>,  <39.976276, 28.037935, 28.376656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357353, 27.476582, 28.237442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984638, 27.345610, 28.300140>,  <39.761009, 27.267027, 28.337759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984638, 27.345610, 28.300140>,  <40.357353, 27.476582, 28.237442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984638, 27.345610, 28.300140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075461, -0.597057, -0.798642,
		0.355086, -0.732333, 0.581036,
		-0.931783, -0.327432, 0.156744,
		39.705105, 27.247379, 28.347164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392799, 26.778862, 28.184555>,  <40.357353, 27.476582, 28.237442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392799, 26.778862, 28.184555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002232, 26.841267, 28.124878>,  <39.767891, 26.878710, 28.089071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002232, 26.841267, 28.124878>,  <40.392799, 26.778862, 28.184555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002232, 26.841267, 28.124878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031329, -0.581407, -0.813010,
		-0.213580, -0.798515, 0.562811,
		-0.976423, 0.156011, -0.149193,
		39.709305, 26.888069, 28.080120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035557, 26.154047, 28.117229>,  <40.392799, 26.778862, 28.184555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035557, 26.154047, 28.117229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.805321, 26.411507, 27.915474>,  <39.667179, 26.565983, 27.794420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.805321, 26.411507, 27.915474>,  <40.035557, 26.154047, 28.117229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805321, 26.411507, 27.915474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072149, -0.654382, -0.752714,
		-0.814547, -0.396867, 0.423097,
		-0.575594, 0.643647, -0.504391,
		39.632641, 26.604601, 27.764156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500633, 25.702763, 27.653765>,  <40.035557, 26.154047, 28.117229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500633, 25.702763, 27.653765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.527294, 26.075035, 27.509880>,  <39.543289, 26.298399, 27.423550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.527294, 26.075035, 27.509880>,  <39.500633, 25.702763, 27.653765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527294, 26.075035, 27.509880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022599, -0.361829, -0.931970,
		-0.997520, 0.053986, -0.045148,
		0.066649, 0.930680, -0.359712,
		39.547287, 26.354239, 27.401966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036655, 25.747046, 27.169962>,  <39.500633, 25.702763, 27.653765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036655, 25.747046, 27.169962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272228, 26.054171, 27.069067>,  <39.413570, 26.238445, 27.008530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272228, 26.054171, 27.069067>,  <39.036655, 25.747046, 27.169962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272228, 26.054171, 27.069067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144481, -0.407103, -0.901883,
		-0.795163, 0.494704, -0.350691,
		0.588932, 0.767812, -0.252237,
		39.448906, 26.284513, 26.993395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918636, 25.885643, 26.414268>,  <39.036655, 25.747046, 27.169962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918636, 25.885643, 26.414268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265381, 26.065138, 26.501165>,  <39.473427, 26.172834, 26.553305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265381, 26.065138, 26.501165>,  <38.918636, 25.885643, 26.414268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265381, 26.065138, 26.501165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367220, -0.279968, -0.886999,
		-0.337207, 0.848678, -0.407477,
		0.866857, 0.448736, 0.217244,
		39.525436, 26.199759, 26.566339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112118, 26.253723, 25.730213>,  <38.918636, 25.885643, 26.414268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112118, 26.253723, 25.730213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439358, 26.194336, 25.952446>,  <39.635700, 26.158705, 26.085785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439358, 26.194336, 25.952446>,  <39.112118, 26.253723, 25.730213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439358, 26.194336, 25.952446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506398, -0.271856, -0.818324,
		0.272532, 0.950817, -0.147222,
		0.818100, -0.148466, 0.555581,
		39.684788, 26.149796, 26.119120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598728, 26.779579, 25.432295>,  <39.112118, 26.253723, 25.730213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598728, 26.779579, 25.432295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815113, 26.520041, 25.646343>,  <39.944946, 26.364317, 25.774773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815113, 26.520041, 25.646343>,  <39.598728, 26.779579, 25.432295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815113, 26.520041, 25.646343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644825, -0.088513, -0.759188,
		0.539961, 0.755754, 0.370510,
		0.540964, -0.648846, 0.535123,
		39.977402, 26.325386, 25.806881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239922, 26.972292, 25.291109>,  <39.598728, 26.779579, 25.432295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239922, 26.972292, 25.291109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290665, 26.600468, 25.429571>,  <40.321110, 26.377373, 25.512648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290665, 26.600468, 25.429571>,  <40.239922, 26.972292, 25.291109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290665, 26.600468, 25.429571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555922, -0.222391, -0.800933,
		0.821498, 0.294036, 0.488552,
		0.126853, -0.929562, 0.346155,
		40.328720, 26.321600, 25.533417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866547, 26.841307, 25.031631>,  <40.239922, 26.972292, 25.291109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866547, 26.841307, 25.031631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.733078, 26.474619, 25.119534>,  <40.652996, 26.254606, 25.172274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.733078, 26.474619, 25.119534>,  <40.866547, 26.841307, 25.031631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733078, 26.474619, 25.119534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601516, -0.386533, -0.699122,
		0.725840, -0.101090, 0.680395,
		-0.333670, -0.916718, 0.219754,
		40.632977, 26.199604, 25.185459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516216, 26.372261, 25.131151>,  <40.866547, 26.841307, 25.031631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516216, 26.372261, 25.131151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.182148, 26.170858, 25.042639>,  <40.981705, 26.050016, 24.989531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.182148, 26.170858, 25.042639>,  <41.516216, 26.372261, 25.131151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182148, 26.170858, 25.042639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516093, -0.578417, -0.631729,
		0.190085, -0.641806, 0.742935,
		-0.835174, -0.503506, -0.221283,
		40.931595, 26.019806, 24.976254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647575, 25.693466, 25.096546>,  <41.516216, 26.372261, 25.131151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647575, 25.693466, 25.096546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.308186, 25.691616, 24.884857>,  <41.104553, 25.690506, 24.757843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.308186, 25.691616, 24.884857>,  <41.647575, 25.693466, 25.096546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308186, 25.691616, 24.884857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376616, -0.707822, -0.597618,
		-0.371832, -0.706376, 0.602308,
		-0.848470, -0.004625, -0.529224,
		41.053646, 25.690228, 24.726089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451443, 24.970657, 24.873369>,  <41.647575, 25.693466, 25.096546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451443, 24.970657, 24.873369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266090, 25.207052, 24.609245>,  <41.154877, 25.348888, 24.450771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266090, 25.207052, 24.609245>,  <41.451443, 24.970657, 24.873369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266090, 25.207052, 24.609245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246247, -0.629917, -0.736592,
		-0.851257, -0.503923, 0.146364,
		-0.463383, 0.590987, -0.660311,
		41.127075, 25.384348, 24.411152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077488, 24.512329, 24.499050>,  <41.451443, 24.970657, 24.873369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077488, 24.512329, 24.499050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.124676, 24.847338, 24.285643>,  <41.152988, 25.048342, 24.157598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.124676, 24.847338, 24.285643>,  <41.077488, 24.512329, 24.499050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124676, 24.847338, 24.285643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287633, -0.543058, -0.788895,
		-0.950448, -0.060395, -0.304961,
		0.117966, 0.837520, -0.533520,
		41.160065, 25.098595, 24.125587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789143, 24.296558, 23.888525>,  <41.077488, 24.512329, 24.499050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789143, 24.296558, 23.888525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.995178, 24.611383, 23.752752>,  <41.118797, 24.800280, 23.671288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.995178, 24.611383, 23.752752>,  <40.789143, 24.296558, 23.888525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995178, 24.611383, 23.752752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365048, -0.559735, -0.743934,
		-0.775516, 0.259282, -0.575628,
		0.515087, 0.787064, -0.339433,
		41.149704, 24.847504, 23.650923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640797, 24.379370, 23.164690>,  <40.789143, 24.296558, 23.888525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640797, 24.379370, 23.164690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991795, 24.555792, 23.240036>,  <41.202393, 24.661646, 23.285244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991795, 24.555792, 23.240036>,  <40.640797, 24.379370, 23.164690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991795, 24.555792, 23.240036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391378, -0.431544, -0.812769,
		-0.277189, 0.786918, -0.551295,
		0.877490, 0.441056, 0.188363,
		41.255043, 24.688108, 23.296545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752705, 24.691063, 22.587162>,  <40.640797, 24.379370, 23.164690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752705, 24.691063, 22.587162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.071888, 24.589310, 22.805721>,  <41.263397, 24.528257, 22.936857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.071888, 24.589310, 22.805721>,  <40.752705, 24.691063, 22.587162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071888, 24.589310, 22.805721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322094, -0.586273, -0.743330,
		0.509427, 0.769139, -0.385887,
		0.797960, -0.254381, 0.546398,
		41.311275, 24.512995, 22.969641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097504, 24.498770, 22.579235>,  <40.752705, 24.691063, 22.587162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097504, 24.498770, 22.579235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973404, 24.827703, 22.388443>,  <39.898945, 25.025064, 22.273968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973404, 24.827703, 22.388443>,  <40.097504, 24.498770, 22.579235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973404, 24.827703, 22.388443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742912, 0.103330, 0.661365,
		0.593150, 0.559544, 0.578864,
		-0.310249, 0.822334, -0.476982,
		39.880329, 25.074404, 22.245348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999241, 25.183056, 23.014729>,  <40.097504, 24.498770, 22.579235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999241, 25.183056, 23.014729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752937, 25.172956, 22.699717>,  <39.605156, 25.166897, 22.510710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752937, 25.172956, 22.699717>,  <39.999241, 25.183056, 23.014729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752937, 25.172956, 22.699717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756235, 0.299595, 0.581680,
		0.221253, 0.953732, -0.203573,
		-0.615757, -0.025251, -0.787532,
		39.568211, 25.165380, 22.463457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620472, 25.802794, 23.097170>,  <39.999241, 25.183056, 23.014729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620472, 25.802794, 23.097170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404343, 25.591354, 22.835289>,  <39.274666, 25.464491, 22.678160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404343, 25.591354, 22.835289>,  <39.620472, 25.802794, 23.097170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404343, 25.591354, 22.835289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841392, 0.349113, 0.412529,
		0.010505, 0.773761, -0.633390,
		-0.540324, -0.528595, -0.654704,
		39.242245, 25.432775, 22.638878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146549, 26.187002, 22.778364>,  <39.620472, 25.802794, 23.097170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146549, 26.187002, 22.778364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967705, 25.832699, 22.728523>,  <38.860397, 25.620117, 22.698618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967705, 25.832699, 22.728523>,  <39.146549, 26.187002, 22.778364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967705, 25.832699, 22.728523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874957, 0.404142, 0.266681,
		-0.185858, 0.228257, -0.955696,
		-0.447109, -0.885759, -0.124602,
		38.833572, 25.566971, 22.691143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437611, 26.274693, 22.509607>,  <39.146549, 26.187002, 22.778364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437611, 26.274693, 22.509607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429451, 25.918303, 22.691044>,  <38.424557, 25.704468, 22.799906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429451, 25.918303, 22.691044>,  <38.437611, 26.274693, 22.509607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429451, 25.918303, 22.691044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837479, 0.263030, 0.479003,
		-0.546089, -0.370101, -0.751540,
		-0.020398, -0.890977, 0.453590,
		38.423332, 25.651009, 22.827120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664307, 26.093067, 22.600204>,  <38.437611, 26.274693, 22.509607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664307, 26.093067, 22.600204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841228, 25.822767, 22.836077>,  <37.947384, 25.660587, 22.977600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841228, 25.822767, 22.836077>,  <37.664307, 26.093067, 22.600204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841228, 25.822767, 22.836077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803972, -0.007348, 0.594622,
		-0.397484, -0.737093, -0.546535,
		0.442308, -0.675752, 0.589681,
		37.973919, 25.620041, 23.012981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181568, 25.726282, 23.020943>,  <37.664307, 26.093067, 22.600204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181568, 25.726282, 23.020943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505688, 25.671267, 23.248800>,  <37.700161, 25.638256, 23.385515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505688, 25.671267, 23.248800>,  <37.181568, 25.726282, 23.020943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505688, 25.671267, 23.248800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518463, 0.284823, 0.806270,
		-0.273143, -0.948661, 0.159482,
		0.810301, -0.137541, 0.569644,
		37.748779, 25.630005, 23.419693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873024, 25.321482, 23.547476>,  <37.181568, 25.726282, 23.020943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873024, 25.321482, 23.547476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207214, 25.500547, 23.674959>,  <37.407730, 25.607986, 23.751450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207214, 25.500547, 23.674959>,  <36.873024, 25.321482, 23.547476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207214, 25.500547, 23.674959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334175, -0.046515, 0.941363,
		0.436239, -0.892991, 0.110735,
		0.835478, 0.447664, 0.318707,
		37.457859, 25.634846, 23.770571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959991, 25.129509, 24.305084>,  <36.873024, 25.321482, 23.547476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959991, 25.129509, 24.305084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228088, 25.425854, 24.287668>,  <37.388947, 25.603661, 24.277218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228088, 25.425854, 24.287668>,  <36.959991, 25.129509, 24.305084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228088, 25.425854, 24.287668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149454, 0.192208, 0.969907,
		0.726936, -0.643568, 0.239551,
		0.670245, 0.740862, -0.043540,
		37.429161, 25.648111, 24.274607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288292, 25.174706, 24.996204>,  <36.959991, 25.129509, 24.305084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288292, 25.174706, 24.996204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351162, 25.532871, 24.829576>,  <37.388885, 25.747770, 24.729599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351162, 25.532871, 24.829576>,  <37.288292, 25.174706, 24.996204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351162, 25.532871, 24.829576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117566, 0.435780, 0.892342,
		0.980548, -0.091281, 0.173764,
		0.157176, 0.895413, -0.416571,
		37.398315, 25.801495, 24.704605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851486, 25.569803, 25.437038>,  <37.288292, 25.174706, 24.996204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851486, 25.569803, 25.437038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658440, 25.849422, 25.225979>,  <37.542610, 26.017195, 25.099342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658440, 25.849422, 25.225979>,  <37.851486, 25.569803, 25.437038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658440, 25.849422, 25.225979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009320, 0.606520, 0.795014,
		0.875782, 0.378769, -0.299232,
		-0.482616, 0.699048, -0.527649,
		37.513657, 26.059137, 25.067684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170712, 26.236177, 25.627352>,  <37.851486, 25.569803, 25.437038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170712, 26.236177, 25.627352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822945, 26.351385, 25.466770>,  <37.614285, 26.420509, 25.370420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822945, 26.351385, 25.466770>,  <38.170712, 26.236177, 25.627352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822945, 26.351385, 25.466770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054388, 0.751794, 0.657151,
		0.491083, 0.593170, -0.637955,
		-0.869413, 0.288018, -0.401455,
		37.562122, 26.437790, 25.346334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277973, 26.868532, 25.323933>,  <38.170712, 26.236177, 25.627352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277973, 26.868532, 25.323933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883011, 26.882219, 25.385712>,  <37.646034, 26.890432, 25.422779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883011, 26.882219, 25.385712>,  <38.277973, 26.868532, 25.323933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883011, 26.882219, 25.385712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116131, 0.819746, 0.560830,
		-0.107417, 0.571704, -0.813398,
		-0.987408, 0.034218, 0.154447,
		37.586788, 26.892485, 25.432045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976135, 27.666334, 25.276451>,  <38.277973, 26.868532, 25.323933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976135, 27.666334, 25.276451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742188, 27.416725, 25.483727>,  <37.601818, 27.266960, 25.608091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742188, 27.416725, 25.483727>,  <37.976135, 27.666334, 25.276451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742188, 27.416725, 25.483727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157564, 0.714086, 0.682095,
		-0.795674, 0.317292, -0.515974,
		-0.584873, -0.624025, 0.518186,
		37.566727, 27.229517, 25.639183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596012, 28.101837, 25.570431>,  <37.976135, 27.666334, 25.276451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596012, 28.101837, 25.570431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494164, 27.774038, 25.775797>,  <37.433056, 27.577360, 25.899017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494164, 27.774038, 25.775797>,  <37.596012, 28.101837, 25.570431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494164, 27.774038, 25.775797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052804, 0.541905, 0.838779,
		-0.965599, 0.186459, -0.181252,
		-0.254619, -0.819495, 0.513417,
		37.417778, 27.528191, 25.929823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982708, 28.256046, 25.880156>,  <37.596012, 28.101837, 25.570431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982708, 28.256046, 25.880156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154747, 27.969339, 26.099703>,  <37.257973, 27.797316, 26.231432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154747, 27.969339, 26.099703>,  <36.982708, 28.256046, 25.880156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154747, 27.969339, 26.099703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275968, 0.474488, 0.835884,
		-0.859567, -0.510985, 0.006273,
		0.430101, -0.716767, 0.548870,
		37.283779, 27.754309, 26.264364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586460, 28.235147, 26.335537>,  <36.982708, 28.256046, 25.880156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586460, 28.235147, 26.335537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882362, 28.028240, 26.507671>,  <37.059906, 27.904097, 26.610952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882362, 28.028240, 26.507671>,  <36.586460, 28.235147, 26.335537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882362, 28.028240, 26.507671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261421, 0.368367, 0.892169,
		-0.620012, -0.772489, 0.137278,
		0.739760, -0.517268, 0.430336,
		37.104290, 27.873060, 26.636772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293613, 27.882181, 26.859814>,  <36.586460, 28.235147, 26.335537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293613, 27.882181, 26.859814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677639, 27.874481, 26.971460>,  <36.908054, 27.869862, 27.038448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677639, 27.874481, 26.971460>,  <36.293613, 27.882181, 26.859814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677639, 27.874481, 26.971460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258687, 0.318933, 0.911791,
		-0.106573, -0.947582, 0.301216,
		0.960064, -0.019252, 0.279116,
		36.965660, 27.868706, 27.055195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256741, 27.564074, 27.576775>,  <36.293613, 27.882181, 26.859814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256741, 27.564074, 27.576775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593853, 27.777695, 27.549921>,  <36.796120, 27.905867, 27.533808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593853, 27.777695, 27.549921>,  <36.256741, 27.564074, 27.576775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593853, 27.777695, 27.549921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205377, 0.434351, 0.877017,
		0.497536, -0.725344, 0.475745,
		0.842780, 0.534055, -0.067136,
		36.846687, 27.937910, 27.529781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562984, 27.660414, 28.341311>,  <36.256741, 27.564074, 27.576775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562984, 27.660414, 28.341311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732632, 27.931820, 28.101398>,  <36.834419, 28.094664, 27.957451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732632, 27.931820, 28.101398>,  <36.562984, 27.660414, 28.341311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732632, 27.931820, 28.101398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127439, 0.700424, 0.702257,
		0.896594, -0.221407, 0.383534,
		0.424121, 0.678517, -0.599780,
		36.859867, 28.135374, 27.921465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130829, 27.971285, 28.732834>,  <36.562984, 27.660414, 28.341311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130829, 27.971285, 28.732834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992855, 28.224831, 28.455927>,  <36.910069, 28.376957, 28.289782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992855, 28.224831, 28.455927>,  <37.130829, 27.971285, 28.732834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992855, 28.224831, 28.455927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069968, 0.718119, 0.692395,
		0.936014, 0.287271, -0.203358,
		-0.344939, 0.633862, -0.692268,
		36.889374, 28.414989, 28.248247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.520153, 30.360481, 32.692730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334633, 30.552797, 32.395077>,  <39.223320, 30.668188, 32.216484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334633, 30.552797, 32.395077>,  <39.520153, 30.360481, 32.692730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334633, 30.552797, 32.395077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032693, 0.830073, 0.556696,
		0.885338, 0.282521, -0.369267,
		-0.463797, 0.480792, -0.744132,
		39.195496, 30.697035, 32.171837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888855, 30.984631, 32.665794>,  <39.520153, 30.360481, 32.692730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888855, 30.984631, 32.665794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.549927, 31.068987, 32.470829>,  <39.346569, 31.119600, 32.353848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.549927, 31.068987, 32.470829>,  <39.888855, 30.984631, 32.665794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549927, 31.068987, 32.470829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089775, 0.847692, 0.522837,
		0.523442, 0.486768, -0.699332,
		-0.847319, 0.210893, -0.487417,
		39.295731, 31.132256, 32.324604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024773, 31.581593, 32.252861>,  <39.888855, 30.984631, 32.665794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024773, 31.581593, 32.252861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636768, 31.564642, 32.348591>,  <39.403965, 31.554472, 32.406029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636768, 31.564642, 32.348591>,  <40.024773, 31.581593, 32.252861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636768, 31.564642, 32.348591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094681, 0.841009, 0.532672,
		-0.223843, 0.539359, -0.811780,
		-0.970016, -0.042375, 0.239321,
		39.345764, 31.551929, 32.420387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779785, 32.273533, 32.390182>,  <40.024773, 31.581593, 32.252861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779785, 32.273533, 32.390182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.466339, 32.093655, 32.561630>,  <39.278271, 31.985727, 32.664497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.466339, 32.093655, 32.561630>,  <39.779785, 32.273533, 32.390182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466339, 32.093655, 32.561630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092991, 0.767072, 0.634787,
		-0.614245, 0.457572, -0.642908,
		-0.783617, -0.449699, 0.428620,
		39.231255, 31.958744, 32.690216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344296, 32.684719, 32.418404>,  <39.779785, 32.273533, 32.390182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344296, 32.684719, 32.418404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.152721, 32.439579, 32.669807>,  <39.037777, 32.292496, 32.820652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.152721, 32.439579, 32.669807>,  <39.344296, 32.684719, 32.418404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152721, 32.439579, 32.669807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233730, 0.779151, 0.581631,
		-0.846160, 0.131664, -0.516409,
		-0.478940, -0.612853, 0.628512,
		39.009041, 32.255722, 32.858360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587212, 32.994904, 32.650753>,  <39.344296, 32.684719, 32.418404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587212, 32.994904, 32.650753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.733425, 32.745869, 32.927525>,  <38.821156, 32.596447, 33.093590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.733425, 32.745869, 32.927525>,  <38.587212, 32.994904, 32.650753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733425, 32.745869, 32.927525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114512, 0.707649, 0.697223,
		-0.923725, -0.334096, 0.187379,
		0.365538, -0.622585, 0.691931,
		38.843086, 32.559093, 33.135105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201714, 33.149723, 33.180294>,  <38.587212, 32.994904, 32.650753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201714, 33.149723, 33.180294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477932, 32.941147, 33.380791>,  <38.643665, 32.816002, 33.501091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477932, 32.941147, 33.380791>,  <38.201714, 33.149723, 33.180294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477932, 32.941147, 33.380791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251624, 0.476529, 0.842381,
		-0.678107, -0.707829, 0.197859,
		0.690548, -0.521439, 0.501244,
		38.685097, 32.784714, 33.531162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817963, 32.740784, 33.840656>,  <38.201714, 33.149723, 33.180294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817963, 32.740784, 33.840656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215565, 32.769348, 33.873753>,  <38.454128, 32.786488, 33.893612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215565, 32.769348, 33.873753>,  <37.817963, 32.740784, 33.840656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215565, 32.769348, 33.873753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107805, 0.516061, 0.849741,
		0.017980, -0.853570, 0.520668,
		0.994009, 0.071409, 0.082740,
		38.513767, 32.790771, 33.898575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956787, 32.700558, 34.541039>,  <37.817963, 32.740784, 33.840656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956787, 32.700558, 34.541039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.270351, 32.891685, 34.382462>,  <38.458492, 33.006363, 34.287315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.270351, 32.891685, 34.382462>,  <37.956787, 32.700558, 34.541039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270351, 32.891685, 34.382462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011429, 0.649521, 0.760258,
		0.620760, -0.591448, 0.514632,
		0.783917, 0.477820, -0.396437,
		38.505524, 33.035034, 34.263531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245983, 32.903282, 35.155064>,  <37.956787, 32.700558, 34.541039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245983, 32.903282, 35.155064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432350, 33.132927, 34.885750>,  <38.544170, 33.270714, 34.724163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432350, 33.132927, 34.885750>,  <38.245983, 32.903282, 35.155064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432350, 33.132927, 34.885750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196617, 0.674724, 0.711399,
		0.862704, -0.463835, 0.201489,
		0.465922, 0.574111, -0.673285,
		38.572128, 33.305161, 34.683765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850079, 33.283951, 35.398102>,  <38.245983, 32.903282, 35.155064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850079, 33.283951, 35.398102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746922, 33.520641, 35.092590>,  <38.685028, 33.662655, 34.909283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746922, 33.520641, 35.092590>,  <38.850079, 33.283951, 35.398102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746922, 33.520641, 35.092590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265467, 0.803490, 0.532852,
		0.928988, -0.065339, -0.364297,
		-0.257893, 0.591722, -0.763778,
		38.669556, 33.698158, 34.863457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542053, 33.716942, 35.244793>,  <38.850079, 33.283951, 35.398102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542053, 33.716942, 35.244793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198997, 33.873714, 35.111626>,  <38.993164, 33.967777, 35.031727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198997, 33.873714, 35.111626>,  <39.542053, 33.716942, 35.244793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198997, 33.873714, 35.111626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150814, 0.810626, 0.565810,
		0.491635, 0.435054, -0.754336,
		-0.857642, 0.391936, -0.332919,
		38.941704, 33.991295, 35.011749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700077, 34.397579, 35.034054>,  <39.542053, 33.716942, 35.244793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700077, 34.397579, 35.034054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318047, 34.338840, 35.137028>,  <39.088829, 34.303596, 35.198811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318047, 34.338840, 35.137028>,  <39.700077, 34.397579, 35.034054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318047, 34.338840, 35.137028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067927, 0.737041, 0.672426,
		-0.288480, 0.659703, -0.693954,
		-0.955073, -0.146843, 0.257434,
		39.031525, 34.294788, 35.214256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306156, 35.058025, 34.933456>,  <39.700077, 34.397579, 35.034054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306156, 35.058025, 34.933456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.194889, 34.814491, 35.230625>,  <39.128128, 34.668369, 35.408928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.194889, 34.814491, 35.230625>,  <39.306156, 35.058025, 34.933456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194889, 34.814491, 35.230625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332879, 0.664416, 0.669136,
		-0.901008, 0.433436, 0.017850,
		-0.278167, -0.608838, 0.742926,
		39.111439, 34.631840, 35.453503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723446, 35.648285, 34.625278>,  <39.306156, 35.058025, 34.933456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723446, 35.648285, 34.625278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635445, 36.038326, 34.636444>,  <39.582645, 36.272350, 34.643143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635445, 36.038326, 34.636444>,  <39.723446, 35.648285, 34.625278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635445, 36.038326, 34.636444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695415, -0.136701, -0.705486,
		-0.684103, -0.174623, 0.708174,
		-0.220002, 0.975100, 0.027918,
		39.569443, 36.330856, 34.644821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919586, 35.714802, 34.637386>,  <39.723446, 35.648285, 34.625278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919586, 35.714802, 34.637386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066406, 36.066277, 34.515285>,  <39.154499, 36.277161, 34.442024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066406, 36.066277, 34.515285>,  <38.919586, 35.714802, 34.637386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066406, 36.066277, 34.515285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556800, -0.055331, -0.828802,
		-0.745148, 0.474179, 0.468944,
		0.367053, 0.878688, -0.305253,
		39.176521, 36.329884, 34.423710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296539, 36.015957, 34.275555>,  <38.919586, 35.714802, 34.637386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296539, 36.015957, 34.275555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.627625, 36.193165, 34.137783>,  <38.826275, 36.299488, 34.055119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.627625, 36.193165, 34.137783>,  <38.296539, 36.015957, 34.275555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627625, 36.193165, 34.137783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357908, -0.055967, -0.932078,
		-0.432203, 0.894765, 0.112235,
		0.827709, 0.443016, -0.344433,
		38.875938, 36.326069, 34.034454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082214, 36.587696, 33.748352>,  <38.296539, 36.015957, 34.275555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082214, 36.587696, 33.748352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462708, 36.487782, 33.675941>,  <38.691002, 36.427834, 33.632496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462708, 36.487782, 33.675941>,  <38.082214, 36.587696, 33.748352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462708, 36.487782, 33.675941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206985, -0.081688, -0.974928,
		0.228732, 0.964850, -0.129405,
		0.951230, -0.249783, -0.181025,
		38.748077, 36.412846, 33.621635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317207, 36.844700, 32.985962>,  <38.082214, 36.587696, 33.748352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317207, 36.844700, 32.985962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.581081, 36.565128, 33.096462>,  <38.739407, 36.397385, 33.162762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.581081, 36.565128, 33.096462>,  <38.317207, 36.844700, 32.985962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581081, 36.565128, 33.096462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128896, -0.256906, -0.957802,
		0.740410, 0.667451, -0.079386,
		0.659681, -0.698933, 0.276248,
		38.778984, 36.355450, 33.179337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801941, 36.982388, 32.478558>,  <38.317207, 36.844700, 32.985962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801941, 36.982388, 32.478558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915794, 36.624264, 32.615616>,  <38.984104, 36.409389, 32.697849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915794, 36.624264, 32.615616>,  <38.801941, 36.982388, 32.478558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915794, 36.624264, 32.615616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280297, -0.264080, -0.922873,
		0.916743, 0.358720, 0.175787,
		0.284632, -0.895311, 0.342642,
		39.001183, 36.355671, 32.718407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536274, 36.779152, 32.202591>,  <38.801941, 36.982388, 32.478558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536274, 36.779152, 32.202591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.361771, 36.441021, 32.325947>,  <39.257069, 36.238144, 32.399960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.361771, 36.441021, 32.325947>,  <39.536274, 36.779152, 32.202591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361771, 36.441021, 32.325947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227160, -0.435090, -0.871261,
		0.870676, -0.310041, 0.381836,
		-0.436259, -0.845323, 0.308393,
		39.230892, 36.187424, 32.418465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968327, 36.269657, 32.028183>,  <39.536274, 36.779152, 32.202591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968327, 36.269657, 32.028183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595245, 36.125774, 32.038506>,  <39.371395, 36.039444, 32.044701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595245, 36.125774, 32.038506>,  <39.968327, 36.269657, 32.028183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595245, 36.125774, 32.038506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192389, -0.556829, -0.808040,
		0.305031, -0.748699, 0.588562,
		-0.932707, -0.359710, 0.025809,
		39.315434, 36.017860, 32.046249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102783, 35.649506, 31.959095>,  <39.968327, 36.269657, 32.028183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102783, 35.649506, 31.959095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712517, 35.635815, 31.872471>,  <39.478355, 35.627602, 31.820496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712517, 35.635815, 31.872471>,  <40.102783, 35.649506, 31.959095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712517, 35.635815, 31.872471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185140, -0.657707, -0.730168,
		-0.117445, -0.752496, 0.648040,
		-0.975669, -0.034224, -0.216562,
		39.419815, 35.625549, 31.807503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887424, 34.932083, 31.967203>,  <40.102783, 35.649506, 31.959095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887424, 34.932083, 31.967203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591125, 35.095215, 31.753672>,  <39.413345, 35.193092, 31.625553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591125, 35.095215, 31.753672>,  <39.887424, 34.932083, 31.967203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591125, 35.095215, 31.753672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247615, -0.572938, -0.781299,
		-0.624492, -0.710924, 0.323412,
		-0.740740, 0.407834, -0.533831,
		39.368904, 35.217564, 31.593523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457985, 34.353714, 31.681059>,  <39.887424, 34.932083, 31.967203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457985, 34.353714, 31.681059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402931, 34.669609, 31.441938>,  <39.369900, 34.859146, 31.298466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402931, 34.669609, 31.441938>,  <39.457985, 34.353714, 31.681059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402931, 34.669609, 31.441938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157735, -0.578366, -0.800383,
		-0.977843, -0.204451, -0.044970,
		-0.137630, 0.789742, -0.597800,
		39.361641, 34.906532, 31.262598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928101, 34.177456, 31.194048>,  <39.457985, 34.353714, 31.681059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928101, 34.177456, 31.194048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109352, 34.478325, 31.002672>,  <39.218102, 34.658848, 30.887846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109352, 34.478325, 31.002672>,  <38.928101, 34.177456, 31.194048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109352, 34.478325, 31.002672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143376, -0.591210, -0.793671,
		-0.879839, 0.291040, -0.375739,
		0.453130, 0.752175, -0.478441,
		39.245293, 34.703976, 30.859140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645245, 34.125435, 30.485264>,  <38.928101, 34.177456, 31.194048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645245, 34.125435, 30.485264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.972279, 34.354885, 30.465210>,  <39.168499, 34.492554, 30.453178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.972279, 34.354885, 30.465210>,  <38.645245, 34.125435, 30.485264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972279, 34.354885, 30.465210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171261, -0.325370, -0.929948,
		-0.549753, 0.751724, -0.364256,
		0.817582, 0.573625, -0.050133,
		39.217552, 34.526974, 30.450171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797745, 34.326763, 29.779999>,  <38.645245, 34.125435, 30.485264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797745, 34.326763, 29.779999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.158035, 34.394001, 29.940220>,  <39.374210, 34.434345, 30.036352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.158035, 34.394001, 29.940220>,  <38.797745, 34.326763, 29.779999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158035, 34.394001, 29.940220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422430, -0.553873, -0.717480,
		0.101250, 0.815456, -0.569895,
		0.900723, 0.168096, 0.400552,
		39.428253, 34.444431, 30.060385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406086, 34.859764, 29.370892>,  <38.797745, 34.326763, 29.779999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406086, 34.859764, 29.370892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.233376, 35.147316, 29.152981>,  <38.129749, 35.319847, 29.022234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.233376, 35.147316, 29.152981>,  <38.406086, 34.859764, 29.370892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233376, 35.147316, 29.152981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256750, 0.481039, 0.838261,
		0.864666, 0.501814, -0.023131,
		-0.431778, 0.718877, -0.544779,
		38.103844, 35.362980, 28.989548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724403, 35.431236, 29.552999>,  <38.406086, 34.859764, 29.370892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724403, 35.431236, 29.552999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.381390, 35.548130, 29.383656>,  <38.175583, 35.618267, 29.282049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.381390, 35.548130, 29.383656>,  <38.724403, 35.431236, 29.552999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381390, 35.548130, 29.383656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317090, 0.347772, 0.882331,
		0.405080, 0.890873, -0.205562,
		-0.857534, 0.292234, -0.423362,
		38.124130, 35.635799, 29.256647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403950, 36.028774, 29.915451>,  <38.724403, 35.431236, 29.552999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403950, 36.028774, 29.915451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089649, 35.920166, 29.693144>,  <37.901070, 35.855003, 29.559759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089649, 35.920166, 29.693144>,  <38.403950, 36.028774, 29.915451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089649, 35.920166, 29.693144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618508, 0.355140, 0.700945,
		0.007058, 0.894514, -0.446985,
		-0.785747, -0.271516, -0.555770,
		37.853924, 35.838711, 29.526413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865337, 36.565926, 29.902222>,  <38.403950, 36.028774, 29.915451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865337, 36.565926, 29.902222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.665672, 36.225254, 29.838373>,  <37.545872, 36.020851, 29.800064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.665672, 36.225254, 29.838373>,  <37.865337, 36.565926, 29.902222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665672, 36.225254, 29.838373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677948, 0.269133, 0.684071,
		-0.539651, 0.449677, -0.711736,
		-0.499162, -0.851680, -0.159620,
		37.515923, 35.969749, 29.790487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226509, 36.689125, 29.949100>,  <37.865337, 36.565926, 29.902222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226509, 36.689125, 29.949100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192688, 36.291306, 29.973503>,  <37.172398, 36.052612, 29.988146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192688, 36.291306, 29.973503>,  <37.226509, 36.689125, 29.949100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192688, 36.291306, 29.973503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771069, 0.104086, 0.628187,
		-0.631114, 0.006073, -0.775667,
		-0.084551, -0.994550, 0.061008,
		37.167324, 35.992939, 29.991806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554726, 36.544502, 29.680437>,  <37.226509, 36.689125, 29.949100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554726, 36.544502, 29.680437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664070, 36.264042, 29.943850>,  <36.729679, 36.095768, 30.101896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664070, 36.264042, 29.943850>,  <36.554726, 36.544502, 29.680437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664070, 36.264042, 29.943850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831948, 0.171307, 0.527746,
		-0.482839, -0.692130, -0.536490,
		0.273364, -0.701148, 0.658531,
		36.746078, 36.053696, 30.141409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871399, 36.275532, 29.938477>,  <36.554726, 36.544502, 29.680437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871399, 36.275532, 29.938477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.130997, 36.151150, 30.216215>,  <36.286755, 36.076519, 30.382858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.130997, 36.151150, 30.216215>,  <35.871399, 36.275532, 29.938477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130997, 36.151150, 30.216215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736221, -0.026602, 0.676218,
		-0.191805, -0.950051, -0.246198,
		0.648991, -0.310958, 0.694345,
		36.325695, 36.057861, 30.424519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532669, 35.780903, 30.327492>,  <35.871399, 36.275532, 29.938477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532669, 35.780903, 30.327492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.821098, 35.936123, 30.557091>,  <35.994156, 36.029255, 30.694851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.821098, 35.936123, 30.557091>,  <35.532669, 35.780903, 30.327492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821098, 35.936123, 30.557091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642177, 0.063278, 0.763940,
		0.260124, -0.919464, 0.294824,
		0.721072, 0.388048, 0.573999,
		36.037418, 36.052536, 30.729290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329418, 35.525890, 30.935879>,  <35.532669, 35.780903, 30.327492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329418, 35.525890, 30.935879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.611256, 35.787270, 31.046543>,  <35.780357, 35.944099, 31.112942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.611256, 35.787270, 31.046543>,  <35.329418, 35.525890, 30.935879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611256, 35.787270, 31.046543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473276, 0.142250, 0.869353,
		0.528726, -0.743481, 0.409493,
		0.704598, 0.653453, 0.276661,
		35.822636, 35.983307, 31.129541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578224, 35.287987, 31.536865>,  <35.329418, 35.525890, 30.935879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578224, 35.287987, 31.536865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.648689, 35.681702, 31.532009>,  <35.690968, 35.917931, 31.529097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.648689, 35.681702, 31.532009>,  <35.578224, 35.287987, 31.536865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648689, 35.681702, 31.532009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467150, 0.094449, 0.879119,
		0.866451, -0.149197, 0.476447,
		0.176162, 0.984286, -0.012138,
		35.701538, 35.976986, 31.528368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662964, 35.488728, 32.239872>,  <35.578224, 35.287987, 31.536865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662964, 35.488728, 32.239872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.608437, 35.825798, 32.031521>,  <35.575722, 36.028042, 31.906509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.608437, 35.825798, 32.031521>,  <35.662964, 35.488728, 32.239872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608437, 35.825798, 32.031521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429978, 0.423352, 0.797428,
		0.892489, 0.332671, 0.304621,
		-0.136319, 0.842676, -0.520878,
		35.567539, 36.078602, 31.875257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774307, 36.051804, 32.763981>,  <35.662964, 35.488728, 32.239872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774307, 36.051804, 32.763981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.550980, 36.215225, 32.475159>,  <35.416985, 36.313278, 32.301865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.550980, 36.215225, 32.475159>,  <35.774307, 36.051804, 32.763981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550980, 36.215225, 32.475159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600905, 0.400926, 0.691499,
		0.572006, 0.819963, 0.021659,
		-0.558320, 0.408557, -0.722053,
		35.383484, 36.337791, 32.258541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.357555, 34.309704, 26.035961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975471, 34.218437, 25.960577>,  <39.746220, 34.163677, 25.915346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975471, 34.218437, 25.960577>,  <40.357555, 34.309704, 26.035961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975471, 34.218437, 25.960577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292150, 0.625577, 0.723396,
		-0.047155, 0.746054, -0.664214,
		-0.955209, -0.228162, -0.188461,
		39.688908, 34.149990, 25.904039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928879, 34.949703, 26.001499>,  <40.357555, 34.309704, 26.035961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928879, 34.949703, 26.001499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672123, 34.652210, 26.076160>,  <39.518070, 34.473717, 26.120958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672123, 34.652210, 26.076160>,  <39.928879, 34.949703, 26.001499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672123, 34.652210, 26.076160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544854, 0.613664, 0.571446,
		-0.539545, 0.265107, -0.799130,
		-0.641892, -0.743731, 0.186655,
		39.479557, 34.429092, 26.132156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191669, 35.229279, 25.905651>,  <39.928879, 34.949703, 26.001499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191669, 35.229279, 25.905651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199234, 34.917480, 26.156101>,  <39.203773, 34.730404, 26.306372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199234, 34.917480, 26.156101>,  <39.191669, 35.229279, 25.905651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199234, 34.917480, 26.156101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591678, 0.496086, 0.635466,
		-0.805953, -0.382481, -0.451828,
		0.018908, -0.779492, 0.626127,
		39.204906, 34.683632, 26.343939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514236, 35.262321, 26.226374>,  <39.191669, 35.229279, 25.905651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514236, 35.262321, 26.226374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679619, 34.983551, 26.460758>,  <38.778851, 34.816288, 26.601389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679619, 34.983551, 26.460758>,  <38.514236, 35.262321, 26.226374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679619, 34.983551, 26.460758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507531, 0.357894, 0.783789,
		-0.755952, -0.621457, -0.205735,
		0.413460, -0.696924, 0.585959,
		38.803658, 34.774475, 26.636545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938435, 34.925133, 26.617205>,  <38.514236, 35.262321, 26.226374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938435, 34.925133, 26.617205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265812, 34.856926, 26.836687>,  <38.462238, 34.816002, 26.968376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265812, 34.856926, 26.836687>,  <37.938435, 34.925133, 26.617205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265812, 34.856926, 26.836687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496915, 0.269422, 0.824917,
		-0.288493, -0.947806, 0.135776,
		0.818442, -0.170513, 0.548705,
		38.511345, 34.805771, 27.001299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723278, 34.577366, 27.289114>,  <37.938435, 34.925133, 26.617205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723278, 34.577366, 27.289114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091873, 34.718216, 27.354679>,  <38.313030, 34.802727, 27.394018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091873, 34.718216, 27.354679>,  <37.723278, 34.577366, 27.289114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091873, 34.718216, 27.354679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293296, 0.354177, 0.887996,
		0.254632, -0.866352, 0.429647,
		0.921488, 0.352126, 0.163913,
		38.368320, 34.823853, 27.403852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867538, 34.322449, 27.877584>,  <37.723278, 34.577366, 27.289114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867538, 34.322449, 27.877584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099190, 34.647545, 27.852076>,  <38.238182, 34.842602, 27.836769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099190, 34.647545, 27.852076>,  <37.867538, 34.322449, 27.877584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099190, 34.647545, 27.852076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335295, 0.308764, 0.890080,
		0.743092, -0.494089, 0.451321,
		0.579130, 0.812737, -0.063774,
		38.272930, 34.891365, 27.832943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051582, 34.389877, 28.503372>,  <37.867538, 34.322449, 27.877584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051582, 34.389877, 28.503372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119061, 34.750050, 28.342991>,  <38.159550, 34.966152, 28.246761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119061, 34.750050, 28.342991>,  <38.051582, 34.389877, 28.503372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119061, 34.750050, 28.342991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254082, 0.432763, 0.864962,
		0.952357, -0.044043, 0.301790,
		0.168699, 0.900431, -0.400954,
		38.169670, 35.020180, 28.222704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741619, 34.751995, 28.650877>,  <38.051582, 34.389877, 28.503372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741619, 34.751995, 28.650877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440468, 35.009872, 28.597906>,  <38.259777, 35.164600, 28.566124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440468, 35.009872, 28.597906>,  <38.741619, 34.751995, 28.650877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440468, 35.009872, 28.597906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058869, 0.266364, 0.962073,
		0.655519, 0.716531, -0.238494,
		-0.752881, 0.644697, -0.132425,
		38.214603, 35.203281, 28.558178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239002, 34.426819, 29.232292>,  <38.741619, 34.751995, 28.650877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239002, 34.426819, 29.232292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498222, 34.349163, 29.526869>,  <39.653755, 34.302570, 29.703615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498222, 34.349163, 29.526869>,  <39.239002, 34.426819, 29.232292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498222, 34.349163, 29.526869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434615, -0.699792, -0.566922,
		0.625415, 0.687461, -0.369125,
		0.648048, -0.194135, 0.736441,
		39.692638, 34.290924, 29.747801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826378, 34.331406, 28.870745>,  <39.239002, 34.426819, 29.232292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826378, 34.331406, 28.870745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931217, 34.161263, 29.217243>,  <39.994122, 34.059177, 29.425142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931217, 34.161263, 29.217243>,  <39.826378, 34.331406, 28.870745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931217, 34.161263, 29.217243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476317, -0.723649, -0.499453,
		0.839302, 0.543512, 0.012939,
		0.262096, -0.425355, 0.866244,
		40.009846, 34.033657, 29.477116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582832, 34.267170, 28.858049>,  <39.826378, 34.331406, 28.870745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582832, 34.267170, 28.858049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437321, 34.005947, 29.123734>,  <40.350014, 33.849213, 29.283144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437321, 34.005947, 29.123734>,  <40.582832, 34.267170, 28.858049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437321, 34.005947, 29.123734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458636, -0.746219, -0.482505,
		0.810753, 0.129108, 0.570974,
		-0.363776, -0.653061, 0.664212,
		40.328186, 33.810028, 29.322998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112709, 33.841999, 29.104845>,  <40.582832, 34.267170, 28.858049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112709, 33.841999, 29.104845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817684, 33.583988, 29.184792>,  <40.640671, 33.429180, 29.232759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817684, 33.583988, 29.184792>,  <41.112709, 33.841999, 29.104845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817684, 33.583988, 29.184792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548687, -0.744966, -0.379431,
		0.393636, -0.170190, 0.903375,
		-0.737559, -0.645027, 0.199864,
		40.596416, 33.390480, 29.244751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458305, 33.229332, 29.506920>,  <41.112709, 33.841999, 29.104845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458305, 33.229332, 29.506920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114132, 33.117222, 29.336697>,  <40.907627, 33.049953, 29.234562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114132, 33.117222, 29.336697>,  <41.458305, 33.229332, 29.506920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114132, 33.117222, 29.336697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483778, -0.711625, -0.509459,
		-0.160048, -0.644231, 0.747898,
		-0.860432, -0.280278, -0.425559,
		40.856003, 33.033138, 29.209028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606304, 32.564457, 29.429104>,  <41.458305, 33.229332, 29.506920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606304, 32.564457, 29.429104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273861, 32.599663, 29.209463>,  <41.074394, 32.620785, 29.077679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273861, 32.599663, 29.209463>,  <41.606304, 32.564457, 29.429104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273861, 32.599663, 29.209463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294911, -0.767362, -0.569371,
		-0.471471, -0.635145, 0.611805,
		-0.831109, 0.088014, -0.549100,
		41.024529, 32.626068, 29.044733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341709, 31.918552, 29.258127>,  <41.606304, 32.564457, 29.429104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341709, 31.918552, 29.258127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194347, 32.152168, 28.968805>,  <41.105930, 32.292339, 28.795212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194347, 32.152168, 28.968805>,  <41.341709, 31.918552, 29.258127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194347, 32.152168, 28.968805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085561, -0.753425, -0.651943,
		-0.925718, -0.302068, 0.227597,
		-0.368409, 0.584042, -0.723305,
		41.083824, 32.327381, 28.751814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898819, 31.492304, 28.927513>,  <41.341709, 31.918552, 29.258127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898819, 31.492304, 28.927513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982147, 31.782955, 28.665640>,  <41.032146, 31.957346, 28.508516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982147, 31.782955, 28.665640>,  <40.898819, 31.492304, 28.927513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982147, 31.782955, 28.665640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227996, -0.687009, -0.689954,
		-0.951114, -0.005531, -0.308789,
		0.208325, 0.726628, -0.654685,
		41.044643, 32.000942, 28.469234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528538, 31.413198, 28.275675>,  <40.898819, 31.492304, 28.927513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528538, 31.413198, 28.275675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827847, 31.657688, 28.172529>,  <41.007431, 31.804382, 28.110641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827847, 31.657688, 28.172529>,  <40.528538, 31.413198, 28.275675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827847, 31.657688, 28.172529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278592, -0.642297, -0.714032,
		-0.602057, 0.462452, -0.650896,
		0.748273, 0.611223, -0.257864,
		41.052330, 31.841055, 28.095171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605835, 31.306160, 27.532936>,  <40.528538, 31.413198, 28.275675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605835, 31.306160, 27.532936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934509, 31.497246, 27.657274>,  <41.131714, 31.611898, 27.731876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934509, 31.497246, 27.657274>,  <40.605835, 31.306160, 27.532936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934509, 31.497246, 27.657274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540637, -0.480663, -0.690417,
		-0.180412, 0.735358, -0.653223,
		0.821683, 0.477716, 0.310844,
		41.181015, 31.640560, 27.750528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901161, 31.507658, 26.945009>,  <40.605835, 31.306160, 27.532936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901161, 31.507658, 26.945009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177338, 31.491308, 27.233902>,  <41.343044, 31.481499, 27.407238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177338, 31.491308, 27.233902>,  <40.901161, 31.507658, 26.945009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177338, 31.491308, 27.233902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544068, -0.628641, -0.555699,
		0.476736, 0.776621, -0.411804,
		0.690444, -0.040872, 0.722230,
		41.384472, 31.479046, 27.450571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548374, 31.865616, 26.693951>,  <40.901161, 31.507658, 26.945009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548374, 31.865616, 26.693951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614197, 31.584871, 26.971169>,  <41.653690, 31.416424, 27.137499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614197, 31.584871, 26.971169>,  <41.548374, 31.865616, 26.693951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614197, 31.584871, 26.971169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478612, -0.557551, -0.678283,
		0.862469, 0.443313, 0.244173,
		0.164552, -0.701863, 0.693045,
		41.663563, 31.374313, 27.179083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194572, 31.597662, 26.523754>,  <41.548374, 31.865616, 26.693951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194572, 31.597662, 26.523754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108746, 31.347404, 26.823763>,  <42.057251, 31.197250, 27.003767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108746, 31.347404, 26.823763>,  <42.194572, 31.597662, 26.523754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108746, 31.347404, 26.823763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366274, -0.763408, -0.532025,
		0.905430, 0.160557, 0.392960,
		-0.214569, -0.625643, 0.750021,
		42.044376, 31.159712, 27.048769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821602, 31.275486, 26.669762>,  <42.194572, 31.597662, 26.523754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821602, 31.275486, 26.669762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541527, 31.013689, 26.783863>,  <42.373482, 30.856611, 26.852324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541527, 31.013689, 26.783863>,  <42.821602, 31.275486, 26.669762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541527, 31.013689, 26.783863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546949, -0.748532, -0.374896,
		0.458890, -0.106479, 0.882090,
		-0.700191, -0.654494, 0.285256,
		42.331470, 30.817341, 26.869440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.905048, 28.308706, 25.181164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.252254, 28.495405, 25.113405>,  <34.460579, 28.607426, 25.072750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.252254, 28.495405, 25.113405>,  <33.905048, 28.308706, 25.181164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252254, 28.495405, 25.113405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161544, 0.588054, 0.792525,
		0.469523, -0.660560, 0.585841,
		0.868016, 0.466748, -0.169395,
		34.512661, 28.635429, 25.062586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372181, 28.203772, 25.682989>,  <33.905048, 28.308706, 25.181164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372181, 28.203772, 25.682989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490017, 28.545944, 25.512600>,  <34.560719, 28.751247, 25.410366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490017, 28.545944, 25.512600>,  <34.372181, 28.203772, 25.682989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490017, 28.545944, 25.512600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064678, 0.426883, 0.901991,
		0.953433, -0.293267, 0.070427,
		0.294588, 0.855433, -0.425973,
		34.578392, 28.802574, 25.384808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824966, 28.554375, 26.247869>,  <34.372181, 28.203772, 25.682989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824966, 28.554375, 26.247869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.765106, 28.862598, 26.000048>,  <34.729191, 29.047531, 25.851355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.765106, 28.862598, 26.000048>,  <34.824966, 28.554375, 26.247869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765106, 28.862598, 26.000048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182354, 0.637370, 0.748669,
		0.971777, -0.000936, -0.235899,
		-0.149655, 0.770557, -0.619553,
		34.720211, 29.093765, 25.814182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420979, 28.992485, 26.248259>,  <34.824966, 28.554375, 26.247869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420979, 28.992485, 26.248259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.096546, 29.200932, 26.141983>,  <34.901886, 29.326000, 26.078217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.096546, 29.200932, 26.141983>,  <35.420979, 28.992485, 26.248259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096546, 29.200932, 26.141983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206877, 0.680419, 0.703016,
		0.547134, 0.515235, -0.659679,
		-0.811077, 0.521117, -0.265690,
		34.853222, 29.357267, 26.062277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536240, 29.624458, 26.514637>,  <35.420979, 28.992485, 26.248259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536240, 29.624458, 26.514637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146263, 29.675365, 26.441660>,  <34.912277, 29.705910, 26.397873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146263, 29.675365, 26.441660>,  <35.536240, 29.624458, 26.514637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146263, 29.675365, 26.441660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026479, 0.747936, 0.663242,
		0.220866, 0.651455, -0.725827,
		-0.974945, 0.127268, -0.182443,
		34.853779, 29.713547, 26.386927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528545, 30.316650, 26.534254>,  <35.536240, 29.624458, 26.514637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528545, 30.316650, 26.534254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157005, 30.176218, 26.581547>,  <34.934082, 30.091959, 26.609922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157005, 30.176218, 26.581547>,  <35.528545, 30.316650, 26.534254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157005, 30.176218, 26.581547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141780, 0.631753, 0.762094,
		-0.342252, 0.691108, -0.636580,
		-0.928850, -0.351083, 0.118233,
		34.878349, 30.070892, 26.617016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054024, 30.967274, 26.540491>,  <35.528545, 30.316650, 26.534254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054024, 30.967274, 26.540491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.865704, 30.674675, 26.737778>,  <34.752712, 30.499117, 26.856150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.865704, 30.674675, 26.737778>,  <35.054024, 30.967274, 26.540491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865704, 30.674675, 26.737778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225446, 0.640241, 0.734347,
		-0.852948, 0.234537, -0.466338,
		-0.470801, -0.731495, 0.493217,
		34.724464, 30.455227, 26.885742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407707, 31.259867, 26.750401>,  <35.054024, 30.967274, 26.540491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407707, 31.259867, 26.750401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.485233, 30.944120, 26.983410>,  <34.531750, 30.754673, 27.123217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.485233, 30.944120, 26.983410>,  <34.407707, 31.259867, 26.750401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485233, 30.944120, 26.983410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172097, 0.557220, 0.812335,
		-0.965824, -0.257697, -0.027847,
		0.193820, -0.789366, 0.582525,
		34.543381, 30.707312, 27.158167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853447, 31.253389, 27.231499>,  <34.407707, 31.259867, 26.750401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853447, 31.253389, 27.231499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145008, 31.038822, 27.401655>,  <34.319946, 30.910082, 27.503748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145008, 31.038822, 27.401655>,  <33.853447, 31.253389, 27.231499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145008, 31.038822, 27.401655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055224, 0.573262, 0.817509,
		-0.682386, -0.619377, 0.388229,
		0.728903, -0.536417, 0.425390,
		34.363678, 30.877897, 27.529272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717308, 31.215778, 27.872648>,  <33.853447, 31.253389, 27.231499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717308, 31.215778, 27.872648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.096684, 31.092634, 27.902815>,  <34.324310, 31.018747, 27.920914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.096684, 31.092634, 27.902815>,  <33.717308, 31.215778, 27.872648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096684, 31.092634, 27.902815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120584, 0.570495, 0.812401,
		-0.293130, -0.761418, 0.578202,
		0.948438, -0.307861, 0.075414,
		34.381214, 31.000277, 27.925440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802921, 30.946228, 28.585400>,  <33.717308, 31.215778, 27.872648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802921, 30.946228, 28.585400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.163513, 31.062922, 28.457510>,  <34.379868, 31.132938, 28.380775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.163513, 31.062922, 28.457510>,  <33.802921, 30.946228, 28.585400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163513, 31.062922, 28.457510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090327, 0.595628, 0.798166,
		0.423289, -0.748411, 0.510595,
		0.901481, 0.291735, -0.319724,
		34.433956, 31.150442, 28.361593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176262, 30.903894, 29.082977>,  <33.802921, 30.946228, 28.585400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176262, 30.903894, 29.082977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.412632, 31.164982, 28.893339>,  <34.554455, 31.321634, 28.779556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.412632, 31.164982, 28.893339>,  <34.176262, 30.903894, 29.082977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412632, 31.164982, 28.893339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024207, 0.573067, 0.819151,
		0.806363, -0.495534, 0.322840,
		0.590926, 0.652718, -0.474096,
		34.589909, 31.360798, 28.751110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514542, 31.178566, 29.638458>,  <34.176262, 30.903894, 29.082977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514542, 31.178566, 29.638458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.611542, 31.429607, 29.342537>,  <34.669743, 31.580233, 29.164984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.611542, 31.429607, 29.342537>,  <34.514542, 31.178566, 29.638458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611542, 31.429607, 29.342537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087239, 0.773581, 0.627663,
		0.966220, -0.087672, 0.242349,
		0.242505, 0.627603, -0.739801,
		34.684292, 31.617887, 29.120596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043266, 31.704544, 29.919052>,  <34.514542, 31.178566, 29.638458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043266, 31.704544, 29.919052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.871449, 31.871803, 29.598890>,  <34.768356, 31.972158, 29.406794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.871449, 31.871803, 29.598890>,  <35.043266, 31.704544, 29.919052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871449, 31.871803, 29.598890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337027, 0.748065, 0.571675,
		0.837798, 0.515317, -0.180400,
		-0.429545, 0.418148, -0.800402,
		34.742584, 31.997248, 29.358770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769016, 32.144772, 29.901911>,  <35.043266, 31.704544, 29.919052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769016, 32.144772, 29.901911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.875210, 31.889803, 30.191244>,  <35.938927, 31.736822, 30.364843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.875210, 31.889803, 30.191244>,  <35.769016, 32.144772, 29.901911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875210, 31.889803, 30.191244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044227, -0.757519, -0.651313,
		0.963099, 0.140924, -0.229303,
		0.265487, -0.637420, 0.723334,
		35.954857, 31.698576, 30.408245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183685, 31.730967, 29.635401>,  <35.769016, 32.144772, 29.901911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183685, 31.730967, 29.635401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.110950, 31.494925, 29.950035>,  <36.067310, 31.353300, 30.138815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.110950, 31.494925, 29.950035>,  <36.183685, 31.730967, 29.635401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110950, 31.494925, 29.950035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066014, -0.805440, -0.588989,
		0.981111, -0.055174, 0.185413,
		-0.181835, -0.590103, 0.786584,
		36.056400, 31.317894, 30.186010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725361, 31.213528, 29.669756>,  <36.183685, 31.730967, 29.635401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725361, 31.213528, 29.669756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431683, 31.031471, 29.871269>,  <36.255474, 30.922237, 29.992178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431683, 31.031471, 29.871269>,  <36.725361, 31.213528, 29.669756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431683, 31.031471, 29.871269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198392, -0.853457, -0.481924,
		0.649302, -0.253882, 0.716904,
		-0.734199, -0.455142, 0.503783,
		36.211422, 30.894928, 30.022404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968914, 30.572861, 29.956182>,  <36.725361, 31.213528, 29.669756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968914, 30.572861, 29.956182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.579102, 30.561239, 29.867237>,  <36.345215, 30.554266, 29.813869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.579102, 30.561239, 29.867237>,  <36.968914, 30.572861, 29.956182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579102, 30.561239, 29.867237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146135, -0.834407, -0.531422,
		-0.170103, -0.550382, 0.817401,
		-0.974530, -0.029055, -0.222365,
		36.286743, 30.552523, 29.800528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652252, 29.905212, 30.198721>,  <36.968914, 30.572861, 29.956182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652252, 29.905212, 30.198721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.421364, 30.059242, 29.910683>,  <36.282833, 30.151661, 29.737860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.421364, 30.059242, 29.910683>,  <36.652252, 29.905212, 30.198721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421364, 30.059242, 29.910683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205195, -0.785138, -0.584341,
		-0.790389, -0.485052, 0.374179,
		-0.577217, 0.385077, -0.720095,
		36.248199, 30.174765, 29.694654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399555, 29.317175, 30.012615>,  <36.652252, 29.905212, 30.198721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399555, 29.317175, 30.012615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304901, 29.565643, 29.713778>,  <36.248108, 29.714724, 29.534475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304901, 29.565643, 29.713778>,  <36.399555, 29.317175, 30.012615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304901, 29.565643, 29.713778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161919, -0.732969, -0.660711,
		-0.958010, -0.277319, 0.072870,
		-0.236639, 0.621169, -0.747095,
		36.233910, 29.751993, 29.489649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960197, 28.935907, 29.641006>,  <36.399555, 29.317175, 30.012615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960197, 28.935907, 29.641006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.096355, 29.203337, 29.376541>,  <36.178051, 29.363794, 29.217861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.096355, 29.203337, 29.376541>,  <35.960197, 28.935907, 29.641006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096355, 29.203337, 29.376541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034127, -0.711476, -0.701881,
		-0.939662, 0.216356, -0.265001,
		0.340398, 0.668575, -0.661163,
		36.198475, 29.403910, 29.178192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719425, 28.747299, 28.987829>,  <35.960197, 28.935907, 29.641006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719425, 28.747299, 28.987829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015438, 29.005280, 28.911526>,  <36.193047, 29.160069, 28.865744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015438, 29.005280, 28.911526>,  <35.719425, 28.747299, 28.987829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015438, 29.005280, 28.911526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299259, -0.569757, -0.765390,
		-0.602327, 0.509326, -0.614646,
		0.740031, 0.644953, -0.190760,
		36.237446, 29.198765, 28.854298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720463, 29.003925, 28.262175>,  <35.719425, 28.747299, 28.987829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720463, 29.003925, 28.262175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.094173, 29.029810, 28.402430>,  <36.318398, 29.045341, 28.486582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.094173, 29.029810, 28.402430>,  <35.720463, 29.003925, 28.262175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094173, 29.029810, 28.402430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338356, -0.471099, -0.814605,
		0.112469, 0.879704, -0.462031,
		0.934273, 0.064713, 0.350637,
		36.374454, 29.049223, 28.507620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089039, 29.261232, 27.651667>,  <35.720463, 29.003925, 28.262175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089039, 29.261232, 27.651667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331627, 29.094624, 27.922577>,  <36.477180, 28.994658, 28.085123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331627, 29.094624, 27.922577>,  <36.089039, 29.261232, 27.651667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331627, 29.094624, 27.922577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473440, -0.495164, -0.728469,
		0.638788, 0.762443, -0.103102,
		0.606469, -0.416524, 0.677277,
		36.513569, 28.969666, 28.125759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652691, 29.334108, 27.367393>,  <36.089039, 29.261232, 27.651667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652691, 29.334108, 27.367393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726562, 29.046209, 27.635080>,  <36.770885, 28.873470, 27.795692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726562, 29.046209, 27.635080>,  <36.652691, 29.334108, 27.367393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726562, 29.046209, 27.635080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548850, -0.489325, -0.677735,
		0.815265, 0.492465, 0.304666,
		0.184680, -0.719749, 0.669219,
		36.781967, 28.830284, 27.835846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399204, 29.135370, 27.303930>,  <36.652691, 29.334108, 27.367393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399204, 29.135370, 27.303930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.241966, 28.815556, 27.485577>,  <37.147625, 28.623667, 27.594564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.241966, 28.815556, 27.485577>,  <37.399204, 29.135370, 27.303930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241966, 28.815556, 27.485577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592868, -0.597892, -0.539475,
		0.702841, 0.057166, 0.709047,
		-0.393093, -0.799536, 0.454114,
		37.124039, 28.575695, 27.621811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914707, 28.656313, 27.368700>,  <37.399204, 29.135370, 27.303930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914707, 28.656313, 27.368700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.583572, 28.434269, 27.401049>,  <37.384892, 28.301043, 27.420458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.583572, 28.434269, 27.401049>,  <37.914707, 28.656313, 27.368700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583572, 28.434269, 27.401049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394401, -0.678463, -0.619787,
		0.398919, -0.481185, 0.780592,
		-0.827835, -0.555111, 0.080872,
		37.335220, 28.267736, 27.425310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222462, 27.978081, 27.406500>,  <37.914707, 28.656313, 27.368700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222462, 27.978081, 27.406500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.841259, 27.952503, 27.288048>,  <37.612537, 27.937157, 27.216976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.841259, 27.952503, 27.288048>,  <38.222462, 27.978081, 27.406500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841259, 27.952503, 27.288048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237155, -0.765705, -0.597875,
		-0.188519, -0.640006, 0.744884,
		-0.953005, -0.063942, -0.296131,
		37.555359, 27.933321, 27.199209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480377, 27.341030, 27.823288>,  <38.222462, 27.978081, 27.406500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480377, 27.341030, 27.823288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852497, 27.214653, 27.897821>,  <39.075771, 27.138826, 27.942541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852497, 27.214653, 27.897821>,  <38.480377, 27.341030, 27.823288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852497, 27.214653, 27.897821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047353, 0.400300, 0.915160,
		-0.363726, -0.860198, 0.357439,
		0.930302, -0.315942, 0.186333,
		39.131588, 27.119871, 27.953722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481735, 26.878836, 28.445614>,  <38.480377, 27.341030, 27.823288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481735, 26.878836, 28.445614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852760, 27.025379, 28.416203>,  <39.075375, 27.113306, 28.398556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852760, 27.025379, 28.416203>,  <38.481735, 26.878836, 28.445614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852760, 27.025379, 28.416203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013053, 0.228422, 0.973475,
		0.373440, -0.901999, 0.216658,
		0.927563, 0.366363, -0.073528,
		39.131031, 27.135288, 28.394144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737347, 26.603979, 29.057360>,  <38.481735, 26.878836, 28.445614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737347, 26.603979, 29.057360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.964897, 26.901247, 28.916462>,  <39.101429, 27.079609, 28.831923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.964897, 26.901247, 28.916462>,  <38.737347, 26.603979, 29.057360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964897, 26.901247, 28.916462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133384, 0.339260, 0.931188,
		0.811535, -0.576714, 0.093870,
		0.568875, 0.743171, -0.352246,
		39.135559, 27.124199, 28.810787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313736, 26.696716, 29.552250>,  <38.737347, 26.603979, 29.057360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313736, 26.696716, 29.552250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289425, 27.036489, 29.342575>,  <39.274837, 27.240353, 29.216770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289425, 27.036489, 29.342575>,  <39.313736, 26.696716, 29.552250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289425, 27.036489, 29.342575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032388, 0.526561, 0.849520,
		0.997626, 0.034653, -0.059514,
		-0.060776, 0.849431, -0.524189,
		39.271191, 27.291319, 29.185318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937305, 27.092079, 29.842978>,  <39.313736, 26.696716, 29.552250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937305, 27.092079, 29.842978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680943, 27.336632, 29.657310>,  <39.527126, 27.483364, 29.545910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680943, 27.336632, 29.657310>,  <39.937305, 27.092079, 29.842978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680943, 27.336632, 29.657310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043356, 0.632550, 0.773305,
		0.766392, 0.475493, -0.431913,
		-0.640908, 0.611381, -0.464166,
		39.488670, 27.520046, 29.518061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154366, 27.724083, 30.008385>,  <39.937305, 27.092079, 29.842978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154366, 27.724083, 30.008385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.774502, 27.790504, 29.902121>,  <39.546585, 27.830357, 29.838362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.774502, 27.790504, 29.902121>,  <40.154366, 27.724083, 30.008385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774502, 27.790504, 29.902121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068667, 0.717032, 0.693650,
		0.305669, 0.676973, -0.669533,
		-0.949659, 0.166052, -0.265660,
		39.489605, 27.840321, 29.822422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145962, 28.464920, 30.030611>,  <40.154366, 27.724083, 30.008385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145962, 28.464920, 30.030611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757084, 28.391121, 29.972921>,  <39.523758, 28.346842, 29.938307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757084, 28.391121, 29.972921>,  <40.145962, 28.464920, 30.030611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757084, 28.391121, 29.972921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221273, 0.925370, 0.307782,
		0.076676, 0.331136, -0.940462,
		-0.972193, -0.184499, -0.144226,
		39.465427, 28.335772, 29.929653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860146, 29.058073, 29.830759>,  <40.145962, 28.464920, 30.030611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860146, 29.058073, 29.830759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569729, 28.852068, 30.013023>,  <39.395477, 28.728466, 30.122381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569729, 28.852068, 30.013023>,  <39.860146, 29.058073, 29.830759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569729, 28.852068, 30.013023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253009, 0.816220, 0.519396,
		-0.639413, 0.261817, -0.722913,
		-0.726043, -0.515012, 0.455659,
		39.351917, 28.697565, 30.149721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253185, 29.442730, 29.679228>,  <39.860146, 29.058073, 29.830759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253185, 29.442730, 29.679228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209038, 29.218197, 30.007307>,  <39.182549, 29.083477, 30.204155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209038, 29.218197, 30.007307>,  <39.253185, 29.442730, 29.679228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209038, 29.218197, 30.007307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130560, 0.826277, 0.547923,
		-0.985278, -0.046612, -0.164482,
		-0.110368, -0.561332, 0.820199,
		39.175926, 29.049797, 30.253366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718506, 29.702894, 29.992287>,  <39.253185, 29.442730, 29.679228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718506, 29.702894, 29.992287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885307, 29.511967, 30.301680>,  <38.985386, 29.397409, 30.487316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885307, 29.511967, 30.301680>,  <38.718506, 29.702894, 29.992287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885307, 29.511967, 30.301680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334420, 0.710731, 0.618890,
		-0.845147, -0.516746, 0.136750,
		0.417001, -0.477320, 0.773482,
		39.010406, 29.368771, 30.533724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295753, 29.924583, 30.480549>,  <38.718506, 29.702894, 29.992287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295753, 29.924583, 30.480549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600651, 29.789526, 30.701448>,  <38.783588, 29.708490, 30.833988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600651, 29.789526, 30.701448>,  <38.295753, 29.924583, 30.480549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600651, 29.789526, 30.701448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247755, 0.636014, 0.730824,
		-0.597997, -0.693889, 0.401145,
		0.762245, -0.337645, 0.552249,
		38.829323, 29.688232, 30.867123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951378, 29.761839, 31.243181>,  <38.295753, 29.924583, 30.480549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951378, 29.761839, 31.243181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349140, 29.804087, 31.242855>,  <38.587799, 29.829435, 31.242659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349140, 29.804087, 31.242855>,  <37.951378, 29.761839, 31.243181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349140, 29.804087, 31.242855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059252, 0.564199, 0.823510,
		0.087440, -0.818855, 0.567301,
		0.994406, 0.105621, -0.000815,
		38.647461, 29.835773, 31.242611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074665, 29.868355, 31.958748>,  <37.951378, 29.761839, 31.243181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074665, 29.868355, 31.958748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423851, 29.980036, 31.798756>,  <38.633362, 30.047045, 31.702761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423851, 29.980036, 31.798756>,  <38.074665, 29.868355, 31.958748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423851, 29.980036, 31.798756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167614, 0.598360, 0.783499,
		0.458083, -0.751008, 0.475549,
		0.872964, 0.279199, -0.399978,
		38.685741, 30.063795, 31.678762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531830, 29.988659, 32.541191>,  <38.074665, 29.868355, 31.958748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531830, 29.988659, 32.541191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700214, 30.183638, 32.235203>,  <38.801247, 30.300625, 32.051609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700214, 30.183638, 32.235203>,  <38.531830, 29.988659, 32.541191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700214, 30.183638, 32.235203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267214, 0.739273, 0.618120,
		0.866826, -0.464616, 0.180953,
		0.420963, 0.487449, -0.764973,
		38.826504, 30.329872, 32.005711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.196064, 30.590866, 26.740797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.812618, 30.482944, 26.777161>,  <42.582550, 30.418192, 26.798979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.812618, 30.482944, 26.777161>,  <43.196064, 30.590866, 26.740797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812618, 30.482944, 26.777161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201855, -0.869250, -0.451285,
		0.200781, -0.414258, 0.887737,
		-0.958614, -0.269803, 0.090909,
		42.525032, 30.402004, 26.804434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165348, 29.900982, 26.953964>,  <43.196064, 30.590866, 26.740797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165348, 29.900982, 26.953964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.815968, 29.969860, 26.771786>,  <42.606339, 30.011187, 26.662479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.815968, 29.969860, 26.771786>,  <43.165348, 29.900982, 26.953964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815968, 29.969860, 26.771786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073573, -0.877965, -0.473038,
		-0.481318, -0.446685, 0.754192,
		-0.873453, 0.172194, -0.455444,
		42.553932, 30.021519, 26.635153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726139, 29.258223, 27.047571>,  <43.165348, 29.900982, 26.953964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726139, 29.258223, 27.047571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.593651, 29.446455, 26.720438>,  <42.514156, 29.559395, 26.524158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.593651, 29.446455, 26.720438>,  <42.726139, 29.258223, 27.047571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593651, 29.446455, 26.720438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136862, -0.833629, -0.535099,
		-0.933575, -0.289165, 0.211709,
		-0.331219, 0.470580, -0.817832,
		42.494286, 29.587629, 26.475088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179585, 28.821983, 26.657618>,  <42.726139, 29.258223, 27.047571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179585, 28.821983, 26.657618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.260334, 29.103189, 26.384850>,  <42.308784, 29.271914, 26.221189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.260334, 29.103189, 26.384850>,  <42.179585, 28.821983, 26.657618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260334, 29.103189, 26.384850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045617, -0.702249, -0.710469,
		-0.978348, 0.112319, -0.173836,
		0.201875, 0.703016, -0.681921,
		42.320896, 29.314095, 26.180273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788784, 28.585579, 26.081245>,  <42.179585, 28.821983, 26.657618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788784, 28.585579, 26.081245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.053341, 28.841665, 25.924946>,  <42.212074, 28.995317, 25.831165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.053341, 28.841665, 25.924946>,  <41.788784, 28.585579, 26.081245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053341, 28.841665, 25.924946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157305, -0.627784, -0.762328,
		-0.733361, 0.442729, -0.515919,
		0.661390, 0.640218, -0.390749,
		42.251759, 29.033731, 25.807722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632614, 28.535810, 25.369741>,  <41.788784, 28.585579, 26.081245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632614, 28.535810, 25.369741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.003334, 28.685736, 25.379230>,  <42.225765, 28.775692, 25.384924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.003334, 28.685736, 25.379230>,  <41.632614, 28.535810, 25.369741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003334, 28.685736, 25.379230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305033, -0.714388, -0.629766,
		-0.219098, 0.590901, -0.776423,
		0.926796, 0.374815, 0.023724,
		42.281372, 28.798180, 25.386347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748936, 28.884026, 24.722376>,  <41.632614, 28.535810, 25.369741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748936, 28.884026, 24.722376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088184, 28.752140, 24.888256>,  <42.291733, 28.673010, 24.987785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088184, 28.752140, 24.888256>,  <41.748936, 28.884026, 24.722376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088184, 28.752140, 24.888256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176721, -0.561864, -0.808133,
		0.499458, 0.758682, -0.418262,
		0.848122, -0.329712, 0.414702,
		42.342621, 28.653227, 25.012667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256550, 28.887224, 24.159336>,  <41.748936, 28.884026, 24.722376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256550, 28.887224, 24.159336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.403393, 28.647461, 24.443855>,  <42.491497, 28.503603, 24.614567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.403393, 28.647461, 24.443855>,  <42.256550, 28.887224, 24.159336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403393, 28.647461, 24.443855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351711, -0.618474, -0.702701,
		0.861124, 0.508136, -0.016226,
		0.367103, -0.599406, 0.711300,
		42.513523, 28.467640, 24.657246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009159, 28.628912, 24.002258>,  <42.256550, 28.887224, 24.159336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009159, 28.628912, 24.002258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856762, 28.362339, 24.258606>,  <42.765324, 28.202396, 24.412415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856762, 28.362339, 24.258606>,  <43.009159, 28.628912, 24.002258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856762, 28.362339, 24.258606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328808, -0.745498, -0.579757,
		0.864136, -0.010158, 0.503156,
		-0.380991, -0.666431, 0.640871,
		42.742466, 28.162411, 24.450867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585918, 28.232580, 24.110977>,  <43.009159, 28.628912, 24.002258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585918, 28.232580, 24.110977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.262417, 28.022484, 24.216831>,  <43.068314, 27.896425, 24.280344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.262417, 28.022484, 24.216831>,  <43.585918, 28.232580, 24.110977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262417, 28.022484, 24.216831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301488, -0.756579, -0.580253,
		0.504991, -0.389499, 0.770243,
		-0.808758, -0.525241, 0.264637,
		43.019791, 27.864912, 24.296223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849098, 27.552929, 24.090332>,  <43.585918, 28.232580, 24.110977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849098, 27.552929, 24.090332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.453358, 27.496458, 24.104513>,  <43.215916, 27.462576, 24.113022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.453358, 27.496458, 24.104513>,  <43.849098, 27.552929, 24.090332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453358, 27.496458, 24.104513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063781, -0.639389, -0.766234,
		0.130843, -0.755812, 0.641583,
		-0.989350, -0.141177, 0.035453,
		43.156551, 27.454105, 24.115149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765434, 26.865273, 24.138485>,  <43.849098, 27.552929, 24.090332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765434, 26.865273, 24.138485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.431961, 27.006430, 23.968576>,  <43.231876, 27.091124, 23.866631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.431961, 27.006430, 23.968576>,  <43.765434, 26.865273, 24.138485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431961, 27.006430, 23.968576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069673, -0.695824, -0.714825,
		-0.547824, -0.625535, 0.555513,
		-0.833687, 0.352894, -0.424772,
		43.181854, 27.112299, 23.841145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174942, 26.326529, 24.127096>,  <43.765434, 26.865273, 24.138485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174942, 26.326529, 24.127096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.109165, 26.580263, 23.824949>,  <43.069698, 26.732504, 23.643661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.109165, 26.580263, 23.824949>,  <43.174942, 26.326529, 24.127096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109165, 26.580263, 23.824949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072955, -0.771515, -0.632014,
		-0.983685, -0.048821, 0.173146,
		-0.164441, 0.634335, -0.755366,
		43.059834, 26.770563, 23.598339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703770, 26.082977, 23.465963>,  <43.174942, 26.326529, 24.127096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703770, 26.082977, 23.465963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.004688, 26.341787, 23.515610>,  <43.185242, 26.497074, 23.545399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.004688, 26.341787, 23.515610>,  <42.703770, 26.082977, 23.465963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004688, 26.341787, 23.515610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657783, 0.727085, 0.196646,
		0.036991, -0.229579, 0.972587,
		0.752299, 0.647025, 0.124117,
		43.230377, 26.535894, 23.552845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413975, 25.427336, 23.450399>,  <42.703770, 26.082977, 23.465963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413975, 25.427336, 23.450399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.080002, 25.208384, 23.427521>,  <41.879620, 25.077013, 23.413794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.080002, 25.208384, 23.427521>,  <42.413975, 25.427336, 23.450399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080002, 25.208384, 23.427521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431622, 0.586772, 0.685128,
		-0.341465, 0.596719, -0.726173,
		-0.834928, -0.547379, -0.057195,
		41.829525, 25.044170, 23.410362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887333, 25.877083, 23.396051>,  <42.413975, 25.427336, 23.450399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887333, 25.877083, 23.396051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650894, 25.563370, 23.471418>,  <41.509029, 25.375141, 23.516638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650894, 25.563370, 23.471418>,  <41.887333, 25.877083, 23.396051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650894, 25.563370, 23.471418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545333, 0.560696, 0.623083,
		-0.594319, 0.265553, -0.759122,
		-0.591098, -0.784284, 0.188417,
		41.473564, 25.328085, 23.527943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184303, 26.142958, 23.316263>,  <41.887333, 25.877083, 23.396051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184303, 26.142958, 23.316263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.176666, 25.810974, 23.539263>,  <41.172085, 25.611784, 23.673063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.176666, 25.810974, 23.539263>,  <41.184303, 26.142958, 23.316263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176666, 25.810974, 23.539263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570565, 0.466934, 0.675595,
		-0.821031, -0.305191, -0.482459,
		-0.019091, -0.829958, 0.557499,
		41.170940, 25.561987, 23.706512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420311, 26.041737, 23.575041>,  <41.184303, 26.142958, 23.316263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420311, 26.041737, 23.575041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.632946, 25.822197, 23.833090>,  <40.760525, 25.690474, 23.987919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.632946, 25.822197, 23.833090>,  <40.420311, 26.041737, 23.575041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632946, 25.822197, 23.833090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578078, 0.321586, 0.749938,
		-0.619065, -0.771587, -0.146327,
		0.531586, -0.548849, 0.645121,
		40.792423, 25.657541, 24.026627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949017, 25.830008, 24.073441>,  <40.420311, 26.041737, 23.575041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949017, 25.830008, 24.073441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.299541, 25.775961, 24.258402>,  <40.509857, 25.743534, 24.369379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.299541, 25.775961, 24.258402>,  <39.949017, 25.830008, 24.073441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299541, 25.775961, 24.258402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411313, 0.289847, 0.864182,
		-0.250791, -0.947488, 0.198422,
		0.876314, -0.135115, 0.462405,
		40.562435, 25.735426, 24.397123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875061, 25.271952, 24.611147>,  <39.949017, 25.830008, 24.073441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875061, 25.271952, 24.611147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.167439, 25.532253, 24.693363>,  <40.342865, 25.688435, 24.742693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.167439, 25.532253, 24.693363>,  <39.875061, 25.271952, 24.611147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167439, 25.532253, 24.693363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381122, 0.139414, 0.913953,
		0.566104, -0.746379, 0.349920,
		0.730939, 0.650755, 0.205538,
		40.386719, 25.727480, 24.755024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082035, 25.025139, 25.302883>,  <39.875061, 25.271952, 24.611147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082035, 25.025139, 25.302883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.253757, 25.385431, 25.276413>,  <40.356792, 25.601606, 25.260530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.253757, 25.385431, 25.276413>,  <40.082035, 25.025139, 25.302883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253757, 25.385431, 25.276413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224518, 0.177406, 0.958185,
		0.874807, -0.396498, 0.278392,
		0.429307, 0.900731, -0.066175,
		40.382549, 25.655651, 25.256561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492920, 25.066507, 25.869951>,  <40.082035, 25.025139, 25.302883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492920, 25.066507, 25.869951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.445225, 25.451927, 25.774153>,  <40.416607, 25.683178, 25.716673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.445225, 25.451927, 25.774153>,  <40.492920, 25.066507, 25.869951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445225, 25.451927, 25.774153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251360, 0.204063, 0.946137,
		0.960521, 0.173013, 0.217866,
		-0.119236, 0.963548, -0.239496,
		40.409454, 25.740992, 25.702305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790962, 25.509502, 26.393480>,  <40.492920, 25.066507, 25.869951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790962, 25.509502, 26.393480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.524124, 25.755081, 26.224695>,  <40.364021, 25.902428, 26.123425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.524124, 25.755081, 26.224695>,  <40.790962, 25.509502, 26.393480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524124, 25.755081, 26.224695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342030, 0.250781, 0.905607,
		0.661815, 0.748451, 0.042693,
		-0.667096, 0.613947, -0.421963,
		40.323994, 25.939264, 26.098106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714676, 26.027029, 26.890684>,  <40.790962, 25.509502, 26.393480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714676, 26.027029, 26.890684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.420860, 26.084650, 26.625444>,  <40.244572, 26.119223, 26.466301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.420860, 26.084650, 26.625444>,  <40.714676, 26.027029, 26.890684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420860, 26.084650, 26.625444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507952, 0.531218, 0.678080,
		0.449928, 0.834899, -0.317029,
		-0.734540, 0.144052, -0.663099,
		40.200497, 26.127865, 26.426516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632702, 26.776838, 26.773188>,  <40.714676, 26.027029, 26.890684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632702, 26.776838, 26.773188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.286217, 26.586836, 26.711151>,  <40.078327, 26.472836, 26.673929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.286217, 26.586836, 26.711151>,  <40.632702, 26.776838, 26.773188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286217, 26.586836, 26.711151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427239, 0.543094, 0.722852,
		-0.259129, 0.692402, -0.673374,
		-0.866209, -0.475004, -0.155089,
		40.026356, 26.444334, 26.664625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186859, 27.261745, 26.639839>,  <40.632702, 26.776838, 26.773188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186859, 27.261745, 26.639839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.943314, 26.961996, 26.743938>,  <39.797188, 26.782146, 26.806398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.943314, 26.961996, 26.743938>,  <40.186859, 27.261745, 26.639839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943314, 26.961996, 26.743938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335524, 0.540549, 0.771512,
		-0.718828, 0.382423, -0.580551,
		-0.608860, -0.749373, 0.260250,
		39.760654, 26.737185, 26.822014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540676, 27.541697, 26.834595>,  <40.186859, 27.261745, 26.639839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540676, 27.541697, 26.834595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.534748, 27.183462, 27.012451>,  <39.531193, 26.968521, 27.119165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.534748, 27.183462, 27.012451>,  <39.540676, 27.541697, 26.834595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534748, 27.183462, 27.012451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255283, 0.433342, 0.864318,
		-0.966753, -0.100699, -0.235050,
		-0.014820, -0.895586, 0.444641,
		39.530300, 26.914785, 27.145844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853188, 27.475218, 27.192099>,  <39.540676, 27.541697, 26.834595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853188, 27.475218, 27.192099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104168, 27.217592, 27.367136>,  <39.254757, 27.063017, 27.472158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104168, 27.217592, 27.367136>,  <38.853188, 27.475218, 27.192099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104168, 27.217592, 27.367136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169031, 0.435920, 0.883970,
		-0.760088, -0.628615, 0.164652,
		0.627451, -0.644063, 0.437593,
		39.292404, 27.024374, 27.498413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148949, 27.239508, 27.072296>,  <38.853188, 27.475218, 27.192099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148949, 27.239508, 27.072296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801167, 27.396486, 26.952271>,  <37.592499, 27.490673, 26.880255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801167, 27.396486, 26.952271>,  <38.148949, 27.239508, 27.072296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801167, 27.396486, 26.952271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119454, -0.756384, -0.643128,
		-0.479358, -0.523325, 0.704519,
		-0.869452, 0.392446, -0.300066,
		37.540333, 27.514219, 26.862251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627464, 26.755737, 26.963881>,  <38.148949, 27.239508, 27.072296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627464, 26.755737, 26.963881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507504, 27.061901, 26.736124>,  <37.435528, 27.245600, 26.599470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507504, 27.061901, 26.736124>,  <37.627464, 26.755737, 26.963881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507504, 27.061901, 26.736124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122564, -0.622832, -0.772696,
		-0.946064, -0.161947, 0.280601,
		-0.299903, 0.765411, -0.569390,
		37.417534, 27.291525, 26.565308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064442, 26.534204, 26.705084>,  <37.627464, 26.755737, 26.963881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064442, 26.534204, 26.705084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.171429, 26.819818, 26.446283>,  <37.235622, 26.991188, 26.291002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.171429, 26.819818, 26.446283>,  <37.064442, 26.534204, 26.705084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171429, 26.819818, 26.446283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078469, -0.653095, -0.753199,
		-0.960366, 0.252228, -0.118654,
		0.267470, 0.714036, -0.647002,
		37.251671, 27.034029, 26.252182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635712, 26.539152, 26.191095>,  <37.064442, 26.534204, 26.705084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635712, 26.539152, 26.191095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921036, 26.765667, 26.025928>,  <37.092232, 26.901577, 25.926828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921036, 26.765667, 26.025928>,  <36.635712, 26.539152, 26.191095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921036, 26.765667, 26.025928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076123, -0.523082, -0.848876,
		-0.696698, 0.636948, -0.330014,
		0.713315, 0.566288, -0.412917,
		37.135029, 26.935553, 25.902054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285526, 26.922741, 25.564026>,  <36.635712, 26.539152, 26.191095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285526, 26.922741, 25.564026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683609, 26.918879, 25.525091>,  <36.922459, 26.916561, 25.501730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683609, 26.918879, 25.525091>,  <36.285526, 26.922741, 25.564026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683609, 26.918879, 25.525091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091397, -0.446270, -0.890219,
		-0.034843, 0.894847, -0.445012,
		0.995205, -0.009655, -0.097335,
		36.982170, 26.915981, 25.495890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429623, 26.892691, 24.907438>,  <36.285526, 26.922741, 25.564026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429623, 26.892691, 24.907438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.777805, 26.746681, 25.039537>,  <36.986713, 26.659077, 25.118797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.777805, 26.746681, 25.039537>,  <36.429623, 26.892691, 24.907438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777805, 26.746681, 25.039537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000401, -0.670377, -0.742020,
		0.492244, 0.646029, -0.583388,
		0.870457, -0.365021, 0.330248,
		37.038944, 26.637175, 25.138611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869488, 26.995090, 24.382200>,  <36.429623, 26.892691, 24.907438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869488, 26.995090, 24.382200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.065456, 26.719616, 24.595997>,  <37.183037, 26.554331, 24.724276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.065456, 26.719616, 24.595997>,  <36.869488, 26.995090, 24.382200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065456, 26.719616, 24.595997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132034, -0.547425, -0.826374,
		0.861709, 0.475432, -0.177266,
		0.489924, -0.688688, 0.534494,
		37.212433, 26.513010, 24.756346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179081, 27.524641, 23.934338>,  <36.869488, 26.995090, 24.382200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179081, 27.524641, 23.934338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.965557, 27.656105, 23.622690>,  <36.837440, 27.734983, 23.435701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.965557, 27.656105, 23.622690>,  <37.179081, 27.524641, 23.934338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965557, 27.656105, 23.622690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575462, 0.533912, 0.619502,
		0.619586, 0.779051, -0.095878,
		-0.533814, 0.328661, -0.779118,
		36.805412, 27.754704, 23.388954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862389, 28.090712, 24.182322>,  <37.179081, 27.524641, 23.934338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862389, 28.090712, 24.182322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.652882, 28.048775, 23.844168>,  <36.527176, 28.023613, 23.641275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.652882, 28.048775, 23.844168>,  <36.862389, 28.090712, 24.182322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652882, 28.048775, 23.844168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718070, 0.588250, 0.371936,
		0.458302, 0.801854, -0.383393,
		-0.523769, -0.104844, -0.845384,
		36.495750, 28.017323, 23.590553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658848, 28.780516, 23.798502>,  <36.862389, 28.090712, 24.182322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658848, 28.780516, 23.798502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396320, 28.486582, 23.730082>,  <36.238804, 28.310221, 23.689030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396320, 28.486582, 23.730082>,  <36.658848, 28.780516, 23.798502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396320, 28.486582, 23.730082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701827, 0.511408, 0.495884,
		-0.276916, 0.445508, -0.851375,
		-0.656321, -0.734836, -0.171053,
		36.199425, 28.266130, 23.678766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985947, 29.039965, 23.608301>,  <36.658848, 28.780516, 23.798502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985947, 29.039965, 23.608301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874294, 28.676939, 23.733784>,  <35.807304, 28.459124, 23.809072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874294, 28.676939, 23.733784>,  <35.985947, 29.039965, 23.608301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874294, 28.676939, 23.733784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773566, 0.406082, 0.486512,
		-0.568932, -0.106874, -0.815410,
		-0.279128, -0.907566, 0.313707,
		35.790554, 28.404669, 23.827896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209408, 28.986612, 23.543890>,  <35.985947, 29.039965, 23.608301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209408, 28.986612, 23.543890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.285019, 28.685684, 23.796329>,  <35.330383, 28.505127, 23.947794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.285019, 28.685684, 23.796329>,  <35.209408, 28.986612, 23.543890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285019, 28.685684, 23.796329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789710, 0.265515, 0.553046,
		-0.583633, -0.602924, -0.543926,
		0.189024, -0.752320, 0.631098,
		35.341724, 28.459988, 23.985659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553352, 28.631765, 23.743654>,  <35.209408, 28.986612, 23.543890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553352, 28.631765, 23.743654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797340, 28.531181, 24.044243>,  <34.943733, 28.470831, 24.224596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797340, 28.531181, 24.044243>,  <34.553352, 28.631765, 23.743654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797340, 28.531181, 24.044243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660014, 0.363604, 0.657399,
		-0.438546, -0.896973, 0.055820,
		0.609966, -0.251458, 0.751472,
		34.980331, 28.455744, 24.269684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064060, 28.341240, 24.171215>,  <34.553352, 28.631765, 23.743654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064060, 28.341240, 24.171215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.378368, 28.391991, 24.413361>,  <34.566952, 28.422441, 24.558647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.378368, 28.391991, 24.413361>,  <34.064060, 28.341240, 24.171215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378368, 28.391991, 24.413361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565857, 0.542645, 0.620759,
		-0.249738, -0.830324, 0.498189,
		0.785771, 0.126877, 0.605364,
		34.614101, 28.430054, 24.594971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.564869, 28.784050, 21.750111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764324, 28.695778, 22.085409>,  <41.883999, 28.642815, 22.286589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764324, 28.695778, 22.085409>,  <41.564869, 28.784050, 21.750111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764324, 28.695778, 22.085409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638810, 0.560101, 0.527455,
		-0.585902, -0.798491, 0.138317,
		0.498639, -0.220678, 0.838248,
		41.913918, 28.629574, 22.336884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110573, 28.830803, 22.378071>,  <41.564869, 28.784050, 21.750111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110573, 28.830803, 22.378071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.473339, 28.811413, 22.545479>,  <41.690998, 28.799778, 22.645924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.473339, 28.811413, 22.545479>,  <41.110573, 28.830803, 22.378071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473339, 28.811413, 22.545479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359533, 0.428828, 0.828759,
		-0.219649, -0.902085, 0.371480,
		0.906913, -0.048476, 0.418521,
		41.745415, 28.796869, 22.671036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983353, 28.495735, 23.017763>,  <41.110573, 28.830803, 22.378071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983353, 28.495735, 23.017763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.314552, 28.719458, 23.033730>,  <41.513271, 28.853691, 23.043308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.314552, 28.719458, 23.033730>,  <40.983353, 28.495735, 23.017763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314552, 28.719458, 23.033730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396984, 0.534448, 0.746169,
		0.396003, -0.633675, 0.664559,
		0.828001, 0.559304, 0.039916,
		41.562954, 28.887249, 23.045704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992779, 28.750278, 23.674437>,  <40.983353, 28.495735, 23.017763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992779, 28.750278, 23.674437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.273937, 28.985106, 23.513796>,  <41.442635, 29.126001, 23.417412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.273937, 28.985106, 23.513796>,  <40.992779, 28.750278, 23.674437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273937, 28.985106, 23.513796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266187, 0.740692, 0.616863,
		0.659603, -0.326692, 0.676902,
		0.702900, 0.587067, -0.401601,
		41.484806, 29.161226, 23.393314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236710, 29.097906, 24.246674>,  <40.992779, 28.750278, 23.674437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236710, 29.097906, 24.246674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309978, 29.302073, 23.910597>,  <41.353939, 29.424572, 23.708950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309978, 29.302073, 23.910597>,  <41.236710, 29.097906, 24.246674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309978, 29.302073, 23.910597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353914, 0.831587, 0.428029,
		0.917166, 0.218954, 0.332964,
		0.183169, 0.510414, -0.840194,
		41.364929, 29.455196, 23.658539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493416, 29.744343, 24.464687>,  <41.236710, 29.097906, 24.246674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493416, 29.744343, 24.464687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.398746, 29.842031, 24.088530>,  <41.341946, 29.900644, 23.862835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.398746, 29.842031, 24.088530>,  <41.493416, 29.744343, 24.464687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398746, 29.842031, 24.088530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210059, 0.932139, 0.294945,
		0.948611, 0.267343, -0.169309,
		-0.236671, 0.244223, -0.940395,
		41.327744, 29.915298, 23.806412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902409, 30.349283, 24.325987>,  <41.493416, 29.744343, 24.464687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902409, 30.349283, 24.325987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.580883, 30.327963, 24.088991>,  <41.387966, 30.315170, 23.946795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.580883, 30.327963, 24.088991>,  <41.902409, 30.349283, 24.325987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580883, 30.327963, 24.088991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286206, 0.907782, 0.306623,
		0.521508, 0.416041, -0.744943,
		-0.803813, -0.053301, -0.592489,
		41.339741, 30.311972, 23.911245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807922, 31.070538, 23.939356>,  <41.902409, 30.349283, 24.325987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807922, 31.070538, 23.939356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.442745, 30.909130, 23.914999>,  <41.223640, 30.812286, 23.900385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.442745, 30.909130, 23.914999>,  <41.807922, 31.070538, 23.939356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442745, 30.909130, 23.914999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405085, 0.878018, 0.254930,
		-0.049406, 0.257403, -0.965040,
		-0.912943, -0.403519, -0.060891,
		41.168861, 30.788074, 23.896732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413464, 31.554911, 23.675591>,  <41.807922, 31.070538, 23.939356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413464, 31.554911, 23.675591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.124584, 31.316101, 23.815298>,  <40.951256, 31.172815, 23.899122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.124584, 31.316101, 23.815298>,  <41.413464, 31.554911, 23.675591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124584, 31.316101, 23.815298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531116, 0.802138, 0.272928,
		-0.443108, 0.011605, -0.896393,
		-0.722198, -0.597025, 0.349271,
		40.907925, 31.136993, 23.920080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887863, 31.888073, 23.493408>,  <41.413464, 31.554911, 23.675591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887863, 31.888073, 23.493408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758770, 31.664352, 23.798832>,  <40.681313, 31.530119, 23.982086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758770, 31.664352, 23.798832>,  <40.887863, 31.888073, 23.493408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758770, 31.664352, 23.798832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432313, 0.804768, 0.406761,
		-0.841990, -0.198819, -0.501522,
		-0.322737, -0.559303, 0.763558,
		40.661949, 31.496561, 24.027899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254009, 32.202000, 23.641251>,  <40.887863, 31.888073, 23.493408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254009, 32.202000, 23.641251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.329105, 31.967644, 23.956589>,  <40.374161, 31.827030, 24.145792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.329105, 31.967644, 23.956589>,  <40.254009, 32.202000, 23.641251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329105, 31.967644, 23.956589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485285, 0.642483, 0.593055,
		-0.853963, -0.493910, -0.163706,
		0.187737, -0.585892, 0.788344,
		40.385426, 31.791876, 24.193092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667557, 32.000713, 23.956642>,  <40.254009, 32.202000, 23.641251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667557, 32.000713, 23.956642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.939075, 31.999712, 24.250370>,  <40.101986, 31.999111, 24.426607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.939075, 31.999712, 24.250370>,  <39.667557, 32.000713, 23.956642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939075, 31.999712, 24.250370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563414, 0.639566, 0.522992,
		-0.470956, -0.768732, 0.432725,
		0.678797, -0.002503, 0.734322,
		40.142715, 31.998960, 24.470667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946102, 31.702759, 23.886663>,  <39.667557, 32.000713, 23.956642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946102, 31.702759, 23.886663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.785927, 31.944426, 23.611090>,  <38.689823, 32.089428, 23.445745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.785927, 31.944426, 23.611090>,  <38.946102, 31.702759, 23.886663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785927, 31.944426, 23.611090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393182, -0.565826, -0.724741,
		-0.827683, -0.561089, -0.010971,
		-0.400436, 0.604169, -0.688934,
		38.665794, 32.125675, 23.404409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637749, 31.264154, 23.336945>,  <38.946102, 31.702759, 23.886663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637749, 31.264154, 23.336945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.704700, 31.610502, 23.148369>,  <38.744873, 31.818312, 23.035223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.704700, 31.610502, 23.148369>,  <38.637749, 31.264154, 23.336945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704700, 31.610502, 23.148369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439408, -0.493583, -0.750531,
		-0.882555, -0.081527, -0.463087,
		0.167383, 0.865869, -0.471438,
		38.754917, 31.870262, 23.006937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396561, 31.167204, 22.676836>,  <38.637749, 31.264154, 23.336945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396561, 31.167204, 22.676836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636116, 31.484715, 22.634399>,  <38.779850, 31.675220, 22.608938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636116, 31.484715, 22.634399>,  <38.396561, 31.167204, 22.676836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636116, 31.484715, 22.634399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390507, -0.405117, -0.826670,
		-0.699169, 0.453654, -0.552595,
		0.598888, 0.793775, -0.106090,
		38.815781, 31.722847, 22.602571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389397, 31.234407, 21.864647>,  <38.396561, 31.167204, 22.676836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389397, 31.234407, 21.864647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.704689, 31.419613, 22.026787>,  <38.893864, 31.530737, 22.124071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.704689, 31.419613, 22.026787>,  <38.389397, 31.234407, 21.864647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704689, 31.419613, 22.026787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595376, -0.407222, -0.692602,
		-0.155617, 0.787267, -0.596653,
		0.788233, 0.463013, 0.405349,
		38.941158, 31.558517, 22.148392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749199, 31.440496, 21.340199>,  <38.389397, 31.234407, 21.864647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749199, 31.440496, 21.340199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038464, 31.439236, 21.616467>,  <39.212021, 31.438480, 21.782227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038464, 31.439236, 21.616467>,  <38.749199, 31.440496, 21.340199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038464, 31.439236, 21.616467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594086, -0.507201, -0.624347,
		0.352275, 0.861822, -0.364918,
		0.723163, -0.003150, 0.690670,
		39.255413, 31.438292, 21.823668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370518, 31.614964, 21.007044>,  <38.749199, 31.440496, 21.340199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370518, 31.614964, 21.007044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.465549, 31.413977, 21.339571>,  <39.522568, 31.293385, 21.539087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.465549, 31.413977, 21.339571>,  <39.370518, 31.614964, 21.007044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465549, 31.413977, 21.339571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696943, -0.507967, -0.506202,
		0.676629, 0.699642, 0.229508,
		0.237577, -0.502465, 0.831316,
		39.536823, 31.263237, 21.588966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148102, 31.646149, 21.010712>,  <39.370518, 31.614964, 21.007044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148102, 31.646149, 21.010712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021202, 31.350756, 21.248703>,  <39.945065, 31.173519, 21.391497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021202, 31.350756, 21.248703>,  <40.148102, 31.646149, 21.010712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021202, 31.350756, 21.248703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565139, -0.651034, -0.506727,
		0.761560, 0.175488, 0.623884,
		-0.317245, -0.738484, 0.594977,
		39.926029, 31.129211, 21.427197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639893, 31.079325, 20.740362>,  <40.148102, 31.646149, 21.010712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639893, 31.079325, 20.740362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.347977, 30.892832, 20.940378>,  <40.172829, 30.780937, 21.060387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.347977, 30.892832, 20.940378>,  <40.639893, 31.079325, 20.740362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347977, 30.892832, 20.940378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253023, -0.863654, -0.435983,
		0.635129, -0.191653, 0.748251,
		-0.729788, -0.466230, 0.500039,
		40.129040, 30.752962, 21.090389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960911, 30.493349, 21.136679>,  <40.639893, 31.079325, 20.740362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960911, 30.493349, 21.136679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.572655, 30.406485, 21.095314>,  <40.339699, 30.354366, 21.070496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.572655, 30.406485, 21.095314>,  <40.960911, 30.493349, 21.136679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572655, 30.406485, 21.095314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239782, -0.907478, -0.344947,
		-0.018935, -0.359617, 0.932908,
		-0.970642, -0.217163, -0.103412,
		40.281464, 30.341335, 21.064291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952747, 29.769123, 21.260498>,  <40.960911, 30.493349, 21.136679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952747, 29.769123, 21.260498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.579411, 29.802408, 21.120810>,  <40.355408, 29.822380, 21.036997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.579411, 29.802408, 21.120810>,  <40.952747, 29.769123, 21.260498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579411, 29.802408, 21.120810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059289, -0.923675, -0.378561,
		-0.354067, -0.374031, 0.857169,
		-0.933339, 0.083215, -0.349219,
		40.299408, 29.827374, 21.016045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704979, 29.161482, 21.381245>,  <40.952747, 29.769123, 21.260498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704979, 29.161482, 21.381245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456570, 29.300180, 21.100077>,  <40.307526, 29.383400, 20.931376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456570, 29.300180, 21.100077>,  <40.704979, 29.161482, 21.381245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456570, 29.300180, 21.100077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128668, -0.929755, -0.344964,
		-0.773158, -0.123788, 0.622015,
		-0.621024, 0.346745, -0.702920,
		40.270264, 29.404203, 20.889200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002075, 28.803888, 21.317194>,  <40.704979, 29.161482, 21.381245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002075, 28.803888, 21.317194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.055954, 28.957445, 20.951794>,  <40.088284, 29.049580, 20.732553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.055954, 28.957445, 20.951794>,  <40.002075, 28.803888, 21.317194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055954, 28.957445, 20.951794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021984, -0.920517, -0.390083,
		-0.990642, 0.072627, -0.115554,
		0.134700, 0.383893, -0.913500,
		40.096363, 29.072613, 20.677744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526554, 29.302570, 21.507132>,  <40.002075, 28.803888, 21.317194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526554, 29.302570, 21.507132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326756, 29.154613, 21.193781>,  <39.206875, 29.065840, 21.005770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326756, 29.154613, 21.193781>,  <39.526554, 29.302570, 21.507132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326756, 29.154613, 21.193781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657990, -0.426213, 0.620799,
		-0.563514, 0.825544, -0.030492,
		-0.499501, -0.369893, -0.783376,
		39.176907, 29.043646, 20.958769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747360, 29.348553, 21.455988>,  <39.526554, 29.302570, 21.507132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747360, 29.348553, 21.455988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.857605, 29.015627, 21.263617>,  <38.923752, 28.815872, 21.148193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.857605, 29.015627, 21.263617>,  <38.747360, 29.348553, 21.455988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857605, 29.015627, 21.263617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799088, -0.476469, 0.366654,
		-0.534318, 0.283249, -0.796413,
		0.275612, -0.832314, -0.480928,
		38.940289, 28.765932, 21.119339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167980, 29.094011, 21.025307>,  <38.747360, 29.348553, 21.455988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167980, 29.094011, 21.025307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.421993, 28.794834, 21.102573>,  <38.574402, 28.615328, 21.148933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.421993, 28.794834, 21.102573>,  <38.167980, 29.094011, 21.025307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421993, 28.794834, 21.102573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730879, -0.500789, 0.463708,
		-0.250089, -0.435654, -0.864674,
		0.635036, -0.747941, 0.193169,
		38.612503, 28.570452, 21.160524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665890, 28.598276, 21.039764>,  <38.167980, 29.094011, 21.025307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665890, 28.598276, 21.039764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.991539, 28.428461, 21.198242>,  <38.186928, 28.326572, 21.293329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.991539, 28.428461, 21.198242>,  <37.665890, 28.598276, 21.039764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991539, 28.428461, 21.198242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579483, -0.549943, 0.601467,
		-0.037459, -0.719257, -0.693733,
		0.814123, -0.424537, 0.396197,
		38.235775, 28.301100, 21.317101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526070, 27.859314, 21.056818>,  <37.665890, 28.598276, 21.039764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526070, 27.859314, 21.056818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810383, 27.935200, 21.327757>,  <37.980968, 27.980730, 21.490320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810383, 27.935200, 21.327757>,  <37.526070, 27.859314, 21.056818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810383, 27.935200, 21.327757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442079, -0.628526, 0.639938,
		0.547136, -0.754297, -0.362875,
		0.710779, 0.189714, 0.677349,
		38.023617, 27.992113, 21.530962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732597, 27.172844, 21.383896>,  <37.526070, 27.859314, 21.056818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732597, 27.172844, 21.383896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.819210, 27.487553, 21.615103>,  <37.871178, 27.676378, 21.753826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.819210, 27.487553, 21.615103>,  <37.732597, 27.172844, 21.383896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819210, 27.487553, 21.615103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509931, -0.413735, 0.754184,
		0.832516, -0.458056, 0.311612,
		0.216534, 0.786771, 0.578018,
		37.884171, 27.723583, 21.788507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651421, 26.871634, 21.947828>,  <37.732597, 27.172844, 21.383896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651421, 26.871634, 21.947828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.684082, 27.251112, 22.070013>,  <37.703678, 27.478800, 22.143324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.684082, 27.251112, 22.070013>,  <37.651421, 26.871634, 21.947828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684082, 27.251112, 22.070013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666754, -0.175802, 0.724246,
		0.740791, -0.262806, 0.618192,
		0.081657, 0.948698, 0.305460,
		37.708580, 27.535721, 22.161652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487854, 26.795433, 22.696167>,  <37.651421, 26.871634, 21.947828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487854, 26.795433, 22.696167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436874, 27.186031, 22.626638>,  <37.406288, 27.420391, 22.584921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436874, 27.186031, 22.626638>,  <37.487854, 26.795433, 22.696167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436874, 27.186031, 22.626638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686321, 0.039697, 0.726214,
		0.716045, 0.211851, 0.665130,
		-0.127445, 0.976495, -0.173823,
		37.398640, 27.478979, 22.574492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483696, 27.123230, 23.317953>,  <37.487854, 26.795433, 22.696167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483696, 27.123230, 23.317953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.272888, 27.378922, 23.093939>,  <37.146404, 27.532335, 22.959530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.272888, 27.378922, 23.093939>,  <37.483696, 27.123230, 23.317953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272888, 27.378922, 23.093939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680288, 0.077658, 0.728819,
		0.509373, 0.765087, 0.393931,
		-0.527018, 0.639227, -0.560037,
		37.114784, 27.570690, 22.925928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661465, 26.856567, 23.990326>,  <37.483696, 27.123230, 23.317953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661465, 26.856567, 23.990326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.569424, 26.535221, 24.210020>,  <37.514198, 26.342413, 24.341837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.569424, 26.535221, 24.210020>,  <37.661465, 26.856567, 23.990326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569424, 26.535221, 24.210020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297974, -0.595434, -0.746103,
		0.926426, -0.008019, 0.376390,
		-0.230099, -0.803364, 0.549236,
		37.500393, 26.294212, 24.374790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266518, 26.583445, 24.065094>,  <37.661465, 26.856567, 23.990326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266518, 26.583445, 24.065094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000553, 26.290129, 24.121916>,  <37.840973, 26.114140, 24.156008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000553, 26.290129, 24.121916>,  <38.266518, 26.583445, 24.065094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000553, 26.290129, 24.121916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407754, -0.515705, -0.753515,
		0.625801, -0.443099, 0.641900,
		-0.664913, -0.733288, 0.142054,
		37.801079, 26.070143, 24.164532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666206, 26.034161, 24.192266>,  <38.266518, 26.583445, 24.065094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666206, 26.034161, 24.192266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322048, 25.888094, 24.050076>,  <38.115551, 25.800453, 23.964760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322048, 25.888094, 24.050076>,  <38.666206, 26.034161, 24.192266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322048, 25.888094, 24.050076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494538, -0.429828, -0.755433,
		0.123066, -0.825772, 0.550414,
		-0.860399, -0.365169, -0.355479,
		38.063927, 25.778543, 23.943432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756756, 25.360741, 24.194298>,  <38.666206, 26.034161, 24.192266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756756, 25.360741, 24.194298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462227, 25.448393, 23.938232>,  <38.285511, 25.500984, 23.784594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462227, 25.448393, 23.938232>,  <38.756756, 25.360741, 24.194298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462227, 25.448393, 23.938232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514925, -0.432300, -0.740250,
		-0.438959, -0.874698, 0.205472,
		-0.736320, 0.219137, -0.640165,
		38.241329, 25.514132, 23.746183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559731, 24.771734, 23.735182>,  <38.756756, 25.360741, 24.194298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559731, 24.771734, 23.735182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.375347, 25.040615, 23.503435>,  <38.264717, 25.201944, 23.364388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.375347, 25.040615, 23.503435>,  <38.559731, 24.771734, 23.735182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375347, 25.040615, 23.503435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417361, -0.411939, -0.810009,
		-0.783155, -0.615181, -0.090667,
		-0.460953, 0.672204, -0.579365,
		38.237061, 25.242275, 23.329626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163975, 24.436583, 23.162592>,  <38.559731, 24.771734, 23.735182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163975, 24.436583, 23.162592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.269489, 24.811188, 23.070189>,  <38.332798, 25.035950, 23.014746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.269489, 24.811188, 23.070189>,  <38.163975, 24.436583, 23.162592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269489, 24.811188, 23.070189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556365, -0.343360, -0.756678,
		-0.787957, 0.071072, -0.611614,
		0.263783, 0.936511, -0.231011,
		38.348625, 25.092140, 23.000885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315445, 24.395472, 22.470945>,  <38.163975, 24.436583, 23.162592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315445, 24.395472, 22.470945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.470089, 24.756554, 22.546480>,  <38.562874, 24.973202, 22.591801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.470089, 24.756554, 22.546480>,  <38.315445, 24.395472, 22.470945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470089, 24.756554, 22.546480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675948, -0.138060, -0.723902,
		-0.627397, 0.407512, -0.663556,
		0.386609, 0.902703, 0.188839,
		38.586071, 25.027365, 22.603132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640751, 24.576233, 21.883949>,  <38.315445, 24.395472, 22.470945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640751, 24.576233, 21.883949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.805553, 24.877884, 22.088514>,  <38.904434, 25.058874, 22.211252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.805553, 24.877884, 22.088514>,  <38.640751, 24.576233, 21.883949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805553, 24.877884, 22.088514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836259, -0.090075, -0.540885,
		-0.361832, 0.650519, -0.667760,
		0.412005, 0.754130, 0.511410,
		38.929153, 25.104122, 22.241938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815628, 25.155321, 21.426897>,  <38.640751, 24.576233, 21.883949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815628, 25.155321, 21.426897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049374, 25.144402, 21.751308>,  <39.189621, 25.137850, 21.945955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049374, 25.144402, 21.751308>,  <38.815628, 25.155321, 21.426897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049374, 25.144402, 21.751308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811419, 0.032776, -0.583546,
		-0.010651, 0.999090, 0.041305,
		0.584368, -0.027301, 0.811029,
		39.224686, 25.136211, 21.994617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.464790, 34.171837, 34.631542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849689, 34.063354, 34.622307>,  <36.080627, 33.998264, 34.616764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849689, 34.063354, 34.622307>,  <35.464790, 34.171837, 34.631542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849689, 34.063354, 34.622307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083605, -0.213765, -0.973301,
		0.259025, 0.938485, -0.228368,
		0.962245, -0.271203, -0.023092,
		36.138363, 33.981995, 34.615379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728336, 34.485962, 33.973812>,  <35.464790, 34.171837, 34.631542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728336, 34.485962, 33.973812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985203, 34.188816, 34.049473>,  <36.139324, 34.010529, 34.094868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985203, 34.188816, 34.049473>,  <35.728336, 34.485962, 33.973812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985203, 34.188816, 34.049473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165205, -0.375068, -0.912157,
		0.748551, 0.554509, -0.363581,
		0.642167, -0.742862, 0.189150,
		36.177853, 33.965958, 34.106216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983540, 34.403660, 33.275597>,  <35.728336, 34.485962, 33.973812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983540, 34.403660, 33.275597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.135601, 34.095390, 33.480164>,  <36.226837, 33.910431, 33.602905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.135601, 34.095390, 33.480164>,  <35.983540, 34.403660, 33.275597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135601, 34.095390, 33.480164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002133, -0.553662, -0.832739,
		0.924922, 0.315476, -0.212119,
		0.380152, -0.770670, 0.511422,
		36.249645, 33.864189, 33.633591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497124, 34.142559, 32.900509>,  <35.983540, 34.403660, 33.275597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497124, 34.142559, 32.900509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411156, 33.843433, 33.151772>,  <36.359577, 33.663960, 33.302528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411156, 33.843433, 33.151772>,  <36.497124, 34.142559, 32.900509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411156, 33.843433, 33.151772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056918, -0.651688, -0.756349,
		0.974972, -0.126799, 0.182623,
		-0.214917, -0.747814, 0.628161,
		36.346680, 33.619091, 33.340221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973770, 33.631737, 32.762497>,  <36.497124, 34.142559, 32.900509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973770, 33.631737, 32.762497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632259, 33.470024, 32.893723>,  <36.427353, 33.372997, 32.972458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632259, 33.470024, 32.893723>,  <36.973770, 33.631737, 32.762497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632259, 33.470024, 32.893723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037697, -0.676456, -0.735518,
		0.519278, -0.615599, 0.592780,
		-0.853774, -0.404284, 0.328063,
		36.376129, 33.348740, 32.992142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102215, 32.839474, 32.665840>,  <36.973770, 33.631737, 32.762497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102215, 32.839474, 32.665840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712669, 32.913658, 32.718296>,  <36.478943, 32.958168, 32.749771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712669, 32.913658, 32.718296>,  <37.102215, 32.839474, 32.665840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712669, 32.913658, 32.718296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219485, -0.619673, -0.753546,
		-0.058492, -0.762632, 0.644182,
		-0.973861, 0.185465, 0.131141,
		36.420509, 32.969299, 32.757637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744816, 32.127934, 32.675842>,  <37.102215, 32.839474, 32.665840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744816, 32.127934, 32.675842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459038, 32.397541, 32.600727>,  <36.287571, 32.559303, 32.555656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459038, 32.397541, 32.600727>,  <36.744816, 32.127934, 32.675842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459038, 32.397541, 32.600727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399258, -0.613127, -0.681665,
		-0.574589, -0.412042, 0.707155,
		-0.714451, 0.674015, -0.187785,
		36.244701, 32.599747, 32.544392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188965, 31.775885, 32.760704>,  <36.744816, 32.127934, 32.675842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188965, 31.775885, 32.760704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113461, 32.069973, 32.500298>,  <36.068157, 32.246426, 32.344055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113461, 32.069973, 32.500298>,  <36.188965, 31.775885, 32.760704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113461, 32.069973, 32.500298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276271, -0.675917, -0.683236,
		-0.942361, 0.050887, 0.330707,
		-0.188763, 0.735219, -0.651016,
		36.056831, 32.290539, 32.304993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468136, 31.687063, 32.536411>,  <36.188965, 31.775885, 32.760704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468136, 31.687063, 32.536411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.650948, 31.915016, 32.263248>,  <35.760635, 32.051788, 32.099350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.650948, 31.915016, 32.263248>,  <35.468136, 31.687063, 32.536411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650948, 31.915016, 32.263248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472473, -0.494957, -0.729237,
		-0.753588, 0.655936, 0.043045,
		0.457027, 0.569882, -0.682906,
		35.788055, 32.085979, 32.058376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009220, 31.730734, 31.924974>,  <35.468136, 31.687063, 32.536411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009220, 31.730734, 31.924974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348286, 31.889425, 31.784082>,  <35.551727, 31.984640, 31.699547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348286, 31.889425, 31.784082>,  <35.009220, 31.730734, 31.924974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348286, 31.889425, 31.784082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180804, -0.408151, -0.894831,
		-0.498769, 0.822203, -0.274246,
		0.847667, 0.396729, -0.352231,
		35.602585, 32.008446, 31.678413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875725, 32.011047, 31.228594>,  <35.009220, 31.730734, 31.924974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875725, 32.011047, 31.228594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275162, 31.994732, 31.214983>,  <35.514824, 31.984941, 31.206816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275162, 31.994732, 31.214983>,  <34.875725, 32.011047, 31.228594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275162, 31.994732, 31.214983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043943, -0.274391, -0.960614,
		0.029847, 0.960753, -0.275796,
		0.998588, -0.040791, -0.034029,
		35.574738, 31.982494, 31.204775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151157, 32.294819, 30.598675>,  <34.875725, 32.011047, 31.228594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151157, 32.294819, 30.598675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454987, 32.064022, 30.718761>,  <35.637283, 31.925543, 30.790813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454987, 32.064022, 30.718761>,  <35.151157, 32.294819, 30.598675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454987, 32.064022, 30.718761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053782, -0.404273, -0.913056,
		0.648197, 0.709677, -0.276042,
		0.759571, -0.576994, 0.300216,
		35.682858, 31.890924, 30.808826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252052, 32.656204, 29.885735>,  <35.151157, 32.294819, 30.598675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252052, 32.656204, 29.885735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958328, 32.582207, 29.624487>,  <34.782093, 32.537807, 29.467739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958328, 32.582207, 29.624487>,  <35.252052, 32.656204, 29.885735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958328, 32.582207, 29.624487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401221, 0.894375, 0.197775,
		0.547545, 0.407273, -0.730974,
		-0.734313, -0.184991, -0.653117,
		34.738033, 32.526711, 29.428551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100193, 33.335739, 29.667511>,  <35.252052, 32.656204, 29.885735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100193, 33.335739, 29.667511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751007, 33.157509, 29.588110>,  <34.541496, 33.050571, 29.540470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751007, 33.157509, 29.588110>,  <35.100193, 33.335739, 29.667511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751007, 33.157509, 29.588110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487489, 0.811158, 0.323075,
		0.017063, 0.378799, -0.925322,
		-0.872963, -0.445571, -0.198501,
		34.489117, 33.023838, 29.528561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555786, 33.858757, 29.386671>,  <35.100193, 33.335739, 29.667511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555786, 33.858757, 29.386671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344250, 33.550674, 29.529282>,  <34.217327, 33.365826, 29.614847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344250, 33.550674, 29.529282>,  <34.555786, 33.858757, 29.386671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344250, 33.550674, 29.529282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582128, 0.634857, 0.508020,
		-0.617623, 0.061117, -0.784096,
		-0.528837, -0.770209, 0.356524,
		34.185600, 33.319611, 29.636238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882401, 34.012459, 29.332174>,  <34.555786, 33.858757, 29.386671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882401, 34.012459, 29.332174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841141, 33.734818, 29.617151>,  <33.816383, 33.568233, 29.788137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841141, 33.734818, 29.617151>,  <33.882401, 34.012459, 29.332174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841141, 33.734818, 29.617151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493142, 0.657723, 0.569395,
		-0.863812, -0.292602, -0.410138,
		-0.103151, -0.694107, 0.712443,
		33.810196, 33.526585, 29.830885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144787, 33.931759, 29.485178>,  <33.882401, 34.012459, 29.332174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144787, 33.931759, 29.485178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333130, 33.795097, 29.810524>,  <33.446136, 33.713100, 30.005732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333130, 33.795097, 29.810524>,  <33.144787, 33.931759, 29.485178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333130, 33.795097, 29.810524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513711, 0.643351, 0.567627,
		-0.717213, -0.685107, 0.127414,
		0.470857, -0.341656, 0.813366,
		33.474388, 33.692600, 30.054533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663235, 33.813831, 29.987711>,  <33.144787, 33.931759, 29.485178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663235, 33.813831, 29.987711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989651, 33.812733, 30.218904>,  <33.185501, 33.812073, 30.357620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989651, 33.812733, 30.218904>,  <32.663235, 33.813831, 29.987711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989651, 33.812733, 30.218904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529112, 0.398912, 0.748939,
		-0.232620, -0.916985, 0.324078,
		0.816044, -0.002744, 0.577983,
		33.234463, 33.811909, 30.392300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384312, 33.685394, 30.585592>,  <32.663235, 33.813831, 29.987711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384312, 33.685394, 30.585592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742153, 33.833080, 30.686285>,  <32.956860, 33.921692, 30.746700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742153, 33.833080, 30.686285>,  <32.384312, 33.685394, 30.585592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742153, 33.833080, 30.686285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405754, 0.435137, 0.803753,
		0.187219, -0.821180, 0.539084,
		0.894602, 0.369213, 0.251731,
		33.010532, 33.943844, 30.761805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507664, 33.499382, 31.282045>,  <32.384312, 33.685394, 30.585592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507664, 33.499382, 31.282045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732258, 33.817711, 31.191364>,  <32.867016, 34.008709, 31.136955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732258, 33.817711, 31.191364>,  <32.507664, 33.499382, 31.282045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732258, 33.817711, 31.191364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543516, 0.561270, 0.624153,
		0.623958, -0.227238, 0.747689,
		0.561487, 0.795826, -0.226701,
		32.900703, 34.056458, 31.123354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645103, 33.853100, 31.916079>,  <32.507664, 33.499382, 31.282045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645103, 33.853100, 31.916079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695648, 34.139416, 31.641363>,  <32.725975, 34.311207, 31.476534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695648, 34.139416, 31.641363>,  <32.645103, 33.853100, 31.916079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695648, 34.139416, 31.641363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467117, 0.653710, 0.595369,
		0.875120, 0.245581, 0.416959,
		0.126359, 0.715788, -0.686790,
		32.733555, 34.354153, 31.435326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879444, 34.391518, 32.288528>,  <32.645103, 33.853100, 31.916079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879444, 34.391518, 32.288528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749157, 34.546394, 31.943510>,  <32.670982, 34.639320, 31.736498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749157, 34.546394, 31.943510>,  <32.879444, 34.391518, 32.288528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749157, 34.546394, 31.943510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494375, 0.707897, 0.504456,
		0.805915, 0.590735, -0.039162,
		-0.325722, 0.387187, -0.862549,
		32.651440, 34.662552, 31.684746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020950, 35.127060, 32.319118>,  <32.879444, 34.391518, 32.288528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020950, 35.127060, 32.319118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726822, 35.098324, 32.049557>,  <32.550346, 35.081081, 31.887819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726822, 35.098324, 32.049557>,  <33.020950, 35.127060, 32.319118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726822, 35.098324, 32.049557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555894, 0.632738, 0.539097,
		0.387674, 0.771026, -0.505200,
		-0.735317, -0.071843, -0.673905,
		32.506226, 35.076771, 31.847385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838821, 35.816353, 32.168198>,  <33.020950, 35.127060, 32.319118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838821, 35.816353, 32.168198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528473, 35.588734, 32.059231>,  <32.342266, 35.452160, 31.993851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528473, 35.588734, 32.059231>,  <32.838821, 35.816353, 32.168198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528473, 35.588734, 32.059231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630647, 0.687420, 0.360192,
		-0.017702, 0.451260, -0.892217,
		-0.775868, -0.569050, -0.272417,
		32.295712, 35.418018, 31.977505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482380, 36.297913, 31.627968>,  <32.838821, 35.816353, 32.168198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482380, 36.297913, 31.627968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233837, 36.019806, 31.772480>,  <32.084713, 35.852943, 31.859188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233837, 36.019806, 31.772480>,  <32.482380, 36.297913, 31.627968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233837, 36.019806, 31.772480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650431, 0.714792, 0.256927,
		-0.436874, -0.075346, -0.896362,
		-0.621354, -0.695266, 0.361281,
		32.047432, 35.811226, 31.880865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882622, 36.370190, 31.276762>,  <32.482380, 36.297913, 31.627968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882622, 36.370190, 31.276762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785072, 36.193741, 31.622234>,  <31.726543, 36.087872, 31.829517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785072, 36.193741, 31.622234>,  <31.882622, 36.370190, 31.276762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785072, 36.193741, 31.622234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690204, 0.704561, 0.164961,
		-0.681282, -0.555885, -0.476284,
		-0.243872, -0.441118, 0.863679,
		31.711910, 36.061405, 31.881338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271175, 36.509541, 30.690023>,  <31.882622, 36.370190, 31.276762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271175, 36.509541, 30.690023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371655, 36.828812, 30.909042>,  <32.431942, 37.020374, 31.040453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371655, 36.828812, 30.909042>,  <32.271175, 36.509541, 30.690023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371655, 36.828812, 30.909042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860552, 0.074805, -0.503840,
		-0.443115, 0.597755, -0.668085,
		0.251197, 0.798181, 0.547546,
		32.447014, 37.068268, 31.073307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157036, 37.226864, 30.409792>,  <32.271175, 36.509541, 30.690023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157036, 37.226864, 30.409792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479458, 37.155338, 30.635466>,  <32.672909, 37.112423, 30.770870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479458, 37.155338, 30.635466>,  <32.157036, 37.226864, 30.409792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479458, 37.155338, 30.635466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586240, 0.110346, -0.802587,
		0.081259, 0.977675, 0.193774,
		0.806052, -0.178816, 0.564186,
		32.721275, 37.101692, 30.804722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806660, 37.573669, 30.091129>,  <32.157036, 37.226864, 30.409792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806660, 37.573669, 30.091129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000786, 37.332485, 30.344400>,  <33.117260, 37.187775, 30.496363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000786, 37.332485, 30.344400>,  <32.806660, 37.573669, 30.091129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000786, 37.332485, 30.344400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755871, -0.074654, -0.650450,
		0.439463, 0.794273, 0.419527,
		0.485316, -0.602957, 0.633176,
		33.146381, 37.151600, 30.534353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431507, 37.786289, 30.087435>,  <32.806660, 37.573669, 30.091129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431507, 37.786289, 30.087435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457897, 37.404408, 30.203499>,  <33.473732, 37.175278, 30.273136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457897, 37.404408, 30.203499>,  <33.431507, 37.786289, 30.087435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457897, 37.404408, 30.203499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718896, -0.156184, -0.677344,
		0.691980, 0.253280, 0.676028,
		0.065973, -0.954702, 0.290158,
		33.477688, 37.117996, 30.290546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097130, 37.693192, 30.050470>,  <33.431507, 37.786289, 30.087435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097130, 37.693192, 30.050470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959496, 37.317738, 30.060053>,  <33.876915, 37.092464, 30.065802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959496, 37.317738, 30.060053>,  <34.097130, 37.693192, 30.050470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959496, 37.317738, 30.060053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727011, -0.282480, -0.625827,
		0.594190, -0.197920, 0.779594,
		-0.344083, -0.938634, 0.023957,
		33.856270, 37.036148, 30.067240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757050, 37.255901, 29.994398>,  <34.097130, 37.693192, 30.050470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757050, 37.255901, 29.994398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444279, 37.030193, 29.888430>,  <34.256615, 36.894768, 29.824848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444279, 37.030193, 29.888430>,  <34.757050, 37.255901, 29.994398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444279, 37.030193, 29.888430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585161, -0.517923, -0.623973,
		0.214884, -0.642923, 0.735170,
		-0.781928, -0.564274, -0.264920,
		34.209702, 36.860912, 29.808954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991089, 36.601688, 30.005981>,  <34.757050, 37.255901, 29.994398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991089, 36.601688, 30.005981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669182, 36.566948, 29.771099>,  <34.476040, 36.546104, 29.630171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669182, 36.566948, 29.771099>,  <34.991089, 36.601688, 30.005981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669182, 36.566948, 29.771099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486411, -0.663492, -0.568491,
		-0.340231, -0.743125, 0.576201,
		-0.804765, -0.086852, -0.587205,
		34.427753, 36.540894, 29.594938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890110, 35.901882, 29.836170>,  <34.991089, 36.601688, 30.005981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890110, 35.901882, 29.836170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686012, 36.106373, 29.559534>,  <34.563553, 36.229069, 29.393553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686012, 36.106373, 29.559534>,  <34.890110, 35.901882, 29.836170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686012, 36.106373, 29.559534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267505, -0.669920, -0.692566,
		-0.817369, -0.538382, 0.205067,
		-0.510244, 0.511226, -0.691592,
		34.532940, 36.259739, 29.352057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642792, 35.375134, 29.356701>,  <34.890110, 35.901882, 29.836170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642792, 35.375134, 29.356701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621979, 35.713707, 29.144726>,  <34.609489, 35.916851, 29.017540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621979, 35.713707, 29.144726>,  <34.642792, 35.375134, 29.356701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621979, 35.713707, 29.144726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151462, -0.517831, -0.841968,
		-0.987093, -0.124075, -0.101259,
		-0.052032, 0.846438, -0.529940,
		34.606369, 35.967640, 28.985744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219044, 35.226883, 28.815334>,  <34.642792, 35.375134, 29.356701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219044, 35.226883, 28.815334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426586, 35.545250, 28.690557>,  <34.551113, 35.736271, 28.615692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426586, 35.545250, 28.690557>,  <34.219044, 35.226883, 28.815334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426586, 35.545250, 28.690557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219732, -0.476813, -0.851097,
		-0.826139, 0.373054, -0.422286,
		0.518857, 0.795914, -0.311942,
		34.582245, 35.784023, 28.596975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088638, 35.471672, 28.170862>,  <34.219044, 35.226883, 28.815334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088638, 35.471672, 28.170862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440422, 35.659824, 28.199963>,  <34.651493, 35.772717, 28.217422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440422, 35.659824, 28.199963>,  <34.088638, 35.471672, 28.170862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440422, 35.659824, 28.199963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299347, -0.427770, -0.852880,
		-0.370058, 0.771851, -0.517013,
		0.879459, 0.470382, 0.072752,
		34.704258, 35.800938, 28.221788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291027, 35.693279, 27.492155>,  <34.088638, 35.471672, 28.170862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291027, 35.693279, 27.492155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642338, 35.694702, 27.683413>,  <34.853123, 35.695557, 27.798168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642338, 35.694702, 27.683413>,  <34.291027, 35.693279, 27.492155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642338, 35.694702, 27.683413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455288, -0.311779, -0.833970,
		0.146109, 0.950148, -0.275447,
		0.878274, 0.003557, 0.478145,
		34.905819, 35.695770, 27.826857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746075, 35.942490, 26.997332>,  <34.291027, 35.693279, 27.492155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746075, 35.942490, 26.997332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995548, 35.769718, 27.257933>,  <35.145233, 35.666058, 27.414293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995548, 35.769718, 27.257933>,  <34.746075, 35.942490, 26.997332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995548, 35.769718, 27.257933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462787, -0.467664, -0.753073,
		0.629956, 0.771188, -0.091786,
		0.623686, -0.431925, 0.651504,
		35.182655, 35.640141, 27.453384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378735, 36.014099, 26.697060>,  <34.746075, 35.942490, 26.997332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378735, 36.014099, 26.697060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407307, 35.725170, 26.972202>,  <35.424450, 35.551811, 27.137287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407307, 35.725170, 26.972202>,  <35.378735, 36.014099, 26.697060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407307, 35.725170, 26.972202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371146, -0.620851, -0.690504,
		0.925823, 0.304614, 0.223743,
		0.071426, -0.722326, 0.687854,
		35.428734, 35.508472, 27.178558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081898, 35.842060, 26.685280>,  <35.378735, 36.014099, 26.697060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081898, 35.842060, 26.685280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902313, 35.522778, 26.845926>,  <35.794563, 35.331207, 26.942314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902313, 35.522778, 26.845926>,  <36.081898, 35.842060, 26.685280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902313, 35.522778, 26.845926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502235, -0.597166, -0.625422,
		0.739048, -0.079086, 0.668994,
		-0.448962, -0.798209, 0.401615,
		35.767624, 35.283314, 26.966412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572983, 35.282818, 26.583588>,  <36.081898, 35.842060, 26.685280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572983, 35.282818, 26.583588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228447, 35.097702, 26.667419>,  <36.021725, 34.986633, 26.717718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228447, 35.097702, 26.667419>,  <36.572983, 35.282818, 26.583588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228447, 35.097702, 26.667419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233530, -0.727035, -0.645665,
		0.451179, -0.507192, 0.734298,
		-0.861337, -0.462791, 0.209579,
		35.970047, 34.958866, 26.730293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828144, 34.698696, 26.650812>,  <36.572983, 35.282818, 26.583588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828144, 34.698696, 26.650812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434048, 34.657742, 26.595951>,  <36.197590, 34.633167, 26.563034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434048, 34.657742, 26.595951>,  <36.828144, 34.698696, 26.650812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434048, 34.657742, 26.595951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169645, -0.690389, -0.703266,
		-0.022685, -0.716156, 0.697571,
		-0.985244, -0.102386, -0.137153,
		36.138474, 34.627026, 26.554806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604527, 34.063950, 26.805285>,  <36.828144, 34.698696, 26.650812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604527, 34.063950, 26.805285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338367, 34.184826, 26.532248>,  <36.178673, 34.257351, 26.368425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338367, 34.184826, 26.532248>,  <36.604527, 34.063950, 26.805285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338367, 34.184826, 26.532248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280310, -0.746340, -0.603658,
		-0.691860, -0.593010, 0.411909,
		-0.665399, 0.302185, -0.682589,
		36.138748, 34.275482, 26.327471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238468, 33.428791, 26.623703>,  <36.604527, 34.063950, 26.805285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238468, 33.428791, 26.623703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198662, 33.702431, 26.334675>,  <36.174778, 33.866615, 26.161259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198662, 33.702431, 26.334675>,  <36.238468, 33.428791, 26.623703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198662, 33.702431, 26.334675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294936, -0.673261, -0.678036,
		-0.950321, -0.280588, -0.134764,
		-0.099517, 0.684098, -0.722569,
		36.168808, 33.907661, 26.117905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142536, 33.038994, 25.955727>,  <36.238468, 33.428791, 26.623703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142536, 33.038994, 25.955727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194126, 33.411175, 25.818539>,  <36.225079, 33.634483, 25.736227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194126, 33.411175, 25.818539>,  <36.142536, 33.038994, 25.955727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194126, 33.411175, 25.818539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399144, -0.365311, -0.840971,
		-0.907772, -0.028433, -0.418498,
		0.128971, 0.930451, -0.342968,
		36.232819, 33.690311, 25.715649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920273, 33.038769, 25.327227>,  <36.142536, 33.038994, 25.955727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920273, 33.038769, 25.327227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185715, 33.337540, 25.343891>,  <36.344978, 33.516800, 25.353889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185715, 33.337540, 25.343891>,  <35.920273, 33.038769, 25.327227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185715, 33.337540, 25.343891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480923, -0.383293, -0.788542,
		-0.573012, 0.543315, -0.613568,
		0.663604, 0.746923, 0.041661,
		36.384796, 33.561615, 25.356390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980549, 33.361656, 24.560789>,  <35.920273, 33.038769, 25.327227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980549, 33.361656, 24.560789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304531, 33.456951, 24.775160>,  <36.498920, 33.514126, 24.903782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304531, 33.456951, 24.775160>,  <35.980549, 33.361656, 24.560789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304531, 33.456951, 24.775160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585750, -0.282613, -0.759623,
		-0.029509, 0.929179, -0.368450,
		0.809954, 0.238235, 0.535928,
		36.547516, 33.528423, 24.935938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390137, 33.678787, 24.123020>,  <35.980549, 33.361656, 24.560789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390137, 33.678787, 24.123020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652382, 33.580463, 24.408606>,  <36.809731, 33.521469, 24.579958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652382, 33.580463, 24.408606>,  <36.390137, 33.678787, 24.123020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652382, 33.580463, 24.408606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683076, -0.209927, -0.699527,
		0.321832, 0.946313, 0.030277,
		0.655615, -0.245812, 0.713965,
		36.849068, 33.506721, 24.622795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012604, 33.932224, 23.946430>,  <36.390137, 33.678787, 24.123020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012604, 33.932224, 23.946430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119934, 33.651268, 24.210142>,  <37.184334, 33.482693, 24.368368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119934, 33.651268, 24.210142>,  <37.012604, 33.932224, 23.946430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119934, 33.651268, 24.210142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745970, -0.281529, -0.603548,
		0.609532, 0.653749, 0.448422,
		0.268325, -0.702391, 0.659278,
		37.200432, 33.440552, 24.407927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774525, 33.955235, 23.927355>,  <37.012604, 33.932224, 23.946430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774525, 33.955235, 23.927355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667606, 33.598392, 24.073071>,  <37.603455, 33.384289, 24.160500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667606, 33.598392, 24.073071>,  <37.774525, 33.955235, 23.927355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667606, 33.598392, 24.073071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765090, -0.426311, -0.482593,
		0.585822, 0.149718, 0.796490,
		-0.267299, -0.892101, 0.364290,
		37.587418, 33.330761, 24.182358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342327, 33.726154, 24.172535>,  <37.774525, 33.955235, 23.927355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342327, 33.726154, 24.172535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.123695, 33.397903, 24.105808>,  <37.992516, 33.200954, 24.065773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.123695, 33.397903, 24.105808>,  <38.342327, 33.726154, 24.172535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123695, 33.397903, 24.105808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813458, -0.473007, -0.338452,
		0.198837, -0.320688, 0.926080,
		-0.546580, -0.820624, -0.166815,
		37.959721, 33.151718, 24.055763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735630, 33.278202, 24.412689>,  <38.342327, 33.726154, 24.172535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735630, 33.278202, 24.412689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493103, 33.072571, 24.170004>,  <38.347588, 32.949192, 24.024393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493103, 33.072571, 24.170004>,  <38.735630, 33.278202, 24.412689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493103, 33.072571, 24.170004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795158, -0.401454, -0.454488,
		-0.009926, -0.757998, 0.652182,
		-0.606321, -0.514076, -0.606712,
		38.311207, 32.918346, 23.987989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989120, 32.648026, 24.371264>,  <38.735630, 33.278202, 24.412689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989120, 32.648026, 24.371264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.749310, 32.629131, 24.051682>,  <38.605423, 32.617794, 23.859932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.749310, 32.629131, 24.051682>,  <38.989120, 32.648026, 24.371264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749310, 32.629131, 24.051682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731408, -0.437661, -0.522967,
		-0.324969, -0.897898, 0.296941,
		-0.599530, -0.047237, -0.798957,
		38.569450, 32.614960, 23.811995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258545, 32.000568, 24.630045>,  <38.989120, 32.648026, 24.371264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258545, 32.000568, 24.630045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.622578, 32.152824, 24.695602>,  <39.840996, 32.244179, 24.734938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.622578, 32.152824, 24.695602>,  <39.258545, 32.000568, 24.630045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622578, 32.152824, 24.695602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387077, 0.639440, 0.664295,
		0.148056, -0.668004, 0.729281,
		0.910083, 0.380640, 0.163896,
		39.895603, 32.267017, 24.744772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220642, 32.130135, 25.290983>,  <39.258545, 32.000568, 24.630045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220642, 32.130135, 25.290983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555187, 32.337822, 25.220648>,  <39.755913, 32.462433, 25.178448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555187, 32.337822, 25.220648>,  <39.220642, 32.130135, 25.290983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555187, 32.337822, 25.220648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232158, 0.626065, 0.744409,
		0.496592, -0.581773, 0.644156,
		0.836361, 0.519214, -0.175836,
		39.806095, 32.493587, 25.167896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589550, 32.273819, 25.969933>,  <39.220642, 32.130135, 25.290983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589550, 32.273819, 25.969933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.692780, 32.563026, 25.713606>,  <39.754719, 32.736549, 25.559811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.692780, 32.563026, 25.713606>,  <39.589550, 32.273819, 25.969933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692780, 32.563026, 25.713606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072258, 0.675870, 0.733470,
		0.963419, -0.142986, 0.226668,
		0.258074, 0.723018, -0.640815,
		39.770203, 32.779930, 25.521362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876564, 32.790337, 26.391867>,  <39.589550, 32.273819, 25.969933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876564, 32.790337, 26.391867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.824337, 33.005169, 26.058521>,  <39.793003, 33.134068, 25.858515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.824337, 33.005169, 26.058521>,  <39.876564, 32.790337, 26.391867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824337, 33.005169, 26.058521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296463, 0.780949, 0.549753,
		0.946078, 0.318839, 0.057263,
		-0.130563, 0.537085, -0.833362,
		39.785168, 33.166294, 25.808512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361259, 33.535198, 26.367445>,  <39.876564, 32.790337, 26.391867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361259, 33.535198, 26.367445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.044064, 33.571335, 26.126444>,  <39.853748, 33.593018, 25.981842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.044064, 33.571335, 26.126444>,  <40.361259, 33.535198, 26.367445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044064, 33.571335, 26.126444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213338, 0.885156, 0.413504,
		0.570666, 0.456440, -0.682644,
		-0.792986, 0.090339, -0.602504,
		39.806168, 33.598438, 25.945692>
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
