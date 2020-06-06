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
	<24.788689, 35.056438, 34.759892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461143, 35.091000, 34.986870>,  <24.264616, 35.111736, 35.123058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461143, 35.091000, 34.986870>,  <24.788689, 35.056438, 34.759892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461143, 35.091000, 34.986870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561916, -0.322344, -0.761803,
		0.117088, -0.942671, 0.312510,
		-0.818865, 0.086406, 0.567445,
		24.215485, 35.116920, 35.157104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.972733, 34.289120, 34.829224>,  <24.788689, 35.056438, 34.759892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.972733, 34.289120, 34.829224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335110, 34.130882, 34.889591>,  <25.552536, 34.035942, 34.925812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335110, 34.130882, 34.889591>,  <24.972733, 34.289120, 34.829224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335110, 34.130882, 34.889591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412906, 0.746585, -0.521651,
		0.093685, 0.534902, 0.839704,
		0.905943, -0.395590, 0.150921,
		25.606892, 34.012207, 34.934868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564096, 34.713657, 35.049820>,  <24.972733, 34.289120, 34.829224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564096, 34.713657, 35.049820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718655, 34.425011, 34.820053>,  <25.811390, 34.251823, 34.682194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718655, 34.425011, 34.820053>,  <25.564096, 34.713657, 35.049820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718655, 34.425011, 34.820053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417712, 0.692175, -0.588566,
		0.822322, -0.012522, 0.568884,
		0.386397, -0.721621, -0.574422,
		25.834574, 34.208523, 34.647728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308197, 34.856125, 34.963116>,  <25.564096, 34.713657, 35.049820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308197, 34.856125, 34.963116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175711, 34.635609, 34.656815>,  <26.096218, 34.503300, 34.473034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175711, 34.635609, 34.656815>,  <26.308197, 34.856125, 34.963116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175711, 34.635609, 34.656815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501660, 0.584464, -0.637761,
		0.799145, -0.595384, 0.082976,
		-0.331216, -0.551290, -0.765752,
		26.076345, 34.470222, 34.427090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878649, 34.714878, 34.497795>,  <26.308197, 34.856125, 34.963116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878649, 34.714878, 34.497795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558811, 34.657001, 34.264656>,  <26.366909, 34.622276, 34.124771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558811, 34.657001, 34.264656>,  <26.878649, 34.714878, 34.497795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558811, 34.657001, 34.264656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312231, 0.728887, -0.609290,
		0.512988, -0.669169, -0.537639,
		-0.799597, -0.144691, -0.582846,
		26.318932, 34.613594, 34.089802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605326, 34.614998, 34.643261>,  <26.878649, 34.714878, 34.497795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605326, 34.614998, 34.643261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002825, 34.624012, 34.599514>,  <28.241323, 34.629421, 34.573265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002825, 34.624012, 34.599514>,  <27.605326, 34.614998, 34.643261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002825, 34.624012, 34.599514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008110, -0.991402, -0.130596,
		-0.111368, 0.128893, -0.985385,
		0.993746, 0.022536, -0.109366,
		28.300949, 34.630772, 34.566704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745649, 34.279980, 33.976650>,  <27.605326, 34.614998, 34.643261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745649, 34.279980, 33.976650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053242, 34.286125, 34.232285>,  <28.237797, 34.289814, 34.385666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053242, 34.286125, 34.232285>,  <27.745649, 34.279980, 33.976650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053242, 34.286125, 34.232285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208637, -0.951003, -0.228176,
		0.604270, 0.308800, -0.734507,
		0.768979, 0.015366, 0.639089,
		28.283936, 34.290733, 34.424011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128765, 34.620255, 33.691757>,  <27.745649, 34.279980, 33.976650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128765, 34.620255, 33.691757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754526, 34.759544, 33.715076>,  <26.529984, 34.843121, 33.729069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754526, 34.759544, 33.715076>,  <27.128765, 34.620255, 33.691757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754526, 34.759544, 33.715076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244977, 0.759143, -0.603065,
		-0.254260, -0.549944, -0.795559,
		-0.935595, 0.348229, 0.058296,
		26.473848, 34.864014, 33.732567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963095, 34.749428, 32.951408>,  <27.128765, 34.620255, 33.691757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963095, 34.749428, 32.951408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691580, 34.958206, 33.158028>,  <26.528671, 35.083473, 33.282001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691580, 34.958206, 33.158028>,  <26.963095, 34.749428, 32.951408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691580, 34.958206, 33.158028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178884, 0.799762, -0.573045,
		-0.712215, -0.296572, -0.636235,
		-0.678786, 0.521944, 0.516551,
		26.487944, 35.114788, 33.312992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575031, 35.100945, 32.506042>,  <26.963095, 34.749428, 32.951408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575031, 35.100945, 32.506042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520399, 35.308571, 32.843544>,  <26.487619, 35.433147, 33.046043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520399, 35.308571, 32.843544>,  <26.575031, 35.100945, 32.506042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520399, 35.308571, 32.843544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292563, 0.834877, -0.466249,
		-0.946442, 0.183169, -0.265889,
		-0.136582, 0.519067, 0.843750,
		26.479424, 35.464291, 33.096668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254656, 35.692776, 32.267323>,  <26.575031, 35.100945, 32.506042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254656, 35.692776, 32.267323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396282, 35.784687, 32.629944>,  <26.481258, 35.839832, 32.847515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396282, 35.784687, 32.629944>,  <26.254656, 35.692776, 32.267323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396282, 35.784687, 32.629944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357216, 0.862623, -0.358159,
		-0.864311, 0.450647, 0.223345,
		0.354066, 0.229778, 0.906553,
		26.502502, 35.853622, 32.901909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943184, 36.293091, 32.441635>,  <26.254656, 35.692776, 32.267323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943184, 36.293091, 32.441635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278358, 36.287640, 32.659874>,  <26.479464, 36.284370, 32.790817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278358, 36.287640, 32.659874>,  <25.943184, 36.293091, 32.441635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278358, 36.287640, 32.659874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192422, 0.942870, -0.271973,
		-0.510719, 0.332881, 0.792689,
		0.837938, -0.013629, 0.545595,
		26.529739, 36.283550, 32.823551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923065, 36.882484, 33.012299>,  <25.943184, 36.293091, 32.441635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923065, 36.882484, 33.012299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275858, 36.781197, 32.853310>,  <26.487534, 36.720425, 32.757915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275858, 36.781197, 32.853310>,  <25.923065, 36.882484, 33.012299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275858, 36.781197, 32.853310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122221, 0.937431, -0.326014,
		0.455161, 0.238959, 0.857746,
		0.881981, -0.253223, -0.397476,
		26.540453, 36.705231, 32.734066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505192, 37.277714, 33.330425>,  <25.923065, 36.882484, 33.012299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505192, 37.277714, 33.330425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597973, 37.215855, 32.946281>,  <26.653641, 37.178741, 32.715797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597973, 37.215855, 32.946281>,  <26.505192, 37.277714, 33.330425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597973, 37.215855, 32.946281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184539, 0.976348, -0.112648,
		0.955062, -0.151094, 0.255004,
		0.231952, -0.154644, -0.960356,
		26.667559, 37.169460, 32.658176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160145, 37.248985, 33.209843>,  <26.505192, 37.277714, 33.330425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160145, 37.248985, 33.209843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915836, 37.416615, 32.941116>,  <26.769251, 37.517193, 32.779881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915836, 37.416615, 32.941116>,  <27.160145, 37.248985, 33.209843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915836, 37.416615, 32.941116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369646, 0.901237, 0.226126,
		0.700227, -0.110222, -0.705360,
		-0.610773, 0.419073, -0.671814,
		26.732605, 37.542336, 32.739571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952198, 36.649860, 33.605892>,  <27.160145, 37.248985, 33.209843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952198, 36.649860, 33.605892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772451, 36.898830, 33.862221>,  <26.664604, 37.048214, 34.016018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772451, 36.898830, 33.862221>,  <26.952198, 36.649860, 33.605892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772451, 36.898830, 33.862221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023203, 0.708955, -0.704872,
		-0.893047, -0.331614, -0.304138,
		-0.449366, 0.622427, 0.640824,
		26.637642, 37.085560, 34.054466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948002, 36.117832, 34.091652>,  <26.952198, 36.649860, 33.605892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948002, 36.117832, 34.091652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781260, 36.070595, 33.731144>,  <26.681213, 36.042252, 33.514839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781260, 36.070595, 33.731144>,  <26.948002, 36.117832, 34.091652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781260, 36.070595, 33.731144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682476, -0.614241, 0.396148,
		-0.600380, 0.780231, 0.175453,
		-0.416858, -0.118097, -0.901267,
		26.656202, 36.035164, 33.460762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281584, 36.070370, 34.234047>,  <26.948002, 36.117832, 34.091652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281584, 36.070370, 34.234047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328651, 35.912552, 33.869522>,  <26.356892, 35.817863, 33.650806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328651, 35.912552, 33.869522>,  <26.281584, 36.070370, 34.234047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328651, 35.912552, 33.869522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627571, -0.740753, 0.239666,
		-0.769616, 0.543712, -0.334767,
		0.117670, -0.394541, -0.911313,
		26.363953, 35.794189, 33.596127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676941, 35.898003, 34.006989>,  <26.281584, 36.070370, 34.234047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676941, 35.898003, 34.006989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936735, 35.653675, 33.825851>,  <26.092611, 35.507076, 33.717171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936735, 35.653675, 33.825851>,  <25.676941, 35.898003, 34.006989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936735, 35.653675, 33.825851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541837, -0.789616, 0.287959,
		-0.533462, 0.058341, -0.843810,
		0.649485, -0.610822, -0.452841,
		26.131580, 35.470428, 33.689999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276358, 35.367619, 33.572216>,  <25.676941, 35.898003, 34.006989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276358, 35.367619, 33.572216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633698, 35.221195, 33.676468>,  <25.848101, 35.133339, 33.739017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633698, 35.221195, 33.676468>,  <25.276358, 35.367619, 33.572216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633698, 35.221195, 33.676468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435685, -0.847600, 0.302906,
		0.110024, -0.384151, -0.916691,
		0.893349, -0.366062, 0.260626,
		25.901703, 35.111378, 33.754654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168047, 34.618736, 33.543282>,  <25.276358, 35.367619, 33.572216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168047, 34.618736, 33.543282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545385, 34.625240, 33.675846>,  <25.771788, 34.629143, 33.755386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545385, 34.625240, 33.675846>,  <25.168047, 34.618736, 33.543282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545385, 34.625240, 33.675846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153427, -0.864238, 0.479118,
		0.294212, -0.502821, -0.812779,
		0.943345, 0.016260, 0.331415,
		25.828388, 34.630119, 33.775272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431236, 33.981884, 33.344704>,  <25.168047, 34.618736, 33.543282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431236, 33.981884, 33.344704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610756, 34.110882, 33.678070>,  <25.718468, 34.188282, 33.878090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610756, 34.110882, 33.678070>,  <25.431236, 33.981884, 33.344704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610756, 34.110882, 33.678070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193205, -0.875539, 0.442837,
		0.872498, -0.359763, -0.330631,
		0.448797, 0.322495, 0.833414,
		25.745396, 34.207630, 33.928093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686335, 33.417576, 33.756969>,  <25.431236, 33.981884, 33.344704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686335, 33.417576, 33.756969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690086, 33.724041, 34.014004>,  <25.692337, 33.907921, 34.168224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690086, 33.724041, 34.014004>,  <25.686335, 33.417576, 33.756969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690086, 33.724041, 34.014004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359238, -0.597126, 0.717209,
		0.933199, -0.237568, 0.269632,
		0.009381, 0.766160, 0.642581,
		25.692902, 33.953888, 34.206779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120642, 33.256905, 34.402596>,  <25.686335, 33.417576, 33.756969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120642, 33.256905, 34.402596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811108, 33.506050, 34.448578>,  <25.625387, 33.655537, 34.476170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811108, 33.506050, 34.448578>,  <26.120642, 33.256905, 34.402596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811108, 33.506050, 34.448578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441158, -0.660262, 0.607811,
		0.454488, 0.419631, 0.785717,
		-0.773835, 0.622868, 0.114958,
		25.578957, 33.692909, 34.483067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323610, 33.628178, 34.949867>,  <26.120642, 33.256905, 34.402596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323610, 33.628178, 34.949867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363928, 33.278805, 35.140427>,  <26.388119, 33.069180, 35.254761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363928, 33.278805, 35.140427>,  <26.323610, 33.628178, 34.949867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363928, 33.278805, 35.140427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893317, -0.131343, -0.429806,
		0.437979, 0.468896, 0.767014,
		0.100792, -0.873433, 0.476398,
		26.394165, 33.016773, 35.283344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998436, 33.534683, 35.251057>,  <26.323610, 33.628178, 34.949867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998436, 33.534683, 35.251057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894905, 33.150818, 35.207130>,  <26.832787, 32.920498, 35.180775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894905, 33.150818, 35.207130>,  <26.998436, 33.534683, 35.251057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894905, 33.150818, 35.207130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853739, -0.174107, -0.490730,
		0.451815, -0.220768, 0.864364,
		-0.258829, -0.959661, -0.109814,
		26.817257, 32.862919, 35.174187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650362, 33.125950, 35.238098>,  <26.998436, 33.534683, 35.251057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650362, 33.125950, 35.238098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389641, 32.879757, 35.060860>,  <27.233208, 32.732040, 34.954517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389641, 32.879757, 35.060860>,  <27.650362, 33.125950, 35.238098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389641, 32.879757, 35.060860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680097, -0.215840, -0.700629,
		0.335588, -0.758019, 0.559274,
		-0.651804, -0.615483, -0.443094,
		27.194099, 32.695110, 34.927933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381548, 33.078465, 35.515003>,  <27.650362, 33.125950, 35.238098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381548, 33.078465, 35.515003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114267, 32.902790, 35.755211>,  <27.953899, 32.797386, 35.899334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114267, 32.902790, 35.755211>,  <28.381548, 33.078465, 35.515003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114267, 32.902790, 35.755211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634109, -0.758368, 0.150941,
		0.389122, 0.481653, 0.785235,
		-0.668199, -0.439190, 0.600518,
		27.913807, 32.771034, 35.935368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806135, 32.808971, 35.993637>,  <28.381548, 33.078465, 35.515003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806135, 32.808971, 35.993637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468744, 32.594521, 35.980278>,  <28.266310, 32.465851, 35.972263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468744, 32.594521, 35.980278>,  <28.806135, 32.808971, 35.993637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468744, 32.594521, 35.980278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535396, -0.844115, 0.028661,
		-0.043560, 0.006292, 0.999031,
		-0.843477, -0.536126, -0.033401,
		28.215702, 32.433681, 35.970257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912359, 32.461628, 35.287094>,  <28.806135, 32.808971, 35.993637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912359, 32.461628, 35.287094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001373, 32.369678, 35.666069>,  <29.054781, 32.314510, 35.893456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001373, 32.369678, 35.666069>,  <28.912359, 32.461628, 35.287094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001373, 32.369678, 35.666069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561680, -0.824545, -0.068124,
		0.796865, -0.516996, -0.312604,
		0.222536, -0.229869, 0.947438,
		29.068134, 32.300716, 35.950302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089907, 31.738106, 35.277756>,  <28.912359, 32.461628, 35.287094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089907, 31.738106, 35.277756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966419, 31.857304, 35.639065>,  <28.892326, 31.928822, 35.855850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966419, 31.857304, 35.639065>,  <29.089907, 31.738106, 35.277756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966419, 31.857304, 35.639065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497482, -0.859992, 0.113689,
		0.810682, -0.414262, 0.413741,
		-0.308717, 0.297995, 0.903268,
		28.873804, 31.946703, 35.910046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014126, 31.171419, 35.579849>,  <29.089907, 31.738106, 35.277756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014126, 31.171419, 35.579849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828054, 31.408144, 35.843174>,  <28.716412, 31.550179, 36.001167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828054, 31.408144, 35.843174>,  <29.014126, 31.171419, 35.579849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828054, 31.408144, 35.843174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534614, -0.780549, 0.323931,
		0.705548, -0.201256, 0.679483,
		-0.465177, 0.591810, 0.658309,
		28.688501, 31.585688, 36.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101759, 30.838249, 36.175880>,  <29.014126, 31.171419, 35.579849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101759, 30.838249, 36.175880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781008, 31.069687, 36.235504>,  <28.588556, 31.208549, 36.271278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781008, 31.069687, 36.235504>,  <29.101759, 30.838249, 36.175880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781008, 31.069687, 36.235504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475926, -0.769367, 0.426108,
		0.361228, 0.270744, 0.892307,
		-0.801878, 0.578594, 0.149063,
		28.540443, 31.243265, 36.280224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858698, 30.619844, 36.806194>,  <29.101759, 30.838249, 36.175880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858698, 30.619844, 36.806194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546654, 30.803242, 36.635918>,  <28.359428, 30.913280, 36.533752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546654, 30.803242, 36.635918>,  <28.858698, 30.619844, 36.806194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546654, 30.803242, 36.635918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599232, -0.743163, 0.297706,
		-0.179863, 0.487331, 0.854492,
		-0.780109, 0.458493, -0.425692,
		28.312620, 30.940790, 36.508209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422693, 30.686022, 37.256954>,  <28.858698, 30.619844, 36.806194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422693, 30.686022, 37.256954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239332, 30.683512, 36.901466>,  <28.129314, 30.682005, 36.688171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239332, 30.683512, 36.901466>,  <28.422693, 30.686022, 37.256954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239332, 30.683512, 36.901466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426957, -0.875470, 0.226409,
		-0.779470, 0.483233, 0.398640,
		-0.458405, -0.006277, -0.888721,
		28.101810, 30.681629, 36.634850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766529, 30.443363, 37.414085>,  <28.422693, 30.686022, 37.256954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766529, 30.443363, 37.414085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763973, 30.392250, 37.017372>,  <27.762440, 30.361582, 36.779343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763973, 30.392250, 37.017372>,  <27.766529, 30.443363, 37.414085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763973, 30.392250, 37.017372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391612, -0.912264, 0.120061,
		-0.920108, 0.389161, -0.044213,
		-0.006389, -0.127783, -0.991782,
		27.762056, 30.353914, 36.719837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811769, 29.747740, 37.224403>,  <27.766529, 30.443363, 37.414085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811769, 29.747740, 37.224403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746330, 29.886135, 36.854858>,  <27.707066, 29.969172, 36.633129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746330, 29.886135, 36.854858>,  <27.811769, 29.747740, 37.224403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746330, 29.886135, 36.854858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341147, -0.898549, -0.276096,
		-0.925664, 0.270005, 0.265034,
		-0.163599, 0.345987, -0.923866,
		27.697250, 29.989931, 36.577698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126890, 29.526785, 37.091331>,  <27.811769, 29.747740, 37.224403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126890, 29.526785, 37.091331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302698, 29.585421, 36.736855>,  <27.408182, 29.620602, 36.524170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302698, 29.585421, 36.736855>,  <27.126890, 29.526785, 37.091331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302698, 29.585421, 36.736855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268446, -0.920067, -0.285330,
		-0.857181, 0.363302, -0.365037,
		0.439520, 0.146587, -0.886191,
		27.434553, 29.629396, 36.470997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705458, 29.241280, 36.505016>,  <27.126890, 29.526785, 37.091331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705458, 29.241280, 36.505016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079363, 29.262575, 36.364513>,  <27.303707, 29.275352, 36.280212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079363, 29.262575, 36.364513>,  <26.705458, 29.241280, 36.505016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079363, 29.262575, 36.364513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160409, -0.818937, -0.551010,
		-0.316993, 0.571409, -0.756972,
		0.934764, 0.053241, -0.351256,
		27.359793, 29.278547, 36.259136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747776, 28.651041, 36.124783>,  <26.705458, 29.241280, 36.505016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747776, 28.651041, 36.124783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780756, 28.261654, 36.039398>,  <26.800543, 28.028021, 35.988167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780756, 28.261654, 36.039398>,  <26.747776, 28.651041, 36.124783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780756, 28.261654, 36.039398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937417, -0.003044, -0.348195,
		0.338306, 0.228807, -0.912796,
		0.082448, -0.973467, -0.213458,
		26.805490, 27.969614, 35.975361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500565, 28.548256, 36.123459>,  <26.747776, 28.651041, 36.124783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500565, 28.548256, 36.123459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477129, 28.668360, 35.742638>,  <27.463068, 28.740423, 35.514145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477129, 28.668360, 35.742638>,  <27.500565, 28.548256, 36.123459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477129, 28.668360, 35.742638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412149, 0.875896, 0.250877,
		0.909231, -0.377690, -0.175072,
		-0.058592, 0.300261, -0.952056,
		27.459551, 28.758438, 35.457020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193964, 28.657310, 35.772961>,  <27.500565, 28.548256, 36.123459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193964, 28.657310, 35.772961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840687, 28.831097, 35.702297>,  <27.628721, 28.935368, 35.659901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840687, 28.831097, 35.702297>,  <28.193964, 28.657310, 35.772961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840687, 28.831097, 35.702297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284361, 0.795581, 0.534968,
		0.372972, 0.422245, -0.826197,
		-0.883193, 0.434466, -0.176660,
		27.575729, 28.961437, 35.649300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348583, 29.303902, 35.609695>,  <28.193964, 28.657310, 35.772961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348583, 29.303902, 35.609695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968138, 29.318287, 35.732391>,  <27.739870, 29.326918, 35.806011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968138, 29.318287, 35.732391>,  <28.348583, 29.303902, 35.609695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968138, 29.318287, 35.732391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132091, 0.945141, 0.298765,
		-0.279172, 0.324677, -0.903686,
		-0.951112, 0.035962, 0.306744,
		27.682804, 29.329075, 35.824413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953430, 29.817463, 35.271748>,  <28.348583, 29.303902, 35.609695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953430, 29.817463, 35.271748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788193, 29.761536, 35.631702>,  <27.689051, 29.727980, 35.847675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788193, 29.761536, 35.631702>,  <27.953430, 29.817463, 35.271748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788193, 29.761536, 35.631702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158458, 0.962035, 0.222213,
		-0.896796, 0.234390, -0.375257,
		-0.413095, -0.139818, 0.899891,
		27.664265, 29.719591, 35.901669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499630, 30.427147, 35.388660>,  <27.953430, 29.817463, 35.271748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499630, 30.427147, 35.388660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584801, 30.301407, 35.758709>,  <27.635902, 30.225964, 35.980740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584801, 30.301407, 35.758709>,  <27.499630, 30.427147, 35.388660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584801, 30.301407, 35.758709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001343, 0.946738, 0.322003,
		-0.977067, -0.069805, 0.201163,
		0.212926, -0.314348, 0.925120,
		27.648678, 30.207102, 36.036243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203209, 30.957748, 35.693695>,  <27.499630, 30.427147, 35.388660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203209, 30.957748, 35.693695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484802, 30.832390, 35.948627>,  <27.653757, 30.757174, 36.101585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484802, 30.832390, 35.948627>,  <27.203209, 30.957748, 35.693695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484802, 30.832390, 35.948627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401964, 0.915634, 0.006249,
		-0.585521, 0.251785, 0.770565,
		0.703982, -0.313398, 0.637331,
		27.695997, 30.738371, 36.139828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232508, 31.508715, 36.124260>,  <27.203209, 30.957748, 35.693695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232508, 31.508715, 36.124260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571810, 31.329466, 36.237144>,  <27.775391, 31.221916, 36.304874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571810, 31.329466, 36.237144>,  <27.232508, 31.508715, 36.124260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571810, 31.329466, 36.237144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360668, 0.879047, 0.311761,
		-0.387787, -0.162668, 0.907282,
		0.848257, -0.448124, 0.282214,
		27.826286, 31.195028, 36.321808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531830, 32.096363, 36.398281>,  <27.232508, 31.508715, 36.124260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531830, 32.096363, 36.398281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835382, 31.836048, 36.407887>,  <28.017513, 31.679859, 36.413651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835382, 31.836048, 36.407887>,  <27.531830, 32.096363, 36.398281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835382, 31.836048, 36.407887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649500, 0.759034, 0.044910,
		-0.047456, -0.018482, 0.998702,
		0.758879, -0.650788, 0.024017,
		28.063046, 31.640812, 36.415092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954676, 32.422192, 36.718906>,  <27.531830, 32.096363, 36.398281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954676, 32.422192, 36.718906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175962, 32.153011, 36.522503>,  <28.308735, 31.991503, 36.404659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175962, 32.153011, 36.522503>,  <27.954676, 32.422192, 36.718906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175962, 32.153011, 36.522503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725804, 0.678659, -0.112381,
		0.408854, -0.294204, 0.863876,
		0.553215, -0.672953, -0.491007,
		28.341927, 31.951126, 36.375202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528975, 32.038189, 37.141266>,  <27.954676, 32.422192, 36.718906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528975, 32.038189, 37.141266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515581, 32.175495, 36.765808>,  <28.507545, 32.257877, 36.540535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515581, 32.175495, 36.765808>,  <28.528975, 32.038189, 37.141266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515581, 32.175495, 36.765808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607844, 0.752502, 0.253509,
		0.793350, -0.562058, -0.233850,
		-0.033486, 0.343265, -0.938641,
		28.505535, 32.278473, 36.484215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233875, 31.952082, 36.672516>,  <28.528975, 32.038189, 37.141266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233875, 31.952082, 36.672516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999424, 32.265652, 36.590626>,  <28.858753, 32.453793, 36.541492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999424, 32.265652, 36.590626>,  <29.233875, 31.952082, 36.672516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999424, 32.265652, 36.590626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741988, 0.620843, 0.252999,
		0.325435, -0.003615, -0.945557,
		-0.586128, 0.783927, -0.204726,
		28.823586, 32.500832, 36.529209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803780, 32.424850, 36.444931>,  <29.233875, 31.952082, 36.672516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803780, 32.424850, 36.444931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472174, 32.636635, 36.516937>,  <29.273211, 32.763706, 36.560143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472174, 32.636635, 36.516937>,  <29.803780, 32.424850, 36.444931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472174, 32.636635, 36.516937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556904, 0.810944, 0.179520,
		-0.050934, 0.249076, -0.967144,
		-0.829014, 0.529463, 0.180016,
		29.223469, 32.795475, 36.570942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869339, 32.969135, 36.002644>,  <29.803780, 32.424850, 36.444931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869339, 32.969135, 36.002644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643110, 33.031460, 36.326580>,  <29.507372, 33.068855, 36.520943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643110, 33.031460, 36.326580>,  <29.869339, 32.969135, 36.002644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643110, 33.031460, 36.326580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531825, 0.819432, 0.213758,
		-0.630308, 0.551592, -0.546312,
		-0.565573, 0.155809, 0.809846,
		29.473438, 33.078201, 36.569534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431944, 33.667263, 36.021286>,  <29.869339, 32.969135, 36.002644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431944, 33.667263, 36.021286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547297, 33.547123, 36.384960>,  <29.616508, 33.475037, 36.603165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547297, 33.547123, 36.384960>,  <29.431944, 33.667263, 36.021286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547297, 33.547123, 36.384960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535841, 0.837546, 0.106726,
		-0.793543, 0.456403, 0.402473,
		0.288380, -0.300353, 0.909189,
		29.633810, 33.457016, 36.657719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396620, 34.186710, 36.633652>,  <29.431944, 33.667263, 36.021286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396620, 34.186710, 36.633652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666578, 33.911045, 36.739159>,  <29.828554, 33.745647, 36.802464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666578, 33.911045, 36.739159>,  <29.396620, 34.186710, 36.633652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666578, 33.911045, 36.739159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680807, 0.719409, 0.137670,
		-0.284633, 0.086662, 0.954711,
		0.674897, -0.689160, 0.263768,
		29.869047, 33.704296, 36.818291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630043, 34.410854, 37.271576>,  <29.396620, 34.186710, 36.633652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630043, 34.410854, 37.271576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895575, 34.184563, 37.075909>,  <30.054893, 34.048786, 36.958508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895575, 34.184563, 37.075909>,  <29.630043, 34.410854, 37.271576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895575, 34.184563, 37.075909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728787, 0.636193, 0.253237,
		0.167939, -0.524602, 0.834619,
		0.663827, -0.565731, -0.489165,
		30.094723, 34.014843, 36.929157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137852, 34.310974, 37.785122>,  <29.630043, 34.410854, 37.271576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137852, 34.310974, 37.785122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317686, 34.264431, 37.430874>,  <30.425587, 34.236504, 37.218323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317686, 34.264431, 37.430874>,  <30.137852, 34.310974, 37.785122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317686, 34.264431, 37.430874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677750, 0.690260, 0.253367,
		0.581829, -0.714143, 0.389198,
		0.449588, -0.116363, -0.885624,
		30.452562, 34.229523, 37.165188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872080, 33.995926, 37.674244>,  <30.137852, 34.310974, 37.785122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872080, 33.995926, 37.674244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818478, 34.236996, 37.359581>,  <30.786316, 34.381638, 37.170784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818478, 34.236996, 37.359581>,  <30.872080, 33.995926, 37.674244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818478, 34.236996, 37.359581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753076, 0.577914, 0.314470,
		0.644141, -0.550269, -0.531306,
		-0.134006, 0.602677, -0.786653,
		30.778276, 34.417797, 37.123585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486107, 34.007969, 37.261227>,  <30.872080, 33.995926, 37.674244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486107, 34.007969, 37.261227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264812, 34.340900, 37.247559>,  <31.132036, 34.540657, 37.239357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264812, 34.340900, 37.247559>,  <31.486107, 34.007969, 37.261227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264812, 34.340900, 37.247559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786363, 0.535341, 0.308292,
		0.274892, 0.143688, -0.950678,
		-0.553234, 0.832324, -0.034170,
		31.098843, 34.590599, 37.237309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046032, 34.570656, 37.170673>,  <31.486107, 34.007969, 37.261227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046032, 34.570656, 37.170673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701502, 34.763046, 37.236137>,  <31.494783, 34.878479, 37.275414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701502, 34.763046, 37.236137>,  <32.046032, 34.570656, 37.170673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701502, 34.763046, 37.236137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492634, 0.869427, 0.037535,
		-0.124233, 0.112953, -0.985803,
		-0.861324, 0.480977, 0.163656,
		31.443104, 34.907341, 37.285233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906530, 35.151894, 37.685730>,  <32.046032, 34.570656, 37.170673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906530, 35.151894, 37.685730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034645, 35.516102, 37.581135>,  <32.111515, 35.734627, 37.518379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034645, 35.516102, 37.581135>,  <31.906530, 35.151894, 37.685730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034645, 35.516102, 37.581135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520028, -0.399707, -0.754855,
		-0.791826, 0.105789, -0.601515,
		0.320285, 0.910518, -0.261485,
		32.130730, 35.789257, 37.502689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911633, 35.223644, 36.922733>,  <31.906530, 35.151894, 37.685730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911633, 35.223644, 36.922733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180439, 35.484783, 37.062550>,  <32.341724, 35.641468, 37.146439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180439, 35.484783, 37.062550>,  <31.911633, 35.223644, 36.922733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180439, 35.484783, 37.062550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672333, -0.340016, -0.657539,
		-0.310423, 0.676888, -0.667428,
		0.672016, 0.652850, 0.349545,
		32.382042, 35.680637, 37.167412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148697, 35.589672, 36.319912>,  <31.911633, 35.223644, 36.922733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148697, 35.589672, 36.319912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425537, 35.627079, 36.606201>,  <32.591640, 35.649525, 36.777973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425537, 35.627079, 36.606201>,  <32.148697, 35.589672, 36.319912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425537, 35.627079, 36.606201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694924, -0.354410, -0.625679,
		0.195144, 0.930402, -0.310276,
		0.692098, 0.093521, 0.715719,
		32.633167, 35.655136, 36.820915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668785, 36.206680, 36.309937>,  <32.148697, 35.589672, 36.319912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668785, 36.206680, 36.309937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816818, 35.868195, 36.463280>,  <32.905640, 35.665104, 36.555286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816818, 35.868195, 36.463280>,  <32.668785, 36.206680, 36.309937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816818, 35.868195, 36.463280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657182, -0.053199, -0.751852,
		0.656621, 0.530184, 0.536428,
		0.370083, -0.846212, 0.383358,
		32.927841, 35.614330, 36.578289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249653, 36.261856, 35.807549>,  <32.668785, 36.206680, 36.309937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249653, 36.261856, 35.807549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277695, 35.888836, 35.949219>,  <33.294521, 35.665024, 36.034222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277695, 35.888836, 35.949219>,  <33.249653, 36.261856, 35.807549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277695, 35.888836, 35.949219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706406, -0.204278, -0.677688,
		0.704326, 0.297706, 0.644434,
		0.070108, -0.932546, 0.354180,
		33.298729, 35.609074, 36.055473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966496, 36.004253, 35.709484>,  <33.249653, 36.261856, 35.807549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966496, 36.004253, 35.709484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743591, 35.677639, 35.769791>,  <33.609848, 35.481670, 35.805973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743591, 35.677639, 35.769791>,  <33.966496, 36.004253, 35.709484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743591, 35.677639, 35.769791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486391, -0.468164, -0.737730,
		0.672963, -0.337781, 0.658046,
		-0.557265, -0.816533, 0.150763,
		33.576412, 35.432678, 35.815018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461086, 35.531055, 35.517284>,  <33.966496, 36.004253, 35.709484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461086, 35.531055, 35.517284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091400, 35.379932, 35.495041>,  <33.869591, 35.289257, 35.481693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091400, 35.379932, 35.495041>,  <34.461086, 35.531055, 35.517284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091400, 35.379932, 35.495041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266106, -0.532712, -0.803371,
		0.273898, -0.757283, 0.592876,
		-0.924212, -0.377809, -0.055609,
		33.814137, 35.266590, 35.478359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602947, 34.869774, 35.481144>,  <34.461086, 35.531055, 35.517284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602947, 34.869774, 35.481144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259281, 34.990894, 35.316151>,  <34.053082, 35.063568, 35.217155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259281, 34.990894, 35.316151>,  <34.602947, 34.869774, 35.481144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259281, 34.990894, 35.316151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231909, -0.488136, -0.841393,
		-0.456120, -0.818557, 0.349170,
		-0.859170, 0.302800, -0.412479,
		34.001530, 35.081734, 35.192406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209133, 34.204258, 35.126640>,  <34.602947, 34.869774, 35.481144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209133, 34.204258, 35.126640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075794, 34.552048, 34.980824>,  <33.995792, 34.760723, 34.893333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075794, 34.552048, 34.980824>,  <34.209133, 34.204258, 35.126640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075794, 34.552048, 34.980824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192977, -0.315548, -0.929080,
		-0.922843, -0.380056, -0.062601,
		-0.333348, 0.869475, -0.364543,
		33.975788, 34.812889, 34.871460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805256, 33.963959, 34.546532>,  <34.209133, 34.204258, 35.126640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805256, 33.963959, 34.546532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881725, 34.351471, 34.483391>,  <33.927605, 34.583977, 34.445507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881725, 34.351471, 34.483391>,  <33.805256, 33.963959, 34.546532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881725, 34.351471, 34.483391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180889, -0.192837, -0.964413,
		-0.964745, 0.155813, -0.212106,
		0.191170, 0.968781, -0.157853,
		33.939075, 34.642105, 34.436035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374985, 34.077980, 33.988766>,  <33.805256, 33.963959, 34.546532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374985, 34.077980, 33.988766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636425, 34.380630, 33.996017>,  <33.793289, 34.562222, 34.000370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636425, 34.380630, 33.996017>,  <33.374985, 34.077980, 33.988766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636425, 34.380630, 33.996017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046056, -0.015854, -0.998813,
		-0.755436, 0.653661, -0.045209,
		0.653602, 0.756622, 0.018129,
		33.832504, 34.607616, 34.001457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114250, 34.563492, 33.552090>,  <33.374985, 34.077980, 33.988766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114250, 34.563492, 33.552090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501308, 34.657658, 33.588390>,  <33.733543, 34.714157, 33.610172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501308, 34.657658, 33.588390>,  <33.114250, 34.563492, 33.552090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501308, 34.657658, 33.588390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077887, 0.063407, -0.994944,
		-0.239982, 0.969824, 0.043019,
		0.967648, 0.235418, 0.090754,
		33.791603, 34.728283, 33.615616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221931, 35.199066, 33.193439>,  <33.114250, 34.563492, 33.552090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221931, 35.199066, 33.193439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589714, 35.042000, 33.185383>,  <33.810383, 34.947758, 33.180550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589714, 35.042000, 33.185383>,  <33.221931, 35.199066, 33.193439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589714, 35.042000, 33.185383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000920, 0.053372, -0.998574,
		0.393184, 0.918130, 0.049434,
		0.919459, -0.392669, -0.020140,
		33.865551, 34.924198, 33.179340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464233, 35.447323, 32.639191>,  <33.221931, 35.199066, 33.193439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464233, 35.447323, 32.639191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726933, 35.155220, 32.714455>,  <33.884552, 34.979958, 32.759613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726933, 35.155220, 32.714455>,  <33.464233, 35.447323, 32.639191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726933, 35.155220, 32.714455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237762, -0.036268, -0.970646,
		0.715648, 0.682206, 0.149809,
		0.656748, -0.730260, 0.188158,
		33.923958, 34.936142, 32.770901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089664, 35.684765, 32.395920>,  <33.464233, 35.447323, 32.639191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089664, 35.684765, 32.395920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109787, 35.285271, 32.395313>,  <34.121861, 35.045574, 32.394951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109787, 35.285271, 32.395313>,  <34.089664, 35.684765, 32.395920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109787, 35.285271, 32.395313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194958, 0.011305, -0.980746,
		0.979521, 0.049042, 0.195280,
		0.050306, -0.998733, -0.001512,
		34.124878, 34.985649, 32.394859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730946, 35.539661, 32.077042>,  <34.089664, 35.684765, 32.395920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730946, 35.539661, 32.077042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494991, 35.216835, 32.066589>,  <34.353420, 35.023140, 32.060318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494991, 35.216835, 32.066589>,  <34.730946, 35.539661, 32.077042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494991, 35.216835, 32.066589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078141, -0.024839, -0.996633,
		0.803700, -0.589937, 0.077717,
		-0.589881, -0.807067, -0.026135,
		34.318027, 34.974716, 32.058750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149071, 35.018852, 31.576197>,  <34.730946, 35.539661, 32.077042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149071, 35.018852, 31.576197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761303, 34.922897, 31.596899>,  <34.528641, 34.865322, 31.609322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761303, 34.922897, 31.596899>,  <35.149071, 35.018852, 31.576197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761303, 34.922897, 31.596899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033230, -0.080652, -0.996188,
		0.243150, -0.967444, 0.070214,
		-0.969419, -0.239890, 0.051758,
		34.470478, 34.850929, 31.612427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023773, 34.485786, 31.067511>,  <35.149071, 35.018852, 31.576197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023773, 34.485786, 31.067511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653931, 34.618637, 31.142128>,  <34.432026, 34.698349, 31.186897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653931, 34.618637, 31.142128>,  <35.023773, 34.485786, 31.067511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653931, 34.618637, 31.142128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193334, 0.012792, -0.981050,
		-0.328220, -0.943147, 0.052384,
		-0.924604, 0.332128, 0.186541,
		34.376549, 34.718277, 31.198090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539188, 34.028191, 30.713274>,  <35.023773, 34.485786, 31.067511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539188, 34.028191, 30.713274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361656, 34.382839, 30.765299>,  <34.255135, 34.595627, 30.796515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361656, 34.382839, 30.765299>,  <34.539188, 34.028191, 30.713274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361656, 34.382839, 30.765299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261685, 0.010576, -0.965095,
		-0.857048, -0.462378, 0.227321,
		-0.443835, 0.886620, 0.130062,
		34.228504, 34.648827, 30.804317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890404, 33.864567, 30.352646>,  <34.539188, 34.028191, 30.713274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890404, 33.864567, 30.352646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876259, 34.261726, 30.398073>,  <33.867771, 34.500023, 30.425329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876259, 34.261726, 30.398073>,  <33.890404, 33.864567, 30.352646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876259, 34.261726, 30.398073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416889, 0.088625, -0.904627,
		-0.908269, -0.079337, 0.410795,
		-0.035364, 0.992900, 0.113570,
		33.865650, 34.559597, 30.432144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170292, 34.164021, 30.416382>,  <33.890404, 33.864567, 30.352646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170292, 34.164021, 30.416382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409763, 34.446026, 30.264307>,  <33.553448, 34.615227, 30.173063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409763, 34.446026, 30.264307>,  <33.170292, 34.164021, 30.416382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409763, 34.446026, 30.264307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530983, -0.006050, -0.847361,
		-0.599699, 0.709170, 0.370727,
		0.598680, 0.705011, -0.380186,
		33.589367, 34.657528, 30.150251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763683, 34.621799, 30.182652>,  <33.170292, 34.164021, 30.416382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763683, 34.621799, 30.182652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098644, 34.723488, 29.989103>,  <33.299622, 34.784500, 29.872974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098644, 34.723488, 29.989103>,  <32.763683, 34.621799, 30.182652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098644, 34.723488, 29.989103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532483, 0.179633, -0.827160,
		-0.123361, 0.950318, 0.285792,
		0.837403, 0.254219, -0.483869,
		33.349865, 34.799755, 29.843943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646633, 35.254829, 29.900494>,  <32.763683, 34.621799, 30.182652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646633, 35.254829, 29.900494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958992, 35.113911, 29.694160>,  <33.146408, 35.029358, 29.570360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958992, 35.113911, 29.694160>,  <32.646633, 35.254829, 29.900494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958992, 35.113911, 29.694160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404612, 0.343866, -0.847376,
		0.475908, 0.870426, 0.125979,
		0.780897, -0.352300, -0.515833,
		33.193260, 35.008221, 29.539410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958164, 35.771095, 29.411581>,  <32.646633, 35.254829, 29.900494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958164, 35.771095, 29.411581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114849, 35.431709, 29.269217>,  <33.208862, 35.228077, 29.183798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114849, 35.431709, 29.269217>,  <32.958164, 35.771095, 29.411581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114849, 35.431709, 29.269217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286535, 0.255095, -0.923485,
		0.874333, 0.463723, -0.143189,
		0.391715, -0.848462, -0.355911,
		33.232365, 35.177170, 29.162443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403080, 35.936909, 28.874228>,  <32.958164, 35.771095, 29.411581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403080, 35.936909, 28.874228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304600, 35.555195, 28.806433>,  <33.245510, 35.326168, 28.765755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304600, 35.555195, 28.806433>,  <33.403080, 35.936909, 28.874228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304600, 35.555195, 28.806433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221971, 0.225741, -0.948562,
		0.943458, -0.195918, -0.267401,
		-0.246203, -0.954284, -0.169489,
		33.230740, 35.268909, 28.755587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549664, 35.805973, 28.114986>,  <33.403080, 35.936909, 28.874228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549664, 35.805973, 28.114986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321239, 35.489487, 28.202499>,  <33.184185, 35.299595, 28.255007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321239, 35.489487, 28.202499>,  <33.549664, 35.805973, 28.114986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321239, 35.489487, 28.202499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372990, 0.012671, -0.927749,
		0.731279, -0.611404, -0.302352,
		-0.571061, -0.791217, 0.218781,
		33.149921, 35.252121, 28.268133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639900, 35.315601, 27.625572>,  <33.549664, 35.805973, 28.114986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639900, 35.315601, 27.625572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294079, 35.172497, 27.766739>,  <33.086586, 35.086636, 27.851439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294079, 35.172497, 27.766739>,  <33.639900, 35.315601, 27.625572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294079, 35.172497, 27.766739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303628, -0.187726, -0.934114,
		0.400438, -0.914751, 0.053674,
		-0.864558, -0.357757, 0.352916,
		33.034710, 35.065170, 27.872614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490990, 34.574810, 27.278791>,  <33.639900, 35.315601, 27.625572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490990, 34.574810, 27.278791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143253, 34.729053, 27.402437>,  <32.934612, 34.821598, 27.476625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143253, 34.729053, 27.402437>,  <33.490990, 34.574810, 27.278791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143253, 34.729053, 27.402437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347135, -0.031239, -0.937295,
		-0.351769, -0.922135, 0.161014,
		-0.869342, 0.385604, 0.309116,
		32.882450, 34.844734, 27.495173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888809, 34.197887, 26.849661>,  <33.490990, 34.574810, 27.278791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888809, 34.197887, 26.849661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687088, 34.504765, 27.008202>,  <32.566055, 34.688889, 27.103327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687088, 34.504765, 27.008202>,  <32.888809, 34.197887, 26.849661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687088, 34.504765, 27.008202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568057, 0.050958, -0.821410,
		-0.650375, -0.639393, 0.410109,
		-0.504305, 0.767190, 0.396353,
		32.535797, 34.734921, 27.127108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122669, 34.046822, 26.761971>,  <32.888809, 34.197887, 26.849661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122669, 34.046822, 26.761971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174953, 34.441639, 26.799202>,  <32.206322, 34.678528, 26.821541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174953, 34.441639, 26.799202>,  <32.122669, 34.046822, 26.761971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174953, 34.441639, 26.799202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545934, 0.150023, -0.824287,
		-0.827570, 0.056925, 0.558469,
		0.130706, 0.987042, 0.093077,
		32.214165, 34.737751, 26.827126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439980, 34.407997, 26.604681>,  <32.122669, 34.046822, 26.761971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439980, 34.407997, 26.604681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704069, 34.704441, 26.555925>,  <31.862522, 34.882309, 26.526672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704069, 34.704441, 26.555925>,  <31.439980, 34.407997, 26.604681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704069, 34.704441, 26.555925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533399, 0.348412, -0.770776,
		-0.528765, 0.573899, 0.625338,
		0.660223, 0.741114, -0.121889,
		31.902136, 34.926777, 26.519360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045059, 35.155830, 26.703148>,  <31.439980, 34.407997, 26.604681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045059, 35.155830, 26.703148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385862, 35.195110, 26.497454>,  <31.590343, 35.218678, 26.374037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385862, 35.195110, 26.497454>,  <31.045059, 35.155830, 26.703148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385862, 35.195110, 26.497454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485477, 0.515834, -0.705852,
		0.195943, 0.851041, 0.487170,
		0.852008, 0.098204, -0.514235,
		31.641464, 35.224571, 26.343184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145445, 35.815483, 26.368420>,  <31.045059, 35.155830, 26.703148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145445, 35.815483, 26.368420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412577, 35.629219, 26.136156>,  <31.572855, 35.517460, 25.996798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412577, 35.629219, 26.136156>,  <31.145445, 35.815483, 26.368420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412577, 35.629219, 26.136156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180435, 0.655571, -0.733260,
		0.722115, 0.594462, 0.353787,
		0.667828, -0.465662, -0.580659,
		31.612925, 35.489521, 25.961958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026749, 36.243370, 25.934464>,  <31.145445, 35.815483, 26.368420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026749, 36.243370, 25.934464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257042, 35.966339, 25.760628>,  <31.395218, 35.800121, 25.656326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257042, 35.966339, 25.760628>,  <31.026749, 36.243370, 25.934464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257042, 35.966339, 25.760628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010006, 0.525511, -0.850728,
		0.817577, 0.494140, 0.295624,
		0.575732, -0.692578, -0.434590,
		31.429762, 35.758564, 25.630251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560293, 36.624641, 25.586065>,  <31.026749, 36.243370, 25.934464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560293, 36.624641, 25.586065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562542, 36.268398, 25.404171>,  <31.563890, 36.054653, 25.295034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562542, 36.268398, 25.404171>,  <31.560293, 36.624641, 25.586065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562542, 36.268398, 25.404171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166337, 0.447577, -0.878639,
		0.986053, 0.080579, -0.145625,
		0.005622, -0.890608, -0.454738,
		31.564228, 36.001217, 25.267750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933081, 36.681683, 24.974560>,  <31.560293, 36.624641, 25.586065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933081, 36.681683, 24.974560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690504, 36.366745, 24.930168>,  <31.544958, 36.177784, 24.903534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690504, 36.366745, 24.930168>,  <31.933081, 36.681683, 24.974560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690504, 36.366745, 24.930168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338238, 0.381762, -0.860147,
		0.719599, -0.484093, -0.497827,
		-0.606442, -0.787345, -0.110977,
		31.508572, 36.130543, 24.896875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951435, 36.406902, 24.261282>,  <31.933081, 36.681683, 24.974560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951435, 36.406902, 24.261282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613243, 36.236832, 24.390514>,  <31.410328, 36.134789, 24.468054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613243, 36.236832, 24.390514>,  <31.951435, 36.406902, 24.261282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613243, 36.236832, 24.390514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502797, 0.430039, -0.749840,
		0.179879, -0.796422, -0.577370,
		-0.845481, -0.425180, 0.323084,
		31.359598, 36.109276, 24.487440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591700, 36.337532, 23.695898>,  <31.951435, 36.406902, 24.261282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591700, 36.337532, 23.695898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308928, 36.336514, 23.978809>,  <31.139265, 36.335903, 24.148556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308928, 36.336514, 23.978809>,  <31.591700, 36.337532, 23.695898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308928, 36.336514, 23.978809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658489, 0.367358, -0.656841,
		-0.258155, -0.930076, -0.261371,
		-0.706929, -0.002544, 0.707280,
		31.096849, 36.335751, 24.190994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181311, 35.968712, 23.405916>,  <31.591700, 36.337532, 23.695898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181311, 35.968712, 23.405916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982233, 36.151497, 23.700804>,  <30.862787, 36.261166, 23.877737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982233, 36.151497, 23.700804>,  <31.181311, 35.968712, 23.405916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982233, 36.151497, 23.700804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697750, 0.293952, -0.653252,
		-0.515216, -0.839512, 0.172545,
		-0.497693, 0.456959, 0.737218,
		30.832926, 36.288586, 23.921968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489742, 35.832600, 23.274265>,  <31.181311, 35.968712, 23.405916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489742, 35.832600, 23.274265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502764, 36.177704, 23.476093>,  <30.510576, 36.384766, 23.597191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502764, 36.177704, 23.476093>,  <30.489742, 35.832600, 23.274265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502764, 36.177704, 23.476093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654879, 0.399782, -0.641333,
		-0.755033, -0.309555, 0.578015,
		0.032552, 0.862757, 0.504570,
		30.512529, 36.436531, 23.627464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749353, 36.182293, 23.260820>,  <30.489742, 35.832600, 23.274265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749353, 36.182293, 23.260820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980972, 36.493584, 23.358038>,  <30.119944, 36.680359, 23.416368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980972, 36.493584, 23.358038>,  <29.749353, 36.182293, 23.260820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980972, 36.493584, 23.358038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534514, 0.587470, -0.607597,
		-0.615628, 0.221917, 0.756145,
		0.579049, 0.778224, 0.243046,
		30.154686, 36.727051, 23.430952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270424, 36.687660, 23.490385>,  <29.749353, 36.182293, 23.260820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270424, 36.687660, 23.490385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610991, 36.882298, 23.412085>,  <29.815331, 36.999081, 23.365105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610991, 36.882298, 23.412085>,  <29.270424, 36.687660, 23.490385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610991, 36.882298, 23.412085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502578, 0.650147, -0.569845,
		-0.150016, 0.583556, 0.798097,
		0.851417, 0.486592, -0.195750,
		29.866415, 37.028275, 23.353359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160757, 37.354294, 23.766594>,  <29.270424, 36.687660, 23.490385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160757, 37.354294, 23.766594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454960, 37.372585, 23.496204>,  <29.631481, 37.383560, 23.333971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454960, 37.372585, 23.496204>,  <29.160757, 37.354294, 23.766594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454960, 37.372585, 23.496204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465235, 0.759393, -0.454838,
		0.492532, 0.649023, 0.579811,
		0.735505, 0.045727, -0.675974,
		29.675611, 37.386303, 23.293411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287258, 38.078125, 23.707270>,  <29.160757, 37.354294, 23.766594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287258, 38.078125, 23.707270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392601, 37.888126, 23.371408>,  <29.455807, 37.774128, 23.169891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392601, 37.888126, 23.371408>,  <29.287258, 38.078125, 23.707270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392601, 37.888126, 23.371408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578687, 0.618609, -0.531455,
		0.771858, 0.625860, -0.111959,
		0.263357, -0.474997, -0.839655,
		29.471607, 37.745628, 23.119513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083927, 38.516361, 23.220163>,  <29.287258, 38.078125, 23.707270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083927, 38.516361, 23.220163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175671, 38.216694, 22.971601>,  <29.230717, 38.036896, 22.822464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175671, 38.216694, 22.971601>,  <29.083927, 38.516361, 23.220163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175671, 38.216694, 22.971601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462720, 0.477745, -0.746760,
		0.856320, 0.458814, -0.237078,
		0.229361, -0.749166, -0.621405,
		29.244478, 37.991943, 22.785181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343840, 38.832188, 22.586514>,  <29.083927, 38.516361, 23.220163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343840, 38.832188, 22.586514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224709, 38.460735, 22.498018>,  <29.153229, 38.237865, 22.444921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224709, 38.460735, 22.498018>,  <29.343840, 38.832188, 22.586514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224709, 38.460735, 22.498018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367935, 0.325514, -0.871013,
		0.880864, -0.178013, -0.438623,
		-0.297829, -0.928629, -0.221237,
		29.135359, 38.182148, 22.431646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561623, 38.751099, 21.834261>,  <29.343840, 38.832188, 22.586514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561623, 38.751099, 21.834261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290609, 38.465553, 21.905092>,  <29.128002, 38.294228, 21.947592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290609, 38.465553, 21.905092>,  <29.561623, 38.751099, 21.834261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290609, 38.465553, 21.905092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457012, 0.219970, -0.861831,
		0.576274, -0.664845, -0.475279,
		-0.677531, -0.713859, 0.177079,
		29.087351, 38.251396, 21.958216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416773, 38.530537, 21.199947>,  <29.561623, 38.751099, 21.834261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416773, 38.530537, 21.199947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098234, 38.415878, 21.412989>,  <28.907110, 38.347084, 21.540813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098234, 38.415878, 21.412989>,  <29.416773, 38.530537, 21.199947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098234, 38.415878, 21.412989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590245, 0.176013, -0.787801,
		0.132077, -0.941728, -0.309360,
		-0.796346, -0.286648, 0.532603,
		28.859331, 38.329884, 21.572769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994844, 38.191612, 20.772850>,  <29.416773, 38.530537, 21.199947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994844, 38.191612, 20.772850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747391, 38.311005, 21.063559>,  <28.598919, 38.382641, 21.237984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747391, 38.311005, 21.063559>,  <28.994844, 38.191612, 20.772850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747391, 38.311005, 21.063559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672669, 0.276751, -0.686240,
		-0.405968, -0.913409, 0.029574,
		-0.618633, 0.298485, 0.726773,
		28.561800, 38.400551, 21.281591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362080, 37.849361, 20.640169>,  <28.994844, 38.191612, 20.772850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362080, 37.849361, 20.640169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282366, 38.168613, 20.867598>,  <28.234537, 38.360165, 21.004055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282366, 38.168613, 20.867598>,  <28.362080, 37.849361, 20.640169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282366, 38.168613, 20.867598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750491, 0.248779, -0.612268,
		-0.630118, -0.548724, 0.549411,
		-0.199285, 0.798130, 0.568573,
		28.222580, 38.408051, 21.038170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604061, 37.884628, 20.637009>,  <28.362080, 37.849361, 20.640169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604061, 37.884628, 20.637009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735920, 38.241703, 20.759933>,  <27.815035, 38.455948, 20.833689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735920, 38.241703, 20.759933>,  <27.604061, 37.884628, 20.637009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735920, 38.241703, 20.759933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827775, 0.429820, -0.360616,
		-0.454007, -0.135510, 0.880633,
		0.329647, 0.892688, 0.307313,
		27.834814, 38.509510, 20.852127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085569, 38.158928, 21.115660>,  <27.604061, 37.884628, 20.637009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085569, 38.158928, 21.115660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268661, 38.480251, 20.963247>,  <27.378517, 38.673046, 20.871799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268661, 38.480251, 20.963247>,  <27.085569, 38.158928, 21.115660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268661, 38.480251, 20.963247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883560, 0.458723, -0.094314,
		0.099026, 0.379834, 0.919739,
		0.457729, 0.803305, -0.381032,
		27.405981, 38.721241, 20.848938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915388, 38.898914, 21.473789>,  <27.085569, 38.158928, 21.115660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915388, 38.898914, 21.473789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000885, 38.889095, 21.083157>,  <27.052183, 38.883205, 20.848778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000885, 38.889095, 21.083157>,  <26.915388, 38.898914, 21.473789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000885, 38.889095, 21.083157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864539, 0.460706, -0.200801,
		0.454846, 0.887213, 0.077251,
		0.213743, -0.024548, -0.976581,
		27.065008, 38.881733, 20.790182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437750, 39.208672, 21.962566>,  <26.915388, 38.898914, 21.473789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437750, 39.208672, 21.962566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500713, 39.545631, 21.756430>,  <26.538492, 39.747807, 21.632748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500713, 39.545631, 21.756430>,  <26.437750, 39.208672, 21.962566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500713, 39.545631, 21.756430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064848, -0.529540, -0.845803,
		-0.985402, 0.099720, -0.137983,
		0.157411, 0.842403, -0.515343,
		26.547937, 39.798351, 21.601828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760281, 39.029579, 22.211559>,  <26.437750, 39.208672, 21.962566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760281, 39.029579, 22.211559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874893, 39.385487, 22.069454>,  <25.943661, 39.599030, 21.984190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874893, 39.385487, 22.069454>,  <25.760281, 39.029579, 22.211559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874893, 39.385487, 22.069454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693887, -0.062961, -0.717326,
		-0.660622, 0.452050, 0.599358,
		0.286531, 0.889768, -0.355265,
		25.960852, 39.652416, 21.962875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120249, 39.424080, 21.925312>,  <25.760281, 39.029579, 22.211559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120249, 39.424080, 21.925312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460539, 39.532421, 21.745132>,  <25.664713, 39.597427, 21.637024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460539, 39.532421, 21.745132>,  <25.120249, 39.424080, 21.925312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460539, 39.532421, 21.745132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456779, -0.043006, -0.888540,
		-0.260039, 0.961658, 0.087135,
		0.850725, 0.270856, -0.450449,
		25.715755, 39.613678, 21.609999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187685, 40.118732, 21.501665>,  <25.120249, 39.424080, 21.925312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187685, 40.118732, 21.501665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412756, 39.815975, 21.368696>,  <25.547798, 39.634319, 21.288916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412756, 39.815975, 21.368696>,  <25.187685, 40.118732, 21.501665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412756, 39.815975, 21.368696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563118, -0.056536, -0.824440,
		0.605222, 0.651085, -0.458033,
		0.562676, -0.756896, -0.332422,
		25.581558, 39.588905, 21.268970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594137, 40.251694, 20.848156>,  <25.187685, 40.118732, 21.501665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594137, 40.251694, 20.848156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535603, 39.857849, 20.886362>,  <25.500481, 39.621544, 20.909286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535603, 39.857849, 20.886362>,  <25.594137, 40.251694, 20.848156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535603, 39.857849, 20.886362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480746, -0.013601, -0.876754,
		0.864563, -0.174222, -0.471358,
		-0.146339, -0.984612, 0.095516,
		25.491701, 39.562466, 20.915016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359533, 40.372429, 21.071381>,  <25.594137, 40.251694, 20.848156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359533, 40.372429, 21.071381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073170, 40.202465, 21.292986>,  <25.901352, 40.100487, 21.425949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073170, 40.202465, 21.292986>,  <26.359533, 40.372429, 21.071381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073170, 40.202465, 21.292986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602853, 0.024077, 0.797489,
		-0.352196, 0.904918, 0.238919,
		-0.715909, -0.424905, 0.554012,
		25.858397, 40.074993, 21.459190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249166, 40.834782, 21.621635>,  <26.359533, 40.372429, 21.071381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249166, 40.834782, 21.621635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114456, 40.475986, 21.736177>,  <26.033630, 40.260712, 21.804903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114456, 40.475986, 21.736177>,  <26.249166, 40.834782, 21.621635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114456, 40.475986, 21.736177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407785, 0.135175, 0.903017,
		-0.848701, 0.420885, 0.320253,
		-0.336776, -0.896986, 0.286354,
		26.013424, 40.206890, 21.822084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886343, 41.029385, 22.243670>,  <26.249166, 40.834782, 21.621635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886343, 41.029385, 22.243670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073799, 40.679024, 22.197754>,  <26.186272, 40.468807, 22.170204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073799, 40.679024, 22.197754>,  <25.886343, 41.029385, 22.243670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073799, 40.679024, 22.197754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506150, 0.159739, 0.847523,
		-0.724010, -0.455282, 0.518197,
		0.468638, -0.875900, -0.114789,
		26.214390, 40.416252, 22.163317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743574, 40.635773, 22.742210>,  <25.886343, 41.029385, 22.243670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743574, 40.635773, 22.742210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100069, 40.507278, 22.614143>,  <26.313965, 40.430183, 22.537304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100069, 40.507278, 22.614143>,  <25.743574, 40.635773, 22.742210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100069, 40.507278, 22.614143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358416, 0.066278, 0.931206,
		-0.277914, -0.944678, 0.174205,
		0.891236, -0.321234, -0.320168,
		26.367439, 40.410908, 22.518093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917072, 40.057816, 23.205107>,  <25.743574, 40.635773, 22.742210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917072, 40.057816, 23.205107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273455, 40.137459, 23.041864>,  <26.487284, 40.185246, 22.943918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273455, 40.137459, 23.041864>,  <25.917072, 40.057816, 23.205107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273455, 40.137459, 23.041864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367898, 0.210295, 0.905774,
		0.266171, -0.957148, 0.114112,
		0.890957, 0.199109, -0.408107,
		26.540743, 40.197189, 22.919432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428001, 39.566795, 23.455408>,  <25.917072, 40.057816, 23.205107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428001, 39.566795, 23.455408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603201, 39.907082, 23.339174>,  <26.708321, 40.111252, 23.269434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603201, 39.907082, 23.339174>,  <26.428001, 39.566795, 23.455408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603201, 39.907082, 23.339174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415804, 0.094874, 0.904492,
		0.797034, -0.516995, -0.312176,
		0.438000, 0.850715, -0.290586,
		26.734602, 40.162296, 23.251999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111265, 39.495747, 23.690346>,  <26.428001, 39.566795, 23.455408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111265, 39.495747, 23.690346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081564, 39.890072, 23.630140>,  <27.063744, 40.126667, 23.594017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081564, 39.890072, 23.630140>,  <27.111265, 39.495747, 23.690346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081564, 39.890072, 23.630140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605421, 0.164497, 0.778721,
		0.792434, -0.033300, -0.609048,
		-0.074255, 0.985815, -0.150513,
		27.059288, 40.185818, 23.584986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763599, 39.699532, 23.686689>,  <27.111265, 39.495747, 23.690346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763599, 39.699532, 23.686689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538069, 40.015976, 23.781553>,  <27.402750, 40.205841, 23.838472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538069, 40.015976, 23.781553>,  <27.763599, 39.699532, 23.686689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538069, 40.015976, 23.781553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523109, 0.119867, 0.843794,
		0.639107, 0.599813, -0.481421,
		-0.563825, 0.791111, 0.237160,
		27.368921, 40.253311, 23.852701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271807, 40.165089, 24.037706>,  <27.763599, 39.699532, 23.686689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271807, 40.165089, 24.037706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922241, 40.332756, 24.136152>,  <27.712502, 40.433357, 24.195221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922241, 40.332756, 24.136152>,  <28.271807, 40.165089, 24.037706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922241, 40.332756, 24.136152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333583, 0.148903, 0.930887,
		0.353553, 0.895613, -0.269957,
		-0.873912, 0.419171, 0.246116,
		27.660067, 40.458508, 24.209988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423628, 40.830189, 24.400698>,  <28.271807, 40.165089, 24.037706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423628, 40.830189, 24.400698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047720, 40.746048, 24.508461>,  <27.822174, 40.695564, 24.573120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047720, 40.746048, 24.508461>,  <28.423628, 40.830189, 24.400698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047720, 40.746048, 24.508461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206288, 0.279410, 0.937750,
		-0.272536, 0.936846, -0.219188,
		-0.939771, -0.210355, 0.269409,
		27.765789, 40.682941, 24.589283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149000, 41.390938, 24.785646>,  <28.423628, 40.830189, 24.400698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149000, 41.390938, 24.785646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935793, 41.069965, 24.892973>,  <27.807869, 40.877380, 24.957369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935793, 41.069965, 24.892973>,  <28.149000, 41.390938, 24.785646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935793, 41.069965, 24.892973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264235, 0.143391, 0.953739,
		-0.803787, 0.579257, 0.135601,
		-0.533017, -0.802434, 0.268316,
		27.775888, 40.829235, 24.973469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855539, 41.627640, 25.382641>,  <28.149000, 41.390938, 24.785646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855539, 41.627640, 25.382641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795612, 41.232449, 25.397875>,  <27.759655, 40.995335, 25.407015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795612, 41.232449, 25.397875>,  <27.855539, 41.627640, 25.382641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795612, 41.232449, 25.397875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073659, 0.027258, 0.996911,
		-0.985966, 0.152162, 0.068690,
		-0.149820, -0.987980, 0.038084,
		27.750666, 40.936054, 25.409300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435955, 41.508530, 25.922577>,  <27.855539, 41.627640, 25.382641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435955, 41.508530, 25.922577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582253, 41.138115, 25.885288>,  <27.670031, 40.915867, 25.862915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582253, 41.138115, 25.885288>,  <27.435955, 41.508530, 25.922577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582253, 41.138115, 25.885288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091114, -0.135303, 0.986606,
		-0.926244, -0.352353, -0.133861,
		0.365746, -0.926035, -0.093220,
		27.691977, 40.860306, 25.857323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858904, 41.019268, 26.299383>,  <27.435955, 41.508530, 25.922577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858904, 41.019268, 26.299383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225712, 40.862572, 26.269415>,  <27.445797, 40.768555, 26.251434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225712, 40.862572, 26.269415>,  <26.858904, 41.019268, 26.299383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225712, 40.862572, 26.269415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014090, -0.155912, 0.987670,
		-0.398589, -0.906770, -0.137455,
		0.917021, -0.391738, -0.074921,
		27.500818, 40.745049, 26.246939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867283, 40.423927, 26.728804>,  <26.858904, 41.019268, 26.299383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867283, 40.423927, 26.728804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255033, 40.496422, 26.662516>,  <27.487684, 40.539917, 26.622744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255033, 40.496422, 26.662516>,  <26.867283, 40.423927, 26.728804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255033, 40.496422, 26.662516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221402, -0.352980, 0.909058,
		0.106260, -0.917910, -0.382296,
		0.969376, 0.181238, -0.165719,
		27.545847, 40.550793, 26.612801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273176, 39.916252, 27.096485>,  <26.867283, 40.423927, 26.728804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273176, 39.916252, 27.096485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544285, 40.200848, 27.022287>,  <27.706951, 40.371605, 26.977768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544285, 40.200848, 27.022287>,  <27.273176, 39.916252, 27.096485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544285, 40.200848, 27.022287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369585, -0.111571, 0.922474,
		0.635634, -0.693784, -0.338576,
		0.677773, 0.711488, -0.185494,
		27.747618, 40.414295, 26.966639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925159, 39.700390, 27.255568>,  <27.273176, 39.916252, 27.096485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925159, 39.700390, 27.255568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954678, 40.095528, 27.310282>,  <27.972389, 40.332611, 27.343109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954678, 40.095528, 27.310282>,  <27.925159, 39.700390, 27.255568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954678, 40.095528, 27.310282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465140, -0.155419, 0.871487,
		0.882156, -0.000688, -0.470957,
		0.073796, 0.987849, 0.136783,
		27.976816, 40.391884, 27.351316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546707, 39.797688, 27.329201>,  <27.925159, 39.700390, 27.255568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546707, 39.797688, 27.329201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376652, 40.123260, 27.487581>,  <28.274618, 40.318604, 27.582609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376652, 40.123260, 27.487581>,  <28.546707, 39.797688, 27.329201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376652, 40.123260, 27.487581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340031, -0.261789, 0.903242,
		0.838830, 0.518638, -0.165464,
		-0.425139, 0.813930, 0.395949,
		28.249109, 40.367439, 27.606365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034193, 40.024223, 27.731009>,  <28.546707, 39.797688, 27.329201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034193, 40.024223, 27.731009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718513, 40.214237, 27.886703>,  <28.529106, 40.328247, 27.980122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718513, 40.214237, 27.886703>,  <29.034193, 40.024223, 27.731009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718513, 40.214237, 27.886703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203336, -0.395937, 0.895482,
		0.579502, 0.785858, 0.215880,
		-0.789197, 0.475038, 0.389240,
		28.481754, 40.356747, 28.003475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273325, 40.317120, 28.280941>,  <29.034193, 40.024223, 27.731009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273325, 40.317120, 28.280941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893118, 40.352375, 28.400101>,  <28.664993, 40.373528, 28.471596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893118, 40.352375, 28.400101>,  <29.273325, 40.317120, 28.280941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893118, 40.352375, 28.400101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261252, -0.292100, 0.920013,
		0.168108, 0.952317, 0.254620,
		-0.950520, 0.088141, 0.297899,
		28.607962, 40.378819, 28.489470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260099, 40.748039, 28.896742>,  <29.273325, 40.317120, 28.280941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260099, 40.748039, 28.896742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934038, 40.516541, 28.906385>,  <28.738401, 40.377644, 28.912170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934038, 40.516541, 28.906385>,  <29.260099, 40.748039, 28.896742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934038, 40.516541, 28.906385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250107, -0.314124, 0.915845,
		-0.522467, 0.752584, 0.400807,
		-0.815153, -0.578743, 0.024107,
		28.689491, 40.342918, 28.913618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072588, 40.853462, 29.533424>,  <29.260099, 40.748039, 28.896742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072588, 40.853462, 29.533424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857367, 40.529411, 29.440310>,  <28.728233, 40.334980, 29.384441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857367, 40.529411, 29.440310>,  <29.072588, 40.853462, 29.533424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857367, 40.529411, 29.440310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255899, -0.420130, 0.870636,
		-0.803127, 0.408880, 0.433364,
		-0.538054, -0.810129, -0.232786,
		28.695950, 40.286373, 29.370474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750286, 40.795292, 30.071684>,  <29.072588, 40.853462, 29.533424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750286, 40.795292, 30.071684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758652, 40.434383, 29.899422>,  <28.763672, 40.217838, 29.796064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758652, 40.434383, 29.899422>,  <28.750286, 40.795292, 30.071684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758652, 40.434383, 29.899422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286288, -0.407306, 0.867261,
		-0.957915, -0.141431, 0.249791,
		0.020916, -0.902274, -0.430655,
		28.764927, 40.163700, 29.770226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341986, 40.458092, 30.518934>,  <28.750286, 40.795292, 30.071684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341986, 40.458092, 30.518934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553560, 40.179474, 30.325008>,  <28.680506, 40.012302, 30.208652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553560, 40.179474, 30.325008>,  <28.341986, 40.458092, 30.518934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553560, 40.179474, 30.325008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294055, -0.385459, 0.874616,
		-0.796090, -0.605178, 0.000941,
		0.528936, -0.696549, -0.484815,
		28.712240, 39.970509, 30.179564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192795, 39.809540, 30.883432>,  <28.341986, 40.458092, 30.518934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192795, 39.809540, 30.883432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540632, 39.773197, 30.689299>,  <28.749334, 39.751392, 30.572819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540632, 39.773197, 30.689299>,  <28.192795, 39.809540, 30.883432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540632, 39.773197, 30.689299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437123, -0.315440, 0.842271,
		-0.229621, -0.944586, -0.234589,
		0.869596, -0.090858, -0.485332,
		28.801512, 39.745937, 30.543699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345402, 39.128395, 31.052563>,  <28.192795, 39.809540, 30.883432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345402, 39.128395, 31.052563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676863, 39.308552, 30.919603>,  <28.875738, 39.416645, 30.839827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676863, 39.308552, 30.919603>,  <28.345402, 39.128395, 31.052563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676863, 39.308552, 30.919603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486109, -0.284561, 0.826270,
		0.277554, -0.846272, -0.454739,
		0.828650, 0.450388, -0.332399,
		28.925457, 39.443668, 30.819883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867338, 38.578136, 30.845432>,  <28.345402, 39.128395, 31.052563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867338, 38.578136, 30.845432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074665, 38.915443, 30.902351>,  <29.199060, 39.117828, 30.936502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074665, 38.915443, 30.902351>,  <28.867338, 38.578136, 30.845432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074665, 38.915443, 30.902351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674247, -0.505311, 0.538564,
		0.526059, -0.183201, -0.830481,
		0.518317, 0.843266, 0.142300,
		29.230160, 39.168423, 30.945042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623739, 38.367867, 30.744867>,  <28.867338, 38.578136, 30.845432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623739, 38.367867, 30.744867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623533, 38.706005, 30.958555>,  <29.623409, 38.908886, 31.086769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623533, 38.706005, 30.958555>,  <29.623739, 38.367867, 30.744867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623533, 38.706005, 30.958555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731452, -0.363962, 0.576637,
		0.681893, 0.391055, -0.618140,
		-0.000517, 0.845344, 0.534222,
		29.623379, 38.959610, 31.118822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340748, 38.498852, 31.039154>,  <29.623739, 38.367867, 30.744867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340748, 38.498852, 31.039154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127909, 38.747078, 31.269552>,  <30.000206, 38.896015, 31.407791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127909, 38.747078, 31.269552>,  <30.340748, 38.498852, 31.039154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127909, 38.747078, 31.269552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466846, -0.352507, 0.811045,
		0.706349, 0.700456, -0.102141,
		-0.532096, 0.620565, 0.575998,
		29.968281, 38.933247, 31.442352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800285, 38.803921, 31.448494>,  <30.340748, 38.498852, 31.039154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800285, 38.803921, 31.448494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449114, 38.861214, 31.631241>,  <30.238411, 38.895588, 31.740889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449114, 38.861214, 31.631241>,  <30.800285, 38.803921, 31.448494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449114, 38.861214, 31.631241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414369, -0.250765, 0.874880,
		0.239873, 0.957394, 0.160805,
		-0.877929, 0.143228, 0.456866,
		30.185736, 38.904182, 31.768301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974695, 39.313606, 32.026737>,  <30.800285, 38.803921, 31.448494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974695, 39.313606, 32.026737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644943, 39.104446, 32.113434>,  <30.447092, 38.978951, 32.165451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644943, 39.104446, 32.113434>,  <30.974695, 39.313606, 32.026737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644943, 39.104446, 32.113434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460200, -0.396221, 0.794497,
		-0.329564, 0.754710, 0.567274,
		-0.824381, -0.522897, 0.216738,
		30.397629, 38.947578, 32.178455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812014, 39.551762, 32.727562>,  <30.974695, 39.313606, 32.026737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812014, 39.551762, 32.727562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688601, 39.182404, 32.636215>,  <30.614553, 38.960789, 32.581406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688601, 39.182404, 32.636215>,  <30.812014, 39.551762, 32.727562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688601, 39.182404, 32.636215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501389, -0.361894, 0.785902,
		-0.808342, 0.127976, 0.574635,
		-0.308533, -0.923393, -0.228368,
		30.596041, 38.905384, 32.567703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731224, 39.262615, 33.424831>,  <30.812014, 39.551762, 32.727562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731224, 39.262615, 33.424831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659685, 38.945934, 33.191174>,  <30.616762, 38.755924, 33.050980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659685, 38.945934, 33.191174>,  <30.731224, 39.262615, 33.424831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659685, 38.945934, 33.191174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516254, -0.580930, 0.629287,
		-0.837553, -0.189020, 0.512617,
		-0.178847, -0.791702, -0.584142,
		30.606031, 38.708424, 33.015930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367678, 38.746849, 33.920616>,  <30.731224, 39.262615, 33.424831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367678, 38.746849, 33.920616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539314, 38.549866, 33.617733>,  <30.642296, 38.431675, 33.436005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539314, 38.549866, 33.617733>,  <30.367678, 38.746849, 33.920616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539314, 38.549866, 33.617733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499463, -0.569122, 0.653174,
		-0.752607, -0.658468, 0.001761,
		0.429092, -0.492463, -0.757206,
		30.668041, 38.402126, 33.390572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304674, 38.089619, 34.053413>,  <30.367678, 38.746849, 33.920616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304674, 38.089619, 34.053413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607666, 38.099052, 33.792442>,  <30.789461, 38.104713, 33.635860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607666, 38.099052, 33.792442>,  <30.304674, 38.089619, 34.053413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607666, 38.099052, 33.792442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544715, -0.573694, 0.611687,
		-0.359871, -0.818730, -0.447408,
		0.757482, 0.023582, -0.652430,
		30.834911, 38.106129, 33.596714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523666, 37.354855, 33.967171>,  <30.304674, 38.089619, 34.053413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523666, 37.354855, 33.967171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837034, 37.558746, 33.824940>,  <31.025055, 37.681080, 33.739601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837034, 37.558746, 33.824940>,  <30.523666, 37.354855, 33.967171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837034, 37.558746, 33.824940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616429, -0.564421, 0.549040,
		0.079167, -0.649314, -0.756388,
		0.783421, 0.509725, -0.355573,
		31.072060, 37.711662, 33.718269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929350, 36.837147, 33.825245>,  <30.523666, 37.354855, 33.967171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929350, 36.837147, 33.825245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151457, 37.168140, 33.858608>,  <31.284721, 37.366737, 33.878624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151457, 37.168140, 33.858608>,  <30.929350, 36.837147, 33.825245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151457, 37.168140, 33.858608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557958, -0.445012, 0.700462,
		0.616735, -0.342405, -0.708799,
		0.555266, 0.827480, 0.083406,
		31.318037, 37.416386, 33.883629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667252, 36.580185, 33.652058>,  <30.929350, 36.837147, 33.825245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667252, 36.580185, 33.652058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685865, 36.925835, 33.852509>,  <31.697033, 37.133224, 33.972778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685865, 36.925835, 33.852509>,  <31.667252, 36.580185, 33.652058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685865, 36.925835, 33.852509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580297, -0.431722, 0.690559,
		0.813075, 0.258668, -0.521537,
		0.046533, 0.864122, 0.501126,
		31.699825, 37.185070, 34.002846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372410, 36.732376, 33.709908>,  <31.667252, 36.580185, 33.652058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372410, 36.732376, 33.709908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191456, 36.952438, 33.990669>,  <32.082882, 37.084476, 34.159126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191456, 36.952438, 33.990669>,  <32.372410, 36.732376, 33.709908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191456, 36.952438, 33.990669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641415, -0.346113, 0.684684,
		0.619624, 0.759954, -0.196304,
		-0.452385, 0.550160, 0.701906,
		32.055740, 37.117485, 34.201241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868568, 36.988182, 34.121323>,  <32.372410, 36.732376, 33.709908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868568, 36.988182, 34.121323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553829, 37.001347, 34.367828>,  <32.364986, 37.009243, 34.515732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553829, 37.001347, 34.367828>,  <32.868568, 36.988182, 34.121323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553829, 37.001347, 34.367828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562778, -0.371540, 0.738403,
		0.253266, 0.927833, 0.273828,
		-0.786853, 0.032908, 0.616263,
		32.317772, 37.011219, 34.552708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076618, 37.334724, 34.745224>,  <32.868568, 36.988182, 34.121323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076618, 37.334724, 34.745224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741600, 37.153229, 34.866978>,  <32.540588, 37.044331, 34.940029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741600, 37.153229, 34.866978>,  <33.076618, 37.334724, 34.745224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741600, 37.153229, 34.866978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511310, -0.454538, 0.729354,
		-0.192581, 0.766498, 0.612694,
		-0.837541, -0.453736, 0.304383,
		32.490337, 37.017109, 34.958294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089787, 38.085869, 35.196896>,  <33.076618, 37.334724, 34.745224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089787, 38.085869, 35.196896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372360, 38.368656, 35.183311>,  <33.541904, 38.538326, 35.175159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372360, 38.368656, 35.183311>,  <33.089787, 38.085869, 35.196896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372360, 38.368656, 35.183311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535696, 0.502699, -0.678471,
		-0.462583, 0.497487, 0.733842,
		0.706432, 0.706966, -0.033962,
		33.584290, 38.580746, 35.173122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787830, 38.653301, 35.028172>,  <33.089787, 38.085869, 35.196896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787830, 38.653301, 35.028172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159012, 38.793407, 34.977245>,  <33.381721, 38.877472, 34.946690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159012, 38.793407, 34.977245>,  <32.787830, 38.653301, 35.028172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159012, 38.793407, 34.977245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308518, 0.530326, -0.789665,
		-0.209073, 0.772055, 0.600183,
		0.927957, 0.350265, -0.127316,
		33.437401, 38.898487, 34.939049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762802, 39.391842, 35.091507>,  <32.787830, 38.653301, 35.028172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762802, 39.391842, 35.091507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084438, 39.287334, 34.877895>,  <33.277420, 39.224632, 34.749729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084438, 39.287334, 34.877895>,  <32.762802, 39.391842, 35.091507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084438, 39.287334, 34.877895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392975, 0.440462, -0.807195,
		0.446112, 0.858914, 0.251499,
		0.804087, -0.261266, -0.534027,
		33.325665, 39.208954, 34.717686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708561, 39.829117, 34.605057>,  <32.762802, 39.391842, 35.091507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708561, 39.829117, 34.605057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983856, 39.626804, 34.397015>,  <33.149033, 39.505417, 34.272190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983856, 39.626804, 34.397015>,  <32.708561, 39.829117, 34.605057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983856, 39.626804, 34.397015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211620, 0.545767, -0.810774,
		0.693932, 0.668072, 0.268585,
		0.688241, -0.505785, -0.520103,
		33.190327, 39.475067, 34.240982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156158, 40.292843, 34.343014>,  <32.708561, 39.829117, 34.605057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156158, 40.292843, 34.343014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198006, 39.965092, 34.117561>,  <33.223114, 39.768440, 33.982292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198006, 39.965092, 34.117561>,  <33.156158, 40.292843, 34.343014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198006, 39.965092, 34.117561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172374, 0.543220, -0.821705,
		0.979460, 0.183124, -0.084407,
		0.104622, -0.819376, -0.563628,
		33.229393, 39.719280, 33.948471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550320, 40.480507, 33.727657>,  <33.156158, 40.292843, 34.343014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550320, 40.480507, 33.727657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381741, 40.148895, 33.580643>,  <33.280594, 39.949928, 33.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381741, 40.148895, 33.580643>,  <33.550320, 40.480507, 33.727657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381741, 40.148895, 33.580643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234734, 0.491207, -0.838818,
		0.875947, -0.267242, -0.401620,
		-0.421446, -0.829034, -0.367540,
		33.255306, 39.900185, 33.470379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819633, 40.491787, 33.067181>,  <33.550320, 40.480507, 33.727657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819633, 40.491787, 33.067181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501698, 40.249264, 33.077145>,  <33.310936, 40.103748, 33.083122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501698, 40.249264, 33.077145>,  <33.819633, 40.491787, 33.067181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501698, 40.249264, 33.077145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389829, 0.478735, -0.786668,
		0.465020, -0.634999, -0.616873,
		-0.794852, -0.606291, 0.024919,
		33.263245, 40.067371, 33.084618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651028, 40.291824, 32.344681>,  <33.819633, 40.491787, 33.067181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651028, 40.291824, 32.344681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302513, 40.199970, 32.518173>,  <33.093403, 40.144859, 32.622269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302513, 40.199970, 32.518173>,  <33.651028, 40.291824, 32.344681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302513, 40.199970, 32.518173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490451, 0.439409, -0.752581,
		-0.017768, -0.868440, -0.495476,
		-0.871288, -0.229635, 0.433734,
		33.041126, 40.131081, 32.648293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283051, 39.934765, 31.926889>,  <33.651028, 40.291824, 32.344681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283051, 39.934765, 31.926889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996086, 40.082432, 32.163208>,  <32.823906, 40.171032, 32.305000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996086, 40.082432, 32.163208>,  <33.283051, 39.934765, 31.926889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996086, 40.082432, 32.163208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474681, 0.361681, -0.802412,
		-0.509902, -0.856098, -0.084238,
		-0.717411, 0.369165, 0.590795,
		32.780865, 40.193180, 32.340446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600163, 39.694489, 31.628309>,  <33.283051, 39.934765, 31.926889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600163, 39.694489, 31.628309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486645, 40.006783, 31.850990>,  <32.418533, 40.194157, 31.984598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486645, 40.006783, 31.850990>,  <32.600163, 39.694489, 31.628309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486645, 40.006783, 31.850990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482139, 0.385660, -0.786644,
		-0.828856, -0.491653, 0.266974,
		-0.283795, 0.780733, 0.556702,
		32.401505, 40.241001, 32.018002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900629, 39.815090, 31.511692>,  <32.600163, 39.694489, 31.628309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900629, 39.815090, 31.511692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997070, 40.182323, 31.637548>,  <32.054935, 40.402664, 31.713062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997070, 40.182323, 31.637548>,  <31.900629, 39.815090, 31.511692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997070, 40.182323, 31.637548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586703, 0.396138, -0.706296,
		-0.773077, -0.014310, 0.634150,
		0.241104, 0.918079, 0.314641,
		32.069401, 40.457748, 31.731941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368469, 40.162590, 31.363691>,  <31.900629, 39.815090, 31.511692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368469, 40.162590, 31.363691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649515, 40.446411, 31.385088>,  <31.818142, 40.616707, 31.397926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649515, 40.446411, 31.385088>,  <31.368469, 40.162590, 31.363691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649515, 40.446411, 31.385088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434015, 0.486909, -0.757991,
		-0.563883, 0.509360, 0.650068,
		0.702614, 0.709558, 0.053490,
		31.860300, 40.659279, 31.401134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996014, 40.785603, 31.507113>,  <31.368469, 40.162590, 31.363691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996014, 40.785603, 31.507113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339838, 40.831753, 31.307976>,  <31.546133, 40.859444, 31.188494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339838, 40.831753, 31.307976>,  <30.996014, 40.785603, 31.507113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339838, 40.831753, 31.307976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443257, 0.653137, -0.613951,
		0.254324, 0.748399, 0.612551,
		0.859560, 0.115375, -0.497841,
		31.597706, 40.866364, 31.158623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076702, 41.466797, 31.513020>,  <30.996014, 40.785603, 31.507113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076702, 41.466797, 31.513020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308336, 41.325768, 31.218985>,  <31.447317, 41.241150, 31.042564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308336, 41.325768, 31.218985>,  <31.076702, 41.466797, 31.513020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308336, 41.325768, 31.218985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497292, 0.561728, -0.661183,
		0.646037, 0.748432, 0.149953,
		0.579084, -0.352578, -0.735086,
		31.482061, 41.219994, 30.998459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273355, 41.988956, 31.126741>,  <31.076702, 41.466797, 31.513020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273355, 41.988956, 31.126741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299229, 41.694431, 30.857325>,  <31.314753, 41.517715, 30.695675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299229, 41.694431, 30.857325>,  <31.273355, 41.988956, 31.126741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299229, 41.694431, 30.857325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648675, 0.481877, -0.589080,
		0.758312, 0.475013, -0.446458,
		0.064683, -0.736313, -0.673542,
		31.318634, 41.473537, 30.655262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289476, 42.325291, 30.531769>,  <31.273355, 41.988956, 31.126741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289476, 42.325291, 30.531769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199499, 41.948315, 30.432804>,  <31.145512, 41.722130, 30.373425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199499, 41.948315, 30.432804>,  <31.289476, 42.325291, 30.531769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199499, 41.948315, 30.432804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581328, 0.333585, -0.742145,
		0.781958, -0.023113, -0.622903,
		-0.224945, -0.942436, -0.247413,
		31.132015, 41.665585, 30.358580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281967, 42.332706, 29.873625>,  <31.289476, 42.325291, 30.531769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281967, 42.332706, 29.873625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058908, 42.003433, 29.916348>,  <30.925074, 41.805870, 29.941980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058908, 42.003433, 29.916348>,  <31.281967, 42.332706, 29.873625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058908, 42.003433, 29.916348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582462, 0.296371, -0.756903,
		0.591413, -0.484294, -0.644740,
		-0.557646, -0.823179, 0.106805,
		30.891615, 41.756481, 29.948389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287638, 42.081997, 29.273010>,  <31.281967, 42.332706, 29.873625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287638, 42.081997, 29.273010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968645, 41.898846, 29.430168>,  <30.777248, 41.788956, 29.524464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968645, 41.898846, 29.430168>,  <31.287638, 42.081997, 29.273010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968645, 41.898846, 29.430168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539939, 0.251023, -0.803401,
		0.269266, -0.852820, -0.447429,
		-0.797472, -0.457913, 0.392879,
		30.729401, 41.761482, 29.548037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047016, 41.556274, 28.819838>,  <31.287638, 42.081997, 29.273010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047016, 41.556274, 28.819838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714676, 41.628788, 29.030293>,  <30.515272, 41.672295, 29.156567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714676, 41.628788, 29.030293>,  <31.047016, 41.556274, 28.819838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714676, 41.628788, 29.030293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537365, -0.015596, -0.843206,
		-0.144656, -0.983307, 0.110374,
		-0.830851, 0.181286, 0.526138,
		30.465420, 41.683174, 29.188133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636492, 41.124809, 28.525995>,  <31.047016, 41.556274, 28.819838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636492, 41.124809, 28.525995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410027, 41.394596, 28.715542>,  <30.274147, 41.556469, 28.829269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410027, 41.394596, 28.715542>,  <30.636492, 41.124809, 28.525995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410027, 41.394596, 28.715542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671137, -0.043412, -0.740061,
		-0.478579, -0.737024, 0.477241,
		-0.566161, 0.674471, 0.473868,
		30.240179, 41.596939, 28.857702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054152, 41.026402, 28.226065>,  <30.636492, 41.124809, 28.525995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054152, 41.026402, 28.226065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996328, 41.378551, 28.406754>,  <29.961634, 41.589840, 28.515167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996328, 41.378551, 28.406754>,  <30.054152, 41.026402, 28.226065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996328, 41.378551, 28.406754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700452, 0.231403, -0.675144,
		-0.698906, -0.414006, 0.583206,
		-0.144557, 0.880371, 0.451720,
		29.952961, 41.642662, 28.542269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291689, 41.183605, 28.193041>,  <30.054152, 41.026402, 28.226065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291689, 41.183605, 28.193041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471550, 41.536289, 28.250174>,  <29.579466, 41.747898, 28.284452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471550, 41.536289, 28.250174>,  <29.291689, 41.183605, 28.193041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471550, 41.536289, 28.250174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617625, 0.422439, -0.663388,
		-0.645253, 0.210079, 0.734517,
		0.449653, 0.881710, 0.142830,
		29.606445, 41.800800, 28.293022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711435, 41.666164, 28.244827>,  <29.291689, 41.183605, 28.193041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711435, 41.666164, 28.244827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054447, 41.835915, 28.128519>,  <29.260254, 41.937763, 28.058733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054447, 41.835915, 28.128519>,  <28.711435, 41.666164, 28.244827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054447, 41.835915, 28.128519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455087, 0.362238, -0.813437,
		-0.239875, 0.829872, 0.503758,
		0.857529, 0.424377, -0.290772,
		29.311707, 41.963226, 28.041288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495905, 42.289124, 27.965855>,  <28.711435, 41.666164, 28.244827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495905, 42.289124, 27.965855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851690, 42.229874, 27.792921>,  <29.065161, 42.194321, 27.689161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851690, 42.229874, 27.792921>,  <28.495905, 42.289124, 27.965855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851690, 42.229874, 27.792921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374264, 0.306790, -0.875104,
		0.262265, 0.940180, 0.217439,
		0.889463, -0.148129, -0.432335,
		29.118528, 42.185436, 27.663221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588852, 42.883255, 27.539413>,  <28.495905, 42.289124, 27.965855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588852, 42.883255, 27.539413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871798, 42.633072, 27.407692>,  <29.041565, 42.482964, 27.328659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871798, 42.633072, 27.407692>,  <28.588852, 42.883255, 27.539413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871798, 42.633072, 27.407692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229419, 0.237503, -0.943906,
		0.668584, 0.743233, 0.024509,
		0.707363, -0.625458, -0.329303,
		29.084007, 42.445435, 27.308901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055925, 43.223820, 27.085293>,  <28.588852, 42.883255, 27.539413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055925, 43.223820, 27.085293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140768, 42.843857, 26.993481>,  <29.191673, 42.615879, 26.938393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140768, 42.843857, 26.993481>,  <29.055925, 43.223820, 27.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140768, 42.843857, 26.993481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022217, 0.239501, -0.970641,
		0.976994, 0.200780, 0.071904,
		0.212106, -0.949909, -0.229531,
		29.204399, 42.558884, 26.924622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723188, 43.144161, 26.594877>,  <29.055925, 43.223820, 27.085293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723188, 43.144161, 26.594877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495956, 42.818886, 26.544268>,  <29.359617, 42.623722, 26.513901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495956, 42.818886, 26.544268>,  <29.723188, 43.144161, 26.594877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495956, 42.818886, 26.544268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046873, 0.185464, -0.981532,
		0.821637, -0.551659, -0.143476,
		-0.568081, -0.813189, -0.126526,
		29.325533, 42.574928, 26.506310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986599, 42.887001, 25.981283>,  <29.723188, 43.144161, 26.594877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986599, 42.887001, 25.981283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643997, 42.684872, 26.023329>,  <29.438437, 42.563595, 26.048555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643997, 42.684872, 26.023329>,  <29.986599, 42.887001, 25.981283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643997, 42.684872, 26.023329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170298, 0.084432, -0.981769,
		0.487236, -0.858789, -0.158373,
		-0.856504, -0.505324, 0.105112,
		29.387045, 42.533276, 26.054863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950100, 42.359955, 25.406998>,  <29.986599, 42.887001, 25.981283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950100, 42.359955, 25.406998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580460, 42.451820, 25.529173>,  <29.358675, 42.506939, 25.602478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580460, 42.451820, 25.529173>,  <29.950100, 42.359955, 25.406998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580460, 42.451820, 25.529173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267003, 0.183777, -0.946010,
		-0.273401, -0.955761, -0.108506,
		-0.924100, 0.229668, 0.305436,
		29.303230, 42.520721, 25.620804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405083, 41.968716, 24.999346>,  <29.950100, 42.359955, 25.406998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405083, 41.968716, 24.999346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212427, 42.272778, 25.173792>,  <29.096834, 42.455215, 25.278460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212427, 42.272778, 25.173792>,  <29.405083, 41.968716, 24.999346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212427, 42.272778, 25.173792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434052, 0.225399, -0.872235,
		-0.761330, -0.609398, 0.221384,
		-0.481639, 0.760151, 0.436113,
		29.067936, 42.500824, 25.304626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745729, 41.841423, 24.886021>,  <29.405083, 41.968716, 24.999346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745729, 41.841423, 24.886021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757977, 42.234798, 24.957474>,  <28.765324, 42.470825, 25.000345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757977, 42.234798, 24.957474>,  <28.745729, 41.841423, 24.886021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757977, 42.234798, 24.957474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689151, 0.150216, -0.708876,
		-0.723971, -0.101403, 0.682337,
		0.030616, 0.983439, 0.178634,
		28.767160, 42.529831, 25.011065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183052, 42.166931, 24.524912>,  <28.745729, 41.841423, 24.886021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183052, 42.166931, 24.524912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373934, 42.504818, 24.621843>,  <28.488462, 42.707550, 24.680002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373934, 42.504818, 24.621843>,  <28.183052, 42.166931, 24.524912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373934, 42.504818, 24.621843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490662, 0.484880, -0.723977,
		-0.729057, 0.226585, 0.645860,
		0.477206, 0.844719, 0.242328,
		28.517096, 42.758232, 24.694542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713055, 42.684685, 24.496469>,  <28.183052, 42.166931, 24.524912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713055, 42.684685, 24.496469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070633, 42.852287, 24.432856>,  <28.285181, 42.952850, 24.394688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070633, 42.852287, 24.432856>,  <27.713055, 42.684685, 24.496469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070633, 42.852287, 24.432856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331365, 0.379021, -0.864026,
		-0.301753, 0.825093, 0.477669,
		0.893948, 0.419005, -0.159036,
		28.338818, 42.977989, 24.385145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572939, 43.330463, 24.271942>,  <27.713055, 42.684685, 24.496469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572939, 43.330463, 24.271942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947159, 43.316807, 24.131329>,  <28.171692, 43.308613, 24.046961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947159, 43.316807, 24.131329>,  <27.572939, 43.330463, 24.271942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947159, 43.316807, 24.131329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252624, 0.630894, -0.733590,
		0.246829, 0.775118, 0.581608,
		0.935552, -0.034143, -0.351536,
		28.227825, 43.306564, 24.025867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735723, 44.040668, 24.145350>,  <27.572939, 43.330463, 24.271942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735723, 44.040668, 24.145350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952635, 43.791821, 23.919462>,  <28.082781, 43.642513, 23.783930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952635, 43.791821, 23.919462>,  <27.735723, 44.040668, 24.145350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952635, 43.791821, 23.919462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228415, 0.537652, -0.811638,
		0.808555, 0.569124, 0.149457,
		0.542278, -0.622116, -0.564718,
		28.115318, 43.605186, 23.750048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145239, 44.463490, 23.581369>,  <27.735723, 44.040668, 24.145350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145239, 44.463490, 23.581369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111031, 44.081722, 23.466990>,  <28.090506, 43.852661, 23.398361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111031, 44.081722, 23.466990>,  <28.145239, 44.463490, 23.581369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111031, 44.081722, 23.466990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112544, 0.294417, -0.949027,
		0.989960, -0.048978, -0.132592,
		-0.085519, -0.954421, -0.285949,
		28.085375, 43.795395, 23.381205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599678, 44.441307, 22.971676>,  <28.145239, 44.463490, 23.581369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599678, 44.441307, 22.971676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342588, 44.136002, 22.945343>,  <28.188335, 43.952820, 22.929543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342588, 44.136002, 22.945343>,  <28.599678, 44.441307, 22.971676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342588, 44.136002, 22.945343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022278, 0.104519, -0.994273,
		0.765774, -0.637577, -0.084181,
		-0.642725, -0.763264, -0.065834,
		28.149771, 43.907024, 22.925592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751030, 44.082130, 22.266603>,  <28.599678, 44.441307, 22.971676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751030, 44.082130, 22.266603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399088, 43.956940, 22.409657>,  <28.187923, 43.881824, 22.495489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399088, 43.956940, 22.409657>,  <28.751030, 44.082130, 22.266603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399088, 43.956940, 22.409657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385256, 0.029090, -0.922351,
		0.278269, -0.949316, -0.146170,
		-0.879854, -0.312975, 0.357634,
		28.135132, 43.863049, 22.516947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490395, 44.132664, 22.294338>,  <28.751030, 44.082130, 22.266603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490395, 44.132664, 22.294338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689503, 44.053978, 21.956455>,  <29.808968, 44.006767, 21.753725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689503, 44.053978, 21.956455>,  <29.490395, 44.132664, 22.294338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689503, 44.053978, 21.956455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696466, -0.489763, 0.524469,
		-0.516877, -0.849374, -0.106784,
		0.497769, -0.196715, -0.844707,
		29.838833, 43.994965, 21.703043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453356, 43.446686, 22.202892>,  <29.490395, 44.132664, 22.294338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453356, 43.446686, 22.202892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783960, 43.614689, 22.052971>,  <29.982323, 43.715488, 21.963018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783960, 43.614689, 22.052971>,  <29.453356, 43.446686, 22.202892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783960, 43.614689, 22.052971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559257, -0.688520, 0.461705,
		-0.064142, -0.591216, -0.803959,
		0.826509, 0.420004, -0.374805,
		30.031914, 43.740688, 21.940529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908554, 42.847839, 22.119181>,  <29.453356, 43.446686, 22.202892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908554, 42.847839, 22.119181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134657, 43.177368, 22.102171>,  <30.270319, 43.375084, 22.091965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134657, 43.177368, 22.102171>,  <29.908554, 42.847839, 22.119181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134657, 43.177368, 22.102171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671987, -0.429952, 0.602972,
		0.478456, -0.369410, -0.796628,
		0.565256, 0.823819, -0.042526,
		30.304234, 43.424515, 22.089413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467197, 42.620564, 21.935143>,  <29.908554, 42.847839, 22.119181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467197, 42.620564, 21.935143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573263, 42.973923, 22.089697>,  <30.636904, 43.185940, 22.182430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573263, 42.973923, 22.089697>,  <30.467197, 42.620564, 21.935143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573263, 42.973923, 22.089697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625830, -0.462535, 0.628012,
		0.733501, 0.075285, -0.675506,
		0.265165, 0.883399, 0.386386,
		30.652813, 43.238941, 22.205612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226479, 42.552967, 22.096071>,  <30.467197, 42.620564, 21.935143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226479, 42.552967, 22.096071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099136, 42.859497, 22.319284>,  <31.022730, 43.043415, 22.453213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099136, 42.859497, 22.319284>,  <31.226479, 42.552967, 22.096071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099136, 42.859497, 22.319284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451810, -0.394845, 0.799978,
		0.833376, 0.506804, -0.220530,
		-0.318357, 0.766321, 0.558033,
		31.003630, 43.089394, 22.486694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778000, 42.827915, 22.459696>,  <31.226479, 42.552967, 22.096071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778000, 42.827915, 22.459696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470850, 42.971699, 22.671793>,  <31.286560, 43.057968, 22.799051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470850, 42.971699, 22.671793>,  <31.778000, 42.827915, 22.459696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470850, 42.971699, 22.671793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410084, -0.360073, 0.837961,
		0.492135, 0.860895, 0.129085,
		-0.767877, 0.359454, 0.530243,
		31.240486, 43.079536, 22.830866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086964, 43.138016, 23.084873>,  <31.778000, 42.827915, 22.459696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086964, 43.138016, 23.084873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709993, 43.084923, 23.207655>,  <31.483812, 43.053066, 23.281324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709993, 43.084923, 23.207655>,  <32.086964, 43.138016, 23.084873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709993, 43.084923, 23.207655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334280, -0.400523, 0.853134,
		0.009707, 0.906623, 0.421831,
		-0.942424, -0.132728, 0.306954,
		31.427267, 43.045105, 23.299742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041668, 43.477486, 23.743416>,  <32.086964, 43.138016, 23.084873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041668, 43.477486, 23.743416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745407, 43.208820, 23.736448>,  <31.567650, 43.047623, 23.732267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745407, 43.208820, 23.736448>,  <32.041668, 43.477486, 23.743416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745407, 43.208820, 23.736448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245242, -0.294386, 0.923685,
		-0.625531, 0.679859, 0.382758,
		-0.740654, -0.671661, -0.017418,
		31.523211, 43.007320, 23.731222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656517, 43.543144, 24.410149>,  <32.041668, 43.477486, 23.743416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656517, 43.543144, 24.410149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553484, 43.173470, 24.297346>,  <31.491665, 42.951664, 24.229664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553484, 43.173470, 24.297346>,  <31.656517, 43.543144, 24.410149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553484, 43.173470, 24.297346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108417, -0.262370, 0.958857,
		-0.960155, 0.277560, -0.032616,
		-0.257583, -0.924187, -0.282008,
		31.476210, 42.896214, 24.212744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134829, 43.415440, 24.856327>,  <31.656517, 43.543144, 24.410149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134829, 43.415440, 24.856327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279343, 43.067299, 24.722490>,  <31.366051, 42.858414, 24.642187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279343, 43.067299, 24.722490>,  <31.134829, 43.415440, 24.856327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279343, 43.067299, 24.722490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225122, -0.266799, 0.937090,
		-0.904871, -0.413882, 0.099545,
		0.361286, -0.870356, -0.334593,
		31.387728, 42.806190, 24.622112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018587, 42.922569, 25.403141>,  <31.134829, 43.415440, 24.856327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018587, 42.922569, 25.403141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276245, 42.702969, 25.190100>,  <31.430840, 42.571209, 25.062275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276245, 42.702969, 25.190100>,  <31.018587, 42.922569, 25.403141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276245, 42.702969, 25.190100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377486, -0.377440, 0.845602,
		-0.665268, -0.745742, -0.035884,
		0.644146, -0.549006, -0.532606,
		31.469488, 42.538265, 25.030317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050703, 42.221771, 25.743780>,  <31.018587, 42.922569, 25.403141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050703, 42.221771, 25.743780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385630, 42.239414, 25.525805>,  <31.586586, 42.250000, 25.395020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385630, 42.239414, 25.525805>,  <31.050703, 42.221771, 25.743780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385630, 42.239414, 25.525805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524764, -0.344460, 0.778441,
		-0.153377, -0.937764, -0.311566,
		0.837316, 0.044104, -0.544937,
		31.636824, 42.252644, 25.362324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337402, 41.553341, 25.698965>,  <31.050703, 42.221771, 25.743780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337402, 41.553341, 25.698965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638512, 41.812080, 25.650099>,  <31.819178, 41.967323, 25.620779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638512, 41.812080, 25.650099>,  <31.337402, 41.553341, 25.698965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638512, 41.812080, 25.650099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449306, -0.369240, 0.813502,
		0.481103, -0.667271, -0.568585,
		0.752771, 0.646847, -0.122167,
		31.864344, 42.006134, 25.613449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936602, 41.133247, 25.710312>,  <31.337402, 41.553341, 25.698965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936602, 41.133247, 25.710312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056908, 41.507420, 25.784620>,  <32.129093, 41.731922, 25.829206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056908, 41.507420, 25.784620>,  <31.936602, 41.133247, 25.710312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056908, 41.507420, 25.784620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542690, -0.328048, 0.773221,
		0.784236, -0.131743, -0.606315,
		0.300767, 0.935429, 0.185772,
		32.147137, 41.788048, 25.840351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732323, 41.107761, 25.888643>,  <31.936602, 41.133247, 25.710312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732323, 41.107761, 25.888643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570045, 41.445591, 26.028419>,  <32.472679, 41.648289, 26.112286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570045, 41.445591, 26.028419>,  <32.732323, 41.107761, 25.888643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570045, 41.445591, 26.028419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484135, -0.125717, 0.865915,
		0.775259, 0.520473, -0.357884,
		-0.405693, 0.844572, 0.349443,
		32.448338, 41.698963, 26.133253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307743, 41.435783, 26.193169>,  <32.732323, 41.107761, 25.888643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307743, 41.435783, 26.193169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976227, 41.599087, 26.346230>,  <32.777317, 41.697067, 26.438066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976227, 41.599087, 26.346230>,  <33.307743, 41.435783, 26.193169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976227, 41.599087, 26.346230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392641, -0.062902, 0.917538,
		0.398662, 0.910697, -0.108166,
		-0.828795, 0.408258, 0.382654,
		32.727589, 41.721565, 26.461025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555779, 41.957031, 26.717743>,  <33.307743, 41.435783, 26.193169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555779, 41.957031, 26.717743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175686, 41.878117, 26.814198>,  <32.947632, 41.830769, 26.872070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175686, 41.878117, 26.814198>,  <33.555779, 41.957031, 26.717743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175686, 41.878117, 26.814198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251405, -0.028396, 0.967465,
		-0.184018, 0.979935, 0.076581,
		-0.950228, -0.197284, 0.241136,
		32.890617, 41.818932, 26.886538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374359, 42.476604, 27.207317>,  <33.555779, 41.957031, 26.717743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374359, 42.476604, 27.207317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115822, 42.175735, 27.258665>,  <32.960701, 41.995213, 27.289473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115822, 42.175735, 27.258665>,  <33.374359, 42.476604, 27.207317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115822, 42.175735, 27.258665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126218, 0.060522, 0.990155,
		-0.752535, 0.656182, 0.055820,
		-0.646343, -0.752172, 0.128368,
		32.921917, 41.950085, 27.297174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023605, 42.589920, 27.868977>,  <33.374359, 42.476604, 27.207317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023605, 42.589920, 27.868977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932888, 42.206463, 27.800196>,  <32.878460, 41.976387, 27.758928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932888, 42.206463, 27.800196>,  <33.023605, 42.589920, 27.868977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932888, 42.206463, 27.800196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138966, -0.206596, 0.968507,
		-0.963978, 0.195753, 0.180073,
		-0.226790, -0.958644, -0.171951,
		32.864849, 41.918869, 27.748610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553734, 42.512386, 28.392843>,  <33.023605, 42.589920, 27.868977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553734, 42.512386, 28.392843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707264, 42.158375, 28.287462>,  <32.799381, 41.945969, 28.224234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707264, 42.158375, 28.287462>,  <32.553734, 42.512386, 28.392843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707264, 42.158375, 28.287462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186052, -0.205332, 0.960845,
		-0.904470, -0.417808, 0.085850,
		0.383821, -0.885028, -0.263451,
		32.822411, 41.892868, 28.208427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237251, 42.063908, 28.783281>,  <32.553734, 42.512386, 28.392843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237251, 42.063908, 28.783281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555828, 41.864998, 28.645647>,  <32.746975, 41.745651, 28.563066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555828, 41.864998, 28.645647>,  <32.237251, 42.063908, 28.783281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555828, 41.864998, 28.645647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253207, -0.242484, 0.936530,
		-0.549151, -0.833016, -0.067210,
		0.796442, -0.497278, -0.344085,
		32.794762, 41.715813, 28.542421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261230, 41.330387, 29.109715>,  <32.237251, 42.063908, 28.783281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261230, 41.330387, 29.109715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635143, 41.401382, 28.986633>,  <32.859489, 41.443981, 28.912785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635143, 41.401382, 28.986633>,  <32.261230, 41.330387, 29.109715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635143, 41.401382, 28.986633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350773, -0.324533, 0.878429,
		0.056056, -0.929072, -0.365627,
		0.934781, 0.177493, -0.307701,
		32.915577, 41.454632, 28.894323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647190, 40.782455, 29.341331>,  <32.261230, 41.330387, 29.109715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647190, 40.782455, 29.341331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922756, 41.067097, 29.286163>,  <33.088097, 41.237881, 29.253063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922756, 41.067097, 29.286163>,  <32.647190, 40.782455, 29.341331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922756, 41.067097, 29.286163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340592, -0.149832, 0.928196,
		0.639842, -0.686419, -0.345587,
		0.688911, 0.711603, -0.137920,
		33.129429, 41.280579, 29.244787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307961, 40.497147, 29.503916>,  <32.647190, 40.782455, 29.341331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307961, 40.497147, 29.503916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336842, 40.892006, 29.560947>,  <33.354172, 41.128922, 29.595167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336842, 40.892006, 29.560947>,  <33.307961, 40.497147, 29.503916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336842, 40.892006, 29.560947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396041, -0.159577, 0.904260,
		0.915390, -0.008822, -0.402472,
		0.072203, 0.987146, 0.142581,
		33.358501, 41.188148, 29.603722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043396, 40.527088, 29.664854>,  <33.307961, 40.497147, 29.503916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043396, 40.527088, 29.664854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895214, 40.888622, 29.750504>,  <33.806305, 41.105541, 29.801893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895214, 40.888622, 29.750504>,  <34.043396, 40.527088, 29.664854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895214, 40.888622, 29.750504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624474, 0.071698, 0.777748,
		0.687602, 0.421835, -0.590981,
		-0.370454, 0.903833, 0.214125,
		33.784077, 41.159771, 29.814741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651352, 40.974236, 29.722364>,  <34.043396, 40.527088, 29.664854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651352, 40.974236, 29.722364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353737, 41.130390, 29.939251>,  <34.175167, 41.224083, 30.069384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353737, 41.130390, 29.939251>,  <34.651352, 40.974236, 29.722364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353737, 41.130390, 29.939251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607218, 0.056551, 0.792521,
		0.278729, 0.918911, -0.279128,
		-0.744041, 0.390390, 0.542217,
		34.130524, 41.247505, 30.101915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914806, 41.671696, 30.035927>,  <34.651352, 40.974236, 29.722364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914806, 41.671696, 30.035927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612770, 41.509361, 30.241894>,  <34.431549, 41.411961, 30.365475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612770, 41.509361, 30.241894>,  <34.914806, 41.671696, 30.035927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612770, 41.509361, 30.241894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562594, 0.002194, 0.826730,
		-0.336647, 0.913943, 0.226664,
		-0.755087, -0.405836, 0.514918,
		34.386246, 41.387611, 30.396370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852280, 42.153004, 30.585365>,  <34.914806, 41.671696, 30.035927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852280, 42.153004, 30.585365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690670, 41.800697, 30.684170>,  <34.593704, 41.589314, 30.743452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690670, 41.800697, 30.684170>,  <34.852280, 42.153004, 30.585365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690670, 41.800697, 30.684170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363236, 0.093355, 0.927008,
		-0.839537, 0.464259, 0.282208,
		-0.404027, -0.880766, 0.247011,
		34.569462, 41.536469, 30.758272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782436, 42.251732, 31.262955>,  <34.852280, 42.153004, 30.585365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782436, 42.251732, 31.262955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737827, 41.855076, 31.236980>,  <34.711063, 41.617085, 31.221395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737827, 41.855076, 31.236980>,  <34.782436, 42.251732, 31.262955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737827, 41.855076, 31.236980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422278, -0.106438, 0.900196,
		-0.899580, 0.072973, 0.430617,
		-0.111523, -0.991638, -0.064935,
		34.704369, 41.557583, 31.217501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535385, 42.084126, 31.839703>,  <34.782436, 42.251732, 31.262955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535385, 42.084126, 31.839703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686058, 41.738728, 31.705547>,  <34.776463, 41.531490, 31.625053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686058, 41.738728, 31.705547>,  <34.535385, 42.084126, 31.839703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686058, 41.738728, 31.705547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373431, -0.189786, 0.908037,
		-0.847738, -0.467286, 0.250967,
		0.376683, -0.863496, -0.335388,
		34.799065, 41.479679, 31.604931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390656, 41.572037, 32.380100>,  <34.535385, 42.084126, 31.839703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390656, 41.572037, 32.380100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671535, 41.400402, 32.152840>,  <34.840065, 41.297421, 32.016483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671535, 41.400402, 32.152840>,  <34.390656, 41.572037, 32.380100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671535, 41.400402, 32.152840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515907, -0.243281, 0.821374,
		-0.490665, -0.869882, 0.050539,
		0.702203, -0.429092, -0.568147,
		34.882198, 41.271675, 31.982395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461349, 40.968235, 32.702076>,  <34.390656, 41.572037, 32.380100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461349, 40.968235, 32.702076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788395, 41.012688, 32.476101>,  <34.984623, 41.039360, 32.340515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788395, 41.012688, 32.476101>,  <34.461349, 40.968235, 32.702076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788395, 41.012688, 32.476101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572723, -0.257779, 0.778164,
		-0.059150, -0.959791, -0.274412,
		0.817612, 0.111133, -0.564942,
		35.033680, 41.046028, 32.306618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884487, 40.356461, 32.904701>,  <34.461349, 40.968235, 32.702076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884487, 40.356461, 32.904701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118301, 40.622158, 32.718323>,  <35.258591, 40.781574, 32.606495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118301, 40.622158, 32.718323>,  <34.884487, 40.356461, 32.904701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118301, 40.622158, 32.718323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783758, -0.313706, 0.536015,
		0.209873, -0.678506, -0.703976,
		0.584531, 0.664242, -0.465946,
		35.293659, 40.821430, 32.578537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486935, 40.068024, 32.694435>,  <34.884487, 40.356461, 32.904701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486935, 40.068024, 32.694435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617207, 40.445473, 32.718098>,  <35.695370, 40.671944, 32.732296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617207, 40.445473, 32.718098>,  <35.486935, 40.068024, 32.694435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617207, 40.445473, 32.718098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766668, -0.300188, 0.567544,
		0.553309, -0.139484, -0.821215,
		0.325682, 0.943627, 0.059159,
		35.714912, 40.728561, 32.735844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188705, 39.933483, 32.799282>,  <35.486935, 40.068024, 32.694435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188705, 39.933483, 32.799282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141075, 40.317585, 32.900265>,  <36.112499, 40.548046, 32.960854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141075, 40.317585, 32.900265>,  <36.188705, 39.933483, 32.799282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141075, 40.317585, 32.900265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839986, -0.038140, 0.541267,
		0.529382, 0.276507, -0.802059,
		-0.119074, 0.960255, 0.252453,
		36.105354, 40.605663, 32.976002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812813, 40.177002, 32.594540>,  <36.188705, 39.933483, 32.799282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812813, 40.177002, 32.594540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686840, 40.432823, 32.875053>,  <36.611256, 40.586315, 33.043362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686840, 40.432823, 32.875053>,  <36.812813, 40.177002, 32.594540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686840, 40.432823, 32.875053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807304, -0.208025, 0.552256,
		0.499079, 0.740067, -0.450799,
		-0.314929, 0.639551, 0.701280,
		36.592361, 40.624687, 33.085438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426533, 40.536201, 32.880341>,  <36.812813, 40.177002, 32.594540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426533, 40.536201, 32.880341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169552, 40.607288, 33.178513>,  <37.015362, 40.649940, 33.357418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169552, 40.607288, 33.178513>,  <37.426533, 40.536201, 32.880341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169552, 40.607288, 33.178513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738040, -0.118352, 0.664297,
		0.206280, 0.976939, -0.055127,
		-0.642453, 0.177717, 0.745433,
		36.976814, 40.660603, 33.402142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816132, 40.883194, 33.296688>,  <37.426533, 40.536201, 32.880341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816132, 40.883194, 33.296688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527458, 40.758301, 33.543812>,  <37.354256, 40.683365, 33.692085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527458, 40.758301, 33.543812>,  <37.816132, 40.883194, 33.296688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527458, 40.758301, 33.543812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673873, -0.112755, 0.730192,
		-0.158329, 0.943291, 0.291779,
		-0.721683, -0.312232, 0.617806,
		37.310955, 40.664631, 33.729153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921024, 41.346287, 33.844730>,  <37.816132, 40.883194, 33.296688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921024, 41.346287, 33.844730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735317, 41.018845, 33.979988>,  <37.623894, 40.822380, 34.061142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735317, 41.018845, 33.979988>,  <37.921024, 41.346287, 33.844730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735317, 41.018845, 33.979988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562924, 0.022031, 0.826215,
		-0.683790, 0.573940, 0.450582,
		-0.464271, -0.818601, 0.338149,
		37.596035, 40.773266, 34.081432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675972, 41.427780, 34.568134>,  <37.921024, 41.346287, 33.844730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675972, 41.427780, 34.568134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738361, 41.044647, 34.471607>,  <37.775795, 40.814770, 34.413692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738361, 41.044647, 34.471607>,  <37.675972, 41.427780, 34.568134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738361, 41.044647, 34.471607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551671, -0.118175, 0.825648,
		-0.819347, -0.261908, 0.509974,
		0.155978, -0.957830, -0.241314,
		37.785156, 40.757298, 34.399212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414593, 40.922787, 35.152142>,  <37.675972, 41.427780, 34.568134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414593, 40.922787, 35.152142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718563, 40.763050, 34.946995>,  <37.900948, 40.667210, 34.823906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718563, 40.763050, 34.946995>,  <37.414593, 40.922787, 35.152142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718563, 40.763050, 34.946995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525995, -0.085761, 0.846153,
		-0.381888, -0.912782, 0.144879,
		0.759929, -0.399341, -0.512870,
		37.946541, 40.643250, 34.793133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480808, 40.202995, 35.423225>,  <37.414593, 40.922787, 35.152142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480808, 40.202995, 35.423225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808510, 40.386353, 35.285416>,  <38.005131, 40.496368, 35.202728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808510, 40.386353, 35.285416>,  <37.480808, 40.202995, 35.423225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808510, 40.386353, 35.285416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335364, 0.104337, 0.936293,
		0.465137, -0.882604, -0.068250,
		0.819255, 0.458394, -0.344525,
		38.054287, 40.523872, 35.182056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945534, 39.979542, 35.848370>,  <37.480808, 40.202995, 35.423225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945534, 39.979542, 35.848370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089931, 40.314747, 35.684704>,  <38.176571, 40.515869, 35.586506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089931, 40.314747, 35.684704>,  <37.945534, 39.979542, 35.848370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089931, 40.314747, 35.684704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557246, 0.157970, 0.815182,
		0.747771, -0.522279, -0.409955,
		0.360992, 0.838016, -0.409163,
		38.198231, 40.566151, 35.561954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655109, 39.881641, 35.600182>,  <37.945534, 39.979542, 35.848370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655109, 39.881641, 35.600182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584122, 40.265846, 35.685898>,  <38.541531, 40.496368, 35.737328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584122, 40.265846, 35.685898>,  <38.655109, 39.881641, 35.600182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584122, 40.265846, 35.685898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789530, 0.008971, 0.613646,
		0.587491, 0.278097, -0.759945,
		-0.177471, 0.960511, 0.214295,
		38.530880, 40.554001, 35.750187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294712, 40.228504, 35.928696>,  <38.655109, 39.881641, 35.600182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294712, 40.228504, 35.928696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008251, 40.452431, 36.095421>,  <38.836376, 40.586788, 36.195457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008251, 40.452431, 36.095421>,  <39.294712, 40.228504, 35.928696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008251, 40.452431, 36.095421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542562, 0.070872, 0.837021,
		0.439036, 0.825581, -0.354489,
		-0.716152, 0.559815, 0.416814,
		38.793407, 40.620377, 36.220467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114120, 39.427872, 36.075260>,  <39.294712, 40.228504, 35.928696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114120, 39.427872, 36.075260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875542, 39.534546, 36.378082>,  <38.732395, 39.598549, 36.559776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875542, 39.534546, 36.378082>,  <39.114120, 39.427872, 36.075260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875542, 39.534546, 36.378082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599237, -0.775460, -0.198941,
		0.534011, -0.572313, 0.622327,
		-0.596446, 0.266684, 0.757055,
		38.696609, 39.614552, 36.605198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046577, 39.026154, 36.893215>,  <39.114120, 39.427872, 36.075260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046577, 39.026154, 36.893215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741352, 39.186001, 36.690025>,  <38.558216, 39.281910, 36.568111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741352, 39.186001, 36.690025>,  <39.046577, 39.026154, 36.893215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741352, 39.186001, 36.690025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298943, -0.915045, -0.270788,
		-0.573032, -0.054772, 0.817701,
		-0.763064, 0.399616, -0.507976,
		38.512432, 39.305885, 36.537632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477341, 38.642544, 37.134018>,  <39.046577, 39.026154, 36.893215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477341, 38.642544, 37.134018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464542, 38.749249, 36.748726>,  <38.456863, 38.813271, 36.517551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464542, 38.749249, 36.748726>,  <38.477341, 38.642544, 37.134018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464542, 38.749249, 36.748726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142565, -0.952652, -0.268571,
		-0.989268, -0.145915, -0.007554,
		-0.031992, 0.266765, -0.963230,
		38.454945, 38.829277, 36.459755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959461, 38.216148, 36.731968>,  <38.477341, 38.642544, 37.134018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959461, 38.216148, 36.731968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264481, 38.310783, 36.491119>,  <38.447491, 38.367565, 36.346611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264481, 38.310783, 36.491119>,  <37.959461, 38.216148, 36.731968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264481, 38.310783, 36.491119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133813, -0.968283, -0.211002,
		-0.632943, 0.080328, -0.770020,
		0.762547, 0.236591, -0.602119,
		38.493244, 38.381760, 36.310482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416443, 38.137878, 36.174080>,  <37.959461, 38.216148, 36.731968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416443, 38.137878, 36.174080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225285, 37.788624, 36.212540>,  <37.110588, 37.579071, 36.235615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225285, 37.788624, 36.212540>,  <37.416443, 38.137878, 36.174080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225285, 37.788624, 36.212540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823708, 0.483464, 0.296256,
		-0.305158, 0.062379, -0.950256,
		-0.477895, -0.873139, 0.096151,
		37.081917, 37.526684, 36.241386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777287, 38.290867, 36.029808>,  <37.416443, 38.137878, 36.174080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777287, 38.290867, 36.029808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728294, 37.968849, 36.261982>,  <36.698898, 37.775639, 36.401287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728294, 37.968849, 36.261982>,  <36.777287, 38.290867, 36.029808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728294, 37.968849, 36.261982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867778, 0.370672, 0.331004,
		-0.481623, -0.463146, -0.743999,
		-0.122476, -0.805045, 0.580433,
		36.691551, 37.727337, 36.436111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149406, 38.000454, 35.975727>,  <36.777287, 38.290867, 36.029808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149406, 38.000454, 35.975727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283333, 37.948212, 36.349003>,  <36.363689, 37.916866, 36.572968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283333, 37.948212, 36.349003>,  <36.149406, 38.000454, 35.975727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283333, 37.948212, 36.349003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853110, 0.378520, 0.359061,
		-0.400128, -0.916331, 0.015308,
		0.334814, -0.130611, 0.933188,
		36.383778, 37.909027, 36.628960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676811, 37.771149, 36.459240>,  <36.149406, 38.000454, 35.975727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676811, 37.771149, 36.459240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930267, 37.958118, 36.705818>,  <36.082340, 38.070301, 36.853767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930267, 37.958118, 36.705818>,  <35.676811, 37.771149, 36.459240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930267, 37.958118, 36.705818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773138, 0.410923, 0.483114,
		-0.027493, -0.782722, 0.621764,
		0.633641, 0.467427, 0.616450,
		36.120361, 38.098347, 36.890755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739456, 37.343132, 35.812691>,  <35.676811, 37.771149, 36.459240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739456, 37.343132, 35.812691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906906, 37.368595, 36.175060>,  <36.007378, 37.383873, 36.392483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906906, 37.368595, 36.175060>,  <35.739456, 37.343132, 35.812691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906906, 37.368595, 36.175060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906561, 0.088413, 0.412711,
		-0.053822, -0.994047, 0.094725,
		0.418629, 0.063661, 0.905923,
		36.032494, 37.387695, 36.446838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486877, 36.655811, 36.241123>,  <35.739456, 37.343132, 35.812691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486877, 36.655811, 36.241123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594032, 36.937519, 36.504105>,  <35.658325, 37.106544, 36.661896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594032, 36.937519, 36.504105>,  <35.486877, 36.655811, 36.241123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594032, 36.937519, 36.504105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886320, -0.087396, 0.454752,
		0.377725, -0.704537, 0.600793,
		0.267883, 0.704266, 0.657456,
		35.674397, 37.148800, 36.701340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247074, 36.399723, 37.005672>,  <35.486877, 36.655811, 36.241123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247074, 36.399723, 37.005672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318275, 36.790565, 37.052288>,  <35.360996, 37.025070, 37.080257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318275, 36.790565, 37.052288>,  <35.247074, 36.399723, 37.005672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318275, 36.790565, 37.052288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848205, 0.092317, 0.521561,
		0.498861, -0.191689, 0.845218,
		0.178005, 0.977104, 0.116538,
		35.371677, 37.083698, 37.087250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171036, 36.629562, 37.748817>,  <35.247074, 36.399723, 37.005672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171036, 36.629562, 37.748817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120735, 36.980408, 37.563408>,  <35.090557, 37.190914, 37.452164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120735, 36.980408, 37.563408>,  <35.171036, 36.629562, 37.748817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120735, 36.980408, 37.563408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797969, 0.188179, 0.572568,
		0.589435, 0.441875, 0.676249,
		-0.125747, 0.877118, -0.463522,
		35.083012, 37.243542, 37.424351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131458, 37.148872, 38.248791>,  <35.171036, 36.629562, 37.748817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131458, 37.148872, 38.248791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960461, 37.305584, 37.922905>,  <34.857861, 37.399609, 37.727371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960461, 37.305584, 37.922905>,  <35.131458, 37.148872, 38.248791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960461, 37.305584, 37.922905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864622, 0.085961, 0.495016,
		0.263968, 0.916037, 0.301989,
		-0.427493, 0.391774, -0.814716,
		34.832214, 37.423115, 37.678490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656483, 37.721966, 38.509865>,  <35.131458, 37.148872, 38.248791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656483, 37.721966, 38.509865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510719, 37.652554, 38.143894>,  <34.423264, 37.610909, 37.924313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510719, 37.652554, 38.143894>,  <34.656483, 37.721966, 38.509865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510719, 37.652554, 38.143894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924627, 0.184307, 0.333311,
		0.110789, 0.967429, -0.227611,
		-0.364405, -0.173528, -0.914930,
		34.401398, 37.600494, 37.869415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301624, 38.275597, 38.320675>,  <34.656483, 37.721966, 38.509865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301624, 38.275597, 38.320675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147991, 37.966999, 38.117786>,  <34.055813, 37.781841, 37.996052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147991, 37.966999, 38.117786>,  <34.301624, 38.275597, 38.320675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147991, 37.966999, 38.117786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873643, 0.125940, 0.469987,
		-0.298713, 0.623646, -0.722383,
		-0.384082, -0.771496, -0.507224,
		34.032768, 37.735550, 37.965618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531319, 38.475727, 37.959629>,  <34.301624, 38.275597, 38.320675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531319, 38.475727, 37.959629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611462, 38.097713, 38.062984>,  <33.659546, 37.870903, 38.124996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611462, 38.097713, 38.062984>,  <33.531319, 38.475727, 37.959629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611462, 38.097713, 38.062984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716781, 0.038396, 0.696240,
		-0.667893, -0.324703, -0.669691,
		0.200358, -0.945036, 0.258386,
		33.671570, 37.814201, 38.140499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839802, 38.802525, 37.815414>,  <33.531319, 38.475727, 37.959629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839802, 38.802525, 37.815414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633968, 38.504337, 37.984875>,  <32.510468, 38.325424, 38.086552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633968, 38.504337, 37.984875>,  <32.839802, 38.802525, 37.815414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633968, 38.504337, 37.984875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717485, -0.644899, -0.263288,
		0.469484, 0.168477, 0.866718,
		-0.514588, -0.745467, 0.423650,
		32.479591, 38.280697, 38.111969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024677, 38.485653, 38.530617>,  <32.839802, 38.802525, 37.815414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024677, 38.485653, 38.530617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885693, 38.206188, 38.280453>,  <32.802299, 38.038509, 38.130356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885693, 38.206188, 38.280453>,  <33.024677, 38.485653, 38.530617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885693, 38.206188, 38.280453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933005, -0.324208, -0.156177,
		-0.093647, -0.637774, 0.764510,
		-0.347465, -0.698666, -0.625407,
		32.781452, 37.996590, 38.092831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320488, 37.716877, 38.644402>,  <33.024677, 38.485653, 38.530617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320488, 37.716877, 38.644402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212437, 37.812134, 38.271236>,  <33.147606, 37.869289, 38.047337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212437, 37.812134, 38.271236>,  <33.320488, 37.716877, 38.644402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212437, 37.812134, 38.271236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870178, -0.354325, -0.342409,
		-0.412096, -0.904290, -0.111516,
		-0.270124, 0.238144, -0.932909,
		33.131401, 37.883575, 37.991364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470406, 37.091499, 38.158836>,  <33.320488, 37.716877, 38.644402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470406, 37.091499, 38.158836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463966, 37.428642, 37.943680>,  <33.460102, 37.630928, 37.814587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463966, 37.428642, 37.943680>,  <33.470406, 37.091499, 38.158836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463966, 37.428642, 37.943680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805519, -0.307769, -0.506376,
		-0.592351, -0.441432, -0.673987,
		-0.016098, 0.842862, -0.537889,
		33.459137, 37.681499, 37.782314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401939, 37.004341, 37.379730>,  <33.470406, 37.091499, 38.158836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401939, 37.004341, 37.379730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614422, 37.326637, 37.484497>,  <33.741913, 37.520016, 37.547356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614422, 37.326637, 37.484497>,  <33.401939, 37.004341, 37.379730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614422, 37.326637, 37.484497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797318, -0.370867, -0.476174,
		-0.286537, 0.461778, -0.839439,
		0.531207, 0.805741, 0.261917,
		33.773785, 37.568359, 37.563072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788132, 37.294315, 36.780384>,  <33.401939, 37.004341, 37.379730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788132, 37.294315, 36.780384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976028, 37.402359, 37.116570>,  <34.088768, 37.467186, 37.318279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976028, 37.402359, 37.116570>,  <33.788132, 37.294315, 36.780384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976028, 37.402359, 37.116570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882796, -0.147004, -0.446162,
		0.003038, 0.951541, -0.307508,
		0.469746, 0.270111, 0.840463,
		34.116951, 37.483391, 37.368710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314690, 37.878830, 36.586128>,  <33.788132, 37.294315, 36.780384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314690, 37.878830, 36.586128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470837, 37.730721, 36.923294>,  <34.564526, 37.641853, 37.125595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470837, 37.730721, 36.923294>,  <34.314690, 37.878830, 36.586128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470837, 37.730721, 36.923294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905902, -0.008781, -0.423397,
		0.164176, 0.928879, 0.332008,
		0.390370, -0.370278, 0.842915,
		34.587948, 37.619637, 37.176170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948448, 38.331787, 36.748199>,  <34.314690, 37.878830, 36.586128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948448, 38.331787, 36.748199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982216, 37.993465, 36.958908>,  <35.002476, 37.790474, 37.085335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982216, 37.993465, 36.958908>,  <34.948448, 38.331787, 36.748199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982216, 37.993465, 36.958908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902636, -0.159002, -0.399959,
		0.422045, 0.509250, 0.750029,
		0.084423, -0.845803, 0.526773,
		35.007542, 37.739723, 37.116940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618099, 38.341995, 37.171745>,  <34.948448, 38.331787, 36.748199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618099, 38.341995, 37.171745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505577, 37.964497, 37.102222>,  <35.438065, 37.737999, 37.060509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505577, 37.964497, 37.102222>,  <35.618099, 38.341995, 37.171745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505577, 37.964497, 37.102222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959255, -0.271561, -0.078002,
		0.026416, -0.188666, 0.981686,
		-0.281303, -0.943748, -0.173805,
		35.421185, 37.681374, 37.050079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162510, 38.025211, 37.516907>,  <35.618099, 38.341995, 37.171745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162510, 38.025211, 37.516907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011452, 37.763306, 37.255016>,  <35.920815, 37.606163, 37.097881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011452, 37.763306, 37.255016>,  <36.162510, 38.025211, 37.516907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011452, 37.763306, 37.255016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925463, -0.289812, -0.243981,
		-0.029995, -0.698060, 0.715411,
		-0.377648, -0.654768, -0.654722,
		35.898159, 37.566875, 37.058601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528629, 37.343678, 37.645977>,  <36.162510, 38.025211, 37.516907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528629, 37.343678, 37.645977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394501, 37.372116, 37.270210>,  <36.314026, 37.389179, 37.044750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394501, 37.372116, 37.270210>,  <36.528629, 37.343678, 37.645977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394501, 37.372116, 37.270210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915144, -0.212261, -0.342720,
		-0.223768, -0.974623, 0.006112,
		-0.335320, 0.071096, -0.939417,
		36.293903, 37.393444, 36.988384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638794, 36.718201, 37.247498>,  <36.528629, 37.343678, 37.645977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638794, 36.718201, 37.247498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635937, 37.015812, 36.980255>,  <36.634224, 37.194378, 36.819908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635937, 37.015812, 36.980255>,  <36.638794, 36.718201, 37.247498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635937, 37.015812, 36.980255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884956, -0.306397, -0.350676,
		-0.465620, -0.593750, -0.656246,
		-0.007141, 0.744031, -0.668107,
		36.633793, 37.239021, 36.779823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852299, 36.449093, 36.618389>,  <36.638794, 36.718201, 37.247498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852299, 36.449093, 36.618389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932659, 36.840893, 36.624390>,  <36.980877, 37.075974, 36.627991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932659, 36.840893, 36.624390>,  <36.852299, 36.449093, 36.618389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932659, 36.840893, 36.624390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933328, -0.186735, -0.306643,
		-0.297554, 0.075606, -0.951707,
		0.200901, 0.979497, 0.015001,
		36.992928, 37.134743, 36.628891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147030, 36.726112, 35.924458>,  <36.852299, 36.449093, 36.618389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147030, 36.726112, 35.924458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292080, 36.944942, 36.226242>,  <37.379108, 37.076241, 36.407314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292080, 36.944942, 36.226242>,  <37.147030, 36.726112, 35.924458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292080, 36.944942, 36.226242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931224, -0.244338, -0.270408,
		0.036411, 0.800630, -0.598051,
		0.362624, 0.547074, 0.754463,
		37.400867, 37.109066, 36.452579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586567, 37.440277, 35.778931>,  <37.147030, 36.726112, 35.924458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586567, 37.440277, 35.778931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654160, 37.168514, 36.064548>,  <37.694717, 37.005459, 36.235920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654160, 37.168514, 36.064548>,  <37.586567, 37.440277, 35.778931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654160, 37.168514, 36.064548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695062, -0.431500, -0.575062,
		0.698808, 0.593480, 0.399310,
		0.168985, -0.679403, 0.714041,
		37.704857, 36.964695, 36.278763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257969, 37.431870, 36.040825>,  <37.586567, 37.440277, 35.778931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257969, 37.431870, 36.040825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131485, 37.055706, 36.090851>,  <38.055595, 36.830009, 36.120865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131485, 37.055706, 36.090851>,  <38.257969, 37.431870, 36.040825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131485, 37.055706, 36.090851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762735, -0.330402, -0.555941,
		0.564133, -0.080405, 0.821759,
		-0.316211, -0.940409, 0.125063,
		38.036621, 36.773582, 36.128368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772842, 36.867573, 36.214722>,  <38.257969, 37.431870, 36.040825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772842, 36.867573, 36.214722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514610, 36.664249, 35.986740>,  <38.359673, 36.542255, 35.849953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514610, 36.664249, 35.986740>,  <38.772842, 36.867573, 36.214722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514610, 36.664249, 35.986740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763492, -0.412446, -0.496958,
		0.017535, -0.755981, 0.654358,
		-0.645579, -0.508312, -0.569954,
		38.320938, 36.511757, 35.815754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654163, 36.093369, 36.144142>,  <38.772842, 36.867573, 36.214722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654163, 36.093369, 36.144142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616791, 36.199455, 35.760281>,  <38.594368, 36.263107, 35.529964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616791, 36.199455, 35.760281>,  <38.654163, 36.093369, 36.144142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616791, 36.199455, 35.760281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761895, -0.601437, -0.240397,
		-0.640927, -0.753613, -0.145876,
		-0.093431, 0.265219, -0.959651,
		38.588760, 36.279022, 35.472385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709888, 35.415871, 35.736866>,  <38.654163, 36.093369, 36.144142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709888, 35.415871, 35.736866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806679, 35.717300, 35.492382>,  <38.864754, 35.898159, 35.345692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806679, 35.717300, 35.492382>,  <38.709888, 35.415871, 35.736866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806679, 35.717300, 35.492382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828761, -0.488106, -0.273691,
		-0.504580, -0.440316, -0.742644,
		0.241979, 0.753574, -0.611206,
		38.879272, 35.943371, 35.309021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703835, 35.329506, 34.989082>,  <38.709888, 35.415871, 35.736866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703835, 35.329506, 34.989082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939846, 35.651733, 34.967449>,  <39.081451, 35.845070, 34.954472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939846, 35.651733, 34.967449>,  <38.703835, 35.329506, 34.989082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939846, 35.651733, 34.967449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691949, -0.539046, -0.480247,
		-0.416023, 0.245939, -0.875465,
		0.590027, 0.805571, -0.054078,
		39.116856, 35.893406, 34.951225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043758, 35.343460, 34.421028>,  <38.703835, 35.329506, 34.989082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043758, 35.343460, 34.421028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289879, 35.598278, 34.606750>,  <39.437550, 35.751167, 34.718185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289879, 35.598278, 34.606750>,  <39.043758, 35.343460, 34.421028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289879, 35.598278, 34.606750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785284, -0.546745, -0.290514,
		0.068788, 0.543366, -0.836673,
		0.615302, 0.637042, 0.464306,
		39.474468, 35.789391, 34.746044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731178, 35.199341, 34.260841>,  <39.043758, 35.343460, 34.421028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731178, 35.199341, 34.260841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851402, 35.471397, 34.528297>,  <39.923534, 35.634632, 34.688770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851402, 35.471397, 34.528297>,  <39.731178, 35.199341, 34.260841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851402, 35.471397, 34.528297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953760, -0.212410, -0.212658,
		-0.002611, 0.701638, -0.712529,
		0.300557, 0.680137, 0.668640,
		39.941570, 35.675438, 34.728889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442799, 35.377251, 34.091080>,  <39.731178, 35.199341, 34.260841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442799, 35.377251, 34.091080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449352, 35.206352, 34.452675>,  <40.453285, 35.103813, 34.669632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449352, 35.206352, 34.452675>,  <40.442799, 35.377251, 34.091080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449352, 35.206352, 34.452675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710531, -0.641079, -0.290109,
		0.703475, -0.637559, -0.314073,
		0.016383, -0.427243, 0.903988,
		40.454266, 35.078178, 34.723873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012287, 35.198574, 34.573769>,  <40.442799, 35.377251, 34.091080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012287, 35.198574, 34.573769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908699, 35.427814, 34.884766>,  <40.846546, 35.565357, 35.071362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908699, 35.427814, 34.884766>,  <41.012287, 35.198574, 34.573769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908699, 35.427814, 34.884766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413043, -0.661929, 0.625497,
		0.873115, 0.483121, -0.065295,
		-0.258970, 0.573100, 0.777490,
		40.831009, 35.599743, 35.118011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681404, 35.433075, 34.908894>,  <41.012287, 35.198574, 34.573769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681404, 35.433075, 34.908894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343178, 35.381680, 35.116165>,  <41.140240, 35.350842, 35.240528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343178, 35.381680, 35.116165>,  <41.681404, 35.433075, 34.908894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343178, 35.381680, 35.116165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381806, -0.823952, 0.418721,
		0.373149, 0.551899, 0.745766,
		-0.845567, -0.128492, 0.518175,
		41.089508, 35.343132, 35.271618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748436, 35.392769, 35.602253>,  <41.681404, 35.433075, 34.908894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748436, 35.392769, 35.602253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429661, 35.173782, 35.500141>,  <41.238396, 35.042389, 35.438873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429661, 35.173782, 35.500141>,  <41.748436, 35.392769, 35.602253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429661, 35.173782, 35.500141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486124, -0.832117, 0.266953,
		-0.358569, 0.088649, 0.929284,
		-0.796939, -0.547469, -0.255277,
		41.190578, 35.009541, 35.423557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521469, 35.066162, 36.161819>,  <41.748436, 35.392769, 35.602253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521469, 35.066162, 36.161819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405567, 34.837852, 35.854504>,  <41.336025, 34.700867, 35.670116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405567, 34.837852, 35.854504>,  <41.521469, 35.066162, 36.161819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405567, 34.837852, 35.854504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625422, -0.720547, 0.299432,
		-0.724494, -0.393741, 0.565754,
		-0.289754, -0.570771, -0.768286,
		41.318642, 34.666622, 35.624020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373898, 34.360947, 36.452389>,  <41.521469, 35.066162, 36.161819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373898, 34.360947, 36.452389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479790, 34.355762, 36.066696>,  <41.543324, 34.352654, 35.835281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479790, 34.355762, 36.066696>,  <41.373898, 34.360947, 36.452389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479790, 34.355762, 36.066696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579902, -0.796769, 0.169919,
		-0.770475, -0.604145, -0.203415,
		0.264730, -0.012957, -0.964236,
		41.559208, 34.351875, 35.777424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248753, 33.741516, 36.120136>,  <41.373898, 34.360947, 36.452389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248753, 33.741516, 36.120136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574078, 33.849445, 35.913944>,  <41.769272, 33.914204, 35.790230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574078, 33.849445, 35.913944>,  <41.248753, 33.741516, 36.120136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574078, 33.849445, 35.913944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388245, -0.911551, 0.135426,
		-0.433344, -0.310275, -0.846133,
		0.813313, 0.269821, -0.515478,
		41.818073, 33.930393, 35.759300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353554, 33.273129, 35.597298>,  <41.248753, 33.741516, 36.120136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353554, 33.273129, 35.597298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697968, 33.419254, 35.738815>,  <41.904613, 33.506927, 35.823727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697968, 33.419254, 35.738815>,  <41.353554, 33.273129, 35.597298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697968, 33.419254, 35.738815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297852, -0.926140, 0.231407,
		0.412199, -0.093871, -0.906245,
		0.861032, 0.365312, 0.353794,
		41.956276, 33.528847, 35.844955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976265, 33.083546, 35.234734>,  <41.353554, 33.273129, 35.597298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976265, 33.083546, 35.234734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033092, 33.129910, 35.627953>,  <42.067188, 33.157726, 35.863884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033092, 33.129910, 35.627953>,  <41.976265, 33.083546, 35.234734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033092, 33.129910, 35.627953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400451, -0.914953, 0.050007,
		0.905237, 0.386557, -0.176407,
		0.142073, 0.115911, 0.983046,
		42.075714, 33.164684, 35.922867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539062, 32.694958, 35.431885>,  <41.976265, 33.083546, 35.234734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539062, 32.694958, 35.431885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334541, 32.751381, 35.770985>,  <42.211830, 32.785236, 35.974445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334541, 32.751381, 35.770985>,  <42.539062, 32.694958, 35.431885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334541, 32.751381, 35.770985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454662, -0.792685, 0.406119,
		0.729282, 0.593087, 0.341167,
		-0.511302, 0.141060, 0.847745,
		42.181152, 32.793697, 36.025307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942173, 32.592594, 36.077415>,  <42.539062, 32.694958, 35.431885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942173, 32.592594, 36.077415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578995, 32.534279, 36.234581>,  <42.361088, 32.499290, 36.328880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578995, 32.534279, 36.234581>,  <42.942173, 32.592594, 36.077415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578995, 32.534279, 36.234581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351688, -0.774949, 0.525138,
		0.227924, 0.614979, 0.754885,
		-0.907946, -0.145793, 0.392910,
		42.306610, 32.490540, 36.352455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114655, 32.036747, 35.617416>,  <42.942173, 32.592594, 36.077415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114655, 32.036747, 35.617416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055084, 32.362019, 35.392365>,  <43.019341, 32.557182, 35.257332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055084, 32.362019, 35.392365>,  <43.114655, 32.036747, 35.617416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055084, 32.362019, 35.392365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968756, 0.005866, -0.247946,
		-0.198324, -0.581981, -0.788648,
		-0.148926, 0.813181, -0.562634,
		43.010406, 32.605972, 35.223576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891636, 31.922573, 35.622639>,  <43.114655, 32.036747, 35.617416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891636, 31.922573, 35.622639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070122, 32.118404, 35.922295>,  <44.177212, 32.235905, 36.102089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070122, 32.118404, 35.922295>,  <43.891636, 31.922573, 35.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070122, 32.118404, 35.922295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848846, -0.496686, -0.181006,
		0.283469, 0.716669, -0.637206,
		0.446213, 0.489580, 0.749136,
		44.203987, 32.265278, 36.147034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717220, 31.763823, 35.612675>,  <43.891636, 31.922573, 35.622639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717220, 31.763823, 35.612675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992943, 31.977619, 35.417057>,  <45.158379, 32.105896, 35.299686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992943, 31.977619, 35.417057>,  <44.717220, 31.763823, 35.612675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992943, 31.977619, 35.417057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474535, 0.176966, 0.862264,
		0.547420, -0.826438, -0.131651,
		0.689310, 0.534494, -0.489049,
		45.199738, 32.137966, 35.270344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305058, 31.744406, 35.951454>,  <44.717220, 31.763823, 35.612675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305058, 31.744406, 35.951454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397999, 32.062912, 35.728035>,  <45.453762, 32.254017, 35.593983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397999, 32.062912, 35.728035>,  <45.305058, 31.744406, 35.951454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397999, 32.062912, 35.728035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525335, 0.380558, 0.761051,
		0.818558, -0.470256, -0.329883,
		0.232349, 0.796263, -0.558551,
		45.467705, 32.301792, 35.560471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005424, 31.904242, 36.027206>,  <45.305058, 31.744406, 35.951454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005424, 31.904242, 36.027206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834000, 32.253857, 35.935650>,  <45.731144, 32.463627, 35.880718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834000, 32.253857, 35.935650>,  <46.005424, 31.904242, 36.027206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834000, 32.253857, 35.935650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487098, 0.436874, 0.756225,
		0.760965, 0.212600, -0.612971,
		-0.428565, 0.874038, -0.228888,
		45.705429, 32.516068, 35.866982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511608, 32.374176, 35.848415>,  <46.005424, 31.904242, 36.027206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511608, 32.374176, 35.848415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183575, 32.525082, 36.020523>,  <45.986755, 32.615627, 36.123787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183575, 32.525082, 36.020523>,  <46.511608, 32.374176, 35.848415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183575, 32.525082, 36.020523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569558, 0.465419, 0.677487,
		0.055340, 0.800659, -0.596559,
		-0.820086, 0.377267, 0.430265,
		45.937550, 32.638260, 36.149601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.643185, 33.048676, 35.990005>,  <46.511608, 32.374176, 35.848415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.643185, 33.048676, 35.990005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364792, 32.900669, 36.236160>,  <46.197754, 32.811867, 36.383854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364792, 32.900669, 36.236160>,  <46.643185, 33.048676, 35.990005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364792, 32.900669, 36.236160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590932, 0.191723, 0.783608,
		-0.407929, 0.909028, 0.085217,
		-0.695984, -0.370014, 0.615383,
		46.155998, 32.789665, 36.420776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369469, 33.467674, 36.434311>,  <46.643185, 33.048676, 35.990005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369469, 33.467674, 36.434311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353107, 33.122280, 36.635395>,  <46.343292, 32.915043, 36.756046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353107, 33.122280, 36.635395>,  <46.369469, 33.467674, 36.434311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353107, 33.122280, 36.635395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484773, 0.422793, 0.765664,
		-0.873683, 0.275018, 0.401302,
		-0.040903, -0.863488, 0.502708,
		46.340836, 32.863235, 36.786209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150246, 33.669445, 35.640343>,  <46.369469, 33.467674, 36.434311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150246, 33.669445, 35.640343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113106, 33.944794, 35.352585>,  <46.090820, 34.110001, 35.179932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113106, 33.944794, 35.352585>,  <46.150246, 33.669445, 35.640343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113106, 33.944794, 35.352585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992661, 0.120220, -0.013091,
		0.077474, -0.715330, -0.694478,
		-0.092854, 0.688367, -0.719394,
		46.085251, 34.151302, 35.136768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.755039, 33.601307, 35.242752>,  <46.150246, 33.669445, 35.640343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.755039, 33.601307, 35.242752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623730, 33.962177, 35.130810>,  <46.544945, 34.178699, 35.063644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623730, 33.962177, 35.130810>,  <46.755039, 33.601307, 35.242752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623730, 33.962177, 35.130810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943934, 0.324290, -0.061842,
		0.034962, -0.284466, -0.958048,
		-0.328277, 0.902173, -0.279855,
		46.525246, 34.232830, 35.046852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.317684, 33.859047, 34.863609>,  <46.755039, 33.601307, 35.242752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.317684, 33.859047, 34.863609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.145214, 34.183189, 35.022305>,  <47.041733, 34.377674, 35.117523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.145214, 34.183189, 35.022305>,  <47.317684, 33.859047, 34.863609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.145214, 34.183189, 35.022305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900984, 0.410140, 0.141465,
		-0.048081, 0.418451, -0.906965,
		-0.431180, 0.810360, 0.396738,
		47.015862, 34.426296, 35.141327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.543510, 34.523117, 34.502937>,  <47.317684, 33.859047, 34.863609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.543510, 34.523117, 34.502937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466579, 34.601894, 34.887486>,  <47.420422, 34.649162, 35.118214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466579, 34.601894, 34.887486>,  <47.543510, 34.523117, 34.502937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.466579, 34.601894, 34.887486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952388, 0.273631, 0.134473,
		-0.236576, 0.941456, -0.240192,
		-0.192324, 0.196943, 0.961366,
		47.408882, 34.660976, 35.175896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.712341, 35.246330, 34.696918>,  <47.543510, 34.523117, 34.502937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.712341, 35.246330, 34.696918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751717, 35.014839, 35.020741>,  <47.775341, 34.875946, 35.215034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751717, 35.014839, 35.020741>,  <47.712341, 35.246330, 34.696918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.751717, 35.014839, 35.020741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946162, 0.306511, 0.104063,
		-0.308362, 0.755729, 0.577743,
		0.098441, -0.578727, 0.809558,
		47.781250, 34.841221, 35.263607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.231293, 37.804024, 25.901699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023079, 37.462635, 25.911732>,  <34.898151, 37.257801, 25.917751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023079, 37.462635, 25.911732>,  <35.231293, 37.804024, 25.901699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023079, 37.462635, 25.911732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334462, -0.176787, 0.925679,
		-0.785605, 0.490240, 0.377478,
		-0.520538, -0.853470, 0.025082,
		34.866917, 37.206593, 25.919256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894863, 37.725784, 26.556015>,  <35.231293, 37.804024, 25.901699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894863, 37.725784, 26.556015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835827, 37.341724, 26.461079>,  <34.800404, 37.111290, 26.404118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835827, 37.341724, 26.461079>,  <34.894863, 37.725784, 26.556015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835827, 37.341724, 26.461079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242042, -0.267737, 0.932594,
		-0.958974, 0.080199, 0.271913,
		-0.147594, -0.960148, -0.237341,
		34.791550, 37.053680, 26.389875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474407, 37.423401, 27.046457>,  <34.894863, 37.725784, 26.556015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474407, 37.423401, 27.046457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.684082, 37.112122, 26.908104>,  <34.809887, 36.925354, 26.825092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.684082, 37.112122, 26.908104>,  <34.474407, 37.423401, 27.046457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684082, 37.112122, 26.908104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268386, -0.234496, 0.934334,
		-0.808205, -0.582597, 0.085937,
		0.524188, -0.778198, -0.345881,
		34.841339, 36.878662, 26.804340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353733, 36.864414, 27.511339>,  <34.474407, 37.423401, 27.046457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353733, 36.864414, 27.511339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.701370, 36.765327, 27.340078>,  <34.909954, 36.705875, 27.237322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.701370, 36.765327, 27.340078>,  <34.353733, 36.864414, 27.511339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701370, 36.765327, 27.340078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395733, -0.171112, 0.902284,
		-0.296770, -0.953603, -0.050684,
		0.869093, -0.247713, -0.428153,
		34.962097, 36.691013, 27.211632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480045, 36.264767, 27.832537>,  <34.353733, 36.864414, 27.511339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480045, 36.264767, 27.832537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832230, 36.381096, 27.682758>,  <35.043541, 36.450893, 27.592892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832230, 36.381096, 27.682758>,  <34.480045, 36.264767, 27.832537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832230, 36.381096, 27.682758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450728, -0.268418, 0.851349,
		0.147088, -0.918352, -0.367416,
		0.880460, 0.290828, -0.374447,
		35.096367, 36.468346, 27.570425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857758, 35.673725, 27.865995>,  <34.480045, 36.264767, 27.832537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857758, 35.673725, 27.865995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098000, 35.993542, 27.866858>,  <35.242146, 36.185432, 27.867374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098000, 35.993542, 27.866858>,  <34.857758, 35.673725, 27.865995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098000, 35.993542, 27.866858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319546, -0.242506, 0.916014,
		0.732918, -0.549469, -0.401141,
		0.600601, 0.799546, 0.002156,
		35.278179, 36.233406, 27.867504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505630, 35.443954, 27.996609>,  <34.857758, 35.673725, 27.865995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505630, 35.443954, 27.996609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546261, 35.826847, 28.104975>,  <35.570641, 36.056583, 28.169994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546261, 35.826847, 28.104975>,  <35.505630, 35.443954, 27.996609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546261, 35.826847, 28.104975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375667, -0.289071, 0.880518,
		0.921171, 0.012331, -0.388963,
		0.101580, 0.957228, 0.270916,
		35.576736, 36.114017, 28.186249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170967, 35.525707, 28.283335>,  <35.505630, 35.443954, 27.996609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170967, 35.525707, 28.283335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954338, 35.831409, 28.423395>,  <35.824360, 36.014832, 28.507431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954338, 35.831409, 28.423395>,  <36.170967, 35.525707, 28.283335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954338, 35.831409, 28.423395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491433, -0.050113, 0.869473,
		0.682047, 0.642963, -0.348440,
		-0.541577, 0.764256, 0.350153,
		35.791866, 36.060688, 28.528440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648853, 35.855511, 28.626686>,  <36.170967, 35.525707, 28.283335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648853, 35.855511, 28.626686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305534, 36.018311, 28.751701>,  <36.099545, 36.115990, 28.826710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305534, 36.018311, 28.751701>,  <36.648853, 35.855511, 28.626686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305534, 36.018311, 28.751701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369515, 0.067582, 0.926764,
		0.356067, 0.910926, -0.208397,
		-0.858297, 0.406996, 0.312537,
		36.048046, 36.140408, 28.845463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811481, 36.402340, 29.020618>,  <36.648853, 35.855511, 28.626686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811481, 36.402340, 29.020618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450615, 36.303085, 29.161772>,  <36.234097, 36.243534, 29.246464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450615, 36.303085, 29.161772>,  <36.811481, 36.402340, 29.020618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450615, 36.303085, 29.161772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351009, 0.053301, 0.934854,
		-0.250776, 0.967259, 0.039011,
		-0.902166, -0.248132, 0.352883,
		36.179966, 36.228645, 29.267637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720367, 36.828144, 29.514559>,  <36.811481, 36.402340, 29.020618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720367, 36.828144, 29.514559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.444286, 36.552525, 29.602957>,  <36.278637, 36.387154, 29.655994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.444286, 36.552525, 29.602957>,  <36.720367, 36.828144, 29.514559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444286, 36.552525, 29.602957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326849, -0.024389, 0.944762,
		-0.645595, 0.724307, 0.242048,
		-0.690201, -0.689046, 0.220994,
		36.237225, 36.345810, 29.669254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460125, 37.017498, 30.245510>,  <36.720367, 36.828144, 29.514559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460125, 37.017498, 30.245510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344398, 36.639069, 30.187218>,  <36.274963, 36.412010, 30.152243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344398, 36.639069, 30.187218>,  <36.460125, 37.017498, 30.245510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344398, 36.639069, 30.187218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132572, -0.190379, 0.972718,
		-0.948008, 0.262107, 0.180503,
		-0.289320, -0.946074, -0.145733,
		36.257603, 36.355247, 30.143497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978184, 36.885902, 30.743107>,  <36.460125, 37.017498, 30.245510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978184, 36.885902, 30.743107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133305, 36.538517, 30.619566>,  <36.226376, 36.330086, 30.545443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133305, 36.538517, 30.619566>,  <35.978184, 36.885902, 30.743107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133305, 36.538517, 30.619566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145517, -0.273188, 0.950891,
		-0.910186, -0.413696, 0.020434,
		0.387798, -0.868460, -0.308851,
		36.249645, 36.277977, 30.526911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627464, 36.458538, 31.163197>,  <35.978184, 36.885902, 30.743107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627464, 36.458538, 31.163197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951126, 36.254662, 31.046249>,  <36.145325, 36.132336, 30.976080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951126, 36.254662, 31.046249>,  <35.627464, 36.458538, 31.163197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951126, 36.254662, 31.046249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161556, -0.285414, 0.944689,
		-0.564949, -0.811634, -0.148600,
		0.809155, -0.509694, -0.292369,
		36.193874, 36.101753, 30.958538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659641, 35.895996, 31.597044>,  <35.627464, 36.458538, 31.163197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659641, 35.895996, 31.597044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.031704, 35.906578, 31.450556>,  <36.254940, 35.912926, 31.362663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.031704, 35.906578, 31.450556>,  <35.659641, 35.895996, 31.597044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031704, 35.906578, 31.450556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356041, -0.308721, 0.882001,
		-0.089729, -0.950785, -0.296576,
		0.930152, 0.026452, -0.366220,
		36.310749, 35.914513, 31.340691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007557, 35.222519, 31.794580>,  <35.659641, 35.895996, 31.597044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007557, 35.222519, 31.794580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282928, 35.503506, 31.722351>,  <36.448151, 35.672096, 31.679014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282928, 35.503506, 31.722351>,  <36.007557, 35.222519, 31.794580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282928, 35.503506, 31.722351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311967, -0.062029, 0.948066,
		0.654784, -0.709009, -0.261849,
		0.688429, 0.702466, -0.180571,
		36.489456, 35.714245, 31.668180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537464, 35.063747, 32.171986>,  <36.007557, 35.222519, 31.794580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537464, 35.063747, 32.171986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665909, 35.433842, 32.091164>,  <36.742973, 35.655899, 32.042671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665909, 35.433842, 32.091164>,  <36.537464, 35.063747, 32.171986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665909, 35.433842, 32.091164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421044, 0.051631, 0.905569,
		0.848299, -0.375858, -0.372987,
		0.321108, 0.925238, -0.202051,
		36.762241, 35.711414, 32.030548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202129, 35.024395, 32.475986>,  <36.537464, 35.063747, 32.171986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202129, 35.024395, 32.475986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135330, 35.417885, 32.449459>,  <37.095249, 35.653980, 32.433540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135330, 35.417885, 32.449459>,  <37.202129, 35.024395, 32.475986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135330, 35.417885, 32.449459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457511, 0.136904, 0.878602,
		0.873381, 0.116384, -0.472928,
		-0.167001, 0.983723, -0.066322,
		37.085228, 35.713001, 32.429562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842075, 35.381199, 32.626392>,  <37.202129, 35.024395, 32.475986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842075, 35.381199, 32.626392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.557014, 35.654797, 32.688713>,  <37.385979, 35.818954, 32.726105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.557014, 35.654797, 32.688713>,  <37.842075, 35.381199, 32.626392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557014, 35.654797, 32.688713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407074, 0.222340, 0.885921,
		0.571325, 0.694778, -0.436888,
		-0.712656, 0.683994, 0.155797,
		37.343216, 35.859993, 32.735451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194996, 35.972813, 32.947716>,  <37.842075, 35.381199, 32.626392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194996, 35.972813, 32.947716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808033, 36.018799, 33.037964>,  <37.575855, 36.046391, 33.092113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808033, 36.018799, 33.037964>,  <38.194996, 35.972813, 32.947716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808033, 36.018799, 33.037964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237713, 0.105237, 0.965618,
		0.087269, 0.987780, -0.129136,
		-0.967407, 0.114966, 0.225624,
		37.517811, 36.053288, 33.105652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107582, 36.633617, 33.321865>,  <38.194996, 35.972813, 32.947716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107582, 36.633617, 33.321865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804943, 36.391888, 33.421745>,  <37.623360, 36.246849, 33.481674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804943, 36.391888, 33.421745>,  <38.107582, 36.633617, 33.321865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804943, 36.391888, 33.421745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177763, 0.177389, 0.967953,
		-0.629255, 0.776737, -0.026785,
		-0.756597, -0.604328, 0.249698,
		37.577965, 36.210590, 33.496655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170483, 37.071533, 33.950840>,  <38.107582, 36.633617, 33.321865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170483, 37.071533, 33.950840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203312, 37.454617, 34.061150>,  <38.223011, 37.684467, 34.127335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203312, 37.454617, 34.061150>,  <38.170483, 37.071533, 33.950840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203312, 37.454617, 34.061150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366539, 0.286320, -0.885251,
		-0.926775, -0.028426, 0.374539,
		0.082074, 0.957712, 0.275774,
		38.227936, 37.741932, 34.143883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600109, 37.457806, 33.721642>,  <38.170483, 37.071533, 33.950840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600109, 37.457806, 33.721642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839256, 37.766014, 33.810059>,  <37.982742, 37.950939, 33.863110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839256, 37.766014, 33.810059>,  <37.600109, 37.457806, 33.721642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839256, 37.766014, 33.810059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213934, 0.419128, -0.882363,
		-0.772522, 0.480245, 0.415421,
		0.597865, 0.770517, 0.221045,
		38.018616, 37.997169, 33.876373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215061, 38.104385, 33.695385>,  <37.600109, 37.457806, 33.721642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215061, 38.104385, 33.695385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587566, 38.241112, 33.644917>,  <37.811069, 38.323147, 33.614635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587566, 38.241112, 33.644917>,  <37.215061, 38.104385, 33.695385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587566, 38.241112, 33.644917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287001, 0.474826, -0.831968,
		-0.224469, 0.810989, 0.540287,
		0.931259, 0.341814, -0.126171,
		37.866943, 38.343655, 33.607067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165157, 38.810184, 33.549404>,  <37.215061, 38.104385, 33.695385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165157, 38.810184, 33.549404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518494, 38.699974, 33.397720>,  <37.730495, 38.633846, 33.306709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518494, 38.699974, 33.397720>,  <37.165157, 38.810184, 33.549404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518494, 38.699974, 33.397720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152005, 0.596906, -0.787780,
		0.443409, 0.753517, 0.485387,
		0.883336, -0.275527, -0.379212,
		37.783493, 38.617317, 33.283958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463699, 39.404324, 33.184509>,  <37.165157, 38.810184, 33.549404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463699, 39.404324, 33.184509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679695, 39.102478, 33.035397>,  <37.809292, 38.921371, 32.945927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679695, 39.102478, 33.035397>,  <37.463699, 39.404324, 33.184509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679695, 39.102478, 33.035397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114762, 0.372760, -0.920804,
		0.833811, 0.540006, 0.114686,
		0.539990, -0.754614, -0.372784,
		37.841694, 38.876095, 32.923561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903412, 39.773819, 32.807415>,  <37.463699, 39.404324, 33.184509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903412, 39.773819, 32.807415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931522, 39.398048, 32.673229>,  <37.948387, 39.172585, 32.592716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931522, 39.398048, 32.673229>,  <37.903412, 39.773819, 32.807415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931522, 39.398048, 32.673229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065101, 0.331262, -0.941290,
		0.995401, 0.087985, -0.037879,
		0.070272, -0.939428, -0.335467,
		37.952602, 39.116219, 32.572590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295708, 39.793301, 32.161076>,  <37.903412, 39.773819, 32.807415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295708, 39.793301, 32.161076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088188, 39.451401, 32.154873>,  <37.963676, 39.246262, 32.151150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088188, 39.451401, 32.154873>,  <38.295708, 39.793301, 32.161076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088188, 39.451401, 32.154873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276366, 0.184853, -0.943107,
		0.808992, -0.484999, -0.332127,
		-0.518801, -0.854754, -0.015507,
		37.932549, 39.194973, 32.150219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519356, 39.486561, 31.585772>,  <38.295708, 39.793301, 32.161076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519356, 39.486561, 31.585772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168350, 39.310070, 31.660906>,  <37.957745, 39.204178, 31.705986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168350, 39.310070, 31.660906>,  <38.519356, 39.486561, 31.585772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168350, 39.310070, 31.660906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225971, 0.034979, -0.973506,
		0.422965, -0.896714, -0.130399,
		-0.877518, -0.441226, 0.187836,
		37.905094, 39.177704, 31.717257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457363, 39.060226, 31.048393>,  <38.519356, 39.486561, 31.585772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457363, 39.060226, 31.048393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080872, 39.082127, 31.181719>,  <37.854977, 39.095268, 31.261713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080872, 39.082127, 31.181719>,  <38.457363, 39.060226, 31.048393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080872, 39.082127, 31.181719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332743, 0.019471, -0.942817,
		-0.058112, -0.998310, -0.000108,
		-0.941225, 0.054753, 0.333312,
		37.798504, 39.098553, 31.281712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076427, 38.582512, 30.572994>,  <38.457363, 39.060226, 31.048393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076427, 38.582512, 30.572994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809074, 38.833847, 30.732216>,  <37.648663, 38.984650, 30.827749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809074, 38.833847, 30.732216>,  <38.076427, 38.582512, 30.572994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809074, 38.833847, 30.732216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304539, 0.257069, -0.917154,
		-0.678613, -0.734236, 0.019533,
		-0.668386, 0.628342, 0.398054,
		37.608559, 39.022350, 30.851633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449776, 38.468979, 30.213266>,  <38.076427, 38.582512, 30.572994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449776, 38.468979, 30.213266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427475, 38.837849, 30.366360>,  <37.414093, 39.059170, 30.458216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427475, 38.837849, 30.366360>,  <37.449776, 38.468979, 30.213266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427475, 38.837849, 30.366360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331699, 0.344450, -0.878254,
		-0.941736, -0.175919, 0.286680,
		-0.055755, 0.922175, 0.382733,
		37.410748, 39.114502, 30.481180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798649, 38.646881, 30.095743>,  <37.449776, 38.468979, 30.213266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798649, 38.646881, 30.095743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024551, 38.973507, 30.143538>,  <37.160091, 39.169483, 30.172215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024551, 38.973507, 30.143538>,  <36.798649, 38.646881, 30.095743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024551, 38.973507, 30.143538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370767, 0.380408, -0.847243,
		-0.737280, 0.434185, 0.517592,
		0.564757, 0.816561, 0.119486,
		37.193977, 39.218475, 30.179382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332939, 39.210457, 30.002623>,  <36.798649, 38.646881, 30.095743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332939, 39.210457, 30.002623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705811, 39.334320, 29.927626>,  <36.929535, 39.408638, 29.882627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705811, 39.334320, 29.927626>,  <36.332939, 39.210457, 30.002623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705811, 39.334320, 29.927626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281657, 0.295082, -0.913015,
		-0.227396, 0.903902, 0.362287,
		0.932180, 0.309656, -0.187490,
		36.985466, 39.427216, 29.871378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239754, 39.829342, 29.790020>,  <36.332939, 39.210457, 30.002623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239754, 39.829342, 29.790020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601791, 39.707428, 29.671419>,  <36.819016, 39.634281, 29.600258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601791, 39.707428, 29.671419>,  <36.239754, 39.829342, 29.790020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601791, 39.707428, 29.671419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217957, 0.266193, -0.938955,
		0.365102, 0.914467, 0.174500,
		0.905094, -0.304781, -0.296502,
		36.873318, 39.615993, 29.582468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464851, 40.341507, 29.377390>,  <36.239754, 39.829342, 29.790020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464851, 40.341507, 29.377390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699440, 40.042019, 29.253799>,  <36.840195, 39.862324, 29.179646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699440, 40.042019, 29.253799>,  <36.464851, 40.341507, 29.377390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699440, 40.042019, 29.253799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251381, 0.194374, -0.948170,
		0.769974, 0.633744, -0.074220,
		0.586470, -0.748724, -0.308974,
		36.875381, 39.817402, 29.161108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965801, 40.612003, 28.901093>,  <36.464851, 40.341507, 29.377390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965801, 40.612003, 28.901093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.942596, 40.221516, 28.817543>,  <36.928673, 39.987225, 28.767414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.942596, 40.221516, 28.817543>,  <36.965801, 40.612003, 28.901093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942596, 40.221516, 28.817543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250086, 0.216765, -0.943647,
		0.966484, -0.002504, -0.256714,
		-0.058009, -0.976220, -0.208874,
		36.925194, 39.928650, 28.754881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090885, 40.677734, 28.221941>,  <36.965801, 40.612003, 28.901093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090885, 40.677734, 28.221941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.946972, 40.311684, 28.294720>,  <36.860626, 40.092052, 28.338387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.946972, 40.311684, 28.294720>,  <37.090885, 40.677734, 28.221941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946972, 40.311684, 28.294720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314245, -0.064764, -0.947130,
		0.878527, -0.397934, -0.264272,
		-0.359780, -0.915125, 0.181946,
		36.839039, 40.037148, 28.349304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383499, 40.258133, 27.731583>,  <37.090885, 40.677734, 28.221941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383499, 40.258133, 27.731583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045738, 40.072674, 27.838930>,  <36.843082, 39.961399, 27.903339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045738, 40.072674, 27.838930>,  <37.383499, 40.258133, 27.731583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045738, 40.072674, 27.838930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266714, -0.070614, -0.961185,
		0.464599, -0.883203, -0.064034,
		-0.844400, -0.463645, 0.268370,
		36.792419, 39.933582, 27.919441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197769, 39.903263, 27.150673>,  <37.383499, 40.258133, 27.731583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197769, 39.903263, 27.150673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859016, 39.875172, 27.361525>,  <36.655766, 39.858318, 27.488035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859016, 39.875172, 27.361525>,  <37.197769, 39.903263, 27.150673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859016, 39.875172, 27.361525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530812, 0.051634, -0.845915,
		0.032188, -0.996194, -0.081005,
		-0.846878, -0.070227, 0.527130,
		36.604954, 39.854103, 27.519663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.826035, 39.279671, 26.838531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561695, 39.517269, 27.022032>,  <36.403091, 39.659828, 27.132132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561695, 39.517269, 27.022032>,  <36.826035, 39.279671, 26.838531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561695, 39.517269, 27.022032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535133, 0.055653, -0.842932,
		-0.526228, -0.802542, 0.281089,
		-0.660845, 0.593995, 0.458753,
		36.363441, 39.695469, 27.159658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193600, 38.927887, 26.781418>,  <36.826035, 39.279671, 26.838531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193600, 38.927887, 26.781418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070610, 39.296173, 26.877539>,  <35.996819, 39.517143, 26.935211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070610, 39.296173, 26.877539>,  <36.193600, 38.927887, 26.781418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070610, 39.296173, 26.877539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705606, -0.051175, -0.706754,
		-0.638422, -0.386865, 0.665397,
		-0.307470, 0.920715, 0.240303,
		35.978371, 39.572388, 26.949629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455364, 38.880215, 26.650505>,  <36.193600, 38.927887, 26.781418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455364, 38.880215, 26.650505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560272, 39.265945, 26.636168>,  <35.623219, 39.497383, 26.627565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560272, 39.265945, 26.636168>,  <35.455364, 38.880215, 26.650505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560272, 39.265945, 26.636168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706821, 0.166683, -0.687474,
		-0.656976, 0.205640, 0.725324,
		0.262272, 0.964328, -0.035844,
		35.638954, 39.555244, 26.625414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811058, 39.296982, 26.792257>,  <35.455364, 38.880215, 26.650505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811058, 39.296982, 26.792257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052132, 39.512833, 26.557116>,  <35.196774, 39.642345, 26.416031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052132, 39.512833, 26.557116>,  <34.811058, 39.296982, 26.792257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052132, 39.512833, 26.557116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795964, 0.354156, -0.490932,
		-0.056729, 0.763787, 0.642970,
		0.602680, 0.539631, -0.587856,
		35.232937, 39.674721, 26.380758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414589, 39.904327, 26.628059>,  <34.811058, 39.296982, 26.792257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414589, 39.904327, 26.628059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714039, 39.950531, 26.366915>,  <34.893707, 39.978252, 26.210228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714039, 39.950531, 26.366915>,  <34.414589, 39.904327, 26.628059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714039, 39.950531, 26.366915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646110, 0.347946, -0.679320,
		0.148692, 0.930372, 0.335111,
		0.748620, 0.115509, -0.652859,
		34.938625, 39.985184, 26.171057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324509, 40.568073, 26.415459>,  <34.414589, 39.904327, 26.628059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324509, 40.568073, 26.415459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.547283, 40.379555, 26.141903>,  <34.680946, 40.266445, 25.977770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.547283, 40.379555, 26.141903>,  <34.324509, 40.568073, 26.415459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547283, 40.379555, 26.141903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631540, 0.294483, -0.717243,
		0.539428, 0.831359, -0.133635,
		0.556933, -0.471297, -0.683889,
		34.714363, 40.238167, 25.936737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460571, 41.103191, 25.945763>,  <34.324509, 40.568073, 26.415459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460571, 41.103191, 25.945763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.499836, 40.750748, 25.760715>,  <34.523396, 40.539284, 25.649687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.499836, 40.750748, 25.760715>,  <34.460571, 41.103191, 25.945763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499836, 40.750748, 25.760715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703533, 0.267343, -0.658460,
		0.703851, 0.390101, -0.593646,
		0.098159, -0.881107, -0.462619,
		34.529285, 40.486416, 25.621929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460266, 41.239937, 25.316458>,  <34.460571, 41.103191, 25.945763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460266, 41.239937, 25.316458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362995, 40.852104, 25.305277>,  <34.304634, 40.619404, 25.298569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362995, 40.852104, 25.305277>,  <34.460266, 41.239937, 25.316458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362995, 40.852104, 25.305277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643532, 0.182828, -0.743263,
		0.725764, -0.162754, -0.668415,
		-0.243174, -0.969580, -0.027953,
		34.290043, 40.561230, 25.296890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538635, 41.113350, 24.754974>,  <34.460266, 41.239937, 25.316458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538635, 41.113350, 24.754974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.304531, 40.796188, 24.822819>,  <34.164066, 40.605892, 24.863525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.304531, 40.796188, 24.822819>,  <34.538635, 41.113350, 24.754974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304531, 40.796188, 24.822819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486579, 0.176114, -0.855701,
		0.648621, -0.583338, -0.488885,
		-0.585262, -0.792907, 0.169609,
		34.128952, 40.558315, 24.873701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683556, 40.700203, 24.072145>,  <34.538635, 41.113350, 24.754974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683556, 40.700203, 24.072145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339104, 40.573784, 24.231430>,  <34.132435, 40.497932, 24.327002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339104, 40.573784, 24.231430>,  <34.683556, 40.700203, 24.072145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339104, 40.573784, 24.231430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454806, 0.128896, -0.881213,
		0.227178, -0.939947, -0.254737,
		-0.861128, -0.316048, 0.398212,
		34.080765, 40.478970, 24.350893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364685, 40.244762, 23.576263>,  <34.683556, 40.700203, 24.072145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364685, 40.244762, 23.576263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059807, 40.372215, 23.801664>,  <33.876881, 40.448685, 23.936905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059807, 40.372215, 23.801664>,  <34.364685, 40.244762, 23.576263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059807, 40.372215, 23.801664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587523, 0.024998, -0.808821,
		-0.271801, -0.947549, 0.168149,
		-0.762195, 0.318630, 0.563501,
		33.831150, 40.467804, 23.970715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798969, 39.999786, 23.268723>,  <34.364685, 40.244762, 23.576263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798969, 39.999786, 23.268723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625668, 40.285427, 23.488665>,  <33.521687, 40.456814, 23.620630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625668, 40.285427, 23.488665>,  <33.798969, 39.999786, 23.268723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625668, 40.285427, 23.488665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636232, 0.189786, -0.747790,
		-0.638357, -0.673820, 0.372112,
		-0.433254, 0.714107, 0.549857,
		33.495693, 40.499660, 23.653622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142784, 39.857826, 23.173225>,  <33.798969, 39.999786, 23.268723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142784, 39.857826, 23.173225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142906, 40.226273, 23.328938>,  <33.142979, 40.447342, 23.422365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142906, 40.226273, 23.328938>,  <33.142784, 39.857826, 23.173225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142906, 40.226273, 23.328938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722898, 0.269176, -0.636367,
		-0.690955, -0.281215, 0.665957,
		0.000304, 0.921120, 0.389279,
		33.142998, 40.502609, 23.445721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542469, 39.962402, 23.340134>,  <33.142784, 39.857826, 23.173225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542469, 39.962402, 23.340134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675957, 40.339069, 23.322729>,  <32.756050, 40.565071, 23.312286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675957, 40.339069, 23.322729>,  <32.542469, 39.962402, 23.340134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675957, 40.339069, 23.322729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836642, 0.274597, -0.473948,
		-0.434355, 0.194566, 0.879477,
		0.333716, 0.941669, -0.043509,
		32.776070, 40.621571, 23.309677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976803, 40.432304, 23.585878>,  <32.542469, 39.962402, 23.340134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976803, 40.432304, 23.585878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.231117, 40.646626, 23.363640>,  <32.383705, 40.775219, 23.230297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.231117, 40.646626, 23.363640>,  <31.976803, 40.432304, 23.585878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231117, 40.646626, 23.363640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756477, 0.289531, -0.586442,
		-0.153357, 0.793147, 0.589405,
		0.635786, 0.535807, -0.555596,
		32.421852, 40.807369, 23.196960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612314, 40.968166, 23.312410>,  <31.976803, 40.432304, 23.585878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612314, 40.968166, 23.312410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931190, 40.988972, 23.071815>,  <32.122517, 41.001457, 22.927460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931190, 40.988972, 23.071815>,  <31.612314, 40.968166, 23.312410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931190, 40.988972, 23.071815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596027, 0.226449, -0.770372,
		0.096134, 0.972633, 0.211525,
		0.797189, 0.052016, -0.601485,
		32.170345, 41.004578, 22.891371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578836, 41.574600, 22.932188>,  <31.612314, 40.968166, 23.312410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578836, 41.574600, 22.932188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843063, 41.375042, 22.707775>,  <32.001598, 41.255306, 22.573128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843063, 41.375042, 22.707775>,  <31.578836, 41.574600, 22.932188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843063, 41.375042, 22.707775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399356, 0.399292, -0.825276,
		0.635738, 0.769203, 0.064525,
		0.660569, -0.498891, -0.561031,
		32.041233, 41.225376, 22.539465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940916, 42.085182, 22.501383>,  <31.578836, 41.574600, 22.932188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940916, 42.085182, 22.501383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.965706, 41.726257, 22.326571>,  <31.980579, 41.510902, 22.221684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.965706, 41.726257, 22.326571>,  <31.940916, 42.085182, 22.501383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965706, 41.726257, 22.326571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277562, 0.405106, -0.871119,
		0.958707, 0.175291, -0.223952,
		0.061975, -0.897308, -0.437032,
		31.984299, 41.457066, 22.195461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973316, 42.304527, 21.918730>,  <31.940916, 42.085182, 22.501383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973316, 42.304527, 21.918730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.924496, 41.915462, 21.839710>,  <31.895203, 41.682022, 21.792297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.924496, 41.915462, 21.839710>,  <31.973316, 42.304527, 21.918730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924496, 41.915462, 21.839710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483029, 0.232087, -0.844285,
		0.867056, -0.007623, -0.498152,
		-0.122051, -0.972665, -0.197551,
		31.887880, 41.623665, 21.780445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362267, 42.209465, 21.297947>,  <31.973316, 42.304527, 21.918730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362267, 42.209465, 21.297947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063667, 41.947132, 21.342890>,  <31.884508, 41.789734, 21.369856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063667, 41.947132, 21.342890>,  <32.362267, 42.209465, 21.297947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063667, 41.947132, 21.342890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286186, 0.164021, -0.944031,
		0.600696, -0.736874, -0.310131,
		-0.746499, -0.655831, 0.112357,
		31.839718, 41.750381, 21.376596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453457, 41.798294, 20.780376>,  <32.362267, 42.209465, 21.297947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453457, 41.798294, 20.780376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069164, 41.725574, 20.864233>,  <31.838589, 41.681942, 20.914547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069164, 41.725574, 20.864233>,  <32.453457, 41.798294, 20.780376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069164, 41.725574, 20.864233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230050, 0.099342, -0.968095,
		0.155176, -0.978304, -0.137264,
		-0.960728, -0.181803, 0.209643,
		31.780945, 41.671036, 20.927126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263668, 41.180130, 20.318266>,  <32.453457, 41.798294, 20.780376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263668, 41.180130, 20.318266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.908527, 41.334061, 20.419159>,  <31.695442, 41.426418, 20.479694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.908527, 41.334061, 20.419159>,  <32.263668, 41.180130, 20.318266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908527, 41.334061, 20.419159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232117, 0.098725, -0.967665,
		-0.397290, -0.917692, 0.001673,
		-0.887853, 0.384831, 0.252234,
		31.642172, 41.449509, 20.494829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666775, 40.809738, 19.901241>,  <32.263668, 41.180130, 20.318266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666775, 40.809738, 19.901241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.577467, 41.185848, 20.004030>,  <31.523882, 41.411514, 20.065704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.577467, 41.185848, 20.004030>,  <31.666775, 40.809738, 19.901241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577467, 41.185848, 20.004030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318216, 0.178877, -0.930989,
		-0.921352, -0.289634, 0.259273,
		-0.223268, 0.940274, 0.256975,
		31.510487, 41.467930, 20.081123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925446, 41.019581, 19.757967>,  <31.666775, 40.809738, 19.901241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925446, 41.019581, 19.757967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230549, 41.276478, 19.727711>,  <31.413610, 41.430618, 19.709557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230549, 41.276478, 19.727711>,  <30.925446, 41.019581, 19.757967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230549, 41.276478, 19.727711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097450, -0.001478, -0.995239,
		-0.639301, 0.766497, 0.061460,
		0.762757, 0.642246, -0.075640,
		31.459375, 41.469151, 19.705019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153206, 40.280842, 19.428192>,  <30.925446, 41.019581, 19.757967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153206, 40.280842, 19.428192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.051725, 39.894466, 19.407766>,  <30.990837, 39.662643, 19.395510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.051725, 39.894466, 19.407766>,  <31.153206, 40.280842, 19.428192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051725, 39.894466, 19.407766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463517, -0.167740, 0.870066,
		-0.848993, 0.197066, 0.490282,
		-0.253700, -0.965934, -0.051066,
		30.975615, 39.604687, 19.392447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841795, 40.111374, 20.044048>,  <31.153206, 40.280842, 19.428192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841795, 40.111374, 20.044048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924700, 39.742245, 19.914164>,  <30.974443, 39.520767, 19.836233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924700, 39.742245, 19.914164>,  <30.841795, 40.111374, 20.044048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924700, 39.742245, 19.914164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259334, -0.268214, 0.927797,
		-0.943286, -0.276507, 0.183729,
		0.207263, -0.922825, -0.324709,
		30.986879, 39.465397, 19.816751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526520, 39.560223, 20.473267>,  <30.841795, 40.111374, 20.044048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526520, 39.560223, 20.473267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836693, 39.366096, 20.311687>,  <31.022797, 39.249622, 20.214741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836693, 39.366096, 20.311687>,  <30.526520, 39.560223, 20.473267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836693, 39.366096, 20.311687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208844, -0.406605, 0.889414,
		-0.595892, -0.774043, -0.213940,
		0.775433, -0.485315, -0.403946,
		31.069323, 39.220501, 20.190504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527502, 39.002434, 20.789747>,  <30.526520, 39.560223, 20.473267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527502, 39.002434, 20.789747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.903059, 39.010906, 20.652327>,  <31.128393, 39.015991, 20.569874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.903059, 39.010906, 20.652327>,  <30.527502, 39.002434, 20.789747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903059, 39.010906, 20.652327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311126, -0.479178, 0.820725,
		-0.147235, -0.877462, -0.456489,
		0.938894, 0.021186, -0.343553,
		31.184727, 39.017262, 20.549261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699499, 38.433372, 20.964382>,  <30.527502, 39.002434, 20.789747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699499, 38.433372, 20.964382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.034363, 38.643913, 20.904894>,  <31.235281, 38.770237, 20.869200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.034363, 38.643913, 20.904894>,  <30.699499, 38.433372, 20.964382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034363, 38.643913, 20.904894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386095, -0.376084, 0.842313,
		0.387421, -0.762571, -0.518064,
		0.837159, 0.526352, -0.148722,
		31.285511, 38.801819, 20.860277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210409, 37.854095, 20.929340>,  <30.699499, 38.433372, 20.964382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210409, 37.854095, 20.929340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407635, 38.185619, 21.035145>,  <31.525970, 38.384533, 21.098627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407635, 38.185619, 21.035145>,  <31.210409, 37.854095, 20.929340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407635, 38.185619, 21.035145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537687, -0.529324, 0.656284,
		0.683946, -0.181365, -0.706629,
		0.493063, 0.828808, 0.264511,
		31.555553, 38.434261, 21.114498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882057, 37.589226, 20.947857>,  <31.210409, 37.854095, 20.929340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882057, 37.589226, 20.947857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871389, 37.942669, 21.134848>,  <31.864988, 38.154736, 21.247042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871389, 37.942669, 21.134848>,  <31.882057, 37.589226, 20.947857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871389, 37.942669, 21.134848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573402, -0.369538, 0.731199,
		0.818840, 0.287554, -0.496803,
		-0.026672, 0.883603, 0.467476,
		31.863388, 38.207748, 21.275091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507366, 37.819733, 21.087732>,  <31.882057, 37.589226, 20.947857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507366, 37.819733, 21.087732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282936, 38.005047, 21.362122>,  <32.148277, 38.116234, 21.526756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282936, 38.005047, 21.362122>,  <32.507366, 37.819733, 21.087732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282936, 38.005047, 21.362122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576261, -0.376302, 0.725479,
		0.594235, 0.802351, -0.055837,
		-0.561077, 0.463282, 0.685975,
		32.114613, 38.144032, 21.567915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953430, 38.190006, 21.571478>,  <32.507366, 37.819733, 21.087732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953430, 38.190006, 21.571478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603260, 38.176769, 21.764364>,  <32.393158, 38.168827, 21.880096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603260, 38.176769, 21.764364>,  <32.953430, 38.190006, 21.571478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603260, 38.176769, 21.764364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483329, -0.050130, 0.874002,
		-0.004747, 0.998195, 0.059878,
		-0.875426, -0.033090, 0.482218,
		32.340633, 38.166843, 21.909029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975891, 38.732071, 22.059635>,  <32.953430, 38.190006, 21.571478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975891, 38.732071, 22.059635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724724, 38.447289, 22.185387>,  <32.574024, 38.276421, 22.260838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724724, 38.447289, 22.185387>,  <32.975891, 38.732071, 22.059635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724724, 38.447289, 22.185387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415399, 0.035006, 0.908966,
		-0.658150, 0.701350, 0.273765,
		-0.627920, -0.711957, 0.314379,
		32.536346, 38.233700, 22.279701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623619, 39.032955, 22.701929>,  <32.975891, 38.732071, 22.059635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623619, 39.032955, 22.701929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576767, 38.636841, 22.731903>,  <32.548656, 38.399174, 22.749887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576767, 38.636841, 22.731903>,  <32.623619, 39.032955, 22.701929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576767, 38.636841, 22.731903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188285, 0.051942, 0.980740,
		-0.975105, 0.128984, 0.180372,
		-0.117131, -0.990285, 0.074935,
		32.541626, 38.339756, 22.754383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250954, 38.892696, 23.294662>,  <32.623619, 39.032955, 22.701929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250954, 38.892696, 23.294662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.456806, 38.557522, 23.221987>,  <32.580318, 38.356415, 23.178381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.456806, 38.557522, 23.221987>,  <32.250954, 38.892696, 23.294662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456806, 38.557522, 23.221987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295198, -0.025790, 0.955088,
		-0.804991, -0.545155, 0.234086,
		0.514634, -0.837939, -0.181690,
		32.611195, 38.306141, 23.167480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086201, 38.508438, 23.863111>,  <32.250954, 38.892696, 23.294662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086201, 38.508438, 23.863111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399525, 38.317982, 23.703253>,  <32.587521, 38.203709, 23.607338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399525, 38.317982, 23.703253>,  <32.086201, 38.508438, 23.863111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399525, 38.317982, 23.703253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300486, -0.272782, 0.913947,
		-0.544184, -0.835990, -0.070599,
		0.783309, -0.476141, -0.399646,
		32.634518, 38.175140, 23.583359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086555, 37.888321, 24.250937>,  <32.086201, 38.508438, 23.863111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086555, 37.888321, 24.250937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.454437, 37.940464, 24.102800>,  <32.675167, 37.971748, 24.013918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.454437, 37.940464, 24.102800>,  <32.086555, 37.888321, 24.250937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454437, 37.940464, 24.102800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392442, -0.277169, 0.877022,
		0.011681, -0.951937, -0.306072,
		0.919703, 0.130359, -0.370342,
		32.730347, 37.979572, 23.991697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426208, 37.396667, 24.597416>,  <32.086555, 37.888321, 24.250937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426208, 37.396667, 24.597416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737556, 37.609547, 24.464207>,  <32.924366, 37.737274, 24.384281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737556, 37.609547, 24.464207>,  <32.426208, 37.396667, 24.597416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737556, 37.609547, 24.464207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509873, -0.226396, 0.829924,
		0.366290, -0.815788, -0.447574,
		0.778370, 0.532199, -0.333022,
		32.971069, 37.769207, 24.364300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955002, 36.921429, 24.698448>,  <32.426208, 37.396667, 24.597416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955002, 36.921429, 24.698448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145832, 37.270180, 24.654198>,  <33.260330, 37.479431, 24.627647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145832, 37.270180, 24.654198>,  <32.955002, 36.921429, 24.698448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145832, 37.270180, 24.654198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742229, -0.332292, 0.581961,
		0.470636, -0.359748, -0.805657,
		0.477072, 0.871874, -0.110626,
		33.288956, 37.531742, 24.621010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604404, 36.756779, 24.463547>,  <32.955002, 36.921429, 24.698448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604404, 36.756779, 24.463547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631325, 37.117455, 24.634390>,  <33.647476, 37.333862, 24.736897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631325, 37.117455, 24.634390>,  <33.604404, 36.756779, 24.463547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631325, 37.117455, 24.634390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812719, -0.297862, 0.500766,
		0.578756, 0.313417, -0.752869,
		0.067302, 0.901692, 0.427109,
		33.651516, 37.387962, 24.762522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385616, 36.869778, 24.432205>,  <33.604404, 36.756779, 24.463547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385616, 36.869778, 24.432205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232590, 37.122780, 24.701597>,  <34.140774, 37.274582, 24.863232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232590, 37.122780, 24.701597>,  <34.385616, 36.869778, 24.432205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232590, 37.122780, 24.701597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785414, -0.161255, 0.597597,
		0.486587, 0.757581, -0.435091,
		-0.382568, 0.632509, 0.673479,
		34.117821, 37.312534, 24.903641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940269, 37.338921, 24.637878>,  <34.385616, 36.869778, 24.432205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940269, 37.338921, 24.637878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667973, 37.344559, 24.930834>,  <34.504597, 37.347942, 25.106607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667973, 37.344559, 24.930834>,  <34.940269, 37.338921, 24.637878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667973, 37.344559, 24.930834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717238, -0.190367, 0.670321,
		0.148871, 0.981612, 0.119481,
		-0.680740, 0.014095, 0.732389,
		34.463749, 37.348785, 25.150551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346329, 37.493759, 25.168686>,  <34.940269, 37.338921, 24.637878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346329, 37.493759, 25.168686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.005959, 37.372272, 25.340117>,  <34.801735, 37.299381, 25.442974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.005959, 37.372272, 25.340117>,  <35.346329, 37.493759, 25.168686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005959, 37.372272, 25.340117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493146, -0.180907, 0.850929,
		-0.180907, 0.935430, 0.303715,
		-0.850929, -0.303715, 0.428576,
		34.750679, 37.281158, 25.468689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.073795, 40.120846, 29.807821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767174, 39.864876, 29.786320>,  <37.583202, 39.711292, 29.773418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767174, 39.864876, 29.786320>,  <38.073795, 40.120846, 29.807821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767174, 39.864876, 29.786320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065944, -0.161704, 0.984634,
		-0.638786, 0.751229, 0.166155,
		-0.766553, -0.639927, -0.053755,
		37.537209, 39.672897, 29.770193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653187, 40.386791, 30.289045>,  <38.073795, 40.120846, 29.807821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653187, 40.386791, 30.289045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.551090, 40.001652, 30.253757>,  <37.489834, 39.770569, 30.232584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.551090, 40.001652, 30.253757>,  <37.653187, 40.386791, 30.289045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551090, 40.001652, 30.253757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017026, -0.086754, 0.996084,
		-0.966728, 0.255743, 0.005750,
		-0.255241, -0.962844, -0.088222,
		37.474518, 39.712799, 30.227291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204975, 40.323544, 30.886696>,  <37.653187, 40.386791, 30.289045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204975, 40.323544, 30.886696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.276524, 39.948902, 30.766174>,  <37.319454, 39.724117, 30.693861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.276524, 39.948902, 30.766174>,  <37.204975, 40.323544, 30.886696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276524, 39.948902, 30.766174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125018, -0.325397, 0.937276,
		-0.975897, -0.129982, -0.175296,
		0.178870, -0.936601, -0.301304,
		37.330185, 39.667923, 30.675783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734478, 39.850136, 31.286539>,  <37.204975, 40.323544, 30.886696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734478, 39.850136, 31.286539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.022823, 39.603916, 31.159132>,  <37.195831, 39.456184, 31.082687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.022823, 39.603916, 31.159132>,  <36.734478, 39.850136, 31.286539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022823, 39.603916, 31.159132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075919, -0.386673, 0.919087,
		-0.688907, -0.686717, -0.232006,
		0.720863, -0.615552, -0.318517,
		37.239082, 39.419250, 31.063578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596539, 39.235695, 31.666786>,  <36.734478, 39.850136, 31.286539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596539, 39.235695, 31.666786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977818, 39.202602, 31.550461>,  <37.206585, 39.182747, 31.480665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977818, 39.202602, 31.550461>,  <36.596539, 39.235695, 31.666786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977818, 39.202602, 31.550461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211484, -0.504962, 0.836832,
		-0.216080, -0.859168, -0.463833,
		0.953197, -0.082729, -0.290812,
		37.263775, 39.177784, 31.463217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798805, 38.526402, 31.851509>,  <36.596539, 39.235695, 31.666786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798805, 38.526402, 31.851509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.136513, 38.737518, 31.814295>,  <37.339138, 38.864189, 31.791967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.136513, 38.737518, 31.814295>,  <36.798805, 38.526402, 31.851509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136513, 38.737518, 31.814295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336959, -0.387774, 0.857957,
		0.416746, -0.755691, -0.505227,
		0.844264, 0.527791, -0.093033,
		37.389793, 38.895855, 31.786385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235725, 38.121597, 32.084473>,  <36.798805, 38.526402, 31.851509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235725, 38.121597, 32.084473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.453205, 38.456383, 32.109421>,  <37.583691, 38.657253, 32.124390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.453205, 38.456383, 32.109421>,  <37.235725, 38.121597, 32.084473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453205, 38.456383, 32.109421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390872, -0.318277, 0.863666,
		0.742707, -0.445191, -0.500191,
		0.543696, 0.836961, 0.062374,
		37.616314, 38.707470, 32.128132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001907, 37.875721, 32.145725>,  <37.235725, 38.121597, 32.084473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001907, 37.875721, 32.145725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965389, 38.250881, 32.279598>,  <37.943478, 38.475979, 32.359921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965389, 38.250881, 32.279598>,  <38.001907, 37.875721, 32.145725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965389, 38.250881, 32.279598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262957, -0.301449, 0.916505,
		0.960479, 0.171674, -0.219107,
		-0.091291, 0.937900, 0.334678,
		37.938004, 38.532249, 32.380001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447189, 37.822857, 32.631252>,  <38.001907, 37.875721, 32.145725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447189, 37.822857, 32.631252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258865, 38.167747, 32.705978>,  <38.145870, 38.374683, 32.750813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258865, 38.167747, 32.705978>,  <38.447189, 37.822857, 32.631252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258865, 38.167747, 32.705978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124484, -0.144710, 0.981612,
		0.873406, 0.485412, -0.039202,
		-0.470813, 0.862226, 0.186816,
		38.117622, 38.426414, 32.762024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007122, 38.406773, 32.923611>,  <38.447189, 37.822857, 32.631252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007122, 38.406773, 32.923611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.622833, 38.440929, 33.029224>,  <38.392258, 38.461422, 33.092594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.622833, 38.440929, 33.029224>,  <39.007122, 38.406773, 32.923611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622833, 38.440929, 33.029224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252540, -0.125345, 0.959433,
		0.115022, 0.988432, 0.098858,
		-0.960725, 0.085390, 0.264036,
		38.334614, 38.466545, 33.108437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115749, 38.559948, 33.569412>,  <39.007122, 38.406773, 32.923611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115749, 38.559948, 33.569412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722500, 38.486797, 33.567444>,  <38.486549, 38.442905, 33.566265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722500, 38.486797, 33.567444>,  <39.115749, 38.559948, 33.569412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722500, 38.486797, 33.567444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019213, -0.129948, 0.991335,
		-0.181933, 0.974510, 0.131268,
		-0.983123, -0.182878, -0.004918,
		38.427563, 38.431934, 33.565968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962238, 38.843246, 34.157074>,  <39.115749, 38.559948, 33.569412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962238, 38.843246, 34.157074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669426, 38.587368, 34.063339>,  <38.493740, 38.433842, 34.007099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669426, 38.587368, 34.063339>,  <38.962238, 38.843246, 34.157074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669426, 38.587368, 34.063339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030755, -0.312587, 0.949391,
		-0.680576, 0.702192, 0.209150,
		-0.732032, -0.639700, -0.234336,
		38.449818, 38.395458, 33.993038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380981, 38.949276, 34.590218>,  <38.962238, 38.843246, 34.157074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380981, 38.949276, 34.590218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.358322, 38.570637, 34.463253>,  <38.344727, 38.343452, 34.387074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.358322, 38.570637, 34.463253>,  <38.380981, 38.949276, 34.590218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358322, 38.570637, 34.463253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137468, -0.322287, 0.936607,
		-0.988885, 0.009424, 0.148384,
		-0.056649, -0.946595, -0.317409,
		38.341328, 38.286659, 34.368031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241890, 39.462280, 34.061005>,  <38.380981, 38.949276, 34.590218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241890, 39.462280, 34.061005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.471386, 39.736237, 34.240669>,  <38.609081, 39.900612, 34.348469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.471386, 39.736237, 34.240669>,  <38.241890, 39.462280, 34.061005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471386, 39.736237, 34.240669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607548, -0.723662, 0.327412,
		0.549284, 0.085040, -0.831298,
		0.573735, 0.684895, 0.449161,
		38.643505, 39.941704, 34.375416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544720, 39.491482, 34.278664>,  <38.241890, 39.462280, 34.061005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544720, 39.491482, 34.278664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.612564, 39.883057, 34.324131>,  <37.653271, 40.118000, 34.351410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.612564, 39.883057, 34.324131>,  <37.544720, 39.491482, 34.278664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612564, 39.883057, 34.324131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737391, 0.202583, -0.644371,
		-0.653824, 0.025476, 0.756218,
		0.169613, 0.978933, 0.113668,
		37.663448, 40.176735, 34.358231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984951, 39.644054, 34.395542>,  <37.544720, 39.491482, 34.278664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984951, 39.644054, 34.395542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.174789, 39.987701, 34.318939>,  <37.288692, 40.193890, 34.272976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.174789, 39.987701, 34.318939>,  <36.984951, 39.644054, 34.395542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174789, 39.987701, 34.318939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806007, 0.336743, -0.486783,
		-0.353715, 0.385382, 0.852271,
		0.474594, 0.859119, -0.191510,
		37.317169, 40.245438, 34.261486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390949, 40.117405, 34.462997>,  <36.984951, 39.644054, 34.395542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390949, 40.117405, 34.462997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.671921, 40.294136, 34.239788>,  <36.840504, 40.400173, 34.105862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.671921, 40.294136, 34.239788>,  <36.390949, 40.117405, 34.462997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671921, 40.294136, 34.239788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695750, 0.260891, -0.669229,
		-0.150099, 0.858328, 0.490656,
		0.702426, 0.441824, -0.558022,
		36.882648, 40.426682, 34.072380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997574, 40.665672, 34.182755>,  <36.390949, 40.117405, 34.462997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997574, 40.665672, 34.182755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.326172, 40.712307, 33.959488>,  <36.523331, 40.740288, 33.825527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.326172, 40.712307, 33.959488>,  <35.997574, 40.665672, 34.182755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326172, 40.712307, 33.959488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555556, 0.384189, -0.737398,
		0.128469, 0.915863, 0.380382,
		0.821494, 0.116591, -0.558170,
		36.572620, 40.747284, 33.792038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121490, 41.373562, 34.043034>,  <35.997574, 40.665672, 34.182755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121490, 41.373562, 34.043034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270779, 41.148373, 33.748070>,  <36.360352, 41.013260, 33.571091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270779, 41.148373, 33.748070>,  <36.121490, 41.373562, 34.043034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270779, 41.148373, 33.748070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707689, 0.341206, -0.618672,
		0.599903, 0.752756, -0.271065,
		0.373220, -0.562972, -0.737407,
		36.382744, 40.979481, 33.526848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951164, 41.772392, 33.527115>,  <36.121490, 41.373562, 34.043034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951164, 41.772392, 33.527115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999966, 41.416695, 33.350773>,  <36.029247, 41.203274, 33.244968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999966, 41.416695, 33.350773>,  <35.951164, 41.772392, 33.527115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999966, 41.416695, 33.350773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577859, 0.297493, -0.759985,
		0.806966, 0.347474, -0.477564,
		0.122003, -0.889247, -0.440858,
		36.036568, 41.149921, 33.218517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180561, 41.903900, 32.800755>,  <35.951164, 41.772392, 33.527115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180561, 41.903900, 32.800755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.025993, 41.535660, 32.778214>,  <35.933250, 41.314716, 32.764690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.025993, 41.535660, 32.778214>,  <36.180561, 41.903900, 32.800755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025993, 41.535660, 32.778214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464869, 0.247168, -0.850179,
		0.796602, -0.302331, -0.523470,
		-0.386421, -0.920600, -0.056350,
		35.910069, 41.259480, 32.761307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136337, 41.707817, 32.105385>,  <36.180561, 41.903900, 32.800755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136337, 41.707817, 32.105385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887733, 41.425182, 32.240715>,  <35.738571, 41.255604, 32.321915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887733, 41.425182, 32.240715>,  <36.136337, 41.707817, 32.105385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887733, 41.425182, 32.240715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534682, 0.066942, -0.842398,
		0.572577, -0.704455, -0.419403,
		-0.621507, -0.706584, 0.338330,
		35.701283, 41.213207, 32.342213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174858, 41.104645, 31.666145>,  <36.136337, 41.707817, 32.105385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174858, 41.104645, 31.666145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820278, 41.104382, 31.851276>,  <35.607533, 41.104221, 31.962357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820278, 41.104382, 31.851276>,  <36.174858, 41.104645, 31.666145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820278, 41.104382, 31.851276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461779, -0.066114, -0.884528,
		0.031190, -0.997812, 0.058298,
		-0.886447, -0.000668, 0.462830,
		35.554344, 41.104183, 31.990126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816525, 40.716423, 31.310686>,  <36.174858, 41.104645, 31.666145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816525, 40.716423, 31.310686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.530056, 40.902679, 31.518641>,  <35.358177, 41.014431, 31.643414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.530056, 40.902679, 31.518641>,  <35.816525, 40.716423, 31.310686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530056, 40.902679, 31.518641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550289, 0.081442, -0.830993,
		-0.429283, -0.881220, 0.197909,
		-0.716169, 0.465638, 0.519887,
		35.315205, 41.042370, 31.674606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186474, 40.353134, 31.086540>,  <35.816525, 40.716423, 31.310686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186474, 40.353134, 31.086540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.077766, 40.691227, 31.270597>,  <35.012543, 40.894081, 31.381031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.077766, 40.691227, 31.270597>,  <35.186474, 40.353134, 31.086540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077766, 40.691227, 31.270597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690984, 0.161422, -0.704616,
		-0.669840, -0.509441, 0.540171,
		-0.271765, 0.845229, 0.460143,
		34.996235, 40.944798, 31.408640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502502, 40.247097, 31.244471>,  <35.186474, 40.353134, 31.086540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502502, 40.247097, 31.244471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.568729, 40.640915, 31.221621>,  <34.608467, 40.877205, 31.207911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.568729, 40.640915, 31.221621>,  <34.502502, 40.247097, 31.244471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568729, 40.640915, 31.221621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671504, 0.070124, -0.737676,
		-0.722267, 0.160499, 0.672734,
		0.165571, 0.984542, -0.057127,
		34.618401, 40.936279, 31.204483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828705, 40.513985, 31.084904>,  <34.502502, 40.247097, 31.244471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828705, 40.513985, 31.084904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.063278, 40.830509, 31.015713>,  <34.204021, 41.020424, 30.974197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.063278, 40.830509, 31.015713>,  <33.828705, 40.513985, 31.084904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063278, 40.830509, 31.015713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650363, 0.332704, -0.682888,
		-0.482824, 0.512971, 0.709748,
		0.586438, 0.791308, -0.172980,
		34.239208, 41.067902, 30.963820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342556, 41.133858, 31.094297>,  <33.828705, 40.513985, 31.084904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342556, 41.133858, 31.094297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.670803, 41.217201, 30.881441>,  <33.867752, 41.267208, 30.753727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.670803, 41.217201, 30.881441>,  <33.342556, 41.133858, 31.094297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670803, 41.217201, 30.881441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569006, 0.211431, -0.794688,
		-0.053067, 0.954926, 0.292061,
		0.820619, 0.208356, -0.532139,
		33.916988, 41.279709, 30.721800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822063, 41.555809, 31.445677>,  <33.342556, 41.133858, 31.094297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822063, 41.555809, 31.445677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.542744, 41.273113, 31.400253>,  <32.375153, 41.103497, 31.372999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.542744, 41.273113, 31.400253>,  <32.822063, 41.555809, 31.445677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542744, 41.273113, 31.400253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191740, -0.337528, 0.921580,
		-0.689644, 0.621769, 0.371207,
		-0.698303, -0.706738, -0.113557,
		32.333252, 41.061092, 31.366186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469784, 41.561375, 32.225796>,  <32.822063, 41.555809, 31.445677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469784, 41.561375, 32.225796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.359974, 41.214741, 32.059105>,  <32.294086, 41.006760, 31.959091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.359974, 41.214741, 32.059105>,  <32.469784, 41.561375, 32.225796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359974, 41.214741, 32.059105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154733, -0.467539, 0.870324,
		-0.949049, 0.174444, 0.262440,
		-0.274524, -0.866589, -0.416726,
		32.277618, 40.954765, 31.934088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227470, 41.272678, 32.794952>,  <32.469784, 41.561375, 32.225796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227470, 41.272678, 32.794952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.292774, 40.958504, 32.556141>,  <32.331959, 40.770000, 32.412853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.292774, 40.958504, 32.556141>,  <32.227470, 41.272678, 32.794952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292774, 40.958504, 32.556141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112180, -0.586443, 0.802185,
		-0.980184, -0.197941, -0.007635,
		0.163263, -0.785433, -0.597027,
		32.341755, 40.722874, 32.377033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844755, 40.672199, 33.068535>,  <32.227470, 41.272678, 32.794952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844755, 40.672199, 33.068535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.144894, 40.520836, 32.851727>,  <32.324978, 40.430019, 32.721642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.144894, 40.520836, 32.851727>,  <31.844755, 40.672199, 33.068535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144894, 40.520836, 32.851727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287419, -0.551632, 0.783002,
		-0.595291, -0.743311, -0.305153,
		0.750346, -0.378407, -0.542023,
		32.369999, 40.407314, 32.689121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912224, 39.916492, 33.194180>,  <31.844755, 40.672199, 33.068535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912224, 39.916492, 33.194180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.269890, 40.007637, 33.040012>,  <32.484489, 40.062325, 32.947514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.269890, 40.007637, 33.040012>,  <31.912224, 39.916492, 33.194180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269890, 40.007637, 33.040012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440793, -0.599003, 0.668503,
		-0.078539, -0.767642, -0.636049,
		0.894166, 0.227863, -0.385416,
		32.538139, 40.075996, 32.924389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233433, 39.302002, 33.066910>,  <31.912224, 39.916492, 33.194180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233433, 39.302002, 33.066910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.547749, 39.548630, 33.086407>,  <32.736340, 39.696606, 33.098106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.547749, 39.548630, 33.086407>,  <32.233433, 39.302002, 33.066910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547749, 39.548630, 33.086407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378884, -0.542170, 0.749999,
		0.488852, -0.570876, -0.659640,
		0.785794, 0.616565, 0.048745,
		32.783485, 39.733601, 33.101028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672771, 38.853668, 33.068169>,  <32.233433, 39.302002, 33.066910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672771, 38.853668, 33.068169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.862602, 39.182705, 33.193466>,  <32.976501, 39.380127, 33.268642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.862602, 39.182705, 33.193466>,  <32.672771, 38.853668, 33.068169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862602, 39.182705, 33.193466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435681, -0.528742, 0.728432,
		0.764826, -0.209224, -0.609316,
		0.474577, 0.822592, 0.313241,
		33.004974, 39.429482, 33.287437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338432, 38.588905, 33.332096>,  <32.672771, 38.853668, 33.068169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338432, 38.588905, 33.332096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.287884, 38.947582, 33.501793>,  <33.257553, 39.162788, 33.603611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.287884, 38.947582, 33.501793>,  <33.338432, 38.588905, 33.332096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287884, 38.947582, 33.501793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514400, -0.306438, 0.800930,
		0.848188, 0.319442, -0.422533,
		-0.126371, 0.896690, 0.424238,
		33.249973, 39.216591, 33.629063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902401, 38.634064, 33.660686>,  <33.338432, 38.588905, 33.332096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902401, 38.634064, 33.660686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.680534, 38.909657, 33.847301>,  <33.547417, 39.075012, 33.959270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.680534, 38.909657, 33.847301>,  <33.902401, 38.634064, 33.660686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680534, 38.909657, 33.847301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516024, -0.155018, 0.842431,
		0.652740, 0.708007, -0.269548,
		-0.554662, 0.688981, 0.466535,
		33.514137, 39.116352, 33.987263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365856, 38.800045, 34.132778>,  <33.902401, 38.634064, 33.660686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365856, 38.800045, 34.132778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057838, 38.975883, 34.317730>,  <33.873028, 39.081387, 34.428699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057838, 38.975883, 34.317730>,  <34.365856, 38.800045, 34.132778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057838, 38.975883, 34.317730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427803, -0.181878, 0.885384,
		0.473305, 0.879589, -0.048006,
		-0.770043, 0.439594, 0.462375,
		33.826824, 39.107761, 34.456444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638134, 39.305977, 34.673210>,  <34.365856, 38.800045, 34.132778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638134, 39.305977, 34.673210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.274082, 39.163376, 34.757656>,  <34.055653, 39.077816, 34.808323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.274082, 39.163376, 34.757656>,  <34.638134, 39.305977, 34.673210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274082, 39.163376, 34.757656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322673, -0.290255, 0.900907,
		-0.259896, 0.888065, 0.379203,
		-0.910130, -0.356501, 0.211119,
		34.001041, 39.056427, 34.820992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581146, 39.423939, 35.399117>,  <34.638134, 39.305977, 34.673210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581146, 39.423939, 35.399117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.313641, 39.145489, 35.294689>,  <34.153137, 38.978416, 35.232033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.313641, 39.145489, 35.294689>,  <34.581146, 39.423939, 35.399117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313641, 39.145489, 35.294689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063369, -0.403246, 0.912895,
		-0.740767, 0.593969, 0.313790,
		-0.668766, -0.696127, -0.261072,
		34.113010, 38.936649, 35.216366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.746897, 42.850601, 28.939434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805023, 42.469513, 28.832703>,  <29.839899, 42.240860, 28.768663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805023, 42.469513, 28.832703>,  <29.746897, 42.850601, 28.939434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805023, 42.469513, 28.832703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264860, -0.222388, 0.938292,
		-0.953275, -0.207022, 0.220022,
		0.145317, -0.952725, -0.266829,
		29.848618, 42.183697, 28.752653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428223, 42.487888, 29.440710>,  <29.746897, 42.850601, 28.939434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428223, 42.487888, 29.440710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665300, 42.207645, 29.281780>,  <29.807547, 42.039501, 29.186422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665300, 42.207645, 29.281780>,  <29.428223, 42.487888, 29.440710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665300, 42.207645, 29.281780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342954, -0.226831, 0.911554,
		-0.728764, -0.676537, 0.105833,
		0.592694, -0.700604, -0.397327,
		29.843109, 41.997463, 29.162582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336878, 41.887306, 29.851936>,  <29.428223, 42.487888, 29.440710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336878, 41.887306, 29.851936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683969, 41.853264, 29.656059>,  <29.892225, 41.832836, 29.538532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683969, 41.853264, 29.656059>,  <29.336878, 41.887306, 29.851936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683969, 41.853264, 29.656059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440821, -0.323355, 0.837328,
		-0.229607, -0.942443, -0.243068,
		0.867731, -0.085107, -0.489693,
		29.944288, 41.827732, 29.509151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621927, 41.319538, 30.076752>,  <29.336878, 41.887306, 29.851936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621927, 41.319538, 30.076752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957750, 41.479572, 29.929743>,  <30.159245, 41.575592, 29.841537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957750, 41.479572, 29.929743>,  <29.621927, 41.319538, 30.076752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957750, 41.479572, 29.929743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539270, -0.531808, 0.652968,
		0.065792, -0.746399, -0.662239,
		0.839559, 0.400086, -0.367522,
		30.209618, 41.599598, 29.819487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109093, 40.770229, 30.124311>,  <29.621927, 41.319538, 30.076752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109093, 40.770229, 30.124311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353819, 41.084656, 30.089022>,  <30.500654, 41.273312, 30.067848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353819, 41.084656, 30.089022>,  <30.109093, 40.770229, 30.124311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353819, 41.084656, 30.089022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723559, -0.511096, 0.463944,
		0.319599, -0.347683, -0.881461,
		0.611816, 0.786065, -0.088223,
		30.537363, 41.320477, 30.062555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738695, 40.513973, 29.907887>,  <30.109093, 40.770229, 30.124311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738695, 40.513973, 29.907887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857685, 40.869942, 30.046188>,  <30.929079, 41.083523, 30.129169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857685, 40.869942, 30.046188>,  <30.738695, 40.513973, 29.907887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857685, 40.869942, 30.046188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766555, -0.438512, 0.469149,
		0.569124, 0.125480, -0.812621,
		0.297475, 0.889923, 0.345755,
		30.946928, 41.136917, 30.149916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416794, 40.578617, 29.752357>,  <30.738695, 40.513973, 29.907887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416794, 40.578617, 29.752357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379932, 40.835842, 30.056458>,  <31.357817, 40.990177, 30.238916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379932, 40.835842, 30.056458>,  <31.416794, 40.578617, 29.752357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379932, 40.835842, 30.056458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842881, -0.356122, 0.403397,
		0.530151, 0.677972, -0.509209,
		-0.092151, 0.643063, 0.760248,
		31.352287, 41.028763, 30.284533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094185, 40.703236, 29.999973>,  <31.416794, 40.578617, 29.752357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094185, 40.703236, 29.999973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907852, 40.882942, 30.304909>,  <31.796051, 40.990765, 30.487871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907852, 40.882942, 30.304909>,  <32.094185, 40.703236, 29.999973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907852, 40.882942, 30.304909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674426, -0.377466, 0.634562,
		0.572842, 0.809743, -0.127157,
		-0.465834, 0.449262, 0.762340,
		31.768103, 41.017719, 30.533611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582508, 41.180367, 30.324402>,  <32.094185, 40.703236, 29.999973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582508, 41.180367, 30.324402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313976, 41.062138, 30.596272>,  <32.152859, 40.991199, 30.759394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313976, 41.062138, 30.596272>,  <32.582508, 41.180367, 30.324402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313976, 41.062138, 30.596272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740616, -0.232368, 0.630470,
		-0.028418, 0.926628, 0.374903,
		-0.671327, -0.295576, 0.679673,
		32.112579, 40.973465, 30.800173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093109, 41.805077, 30.652134>,  <32.582508, 41.180367, 30.324402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093109, 41.805077, 30.652134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398800, 41.614685, 30.478052>,  <33.582214, 41.500450, 30.373604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398800, 41.614685, 30.478052>,  <33.093109, 41.805077, 30.652134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398800, 41.614685, 30.478052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320004, 0.306024, -0.896631,
		0.559964, 0.824493, 0.081554,
		0.764224, -0.475983, -0.435204,
		33.628067, 41.471889, 30.347490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290024, 42.269741, 30.167940>,  <33.093109, 41.805077, 30.652134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290024, 42.269741, 30.167940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466171, 41.925240, 30.066498>,  <33.571861, 41.718540, 30.005632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466171, 41.925240, 30.066498>,  <33.290024, 42.269741, 30.167940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466171, 41.925240, 30.066498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214726, 0.173242, -0.961187,
		0.871760, 0.477736, -0.108642,
		0.440372, -0.861252, -0.253608,
		33.598282, 41.666862, 29.990416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598881, 42.446892, 29.581081>,  <33.290024, 42.269741, 30.167940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598881, 42.446892, 29.581081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553444, 42.049492, 29.578148>,  <33.526180, 41.811050, 29.576387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553444, 42.049492, 29.578148>,  <33.598881, 42.446892, 29.581081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553444, 42.049492, 29.578148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098626, 0.018622, -0.994951,
		0.988620, -0.112296, -0.100100,
		-0.113593, -0.993501, -0.007335,
		33.519367, 41.751442, 29.575947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985977, 42.199677, 28.959749>,  <33.598881, 42.446892, 29.581081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985977, 42.199677, 28.959749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730865, 41.908863, 29.061460>,  <33.577797, 41.734375, 29.122488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730865, 41.908863, 29.061460>,  <33.985977, 42.199677, 28.959749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730865, 41.908863, 29.061460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353024, -0.017487, -0.935451,
		0.684553, -0.686377, -0.245508,
		-0.637779, -0.727035, 0.254278,
		33.539532, 41.690754, 29.137743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121777, 41.707382, 28.474535>,  <33.985977, 42.199677, 28.959749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121777, 41.707382, 28.474535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751663, 41.621708, 28.599745>,  <33.529594, 41.570305, 28.674870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751663, 41.621708, 28.599745>,  <34.121777, 41.707382, 28.474535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751663, 41.621708, 28.599745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316272, -0.019844, -0.948461,
		0.209359, -0.976591, -0.049380,
		-0.925279, -0.214187, 0.313023,
		33.474079, 41.557453, 28.693651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900959, 41.213207, 28.097784>,  <34.121777, 41.707382, 28.474535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900959, 41.213207, 28.097784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551598, 41.358608, 28.227421>,  <33.341980, 41.445850, 28.305202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551598, 41.358608, 28.227421>,  <33.900959, 41.213207, 28.097784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551598, 41.358608, 28.227421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389726, -0.122647, -0.912727,
		-0.292029, -0.923485, 0.248786,
		-0.873402, 0.363502, 0.324090,
		33.289577, 41.467659, 28.324648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386772, 40.796173, 27.818319>,  <33.900959, 41.213207, 28.097784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386772, 40.796173, 27.818319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186405, 41.120441, 27.939575>,  <33.066185, 41.315002, 28.012329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186405, 41.120441, 27.939575>,  <33.386772, 40.796173, 27.818319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186405, 41.120441, 27.939575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522741, -0.004232, -0.852481,
		-0.689798, -0.585489, 0.425890,
		-0.500921, 0.810669, 0.303139,
		33.036129, 41.363644, 28.030518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664894, 40.696129, 27.585304>,  <33.386772, 40.796173, 27.818319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664894, 40.696129, 27.585304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726158, 41.087753, 27.638952>,  <32.762917, 41.322727, 27.671141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726158, 41.087753, 27.638952>,  <32.664894, 40.696129, 27.585304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726158, 41.087753, 27.638952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325930, 0.178175, -0.928452,
		-0.932905, 0.098486, 0.346393,
		0.153158, 0.979058, 0.134121,
		32.772106, 41.381470, 27.679188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009880, 41.044331, 27.456612>,  <32.664894, 40.696129, 27.585304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009880, 41.044331, 27.456612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280247, 41.334190, 27.402906>,  <32.442467, 41.508106, 27.370684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280247, 41.334190, 27.402906>,  <32.009880, 41.044331, 27.456612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280247, 41.334190, 27.402906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455286, 0.267320, -0.849267,
		-0.579527, 0.635161, 0.510607,
		0.675917, 0.724645, -0.134261,
		32.483021, 41.551582, 27.362629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613941, 41.632908, 27.174526>,  <32.009880, 41.044331, 27.456612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613941, 41.632908, 27.174526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003014, 41.692966, 27.103708>,  <32.236458, 41.729000, 27.061218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003014, 41.692966, 27.103708>,  <31.613941, 41.632908, 27.174526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003014, 41.692966, 27.103708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223114, 0.394081, -0.891583,
		-0.064099, 0.906728, 0.416816,
		0.972683, 0.150147, -0.177043,
		32.294819, 41.738010, 27.050594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731424, 42.317631, 27.044910>,  <31.613941, 41.632908, 27.174526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731424, 42.317631, 27.044910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024101, 42.120613, 26.856430>,  <32.199707, 42.002403, 26.743341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024101, 42.120613, 26.856430>,  <31.731424, 42.317631, 27.044910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024101, 42.120613, 26.856430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173348, 0.534093, -0.827463,
		0.659224, 0.687130, 0.305411,
		0.731693, -0.492541, -0.471199,
		32.243610, 41.972851, 26.715071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014194, 42.800938, 26.618189>,  <31.731424, 42.317631, 27.044910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014194, 42.800938, 26.618189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135914, 42.454327, 26.459929>,  <32.208946, 42.246361, 26.364973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135914, 42.454327, 26.459929>,  <32.014194, 42.800938, 26.618189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135914, 42.454327, 26.459929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189885, 0.351835, -0.916600,
		0.933461, 0.354045, -0.057479,
		0.304294, -0.866525, -0.395652,
		32.227203, 42.194370, 26.341232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572670, 42.920376, 26.168409>,  <32.014194, 42.800938, 26.618189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572670, 42.920376, 26.168409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398506, 42.575954, 26.063332>,  <32.294006, 42.369301, 26.000286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398506, 42.575954, 26.063332>,  <32.572670, 42.920376, 26.168409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398506, 42.575954, 26.063332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192060, 0.373936, -0.907350,
		0.879507, -0.344615, -0.328189,
		-0.435409, -0.861053, -0.262692,
		32.267883, 42.317638, 25.984524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834812, 42.796078, 25.529043>,  <32.572670, 42.920376, 26.168409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834812, 42.796078, 25.529043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511566, 42.562004, 25.555929>,  <32.317619, 42.421562, 25.572062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511566, 42.562004, 25.555929>,  <32.834812, 42.796078, 25.529043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511566, 42.562004, 25.555929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270036, 0.266639, -0.925194,
		0.523484, -0.765811, -0.373494,
		-0.808111, -0.585182, 0.067215,
		32.269131, 42.386452, 25.576094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.493845, 34.839272, 24.615063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.495363, 35.172310, 24.836609>,  <31.496273, 35.372131, 24.969536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.495363, 35.172310, 24.836609>,  <31.493845, 34.839272, 24.615063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495363, 35.172310, 24.836609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580393, -0.452869, 0.676796,
		0.814327, 0.318892, -0.484952,
		0.003795, 0.832597, 0.553866,
		31.496502, 35.422089, 25.002769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105690, 34.786980, 25.053846>,  <31.493845, 34.839272, 24.615063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105690, 34.786980, 25.053846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.916767, 35.092548, 25.229733>,  <31.803413, 35.275890, 25.335264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.916767, 35.092548, 25.229733>,  <32.105690, 34.786980, 25.053846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916767, 35.092548, 25.229733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539987, -0.143516, 0.829348,
		0.696663, 0.629147, -0.344724,
		-0.472309, 0.763922, 0.439713,
		31.775074, 35.321724, 25.361647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626255, 35.120518, 25.261740>,  <32.105690, 34.786980, 25.053846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626255, 35.120518, 25.261740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.299046, 35.198421, 25.478226>,  <32.102722, 35.245163, 25.608116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.299046, 35.198421, 25.478226>,  <32.626255, 35.120518, 25.261740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299046, 35.198421, 25.478226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504688, -0.208338, 0.837786,
		0.275922, 0.958470, 0.072132,
		-0.818020, 0.194759, 0.541213,
		32.053638, 35.256847, 25.640589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880707, 35.305042, 25.866940>,  <32.626255, 35.120518, 25.261740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880707, 35.305042, 25.866940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.501404, 35.309353, 25.993866>,  <32.273823, 35.311939, 26.070023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.501404, 35.309353, 25.993866>,  <32.880707, 35.305042, 25.866940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501404, 35.309353, 25.993866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310817, -0.172475, 0.934690,
		0.064803, 0.984955, 0.160201,
		-0.948258, 0.010778, 0.317317,
		32.216927, 35.312588, 26.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696297, 35.912090, 26.356779>,  <32.880707, 35.305042, 25.866940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696297, 35.912090, 26.356779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.464001, 35.591454, 26.413618>,  <32.324623, 35.399071, 26.447721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.464001, 35.591454, 26.413618>,  <32.696297, 35.912090, 26.356779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464001, 35.591454, 26.413618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368852, -0.103482, 0.923710,
		-0.725735, 0.588846, 0.355766,
		-0.580738, -0.801593, 0.142096,
		32.289780, 35.350975, 26.456247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370403, 36.007061, 26.975323>,  <32.696297, 35.912090, 26.356779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370403, 36.007061, 26.975323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.337513, 35.611328, 26.927223>,  <32.317780, 35.373890, 26.898363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.337513, 35.611328, 26.927223>,  <32.370403, 36.007061, 26.975323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337513, 35.611328, 26.927223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167950, -0.132687, 0.976825,
		-0.982360, 0.060126, 0.177069,
		-0.082227, -0.989332, -0.120249,
		32.312843, 35.314529, 26.891150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064163, 35.852215, 27.562752>,  <32.370403, 36.007061, 26.975323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064163, 35.852215, 27.562752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.213890, 35.507145, 27.426704>,  <32.303726, 35.300102, 27.345076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.213890, 35.507145, 27.426704>,  <32.064163, 35.852215, 27.562752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213890, 35.507145, 27.426704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232156, -0.267924, 0.935051,
		-0.897770, -0.428966, 0.099986,
		0.374316, -0.862673, -0.340121,
		32.326183, 35.248344, 27.324669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791674, 35.392490, 27.984949>,  <32.064163, 35.852215, 27.562752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791674, 35.392490, 27.984949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113480, 35.216228, 27.825663>,  <32.306564, 35.110470, 27.730091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113480, 35.216228, 27.825663>,  <31.791674, 35.392490, 27.984949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113480, 35.216228, 27.825663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323901, -0.236480, 0.916060,
		-0.497839, -0.865967, -0.047523,
		0.804516, -0.440657, -0.398216,
		32.354836, 35.084030, 27.706198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890547, 34.660992, 28.238800>,  <31.791674, 35.392490, 27.984949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890547, 34.660992, 28.238800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.257481, 34.788631, 28.143579>,  <32.477642, 34.865215, 28.086447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.257481, 34.788631, 28.143579>,  <31.890547, 34.660992, 28.238800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257481, 34.788631, 28.143579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326841, -0.262224, 0.907972,
		0.227314, -0.910720, -0.344843,
		0.917335, 0.319104, -0.238053,
		32.532681, 34.884361, 28.072163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356388, 34.247604, 28.456814>,  <31.890547, 34.660992, 28.238800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356388, 34.247604, 28.456814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.603340, 34.560040, 28.419397>,  <32.751511, 34.747501, 28.396948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.603340, 34.560040, 28.419397>,  <32.356388, 34.247604, 28.456814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603340, 34.560040, 28.419397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450149, -0.253255, 0.856287,
		0.645145, -0.570758, -0.507960,
		0.617376, 0.781087, -0.093540,
		32.788551, 34.794365, 28.391335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954601, 33.970985, 28.753464>,  <32.356388, 34.247604, 28.456814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954601, 33.970985, 28.753464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.018970, 34.365685, 28.745090>,  <33.057590, 34.602505, 28.740067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.018970, 34.365685, 28.745090>,  <32.954601, 33.970985, 28.753464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018970, 34.365685, 28.745090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618386, -0.084274, 0.781343,
		0.769221, -0.138682, -0.623751,
		0.160924, 0.986745, -0.020934,
		33.067249, 34.661709, 28.738810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772923, 34.057091, 28.813595>,  <32.954601, 33.970985, 28.753464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772923, 34.057091, 28.813595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.600513, 34.405331, 28.908491>,  <33.497066, 34.614273, 28.965429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.600513, 34.405331, 28.908491>,  <33.772923, 34.057091, 28.813595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600513, 34.405331, 28.908491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455540, -0.017009, 0.890053,
		0.778911, 0.491706, -0.389260,
		-0.431023, 0.870595, 0.237241,
		33.471207, 34.666508, 28.979664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360813, 34.522152, 29.022730>,  <33.772923, 34.057091, 28.813595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360813, 34.522152, 29.022730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016792, 34.667629, 29.165863>,  <33.810379, 34.754917, 29.251743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016792, 34.667629, 29.165863>,  <34.360813, 34.522152, 29.022730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016792, 34.667629, 29.165863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401591, 0.049953, 0.914456,
		0.314708, 0.930178, -0.189019,
		-0.860048, 0.363695, 0.357831,
		33.758778, 34.776737, 29.273212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501080, 35.224369, 29.309202>,  <34.360813, 34.522152, 29.022730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501080, 35.224369, 29.309202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.173969, 35.071125, 29.481003>,  <33.977703, 34.979179, 29.584084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.173969, 35.071125, 29.481003>,  <34.501080, 35.224369, 29.309202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173969, 35.071125, 29.481003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441090, 0.062190, 0.895306,
		-0.369712, 0.921607, 0.118129,
		-0.817773, -0.383110, 0.429504,
		33.928638, 34.956192, 29.609854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971767, 35.976952, 29.415771>,  <34.501080, 35.224369, 29.309202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971767, 35.976952, 29.415771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.362843, 36.059181, 29.398462>,  <35.597488, 36.108517, 29.388077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.362843, 36.059181, 29.398462>,  <34.971767, 35.976952, 29.415771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362843, 36.059181, 29.398462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121519, 0.385381, -0.914721,
		-0.171362, 0.899568, 0.401762,
		0.977685, 0.205570, -0.043275,
		35.656147, 36.120853, 29.385479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917892, 36.676319, 29.326258>,  <34.971767, 35.976952, 29.415771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917892, 36.676319, 29.326258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.264008, 36.525314, 29.194340>,  <35.471676, 36.434711, 29.115189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.264008, 36.525314, 29.194340>,  <34.917892, 36.676319, 29.326258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264008, 36.525314, 29.194340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181724, 0.376916, -0.908246,
		0.467177, 0.845825, 0.257538,
		0.865288, -0.377510, -0.329793,
		35.523594, 36.412060, 29.095402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325706, 37.150028, 28.996984>,  <34.917892, 36.676319, 29.326258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325706, 37.150028, 28.996984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467781, 36.816692, 28.827568>,  <35.553028, 36.616692, 28.725918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467781, 36.816692, 28.827568>,  <35.325706, 37.150028, 28.996984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467781, 36.816692, 28.827568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121709, 0.408003, -0.904832,
		0.926837, 0.372936, 0.043494,
		0.355190, -0.833338, -0.423542,
		35.574337, 36.566692, 28.700506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646553, 37.355209, 28.462385>,  <35.325706, 37.150028, 28.996984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646553, 37.355209, 28.462385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610641, 36.966141, 28.376734>,  <35.589096, 36.732700, 28.325342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610641, 36.966141, 28.376734>,  <35.646553, 37.355209, 28.462385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610641, 36.966141, 28.376734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059177, 0.209409, -0.976036,
		0.994202, -0.100297, 0.038759,
		-0.089777, -0.972670, -0.214130,
		35.583710, 36.674339, 28.312494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078556, 37.304451, 27.881268>,  <35.646553, 37.355209, 28.462385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078556, 37.304451, 27.881268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829323, 36.991772, 27.870523>,  <35.679783, 36.804165, 27.864077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829323, 36.991772, 27.870523>,  <36.078556, 37.304451, 27.881268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829323, 36.991772, 27.870523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036571, 0.063419, -0.997317,
		0.781303, -0.620425, -0.068103,
		-0.623080, -0.781697, -0.026860,
		35.642399, 36.757263, 27.862465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247032, 36.896938, 27.180353>,  <36.078556, 37.304451, 27.881268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247032, 36.896938, 27.180353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892170, 36.754467, 27.297716>,  <35.679253, 36.668983, 27.368134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892170, 36.754467, 27.297716>,  <36.247032, 36.896938, 27.180353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892170, 36.754467, 27.297716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324374, 0.029091, -0.945481,
		0.328223, -0.933966, -0.141343,
		-0.887159, -0.356176, 0.293406,
		35.626022, 36.647614, 27.385738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098915, 36.479973, 26.619488>,  <36.247032, 36.896938, 27.180353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098915, 36.479973, 26.619488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742687, 36.530167, 26.794363>,  <35.528950, 36.560284, 26.899288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742687, 36.530167, 26.794363>,  <36.098915, 36.479973, 26.619488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742687, 36.530167, 26.794363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444949, -0.040977, -0.894618,
		-0.094348, -0.991249, 0.092329,
		-0.890572, 0.125487, 0.437188,
		35.475513, 36.567810, 26.925520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603271, 35.925297, 26.409704>,  <36.098915, 36.479973, 26.619488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603271, 35.925297, 26.409704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358498, 36.213535, 26.540100>,  <35.211632, 36.386478, 26.618338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358498, 36.213535, 26.540100>,  <35.603271, 35.925297, 26.409704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358498, 36.213535, 26.540100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633075, -0.199218, -0.748016,
		-0.474077, -0.664115, 0.578102,
		-0.611937, 0.720599, 0.325990,
		35.174915, 36.429714, 26.637897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987061, 35.896152, 25.931297>,  <35.603271, 35.925297, 26.409704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987061, 35.896152, 25.931297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912777, 36.257572, 26.085754>,  <34.868206, 36.474426, 26.178429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912777, 36.257572, 26.085754>,  <34.987061, 35.896152, 25.931297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912777, 36.257572, 26.085754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733519, 0.134004, -0.666328,
		-0.653807, -0.406986, 0.637886,
		-0.185707, 0.903551, 0.386145,
		34.857063, 36.528637, 26.201597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164677, 36.107933, 25.832851>,  <34.987061, 35.896152, 25.931297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164677, 36.107933, 25.832851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358158, 36.456081, 25.869678>,  <34.474247, 36.664970, 25.891775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358158, 36.456081, 25.869678>,  <34.164677, 36.107933, 25.832851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358158, 36.456081, 25.869678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678461, 0.439333, -0.588793,
		-0.552920, 0.222338, 0.803023,
		0.483705, 0.870375, 0.092068,
		34.503269, 36.717194, 25.897299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677071, 36.662010, 25.925667>,  <34.164677, 36.107933, 25.832851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677071, 36.662010, 25.925667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.011383, 36.846882, 25.807100>,  <34.211971, 36.957806, 25.735960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.011383, 36.846882, 25.807100>,  <33.677071, 36.662010, 25.925667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011383, 36.846882, 25.807100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536762, 0.574120, -0.618282,
		-0.115580, 0.675852, 0.727918,
		0.835780, 0.462180, -0.296415,
		34.262115, 36.985535, 25.718176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581711, 37.473541, 26.110088>,  <33.677071, 36.662010, 25.925667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581711, 37.473541, 26.110088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.855282, 37.431290, 25.821342>,  <34.019424, 37.405937, 25.648096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.855282, 37.431290, 25.821342>,  <33.581711, 37.473541, 26.110088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855282, 37.431290, 25.821342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544929, 0.583923, -0.601736,
		0.485072, 0.804908, 0.341802,
		0.683928, -0.105628, -0.721862,
		34.060459, 37.399601, 25.604784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638962, 38.104366, 25.839087>,  <33.581711, 37.473541, 26.110088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638962, 38.104366, 25.839087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.791267, 37.867832, 25.554735>,  <33.882648, 37.725914, 25.384125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.791267, 37.867832, 25.554735>,  <33.638962, 38.104366, 25.839087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791267, 37.867832, 25.554735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645987, 0.379958, -0.662067,
		0.661605, 0.711307, -0.237321,
		0.380760, -0.591333, -0.710877,
		33.905495, 37.690434, 25.341473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764622, 38.575665, 25.288696>,  <33.638962, 38.104366, 25.839087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764622, 38.575665, 25.288696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.721104, 38.199059, 25.161127>,  <33.694992, 37.973095, 25.084585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.721104, 38.199059, 25.161127>,  <33.764622, 38.575665, 25.288696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721104, 38.199059, 25.161127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590605, 0.319283, -0.741110,
		0.799593, 0.107728, -0.590800,
		-0.108794, -0.941516, -0.318922,
		33.688465, 37.916603, 25.065451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104439, 39.288776, 25.203623>,  <33.764622, 38.575665, 25.288696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104439, 39.288776, 25.203623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.201385, 39.675423, 25.170353>,  <34.259552, 39.907410, 25.150391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.201385, 39.675423, 25.170353>,  <34.104439, 39.288776, 25.203623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201385, 39.675423, 25.170353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626524, -0.090479, 0.774132,
		0.740761, -0.239736, -0.627535,
		0.242366, 0.966613, -0.083177,
		34.274094, 39.965408, 25.145399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817875, 39.351028, 24.921509>,  <34.104439, 39.288776, 25.203623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817875, 39.351028, 24.921509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734512, 39.687134, 25.121716>,  <34.684494, 39.888798, 25.241840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734512, 39.687134, 25.121716>,  <34.817875, 39.351028, 24.921509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734512, 39.687134, 25.121716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786439, -0.160264, 0.596514,
		0.581445, 0.517946, -0.627418,
		-0.208409, 0.840266, 0.500518,
		34.671989, 39.939213, 25.271872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419109, 39.684376, 24.976818>,  <34.817875, 39.351028, 24.921509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419109, 39.684376, 24.976818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.206261, 39.853996, 25.269945>,  <35.078552, 39.955769, 25.445822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.206261, 39.853996, 25.269945>,  <35.419109, 39.684376, 24.976818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206261, 39.853996, 25.269945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766123, -0.127288, 0.629963,
		0.360418, 0.896646, -0.257145,
		-0.532122, 0.424055, 0.732818,
		35.046623, 39.981213, 25.489790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918545, 40.168037, 25.360672>,  <35.419109, 39.684376, 24.976818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918545, 40.168037, 25.360672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.612896, 40.093067, 25.607569>,  <35.429508, 40.048084, 25.755707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.612896, 40.093067, 25.607569>,  <35.918545, 40.168037, 25.360672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612896, 40.093067, 25.607569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637922, -0.077480, 0.766194,
		-0.095779, 0.979219, 0.178766,
		-0.764122, -0.187424, 0.617244,
		35.383659, 40.036839, 25.792742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082794, 40.541569, 25.939383>,  <35.918545, 40.168037, 25.360672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082794, 40.541569, 25.939383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803833, 40.313370, 26.112892>,  <35.636456, 40.176449, 26.216997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803833, 40.313370, 26.112892>,  <36.082794, 40.541569, 25.939383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803833, 40.313370, 26.112892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599860, -0.133463, 0.788895,
		-0.392172, 0.810381, 0.435298,
		-0.697401, -0.570501, 0.433775,
		35.594612, 40.142220, 26.243025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878010, 40.852337, 26.622595>,  <36.082794, 40.541569, 25.939383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878010, 40.852337, 26.622595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.790283, 40.462193, 26.632183>,  <35.737648, 40.228107, 26.637936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.790283, 40.462193, 26.632183>,  <35.878010, 40.852337, 26.622595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790283, 40.462193, 26.632183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558224, -0.105293, 0.822982,
		-0.800180, 0.193871, 0.567562,
		-0.219313, -0.975360, 0.023971,
		35.724491, 40.169586, 26.639374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679699, 40.801537, 27.283953>,  <35.878010, 40.852337, 26.622595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679699, 40.801537, 27.283953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777924, 40.429932, 27.173220>,  <35.836861, 40.206970, 27.106779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777924, 40.429932, 27.173220>,  <35.679699, 40.801537, 27.283953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777924, 40.429932, 27.173220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502149, -0.122369, 0.856079,
		-0.829183, -0.349234, 0.436453,
		0.245563, -0.929011, -0.276834,
		35.851593, 40.151230, 27.090170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485229, 40.409798, 27.872694>,  <35.679699, 40.801537, 27.283953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485229, 40.409798, 27.872694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.737289, 40.198242, 27.645296>,  <35.888527, 40.071308, 27.508858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.737289, 40.198242, 27.645296>,  <35.485229, 40.409798, 27.872694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737289, 40.198242, 27.645296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468571, -0.324792, 0.821554,
		-0.619156, -0.784081, 0.043156,
		0.630148, -0.528892, -0.568495,
		35.926334, 40.039574, 27.474747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421074, 39.788879, 28.089384>,  <35.485229, 40.409798, 27.872694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421074, 39.788879, 28.089384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.786842, 39.809097, 27.928747>,  <36.006306, 39.821228, 27.832365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.786842, 39.809097, 27.928747>,  <35.421074, 39.788879, 28.089384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786842, 39.809097, 27.928747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399547, -0.271429, 0.875608,
		-0.064749, -0.961131, -0.268395,
		0.914423, 0.050541, -0.401592,
		36.061169, 39.824261, 27.808270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746597, 39.130394, 28.180445>,  <35.421074, 39.788879, 28.089384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746597, 39.130394, 28.180445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.043709, 39.394222, 28.134428>,  <36.221977, 39.552521, 28.106817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.043709, 39.394222, 28.134428>,  <35.746597, 39.130394, 28.180445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043709, 39.394222, 28.134428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415434, -0.319281, 0.851748,
		0.525060, -0.680457, -0.511166,
		0.742783, 0.659575, -0.115043,
		36.266544, 39.592094, 28.099915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256290, 38.894241, 28.581421>,  <35.746597, 39.130394, 28.180445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256290, 38.894241, 28.581421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452782, 39.233471, 28.501963>,  <36.570679, 39.437008, 28.454288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452782, 39.233471, 28.501963>,  <36.256290, 38.894241, 28.581421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452782, 39.233471, 28.501963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528046, -0.108580, 0.842246,
		0.692719, -0.518630, -0.501161,
		0.491231, 0.848076, -0.198645,
		36.600151, 39.487892, 28.442369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926285, 38.668995, 28.507368>,  <36.256290, 38.894241, 28.581421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926285, 38.668995, 28.507368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.897957, 39.057533, 28.598112>,  <36.880962, 39.290657, 28.652557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.897957, 39.057533, 28.598112>,  <36.926285, 38.668995, 28.507368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897957, 39.057533, 28.598112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421763, -0.176941, 0.889274,
		0.903936, 0.158656, -0.397150,
		-0.070816, 0.971350, 0.226859,
		36.876713, 39.348938, 28.666170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630154, 38.821663, 28.711344>,  <36.926285, 38.668995, 28.507368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630154, 38.821663, 28.711344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398762, 39.116558, 28.850969>,  <37.259926, 39.293495, 28.934744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398762, 39.116558, 28.850969>,  <37.630154, 38.821663, 28.711344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398762, 39.116558, 28.850969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373904, -0.140666, 0.916738,
		0.724956, 0.660827, -0.194285,
		-0.578476, 0.737239, 0.349062,
		37.225220, 39.337730, 28.955688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061161, 39.260666, 29.177813>,  <37.630154, 38.821663, 28.711344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061161, 39.260666, 29.177813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684425, 39.321472, 29.297703>,  <37.458385, 39.357956, 29.369637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684425, 39.321472, 29.297703>,  <38.061161, 39.260666, 29.177813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684425, 39.321472, 29.297703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288416, -0.092200, 0.953056,
		0.172511, 0.984069, 0.042995,
		-0.941837, 0.152012, 0.299726,
		37.401875, 39.367077, 29.387621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.679634, 42.434311, 24.659422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350750, 42.348450, 24.870283>,  <32.153419, 42.296932, 24.996799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350750, 42.348450, 24.870283>,  <32.679634, 42.434311, 24.659422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350750, 42.348450, 24.870283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554003, 0.089342, -0.827707,
		0.130579, -0.972594, -0.192380,
		-0.822210, -0.214660, 0.527154,
		32.104088, 42.284054, 25.028429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354248, 41.987286, 24.267622>,  <32.679634, 42.434311, 24.659422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354248, 41.987286, 24.267622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087624, 42.159737, 24.510874>,  <31.927649, 42.263206, 24.656826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087624, 42.159737, 24.510874>,  <32.354248, 41.987286, 24.267622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087624, 42.159737, 24.510874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635834, 0.097016, -0.765704,
		-0.389118, -0.897058, 0.209462,
		-0.666560, 0.431133, 0.608131,
		31.887655, 42.289078, 24.693314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743055, 41.631153, 24.145687>,  <32.354248, 41.987286, 24.267622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743055, 41.631153, 24.145687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639717, 41.986351, 24.297859>,  <31.577713, 42.199471, 24.389162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639717, 41.986351, 24.297859>,  <31.743055, 41.631153, 24.145687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639717, 41.986351, 24.297859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660605, 0.124946, -0.740263,
		-0.704881, -0.442558, 0.554333,
		-0.258347, 0.887993, 0.380428,
		31.562212, 42.252750, 24.411987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157812, 41.726055, 23.876963>,  <31.743055, 41.631153, 24.145687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157812, 41.726055, 23.876963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.254351, 42.101818, 23.974337>,  <31.312273, 42.327278, 24.032761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.254351, 42.101818, 23.974337>,  <31.157812, 41.726055, 23.876963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254351, 42.101818, 23.974337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483122, 0.333863, -0.809400,
		-0.841633, 0.077736, 0.534426,
		0.241345, 0.939411, 0.243434,
		31.326754, 42.383640, 24.047367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535673, 42.159420, 23.801104>,  <31.157812, 41.726055, 23.876963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535673, 42.159420, 23.801104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.819700, 42.441017, 23.795500>,  <30.990116, 42.609978, 23.792137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.819700, 42.441017, 23.795500>,  <30.535673, 42.159420, 23.801104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819700, 42.441017, 23.795500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409093, 0.396261, -0.821962,
		-0.573105, 0.589379, 0.569371,
		0.710066, 0.703996, -0.014011,
		31.032721, 42.652214, 23.791296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225605, 42.697685, 23.559944>,  <30.535673, 42.159420, 23.801104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225605, 42.697685, 23.559944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590883, 42.852760, 23.509703>,  <30.810049, 42.945805, 23.479557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590883, 42.852760, 23.509703>,  <30.225605, 42.697685, 23.559944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590883, 42.852760, 23.509703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333537, 0.533921, -0.776969,
		-0.234158, 0.751417, 0.616881,
		0.913194, 0.387686, -0.125604,
		30.864841, 42.969067, 23.472021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198053, 43.497086, 23.508255>,  <30.225605, 42.697685, 23.559944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198053, 43.497086, 23.508255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517967, 43.360390, 23.310846>,  <30.709915, 43.278374, 23.192402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517967, 43.360390, 23.310846>,  <30.198053, 43.497086, 23.508255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517967, 43.360390, 23.310846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314097, 0.462380, -0.829185,
		0.511557, 0.818182, 0.262465,
		0.799783, -0.341736, -0.493522,
		30.757902, 43.257870, 23.162790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432318, 44.053101, 23.158821>,  <30.198053, 43.497086, 23.508255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432318, 44.053101, 23.158821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.588297, 43.746578, 22.954580>,  <30.681885, 43.562664, 22.832037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.588297, 43.746578, 22.954580>,  <30.432318, 44.053101, 23.158821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588297, 43.746578, 22.954580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285132, 0.426761, -0.858239,
		0.875580, 0.480257, -0.052084,
		0.389948, -0.766308, -0.510600,
		30.705282, 43.516685, 22.801401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994127, 44.353828, 22.764935>,  <30.432318, 44.053101, 23.158821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994127, 44.353828, 22.764935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.875963, 44.007568, 22.603251>,  <30.805065, 43.799812, 22.506239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.875963, 44.007568, 22.603251>,  <30.994127, 44.353828, 22.764935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875963, 44.007568, 22.603251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285092, 0.483690, -0.827506,
		0.911842, -0.129215, -0.389676,
		-0.295409, -0.865648, -0.404211,
		30.787340, 43.747875, 22.481987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156710, 44.338020, 22.036379>,  <30.994127, 44.353828, 22.764935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156710, 44.338020, 22.036379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.887592, 44.042515, 22.052275>,  <30.726122, 43.865211, 22.061811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.887592, 44.042515, 22.052275>,  <31.156710, 44.338020, 22.036379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887592, 44.042515, 22.052275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459810, 0.375463, -0.804737,
		0.579590, -0.559693, -0.592300,
		-0.672793, -0.738763, 0.039738,
		30.685755, 43.820885, 22.064196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134480, 44.068382, 21.352688>,  <31.156710, 44.338020, 22.036379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134480, 44.068382, 21.352688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.778912, 44.000858, 21.523016>,  <30.565571, 43.960342, 21.625212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.778912, 44.000858, 21.523016>,  <31.134480, 44.068382, 21.352688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778912, 44.000858, 21.523016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457871, 0.300744, -0.836605,
		0.013164, -0.938646, -0.344631,
		-0.888921, -0.168810, 0.425819,
		30.512236, 43.950214, 21.650763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709654, 43.833080, 20.734097>,  <31.134480, 44.068382, 21.352688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709654, 43.833080, 20.734097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.447697, 43.886265, 21.031670>,  <30.290524, 43.918175, 21.210215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.447697, 43.886265, 21.031670>,  <30.709654, 43.833080, 20.734097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447697, 43.886265, 21.031670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686625, 0.306534, -0.659229,
		-0.315696, -0.942527, -0.109449,
		-0.654891, 0.132966, 0.743934,
		30.251228, 43.926155, 21.254850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003855, 43.043949, 20.664194>,  <30.709654, 43.833080, 20.734097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003855, 43.043949, 20.664194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336988, 43.262550, 20.699331>,  <31.536869, 43.393711, 20.720413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336988, 43.262550, 20.699331>,  <31.003855, 43.043949, 20.664194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336988, 43.262550, 20.699331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158296, -0.083081, -0.983890,
		-0.530404, 0.833323, -0.155703,
		0.832835, 0.546507, 0.087845,
		31.586840, 43.426502, 20.725685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949356, 42.346828, 20.404417>,  <31.003855, 43.043949, 20.664194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949356, 42.346828, 20.404417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006250, 41.954365, 20.352106>,  <31.040386, 41.718887, 20.320719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006250, 41.954365, 20.352106>,  <30.949356, 42.346828, 20.404417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006250, 41.954365, 20.352106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606378, -0.018056, 0.794972,
		-0.782352, -0.192374, 0.592383,
		0.142236, -0.981156, -0.130778,
		31.048922, 41.660019, 20.312872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535196, 41.922276, 20.855106>,  <30.949356, 42.346828, 20.404417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535196, 41.922276, 20.855106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.875830, 41.746944, 20.740095>,  <31.080210, 41.641747, 20.671089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.875830, 41.746944, 20.740095>,  <30.535196, 41.922276, 20.855106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875830, 41.746944, 20.740095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307257, -0.027040, 0.951242,
		-0.424735, -0.898406, 0.111653,
		0.851583, -0.438332, -0.287526,
		31.131306, 41.615444, 20.653837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564861, 41.355160, 21.182957>,  <30.535196, 41.922276, 20.855106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564861, 41.355160, 21.182957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944880, 41.459705, 21.114723>,  <31.172892, 41.522434, 21.073782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944880, 41.459705, 21.114723>,  <30.564861, 41.355160, 21.182957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944880, 41.459705, 21.114723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238971, -0.257588, 0.936238,
		0.200760, -0.930234, -0.307179,
		0.950046, 0.261366, -0.170585,
		31.229893, 41.538116, 21.063547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890804, 40.902195, 21.504845>,  <30.564861, 41.355160, 21.182957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890804, 40.902195, 21.504845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205299, 41.143810, 21.452742>,  <31.393997, 41.288780, 21.421480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205299, 41.143810, 21.452742>,  <30.890804, 40.902195, 21.504845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205299, 41.143810, 21.452742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440858, -0.400630, 0.803206,
		0.432979, -0.688938, -0.581286,
		0.786240, 0.604036, -0.130260,
		31.441172, 41.325020, 21.413664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547117, 40.422932, 21.484768>,  <30.890804, 40.902195, 21.504845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547117, 40.422932, 21.484768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645067, 40.795204, 21.593483>,  <31.703836, 41.018566, 21.658712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645067, 40.795204, 21.593483>,  <31.547117, 40.422932, 21.484768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645067, 40.795204, 21.593483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504941, -0.361725, 0.783703,
		0.827690, -0.054672, -0.558516,
		0.244876, 0.930680, 0.271790,
		31.718531, 41.074409, 21.675020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166859, 40.307587, 21.567814>,  <31.547117, 40.422932, 21.484768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166859, 40.307587, 21.567814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.084328, 40.646057, 21.764349>,  <32.034809, 40.849140, 21.882271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.084328, 40.646057, 21.764349>,  <32.166859, 40.307587, 21.567814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084328, 40.646057, 21.764349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571448, -0.303406, 0.762491,
		0.794277, 0.438099, -0.420944,
		-0.206330, 0.846177, 0.491339,
		32.022430, 40.899910, 21.911751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763432, 40.408970, 21.872404>,  <32.166859, 40.307587, 21.567814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763432, 40.408970, 21.872404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539398, 40.666592, 22.080828>,  <32.404980, 40.821163, 22.205883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539398, 40.666592, 22.080828>,  <32.763432, 40.408970, 21.872404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539398, 40.666592, 22.080828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638739, -0.064816, 0.766689,
		0.527561, 0.762231, -0.375079,
		-0.560083, 0.644052, 0.521060,
		32.371372, 40.859806, 22.237146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253666, 40.880219, 22.102571>,  <32.763432, 40.408970, 21.872404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253666, 40.880219, 22.102571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934292, 40.939938, 22.335884>,  <32.742668, 40.975769, 22.475872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934292, 40.939938, 22.335884>,  <33.253666, 40.880219, 22.102571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934292, 40.939938, 22.335884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589977, 0.000702, 0.807420,
		0.120134, 0.988793, -0.088641,
		-0.798433, 0.149294, 0.583280,
		32.694763, 40.984726, 22.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471371, 41.395084, 22.615276>,  <33.253666, 40.880219, 22.102571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471371, 41.395084, 22.615276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.136620, 41.236275, 22.766014>,  <32.935768, 41.140987, 22.856457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.136620, 41.236275, 22.766014>,  <33.471371, 41.395084, 22.615276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136620, 41.236275, 22.766014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435882, -0.066888, 0.897515,
		-0.331131, 0.915366, 0.229034,
		-0.836874, -0.397027, 0.376843,
		32.885559, 41.117168, 22.879066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329311, 41.768108, 23.328920>,  <33.471371, 41.395084, 22.615276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329311, 41.768108, 23.328920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129791, 41.421509, 23.321022>,  <33.010078, 41.213551, 23.316284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129791, 41.421509, 23.321022>,  <33.329311, 41.768108, 23.328920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129791, 41.421509, 23.321022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442886, -0.274396, 0.853556,
		-0.745019, 0.417006, 0.520627,
		-0.498796, -0.866494, -0.019744,
		32.980152, 41.161560, 23.315100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110497, 41.720867, 23.938478>,  <33.329311, 41.768108, 23.328920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110497, 41.720867, 23.938478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.138065, 41.352913, 23.784046>,  <33.154606, 41.132141, 23.691387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.138065, 41.352913, 23.784046>,  <33.110497, 41.720867, 23.938478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138065, 41.352913, 23.784046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304632, -0.349113, 0.886182,
		-0.949973, -0.178686, 0.256167,
		0.068917, -0.919887, -0.386081,
		33.158741, 41.076946, 23.668222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970245, 41.382069, 24.456982>,  <33.110497, 41.720867, 23.938478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970245, 41.382069, 24.456982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129601, 41.106468, 24.214802>,  <33.225216, 40.941109, 24.069494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129601, 41.106468, 24.214802>,  <32.970245, 41.382069, 24.456982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129601, 41.106468, 24.214802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363828, -0.487235, 0.793871,
		-0.841971, -0.536550, 0.056567,
		0.398390, -0.688997, -0.605449,
		33.249119, 40.899769, 24.033167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788147, 40.760147, 24.768671>,  <32.970245, 41.382069, 24.456982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788147, 40.760147, 24.768671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.107632, 40.687363, 24.539257>,  <33.299324, 40.643692, 24.401608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.107632, 40.687363, 24.539257>,  <32.788147, 40.760147, 24.768671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107632, 40.687363, 24.539257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396430, -0.557922, 0.729086,
		-0.452654, -0.809699, -0.373486,
		0.798715, -0.181963, -0.573535,
		33.347248, 40.632774, 24.367197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982521, 40.036110, 24.875195>,  <32.788147, 40.760147, 24.768671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982521, 40.036110, 24.875195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319023, 40.194759, 24.728239>,  <33.520924, 40.289951, 24.640066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319023, 40.194759, 24.728239>,  <32.982521, 40.036110, 24.875195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319023, 40.194759, 24.728239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534123, -0.504576, 0.678319,
		0.083665, -0.766870, -0.636326,
		0.841257, 0.396628, -0.367387,
		33.571400, 40.313747, 24.618023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463497, 39.464203, 24.917894>,  <32.982521, 40.036110, 24.875195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463497, 39.464203, 24.917894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685848, 39.795738, 24.892483>,  <33.819260, 39.994659, 24.877235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685848, 39.795738, 24.892483>,  <33.463497, 39.464203, 24.917894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685848, 39.795738, 24.892483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582356, -0.333755, 0.741261,
		0.593180, -0.449045, -0.668203,
		0.555876, 0.828834, -0.063527,
		33.852612, 40.044388, 24.873425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688236, 38.790802, 24.583248>,  <33.463497, 39.464203, 24.917894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688236, 38.790802, 24.583248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.628880, 38.395378, 24.594114>,  <33.593266, 38.158123, 24.600634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.628880, 38.395378, 24.594114>,  <33.688236, 38.790802, 24.583248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628880, 38.395378, 24.594114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407263, 0.036057, -0.912599,
		0.901175, -0.146484, -0.407953,
		-0.148390, -0.988556, 0.027164,
		33.584362, 38.098812, 24.602262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930210, 38.579624, 23.974865>,  <33.688236, 38.790802, 24.583248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930210, 38.579624, 23.974865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651131, 38.324032, 24.104429>,  <33.483685, 38.170677, 24.182169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651131, 38.324032, 24.104429>,  <33.930210, 38.579624, 23.974865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651131, 38.324032, 24.104429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457666, 0.049711, -0.887733,
		0.551144, -0.767613, -0.327124,
		-0.697698, -0.638982, 0.323913,
		33.441822, 38.132336, 24.201603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900749, 38.049210, 23.488405>,  <33.930210, 38.579624, 23.974865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900749, 38.049210, 23.488405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538517, 38.060783, 23.657682>,  <33.321178, 38.067726, 23.759249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538517, 38.060783, 23.657682>,  <33.900749, 38.049210, 23.488405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538517, 38.060783, 23.657682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415725, 0.137661, -0.899012,
		-0.084267, -0.990057, -0.112635,
		-0.905578, 0.028932, 0.423192,
		33.266842, 38.069462, 23.784639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621304, 37.520363, 23.139708>,  <33.900749, 38.049210, 23.488405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621304, 37.520363, 23.139708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331997, 37.751762, 23.290560>,  <33.158413, 37.890602, 23.381071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331997, 37.751762, 23.290560>,  <33.621304, 37.520363, 23.139708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331997, 37.751762, 23.290560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521285, -0.099173, -0.847601,
		-0.452933, -0.809634, 0.373290,
		-0.723266, 0.578496, 0.377131,
		33.115017, 37.925312, 23.403700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045311, 37.106815, 23.052631>,  <33.621304, 37.520363, 23.139708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045311, 37.106815, 23.052631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.928745, 37.489212, 23.066250>,  <32.858807, 37.718651, 23.074421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.928745, 37.489212, 23.066250>,  <33.045311, 37.106815, 23.052631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928745, 37.489212, 23.066250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563496, -0.142791, -0.813685,
		-0.773013, -0.256306, 0.580308,
		-0.291415, 0.955991, 0.034048,
		32.841320, 37.776009, 23.076464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308918, 37.072945, 22.796333>,  <33.045311, 37.106815, 23.052631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308918, 37.072945, 22.796333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.382755, 37.466030, 22.790695>,  <32.427059, 37.701881, 22.787312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.382755, 37.466030, 22.790695>,  <32.308918, 37.072945, 22.796333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382755, 37.466030, 22.790695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563557, 0.094088, -0.820702,
		-0.805189, 0.159440, 0.571183,
		0.184594, 0.982714, -0.014095,
		32.438133, 37.760845, 22.786467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626032, 37.409454, 22.695938>,  <32.308918, 37.072945, 22.796333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626032, 37.409454, 22.695938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901196, 37.674625, 22.577747>,  <32.066296, 37.833729, 22.506832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901196, 37.674625, 22.577747>,  <31.626032, 37.409454, 22.695938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901196, 37.674625, 22.577747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568276, 0.238713, -0.787451,
		-0.451488, 0.709608, 0.540939,
		0.687911, 0.662927, -0.295476,
		32.107567, 37.873505, 22.489105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952427, 37.640934, 23.106468>,  <31.626032, 37.409454, 22.695938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952427, 37.640934, 23.106468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612690, 37.444286, 23.183340>,  <30.408848, 37.326298, 23.229464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612690, 37.444286, 23.183340>,  <30.952427, 37.640934, 23.106468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612690, 37.444286, 23.183340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448480, -0.480116, 0.753893,
		-0.278357, 0.726501, 0.628262,
		-0.849343, -0.491614, 0.192178,
		30.357887, 37.296803, 23.240993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868511, 37.719540, 23.844110>,  <30.952427, 37.640934, 23.106468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868511, 37.719540, 23.844110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645712, 37.406746, 23.732214>,  <30.512032, 37.219070, 23.665075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645712, 37.406746, 23.732214>,  <30.868511, 37.719540, 23.844110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645712, 37.406746, 23.732214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316353, -0.511207, 0.799117,
		-0.767903, 0.356609, 0.532123,
		-0.556997, -0.781983, -0.279743,
		30.478613, 37.172150, 23.648291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478836, 37.494373, 24.458319>,  <30.868511, 37.719540, 23.844110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478836, 37.494373, 24.458319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489237, 37.194450, 24.193859>,  <30.495478, 37.014496, 24.035183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489237, 37.194450, 24.193859>,  <30.478836, 37.494373, 24.458319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489237, 37.194450, 24.193859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273279, -0.630849, 0.726187,
		-0.961583, -0.199562, 0.188501,
		0.026003, -0.749803, -0.661150,
		30.497038, 36.969509, 23.995514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151054, 36.949814, 24.836271>,  <30.478836, 37.494373, 24.458319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151054, 36.949814, 24.836271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.366272, 36.769909, 24.551113>,  <30.495403, 36.661964, 24.380018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.366272, 36.769909, 24.551113>,  <30.151054, 36.949814, 24.836271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366272, 36.769909, 24.551113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465918, -0.546120, 0.696185,
		-0.702445, -0.706729, -0.084284,
		0.538044, -0.449763, -0.712897,
		30.527685, 36.634979, 24.337244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217154, 36.292362, 25.145704>,  <30.151054, 36.949814, 24.836271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217154, 36.292362, 25.145704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.469133, 36.298748, 24.835115>,  <30.620321, 36.302582, 24.648762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.469133, 36.298748, 24.835115>,  <30.217154, 36.292362, 25.145704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469133, 36.298748, 24.835115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627757, -0.599114, 0.496974,
		-0.457260, -0.800504, -0.387436,
		0.629948, 0.015970, -0.776473,
		30.658117, 36.303539, 24.602173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301985, 35.665272, 25.021204>,  <30.217154, 36.292362, 25.145704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301985, 35.665272, 25.021204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628256, 35.826614, 24.855324>,  <30.824018, 35.923420, 24.755796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628256, 35.826614, 24.855324>,  <30.301985, 35.665272, 25.021204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628256, 35.826614, 24.855324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564600, -0.711282, 0.418695,
		-0.126084, -0.575659, -0.807911,
		0.815677, 0.403356, -0.414698,
		30.872959, 35.947620, 24.730915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766712, 35.083382, 24.716415>,  <30.301985, 35.665272, 25.021204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766712, 35.083382, 24.716415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001661, 35.403164, 24.766798>,  <31.142630, 35.595032, 24.797028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001661, 35.403164, 24.766798>,  <30.766712, 35.083382, 24.716415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001661, 35.403164, 24.766798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670057, -0.567661, 0.478314,
		0.453893, -0.196548, -0.869109,
		0.587371, 0.799456, 0.125959,
		31.177872, 35.643002, 24.804586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.068903, 43.330929, 22.705769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449516, 43.432079, 22.635752>,  <27.677883, 43.492771, 22.593742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449516, 43.432079, 22.635752>,  <27.068903, 43.330929, 22.705769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449516, 43.432079, 22.635752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256381, -0.337851, 0.905608,
		0.169869, -0.906592, -0.386309,
		0.951532, 0.252877, -0.175042,
		27.734976, 43.507942, 22.583239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398310, 42.749767, 22.893873>,  <27.068903, 43.330929, 22.705769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398310, 42.749767, 22.893873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640057, 43.068230, 22.905666>,  <27.785105, 43.259308, 22.912743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640057, 43.068230, 22.905666>,  <27.398310, 42.749767, 22.893873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640057, 43.068230, 22.905666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483376, -0.395846, 0.780803,
		0.633315, -0.457641, -0.624081,
		0.604367, 0.796160, 0.029482,
		27.821367, 43.307079, 22.914511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228439, 42.656521, 22.870630>,  <27.398310, 42.749767, 22.893873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228439, 42.656521, 22.870630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188869, 43.022480, 23.027176>,  <28.165127, 43.242058, 23.121103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188869, 43.022480, 23.027176>,  <28.228439, 42.656521, 22.870630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188869, 43.022480, 23.027176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563631, -0.272607, 0.779747,
		0.820082, 0.297723, -0.488700,
		-0.098926, 0.914903, 0.391365,
		28.159191, 43.296951, 23.144585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975309, 42.842075, 23.104227>,  <28.228439, 42.656521, 22.870630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975309, 42.842075, 23.104227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714510, 43.074242, 23.299374>,  <28.558031, 43.213543, 23.416462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714510, 43.074242, 23.299374>,  <28.975309, 42.842075, 23.104227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714510, 43.074242, 23.299374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455788, -0.214177, 0.863936,
		0.605936, 0.785647, -0.124905,
		-0.651997, 0.580420, 0.487866,
		28.518911, 43.248367, 23.445734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431093, 43.262169, 23.619802>,  <28.975309, 42.842075, 23.104227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431093, 43.262169, 23.619802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052723, 43.282131, 23.748011>,  <28.825701, 43.294109, 23.824936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052723, 43.282131, 23.748011>,  <29.431093, 43.262169, 23.619802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052723, 43.282131, 23.748011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310604, -0.145570, 0.939326,
		0.093539, 0.988088, 0.122196,
		-0.945926, 0.049909, 0.320521,
		28.768946, 43.297104, 23.844168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447393, 43.595963, 24.259382>,  <29.431093, 43.262169, 23.619802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447393, 43.595963, 24.259382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099897, 43.401997, 24.299679>,  <28.891399, 43.285618, 24.323856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099897, 43.401997, 24.299679>,  <29.447393, 43.595963, 24.259382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099897, 43.401997, 24.299679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217212, -0.190245, 0.957406,
		-0.445093, 0.853620, 0.270603,
		-0.868741, -0.484912, 0.100740,
		28.839275, 43.256523, 24.329901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101381, 43.868958, 24.818401>,  <29.447393, 43.595963, 24.259382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101381, 43.868958, 24.818401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954832, 43.498055, 24.787504>,  <28.866903, 43.275513, 24.768967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954832, 43.498055, 24.787504>,  <29.101381, 43.868958, 24.818401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954832, 43.498055, 24.787504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244478, -0.176027, 0.953543,
		-0.897776, 0.330468, 0.291185,
		-0.366372, -0.927257, -0.077241,
		28.844921, 43.219879, 24.764332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824060, 43.758194, 25.432913>,  <29.101381, 43.868958, 24.818401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824060, 43.758194, 25.432913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.834951, 43.384491, 25.290688>,  <28.841486, 43.160271, 25.205353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.834951, 43.384491, 25.290688>,  <28.824060, 43.758194, 25.432913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834951, 43.384491, 25.290688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065030, -0.353284, 0.933253,
		-0.997512, -0.048533, 0.051135,
		0.027229, -0.934256, -0.355561,
		28.843121, 43.104214, 25.184019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367271, 43.476707, 25.836966>,  <28.824060, 43.758194, 25.432913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367271, 43.476707, 25.836966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.579899, 43.179829, 25.673712>,  <28.707476, 43.001701, 25.575760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.579899, 43.179829, 25.673712>,  <28.367271, 43.476707, 25.836966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579899, 43.179829, 25.673712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163595, -0.382815, 0.909224,
		-0.831068, -0.550083, -0.082071,
		0.531567, -0.742201, -0.408136,
		28.739368, 42.957169, 25.551271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137274, 42.841526, 26.103552>,  <28.367271, 43.476707, 25.836966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137274, 42.841526, 26.103552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494959, 42.751572, 25.948732>,  <28.709570, 42.697598, 25.855841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494959, 42.751572, 25.948732>,  <28.137274, 42.841526, 26.103552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494959, 42.751572, 25.948732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200371, -0.572102, 0.795331,
		-0.400288, -0.788750, -0.466522,
		0.894215, -0.224884, -0.387048,
		28.763224, 42.684105, 25.832619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139992, 42.139294, 26.232069>,  <28.137274, 42.841526, 26.103552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139992, 42.139294, 26.232069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513096, 42.267735, 26.166525>,  <28.736958, 42.344799, 26.127199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513096, 42.267735, 26.166525>,  <28.139992, 42.139294, 26.232069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513096, 42.267735, 26.166525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326322, -0.558893, 0.762334,
		0.153209, -0.764546, -0.626097,
		0.932760, 0.321106, -0.163861,
		28.792923, 42.364067, 26.117367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585642, 41.533489, 26.204039>,  <28.139992, 42.139294, 26.232069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585642, 41.533489, 26.204039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802303, 41.853374, 26.307632>,  <28.932301, 42.045307, 26.369789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802303, 41.853374, 26.307632>,  <28.585642, 41.533489, 26.204039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802303, 41.853374, 26.307632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222303, -0.433403, 0.873352,
		0.810676, -0.415479, -0.412532,
		0.541651, 0.799712, 0.258987,
		28.964798, 42.093288, 26.385328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789209, 40.786705, 26.386114>,  <28.585642, 41.533489, 26.204039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789209, 40.786705, 26.386114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397942, 40.743103, 26.456886>,  <28.163181, 40.716942, 26.499350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397942, 40.743103, 26.456886>,  <28.789209, 40.786705, 26.386114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397942, 40.743103, 26.456886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171792, -0.054920, -0.983601,
		0.116940, -0.992522, 0.034994,
		-0.978168, -0.109011, 0.176930,
		28.104490, 40.710400, 26.509966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594782, 40.046215, 26.210667>,  <28.789209, 40.786705, 26.386114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594782, 40.046215, 26.210667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259806, 40.264645, 26.201710>,  <28.058821, 40.395702, 26.196337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259806, 40.264645, 26.201710>,  <28.594782, 40.046215, 26.210667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259806, 40.264645, 26.201710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221791, -0.377007, -0.899263,
		-0.499503, -0.748113, 0.436834,
		-0.837440, 0.546071, -0.022391,
		28.008574, 40.428467, 26.194992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171837, 39.690052, 25.699541>,  <28.594782, 40.046215, 26.210667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171837, 39.690052, 25.699541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011593, 40.051579, 25.759703>,  <27.915445, 40.268494, 25.795799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011593, 40.051579, 25.759703>,  <28.171837, 39.690052, 25.699541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011593, 40.051579, 25.759703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241919, 0.053988, -0.968793,
		-0.883734, -0.424496, 0.197023,
		-0.400612, 0.903819, 0.150405,
		27.891409, 40.322723, 25.804825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484867, 39.674007, 25.383619>,  <28.171837, 39.690052, 25.699541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484867, 39.674007, 25.383619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.537735, 40.069168, 25.416067>,  <27.569456, 40.306263, 25.435535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.537735, 40.069168, 25.416067>,  <27.484867, 39.674007, 25.383619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537735, 40.069168, 25.416067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443965, 0.132169, -0.886243,
		-0.886243, 0.081119, 0.456063,
		0.132168, 0.987902, 0.081120,
		27.577385, 40.365540, 25.440403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839258, 39.980679, 25.254347>,  <27.484867, 39.674007, 25.383619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839258, 39.980679, 25.254347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132172, 40.238441, 25.166258>,  <27.307920, 40.393101, 25.113405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132172, 40.238441, 25.166258>,  <26.839258, 39.980679, 25.254347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132172, 40.238441, 25.166258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521400, 0.322517, -0.790015,
		-0.438068, 0.693339, 0.572169,
		0.732283, 0.644409, -0.220223,
		27.351856, 40.431763, 25.100191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502855, 40.471535, 24.959265>,  <26.839258, 39.980679, 25.254347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502855, 40.471535, 24.959265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.884205, 40.519035, 24.848289>,  <27.113014, 40.547535, 24.781704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.884205, 40.519035, 24.848289>,  <26.502855, 40.471535, 24.959265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884205, 40.519035, 24.848289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296619, 0.199351, -0.933957,
		-0.055598, 0.972706, 0.225280,
		0.953376, 0.118748, -0.277439,
		27.170218, 40.554661, 24.765059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510511, 41.002121, 24.493959>,  <26.502855, 40.471535, 24.959265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510511, 41.002121, 24.493959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862114, 40.826298, 24.420055>,  <27.073076, 40.720802, 24.375713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862114, 40.826298, 24.420055>,  <26.510511, 41.002121, 24.493959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862114, 40.826298, 24.420055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182630, 0.047563, -0.982031,
		0.440448, 0.896953, -0.038468,
		0.879006, -0.439559, -0.184760,
		27.125816, 40.694431, 24.364628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906126, 41.424843, 24.058084>,  <26.510511, 41.002121, 24.493959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906126, 41.424843, 24.058084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014017, 41.046852, 23.984035>,  <27.078753, 40.820057, 23.939606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014017, 41.046852, 23.984035>,  <26.906126, 41.424843, 24.058084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014017, 41.046852, 23.984035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314569, 0.095228, -0.944446,
		0.910106, 0.312978, -0.271573,
		0.269729, -0.944974, -0.185121,
		27.094936, 40.763359, 23.928499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818174, 41.438530, 23.329140>,  <26.906126, 41.424843, 24.058084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818174, 41.438530, 23.329140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.918306, 41.059525, 23.408686>,  <26.978386, 40.832119, 23.456413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.918306, 41.059525, 23.408686>,  <26.818174, 41.438530, 23.329140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918306, 41.059525, 23.408686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144993, -0.239778, -0.959939,
		0.957241, 0.211470, -0.197407,
		0.250332, -0.947516, 0.198863,
		26.993406, 40.775269, 23.468346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119488, 41.261486, 22.738102>,  <26.818174, 41.438530, 23.329140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119488, 41.261486, 22.738102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038441, 40.911995, 22.914984>,  <26.989813, 40.702301, 23.021112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038441, 40.911995, 22.914984>,  <27.119488, 41.261486, 22.738102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038441, 40.911995, 22.914984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088642, -0.433351, -0.896855,
		0.975238, -0.220915, 0.010355,
		-0.202616, -0.873730, 0.442202,
		26.977655, 40.649876, 23.047644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617336, 40.686066, 22.360971>,  <27.119488, 41.261486, 22.738102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617336, 40.686066, 22.360971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294291, 40.524479, 22.532818>,  <27.100464, 40.427528, 22.635925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294291, 40.524479, 22.532818>,  <27.617336, 40.686066, 22.360971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294291, 40.524479, 22.532818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208804, -0.485435, -0.848972,
		0.551508, -0.775347, 0.307694,
		-0.807614, -0.403967, 0.429617,
		27.052006, 40.403290, 22.661703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491934, 39.917530, 22.284973>,  <27.617336, 40.686066, 22.360971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491934, 39.917530, 22.284973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135983, 40.093624, 22.332825>,  <26.922411, 40.199280, 22.361536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135983, 40.093624, 22.332825>,  <27.491934, 39.917530, 22.284973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135983, 40.093624, 22.332825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255662, -0.264069, -0.930002,
		-0.377830, -0.858172, 0.347541,
		-0.889877, 0.440236, 0.119629,
		26.869019, 40.225693, 22.368713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148302, 39.386784, 22.034098>,  <27.491934, 39.917530, 22.284973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148302, 39.386784, 22.034098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913242, 39.710430, 22.034361>,  <26.772207, 39.904617, 22.034519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913242, 39.710430, 22.034361>,  <27.148302, 39.386784, 22.034098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913242, 39.710430, 22.034361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352345, -0.255168, -0.900412,
		-0.728370, -0.529358, 0.435037,
		-0.587647, 0.809117, 0.000660,
		26.736948, 39.953167, 22.034559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864464, 39.340958, 21.857656>,  <27.148302, 39.386784, 22.034098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864464, 39.340958, 21.857656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948942, 39.043026, 21.604477>,  <27.999628, 38.864265, 21.452570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948942, 39.043026, 21.604477>,  <27.864464, 39.340958, 21.857656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948942, 39.043026, 21.604477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484610, -0.482572, 0.729574,
		-0.848852, -0.460814, 0.259037,
		0.211194, -0.744832, -0.632947,
		28.012300, 38.819576, 21.414593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671867, 38.668808, 22.180521>,  <27.864464, 39.340958, 21.857656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671867, 38.668808, 22.180521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952667, 38.584110, 21.908533>,  <28.121147, 38.533291, 21.745340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952667, 38.584110, 21.908533>,  <27.671867, 38.668808, 22.180521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952667, 38.584110, 21.908533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505645, -0.524170, 0.685251,
		-0.501515, -0.824871, -0.260903,
		0.702001, -0.211740, -0.679971,
		28.163267, 38.520588, 21.704542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831102, 38.016697, 22.340023>,  <27.671867, 38.668808, 22.180521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831102, 38.016697, 22.340023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.142044, 38.082760, 22.097225>,  <28.328609, 38.122398, 21.951546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.142044, 38.082760, 22.097225>,  <27.831102, 38.016697, 22.340023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142044, 38.082760, 22.097225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590585, -0.523893, 0.613796,
		-0.216629, -0.835619, -0.504790,
		0.777355, 0.165156, -0.606995,
		28.375250, 38.132305, 21.915127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155195, 37.373234, 22.341566>,  <27.831102, 38.016697, 22.340023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155195, 37.373234, 22.341566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426094, 37.638802, 22.214725>,  <28.588633, 37.798141, 22.138622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426094, 37.638802, 22.214725>,  <28.155195, 37.373234, 22.341566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426094, 37.638802, 22.214725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657900, -0.353499, 0.664986,
		0.329400, -0.658980, -0.676196,
		0.677247, 0.663916, -0.317100,
		28.629269, 37.837975, 22.119595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809690, 36.964722, 22.119287>,  <28.155195, 37.373234, 22.341566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809690, 36.964722, 22.119287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923206, 37.343582, 22.179111>,  <28.991316, 37.570900, 22.215006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923206, 37.343582, 22.179111>,  <28.809690, 36.964722, 22.119287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923206, 37.343582, 22.179111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684025, -0.309269, 0.660653,
		0.671992, -0.085184, -0.735643,
		0.283789, 0.947152, 0.149559,
		29.008343, 37.627728, 22.223978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465147, 37.019917, 21.949404>,  <28.809690, 36.964722, 22.119287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465147, 37.019917, 21.949404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402489, 37.307812, 22.219942>,  <29.364895, 37.480549, 22.382265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402489, 37.307812, 22.219942>,  <29.465147, 37.019917, 21.949404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402489, 37.307812, 22.219942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800031, -0.309093, 0.514210,
		0.579149, 0.621646, -0.527392,
		-0.156644, 0.719734, 0.676347,
		29.355495, 37.523731, 22.422846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095615, 37.256397, 22.101971>,  <29.465147, 37.019917, 21.949404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095615, 37.256397, 22.101971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883410, 37.400070, 22.409098>,  <29.756086, 37.486275, 22.593374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883410, 37.400070, 22.409098>,  <30.095615, 37.256397, 22.101971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883410, 37.400070, 22.409098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747428, -0.229084, 0.623595,
		0.399878, 0.904715, -0.146930,
		-0.530517, 0.359182, 0.767815,
		29.724255, 37.507824, 22.639442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691277, 37.536617, 22.436007>,  <30.095615, 37.256397, 22.101971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691277, 37.536617, 22.436007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.386795, 37.497437, 22.692436>,  <30.204107, 37.473927, 22.846294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.386795, 37.497437, 22.692436>,  <30.691277, 37.536617, 22.436007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386795, 37.497437, 22.692436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610551, -0.441499, 0.657500,
		0.218627, 0.891899, 0.395877,
		-0.761202, -0.097956, 0.641074,
		30.158434, 37.468048, 22.884758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212337, 37.996792, 22.531918>,  <30.691277, 37.536617, 22.436007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212337, 37.996792, 22.531918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563213, 38.050720, 22.347586>,  <31.773739, 38.083076, 22.236986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563213, 38.050720, 22.347586>,  <31.212337, 37.996792, 22.531918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563213, 38.050720, 22.347586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461023, 0.504679, -0.729902,
		0.134162, 0.852714, 0.504856,
		0.877188, 0.134825, -0.460829,
		31.826370, 38.091167, 22.209337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207323, 38.750206, 22.361469>,  <31.212337, 37.996792, 22.531918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207323, 38.750206, 22.361469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.485292, 38.575539, 22.132944>,  <31.652075, 38.470737, 21.995829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.485292, 38.575539, 22.132944>,  <31.207323, 38.750206, 22.361469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485292, 38.575539, 22.132944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370633, 0.463327, -0.804959,
		0.616208, 0.771132, 0.160132,
		0.694923, -0.436672, -0.571313,
		31.693769, 38.444538, 21.961550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613775, 39.331875, 21.964529>,  <31.207323, 38.750206, 22.361469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613775, 39.331875, 21.964529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.715466, 38.998875, 21.767628>,  <31.776480, 38.799076, 21.649487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.715466, 38.998875, 21.767628>,  <31.613775, 39.331875, 21.964529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715466, 38.998875, 21.767628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174003, 0.461300, -0.870014,
		0.951363, 0.306835, -0.027582,
		0.254227, -0.832499, -0.492254,
		31.791733, 38.749126, 21.619951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063183, 39.544277, 21.414461>,  <31.613775, 39.331875, 21.964529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063183, 39.544277, 21.414461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.891939, 39.193295, 21.327932>,  <31.789192, 38.982704, 21.276014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.891939, 39.193295, 21.327932>,  <32.063183, 39.544277, 21.414461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891939, 39.193295, 21.327932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273756, 0.354035, -0.894269,
		0.861265, -0.323628, -0.391775,
		-0.428112, -0.877453, -0.216323,
		31.763506, 38.930058, 21.263035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350029, 39.483006, 20.706514>,  <32.063183, 39.544277, 21.414461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350029, 39.483006, 20.706514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.028645, 39.253613, 20.770487>,  <31.835815, 39.115978, 20.808870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.028645, 39.253613, 20.770487>,  <32.350029, 39.483006, 20.706514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028645, 39.253613, 20.770487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291259, 0.144323, -0.945695,
		0.519254, -0.806407, -0.282989,
		-0.803457, -0.573479, 0.159933,
		31.787607, 39.081570, 20.818466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346672, 39.079639, 20.067757>,  <32.350029, 39.483006, 20.706514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346672, 39.079639, 20.067757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.979803, 39.068718, 20.226778>,  <31.759682, 39.062164, 20.322191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.979803, 39.068718, 20.226778>,  <32.346672, 39.079639, 20.067757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979803, 39.068718, 20.226778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398088, 0.017921, -0.917172,
		0.017921, -0.999466, -0.027307,
		0.917172, 0.027307, -0.397554,
		31.704651, 39.060524, 20.346045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021393, 38.521904, 19.671967>,  <32.346672, 39.079639, 20.067757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021393, 38.521904, 19.671967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737833, 38.755657, 19.829929>,  <31.567696, 38.895908, 19.924707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737833, 38.755657, 19.829929>,  <32.021393, 38.521904, 19.671967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737833, 38.755657, 19.829929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495402, -0.014027, -0.868550,
		-0.502029, -0.811355, 0.299450,
		-0.708903, 0.584385, 0.394905,
		31.525162, 38.930973, 19.948400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432817, 38.287121, 19.411734>,  <32.021393, 38.521904, 19.671967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432817, 38.287121, 19.411734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.309240, 38.652084, 19.519117>,  <31.235094, 38.871063, 19.583548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.309240, 38.652084, 19.519117>,  <31.432817, 38.287121, 19.411734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309240, 38.652084, 19.519117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608731, 0.027183, -0.792911,
		-0.730754, -0.408382, 0.547012,
		-0.308941, 0.912406, 0.268459,
		31.216558, 38.925808, 19.599655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650049, 38.337070, 19.464041>,  <31.432817, 38.287121, 19.411734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650049, 38.337070, 19.464041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.769436, 38.714798, 19.408646>,  <30.841068, 38.941433, 19.375408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.769436, 38.714798, 19.408646>,  <30.650049, 38.337070, 19.464041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769436, 38.714798, 19.408646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672645, 0.105182, -0.732451,
		-0.677101, 0.311766, 0.666585,
		0.298466, 0.944319, -0.138489,
		30.858976, 38.998093, 19.367100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.141434, 35.076580, 33.822712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167694, 35.470215, 33.888763>,  <37.183449, 35.706394, 33.928394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167694, 35.470215, 33.888763>,  <37.141434, 35.076580, 33.822712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167694, 35.470215, 33.888763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033932, 0.163193, -0.986010,
		-0.997266, 0.070336, -0.022678,
		0.065651, 0.984084, 0.165133,
		37.187389, 35.765442, 33.938305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492008, 35.535793, 33.734245>,  <37.141434, 35.076580, 33.822712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492008, 35.535793, 33.734245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821911, 35.754093, 33.675018>,  <37.019852, 35.885075, 33.639481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821911, 35.754093, 33.675018>,  <36.492008, 35.535793, 33.734245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821911, 35.754093, 33.675018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243812, 0.106943, -0.963908,
		-0.510220, 0.831094, 0.221263,
		0.824761, 0.545752, -0.148066,
		37.069340, 35.917820, 33.630600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232838, 36.120575, 33.429104>,  <36.492008, 35.535793, 33.734245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232838, 36.120575, 33.429104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620541, 36.114925, 33.330849>,  <36.853161, 36.111534, 33.271896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620541, 36.114925, 33.330849>,  <36.232838, 36.120575, 33.429104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620541, 36.114925, 33.330849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239734, 0.170432, -0.955762,
		0.055366, 0.985268, 0.161806,
		0.969258, -0.014126, -0.245639,
		36.911320, 36.110687, 33.257156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393551, 36.700092, 33.028851>,  <36.232838, 36.120575, 33.429104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393551, 36.700092, 33.028851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691387, 36.450432, 32.934185>,  <36.870090, 36.300636, 32.877384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691387, 36.450432, 32.934185>,  <36.393551, 36.700092, 33.028851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691387, 36.450432, 32.934185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318957, -0.021220, -0.947532,
		0.586385, 0.781012, -0.214878,
		0.744594, -0.624155, -0.236666,
		36.914764, 36.263184, 32.863186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707405, 36.991180, 32.432255>,  <36.393551, 36.700092, 33.028851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707405, 36.991180, 32.432255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813553, 36.605541, 32.428280>,  <36.877243, 36.374157, 32.425896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813553, 36.605541, 32.428280>,  <36.707405, 36.991180, 32.432255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813553, 36.605541, 32.428280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059822, -0.006179, -0.998190,
		0.962289, 0.265483, -0.059313,
		0.265369, -0.964096, -0.009936,
		36.893162, 36.316311, 32.425301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003452, 36.985664, 31.795031>,  <36.707405, 36.991180, 32.432255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003452, 36.985664, 31.795031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947922, 36.597668, 31.874872>,  <36.914604, 36.364868, 31.922777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947922, 36.597668, 31.874872>,  <37.003452, 36.985664, 31.795031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947922, 36.597668, 31.874872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205654, -0.168923, -0.963935,
		0.968728, -0.174868, -0.176032,
		-0.138826, -0.969993, 0.199603,
		36.906273, 36.306671, 31.934753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382988, 36.616646, 31.311981>,  <37.003452, 36.985664, 31.795031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382988, 36.616646, 31.311981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127834, 36.330978, 31.427269>,  <36.974743, 36.159576, 31.496441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127834, 36.330978, 31.427269>,  <37.382988, 36.616646, 31.311981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127834, 36.330978, 31.427269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206742, -0.201712, -0.957377,
		0.741866, -0.670279, -0.018981,
		-0.637881, -0.714170, 0.288218,
		36.936470, 36.116726, 31.513735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508427, 35.986595, 30.924179>,  <37.382988, 36.616646, 31.311981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508427, 35.986595, 30.924179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127007, 35.955307, 31.040535>,  <36.898155, 35.936535, 31.110350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127007, 35.955307, 31.040535>,  <37.508427, 35.986595, 30.924179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127007, 35.955307, 31.040535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281474, -0.112546, -0.952946,
		0.107280, -0.990563, 0.085301,
		-0.953553, -0.078222, 0.290892,
		36.840942, 35.931839, 31.127802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176289, 35.302471, 30.569681>,  <37.508427, 35.986595, 30.924179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176289, 35.302471, 30.569681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883801, 35.548782, 30.687077>,  <36.708309, 35.696571, 30.757513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883801, 35.548782, 30.687077>,  <37.176289, 35.302471, 30.569681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883801, 35.548782, 30.687077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384642, -0.016877, -0.922912,
		-0.563358, -0.787737, 0.249196,
		-0.731218, 0.615781, 0.293489,
		36.664436, 35.733517, 30.775124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557178, 35.012386, 30.330727>,  <37.176289, 35.302471, 30.569681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557178, 35.012386, 30.330727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478233, 35.402367, 30.371748>,  <36.430866, 35.636356, 30.396360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478233, 35.402367, 30.371748>,  <36.557178, 35.012386, 30.330727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478233, 35.402367, 30.371748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460306, 0.000197, -0.887760,
		-0.865543, -0.222418, 0.448738,
		-0.197365, 0.974952, 0.102551,
		36.419025, 35.694851, 30.402514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927288, 35.081669, 30.037605>,  <36.557178, 35.012386, 30.330727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927288, 35.081669, 30.037605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021713, 35.468399, 30.076628>,  <36.078369, 35.700439, 30.100042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021713, 35.468399, 30.076628>,  <35.927288, 35.081669, 30.037605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021713, 35.468399, 30.076628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432423, 0.194422, -0.880461,
		-0.870222, 0.165655, 0.463974,
		0.236059, 0.966829, 0.097557,
		36.092529, 35.758450, 30.105894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287811, 35.507580, 29.860752>,  <35.927288, 35.081669, 30.037605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287811, 35.507580, 29.860752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598927, 35.751888, 29.801418>,  <35.785595, 35.898472, 29.765818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598927, 35.751888, 29.801418>,  <35.287811, 35.507580, 29.860752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598927, 35.751888, 29.801418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425623, 0.338170, -0.839337,
		-0.462479, 0.715963, 0.522983,
		0.777791, 0.610769, -0.148333,
		35.832264, 35.935120, 29.756918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443825, 35.666023, 29.907566>,  <35.287811, 35.507580, 29.860752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443825, 35.666023, 29.907566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169777, 35.381557, 29.970634>,  <34.005348, 35.210876, 30.008476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169777, 35.381557, 29.970634>,  <34.443825, 35.666023, 29.907566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169777, 35.381557, 29.970634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236804, -0.012743, 0.971474,
		-0.688869, 0.702910, 0.177137,
		-0.685116, -0.711165, 0.157673,
		33.964241, 35.168209, 30.017937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918278, 35.884464, 30.486959>,  <34.443825, 35.666023, 29.907566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918278, 35.884464, 30.486959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915806, 35.484730, 30.472588>,  <33.914322, 35.244888, 30.463964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915806, 35.484730, 30.472588>,  <33.918278, 35.884464, 30.486959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915806, 35.484730, 30.472588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171123, -0.036459, 0.984575,
		-0.985230, -0.000062, 0.171235,
		-0.006182, -0.999335, -0.035931,
		33.913952, 35.184929, 30.461809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489513, 35.710854, 30.982851>,  <33.918278, 35.884464, 30.486959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489513, 35.710854, 30.982851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726509, 35.392273, 30.934494>,  <33.868706, 35.201126, 30.905479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726509, 35.392273, 30.934494>,  <33.489513, 35.710854, 30.982851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726509, 35.392273, 30.934494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008354, -0.156137, 0.987700,
		-0.805533, -0.584195, -0.099163,
		0.592492, -0.796453, -0.120893,
		33.904259, 35.153336, 30.898226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204018, 35.308075, 31.386711>,  <33.489513, 35.710854, 30.982851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204018, 35.308075, 31.386711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557396, 35.129353, 31.330297>,  <33.769421, 35.022118, 31.296450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557396, 35.129353, 31.330297>,  <33.204018, 35.308075, 31.386711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557396, 35.129353, 31.330297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006638, -0.289043, 0.957293,
		-0.468493, -0.846650, -0.252387,
		0.883443, -0.446810, -0.141035,
		33.822430, 34.995312, 31.287987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157276, 34.613483, 31.655296>,  <33.204018, 35.308075, 31.386711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157276, 34.613483, 31.655296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550594, 34.685532, 31.644863>,  <33.786587, 34.728760, 31.638603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550594, 34.685532, 31.644863>,  <33.157276, 34.613483, 31.655296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550594, 34.685532, 31.644863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077320, -0.283686, 0.955795,
		0.164761, -0.941848, -0.292875,
		0.983298, 0.180122, -0.026084,
		33.845585, 34.739567, 31.637037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506176, 34.028786, 31.981213>,  <33.157276, 34.613483, 31.655296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506176, 34.028786, 31.981213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772663, 34.324696, 32.018898>,  <33.932556, 34.502243, 32.041512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772663, 34.324696, 32.018898>,  <33.506176, 34.028786, 31.981213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772663, 34.324696, 32.018898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186734, -0.287794, 0.939311,
		0.721997, -0.608196, -0.329876,
		0.666221, 0.739779, 0.094216,
		33.972530, 34.546631, 32.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060097, 33.737839, 32.489319>,  <33.506176, 34.028786, 31.981213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060097, 33.737839, 32.489319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090679, 34.134800, 32.450752>,  <34.109028, 34.372974, 32.427612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090679, 34.134800, 32.450752>,  <34.060097, 33.737839, 32.489319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090679, 34.134800, 32.450752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175290, 0.081813, 0.981112,
		0.981544, -0.091909, -0.167703,
		0.076452, 0.992401, -0.096414,
		34.113613, 34.432522, 32.421829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676991, 33.906769, 32.907120>,  <34.060097, 33.737839, 32.489319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676991, 33.906769, 32.907120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448193, 34.231922, 32.863228>,  <34.310913, 34.427013, 32.836891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448193, 34.231922, 32.863228>,  <34.676991, 33.906769, 32.907120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448193, 34.231922, 32.863228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217646, 0.279389, 0.935186,
		0.790853, 0.511043, -0.336731,
		-0.571999, 0.812882, -0.109730,
		34.276592, 34.475788, 32.830311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084362, 34.460548, 33.197529>,  <34.676991, 33.906769, 32.907120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084362, 34.460548, 33.197529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709866, 34.598907, 33.172867>,  <34.485168, 34.681923, 33.158070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709866, 34.598907, 33.172867>,  <35.084362, 34.460548, 33.197529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709866, 34.598907, 33.172867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062649, 0.337020, 0.939411,
		0.345719, 0.875655, -0.337203,
		-0.936244, 0.345898, -0.061656,
		34.428993, 34.702679, 33.154369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055965, 35.007717, 33.784134>,  <35.084362, 34.460548, 33.197529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055965, 35.007717, 33.784134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667255, 34.962276, 33.701439>,  <34.434029, 34.935013, 33.651821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667255, 34.962276, 33.701439>,  <35.055965, 35.007717, 33.784134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667255, 34.962276, 33.701439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231143, 0.283587, 0.930673,
		-0.047100, 0.952194, -0.301842,
		-0.971779, -0.113604, -0.206736,
		34.375721, 34.928196, 33.639420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784386, 35.564224, 34.070438>,  <35.055965, 35.007717, 33.784134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784386, 35.564224, 34.070438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.488152, 35.300224, 34.019943>,  <34.310410, 35.141827, 33.989647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.488152, 35.300224, 34.019943>,  <34.784386, 35.564224, 34.070438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488152, 35.300224, 34.019943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359390, 0.230312, 0.904320,
		-0.567774, 0.715096, -0.407763,
		-0.740588, -0.659996, -0.126233,
		34.265976, 35.102226, 33.982075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201546, 35.888893, 34.280113>,  <34.784386, 35.564224, 34.070438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201546, 35.888893, 34.280113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105595, 35.502590, 34.319649>,  <34.048023, 35.270809, 34.343372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105595, 35.502590, 34.319649>,  <34.201546, 35.888893, 34.280113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105595, 35.502590, 34.319649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507758, 0.211590, 0.835112,
		-0.827429, 0.150141, -0.541127,
		-0.239882, -0.965757, 0.098841,
		34.033630, 35.212864, 34.349300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529308, 35.836811, 34.282391>,  <34.201546, 35.888893, 34.280113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529308, 35.836811, 34.282391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685410, 35.529865, 34.485905>,  <33.779068, 35.345699, 34.608013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685410, 35.529865, 34.485905>,  <33.529308, 35.836811, 34.282391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685410, 35.529865, 34.485905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630617, 0.179856, 0.754966,
		-0.670840, -0.615473, -0.413723,
		0.390251, -0.767362, 0.508782,
		33.802486, 35.299656, 34.638538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932709, 35.466946, 34.545235>,  <33.529308, 35.836811, 34.282391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932709, 35.466946, 34.545235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.271755, 35.378902, 34.738358>,  <33.475182, 35.326077, 34.854229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.271755, 35.378902, 34.738358>,  <32.932709, 35.466946, 34.545235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271755, 35.378902, 34.738358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451157, 0.179975, 0.874109,
		-0.279295, -0.958728, 0.053244,
		0.847616, -0.220113, 0.482803,
		33.526039, 35.312870, 34.883198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645855, 35.869274, 35.155594>,  <32.932709, 35.466946, 34.545235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645855, 35.869274, 35.155594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563358, 36.156105, 35.421906>,  <32.513859, 36.328201, 35.581692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563358, 36.156105, 35.421906>,  <32.645855, 35.869274, 35.155594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563358, 36.156105, 35.421906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616030, 0.433491, -0.657718,
		-0.760244, -0.545792, 0.352335,
		-0.206243, 0.717075, 0.665783,
		32.501484, 36.371227, 35.621639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902731, 35.985275, 35.138603>,  <32.645855, 35.869274, 35.155594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902731, 35.985275, 35.138603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114761, 36.299625, 35.265991>,  <32.241978, 36.488235, 35.342426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114761, 36.299625, 35.265991>,  <31.902731, 35.985275, 35.138603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114761, 36.299625, 35.265991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473200, 0.585810, -0.657958,
		-0.703635, 0.198066, 0.682398,
		0.530075, 0.785873, 0.318472,
		32.273785, 36.535389, 35.361534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353558, 36.492786, 35.202747>,  <31.902731, 35.985275, 35.138603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353558, 36.492786, 35.202747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.716095, 36.648815, 35.137775>,  <31.933617, 36.742432, 35.098793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.716095, 36.648815, 35.137775>,  <31.353558, 36.492786, 35.202747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716095, 36.648815, 35.137775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387675, 0.614751, -0.686869,
		-0.168076, 0.685510, 0.708397,
		0.906343, 0.390074, -0.162431,
		31.987997, 36.765839, 35.089046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319250, 37.190258, 35.306515>,  <31.353558, 36.492786, 35.202747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319250, 37.190258, 35.306515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.635956, 37.127460, 35.070393>,  <31.825979, 37.089783, 34.928719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.635956, 37.127460, 35.070393>,  <31.319250, 37.190258, 35.306515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635956, 37.127460, 35.070393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401509, 0.594521, -0.696660,
		0.460322, 0.788604, 0.407686,
		0.791767, -0.156998, -0.590303,
		31.873486, 37.080360, 34.893303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461361, 37.864601, 35.103439>,  <31.319250, 37.190258, 35.306515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461361, 37.864601, 35.103439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623388, 37.624001, 34.828014>,  <31.720604, 37.479641, 34.662758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623388, 37.624001, 34.828014>,  <31.461361, 37.864601, 35.103439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623388, 37.624001, 34.828014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405300, 0.556942, -0.724946,
		0.819544, 0.572727, -0.018188,
		0.405067, -0.601497, -0.688565,
		31.744907, 37.443550, 34.621445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741676, 38.311501, 34.642746>,  <31.461361, 37.864601, 35.103439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741676, 38.311501, 34.642746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733885, 37.964592, 34.443764>,  <31.729210, 37.756447, 34.324375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733885, 37.964592, 34.443764>,  <31.741676, 38.311501, 34.642746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733885, 37.964592, 34.443764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342215, 0.473279, -0.811724,
		0.939420, 0.154426, -0.306011,
		-0.019477, -0.867271, -0.497455,
		31.728041, 37.704411, 34.294529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207066, 38.385414, 33.994228>,  <31.741676, 38.311501, 34.642746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207066, 38.385414, 33.994228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.910885, 38.118267, 33.964077>,  <31.733175, 37.957977, 33.945988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.910885, 38.118267, 33.964077>,  <32.207066, 38.385414, 33.994228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910885, 38.118267, 33.964077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337101, 0.466058, -0.818018,
		0.581458, -0.580293, -0.570233,
		-0.740452, -0.667869, -0.075376,
		31.688749, 37.917908, 33.941463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999220, 38.538933, 33.330177>,  <32.207066, 38.385414, 33.994228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999220, 38.538933, 33.330177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.709705, 38.294369, 33.458122>,  <31.535995, 38.147629, 33.534889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.709705, 38.294369, 33.458122>,  <31.999220, 38.538933, 33.330177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709705, 38.294369, 33.458122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517604, 0.174532, -0.837630,
		0.456309, -0.771827, -0.442792,
		-0.723787, -0.611410, 0.319860,
		31.492569, 38.110947, 33.554081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794174, 38.070499, 32.747173>,  <31.999220, 38.538933, 33.330177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794174, 38.070499, 32.747173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.491133, 38.097122, 33.006897>,  <31.309307, 38.113094, 33.162731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.491133, 38.097122, 33.006897>,  <31.794174, 38.070499, 32.747173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491133, 38.097122, 33.006897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618482, 0.244732, -0.746717,
		-0.208605, -0.967304, -0.144247,
		-0.757604, 0.066554, 0.649312,
		31.263851, 38.117088, 33.201691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214439, 37.772285, 32.415562>,  <31.794174, 38.070499, 32.747173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214439, 37.772285, 32.415562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044685, 37.987202, 32.707100>,  <30.942833, 38.116154, 32.882023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044685, 37.987202, 32.707100>,  <31.214439, 37.772285, 32.415562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044685, 37.987202, 32.707100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748463, 0.244861, -0.616317,
		-0.509609, -0.807067, 0.298231,
		-0.424384, 0.537295, 0.728843,
		30.917370, 38.148392, 32.925755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590256, 37.613697, 32.334591>,  <31.214439, 37.772285, 32.415562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590256, 37.613697, 32.334591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570395, 37.954468, 32.543110>,  <30.558477, 38.158932, 32.668221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570395, 37.954468, 32.543110>,  <30.590256, 37.613697, 32.334591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570395, 37.954468, 32.543110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762125, 0.305025, -0.571074,
		-0.645524, -0.425649, 0.634131,
		-0.049652, 0.851929, 0.521299,
		30.555498, 38.210045, 32.699501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883795, 37.819473, 32.364742>,  <30.590256, 37.613697, 32.334591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883795, 37.819473, 32.364742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086855, 38.149544, 32.463844>,  <30.208691, 38.347584, 32.523308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086855, 38.149544, 32.463844>,  <29.883795, 37.819473, 32.364742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086855, 38.149544, 32.463844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689022, 0.561478, -0.458247,
		-0.517243, 0.061918, 0.853596,
		0.507649, 0.825171, 0.247757,
		30.239149, 38.397095, 32.538170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306488, 38.379280, 32.568031>,  <29.883795, 37.819473, 32.364742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306488, 38.379280, 32.568031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654631, 38.551620, 32.472664>,  <29.863516, 38.655025, 32.415443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654631, 38.551620, 32.472664>,  <29.306488, 38.379280, 32.568031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654631, 38.551620, 32.472664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480221, 0.635555, -0.604531,
		-0.108933, 0.640653, 0.760064,
		0.870357, 0.430852, -0.238422,
		29.915737, 38.680878, 32.401138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099844, 39.047886, 32.511543>,  <29.306488, 38.379280, 32.568031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099844, 39.047886, 32.511543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.431599, 38.991070, 32.295418>,  <29.630651, 38.956978, 32.165741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.431599, 38.991070, 32.295418>,  <29.099844, 39.047886, 32.511543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431599, 38.991070, 32.295418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368448, 0.587924, -0.720133,
		0.419954, 0.796347, 0.435282,
		0.829388, -0.142044, -0.540314,
		29.680414, 38.948456, 32.133324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144480, 39.604942, 32.151100>,  <29.099844, 39.047886, 32.511543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144480, 39.604942, 32.151100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.401428, 39.390533, 31.931997>,  <29.555597, 39.261887, 31.800535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.401428, 39.390533, 31.931997>,  <29.144480, 39.604942, 32.151100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401428, 39.390533, 31.931997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253186, 0.526169, -0.811815,
		0.723364, 0.660172, 0.202283,
		0.642372, -0.536022, -0.547757,
		29.594139, 39.229725, 31.767670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686640, 40.022598, 31.820089>,  <29.144480, 39.604942, 32.151100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686640, 40.022598, 31.820089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630426, 39.687241, 31.609436>,  <29.596699, 39.486027, 31.483044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630426, 39.687241, 31.609436>,  <29.686640, 40.022598, 31.820089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630426, 39.687241, 31.609436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261115, 0.544465, -0.797106,
		0.955024, 0.025493, -0.295432,
		-0.140531, -0.838396, -0.526633,
		29.588266, 39.435722, 31.451447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808083, 40.298027, 31.236994>,  <29.686640, 40.022598, 31.820089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808083, 40.298027, 31.236994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.628145, 39.951263, 31.151096>,  <29.520184, 39.743206, 31.099558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.628145, 39.951263, 31.151096>,  <29.808083, 40.298027, 31.236994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628145, 39.951263, 31.151096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256581, 0.355753, -0.898669,
		0.855457, -0.349161, -0.382465,
		-0.449843, -0.866906, -0.214743,
		29.493193, 39.691193, 31.086674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077002, 40.061531, 30.587337>,  <29.808083, 40.298027, 31.236994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077002, 40.061531, 30.587337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716524, 39.900478, 30.651514>,  <29.500238, 39.803848, 30.690020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716524, 39.900478, 30.651514>,  <30.077002, 40.061531, 30.587337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716524, 39.900478, 30.651514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223187, 0.113770, -0.968114,
		0.371539, -0.908264, -0.192391,
		-0.901191, -0.402631, 0.160442,
		29.446167, 39.779690, 30.699646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948559, 39.578949, 30.003561>,  <30.077002, 40.061531, 30.587337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948559, 39.578949, 30.003561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.589428, 39.638287, 30.169405>,  <29.373949, 39.673889, 30.268911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.589428, 39.638287, 30.169405>,  <29.948559, 39.578949, 30.003561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589428, 39.638287, 30.169405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418346, 0.006565, -0.908264,
		-0.137459, -0.988914, 0.056166,
		-0.897826, 0.148346, 0.414611,
		29.320080, 39.682789, 30.293789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494577, 39.234440, 29.535347>,  <29.948559, 39.578949, 30.003561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494577, 39.234440, 29.535347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.229448, 39.436600, 29.756338>,  <29.070370, 39.557896, 29.888933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.229448, 39.436600, 29.756338>,  <29.494577, 39.234440, 29.535347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229448, 39.436600, 29.756338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516954, 0.224899, -0.825941,
		-0.541684, -0.833060, 0.112201,
		-0.662825, 0.505402, 0.552478,
		29.030602, 39.588219, 29.922081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772333, 38.960697, 29.294586>,  <29.494577, 39.234440, 29.535347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772333, 38.960697, 29.294586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.750719, 39.333767, 29.437244>,  <28.737751, 39.557610, 29.522840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.750719, 39.333767, 29.437244>,  <28.772333, 38.960697, 29.294586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750719, 39.333767, 29.437244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606359, 0.253126, -0.753827,
		-0.793353, -0.256990, 0.551858,
		-0.054037, 0.932675, 0.356647,
		28.734509, 39.613571, 29.544239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977095, 39.226051, 29.094538>,  <28.772333, 38.960697, 29.294586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977095, 39.226051, 29.094538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.212542, 39.537231, 29.182463>,  <28.353809, 39.723942, 29.235218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.212542, 39.537231, 29.182463>,  <27.977095, 39.226051, 29.094538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212542, 39.537231, 29.182463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456306, 0.544177, -0.704029,
		-0.667320, 0.314100, 0.675297,
		0.588616, 0.777954, 0.219814,
		28.389126, 39.770618, 29.248407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527308, 39.735706, 29.073313>,  <27.977095, 39.226051, 29.094538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527308, 39.735706, 29.073313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.868097, 39.937950, 29.018919>,  <28.072571, 40.059296, 28.986282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.868097, 39.937950, 29.018919>,  <27.527308, 39.735706, 29.073313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868097, 39.937950, 29.018919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439766, 0.550083, -0.709940,
		-0.284150, 0.664654, 0.691009,
		0.851977, 0.505612, -0.135986,
		28.123690, 40.089634, 28.978123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371252, 40.345673, 28.700562>,  <27.527308, 39.735706, 29.073313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371252, 40.345673, 28.700562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.765882, 40.349140, 28.635334>,  <28.002661, 40.351223, 28.596197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.765882, 40.349140, 28.635334>,  <27.371252, 40.345673, 28.700562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765882, 40.349140, 28.635334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159641, 0.261410, -0.951935,
		0.034372, 0.965189, 0.259285,
		0.986577, 0.008673, -0.163069,
		28.061855, 40.351742, 28.586412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480444, 41.049805, 28.488607>,  <27.371252, 40.345673, 28.700562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480444, 41.049805, 28.488607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.788721, 40.837086, 28.348200>,  <27.973688, 40.709454, 28.263954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.788721, 40.837086, 28.348200>,  <27.480444, 41.049805, 28.488607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788721, 40.837086, 28.348200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098098, 0.445286, -0.889998,
		0.629608, 0.720351, 0.291011,
		0.770695, -0.531802, -0.351021,
		28.019930, 40.677544, 28.242893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684259, 41.475086, 27.988781>,  <27.480444, 41.049805, 28.488607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684259, 41.475086, 27.988781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.863054, 41.131542, 27.888733>,  <27.970331, 40.925415, 27.828705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.863054, 41.131542, 27.888733>,  <27.684259, 41.475086, 27.988781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863054, 41.131542, 27.888733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159360, 0.198678, -0.967022,
		0.880230, 0.472107, -0.048061,
		0.446989, -0.858860, -0.250118,
		27.997150, 40.873882, 27.813698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089083, 41.632061, 27.371954>,  <27.684259, 41.475086, 27.988781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089083, 41.632061, 27.371954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.065140, 41.232849, 27.379576>,  <28.050774, 40.993324, 27.384148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.065140, 41.232849, 27.379576>,  <28.089083, 41.632061, 27.371954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065140, 41.232849, 27.379576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145738, -0.010145, -0.989271,
		0.987511, -0.061992, -0.144843,
		-0.059857, -0.998025, 0.019052,
		28.047182, 40.933441, 27.385292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650768, 41.262447, 26.929987>,  <28.089083, 41.632061, 27.371954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650768, 41.262447, 26.929987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.346029, 41.003384, 26.934444>,  <28.163185, 40.847946, 26.937119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.346029, 41.003384, 26.934444>,  <28.650768, 41.262447, 26.929987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346029, 41.003384, 26.934444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066492, -0.095307, -0.993225,
		0.644332, -0.755947, 0.115674,
		-0.761849, -0.647658, 0.011145,
		28.117474, 40.809086, 26.937788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275997, 41.343189, 26.556660>,  <28.650768, 41.262447, 26.929987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275997, 41.343189, 26.556660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.288782, 41.728413, 26.663610>,  <29.296453, 41.959549, 26.727781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.288782, 41.728413, 26.663610>,  <29.275997, 41.343189, 26.556660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288782, 41.728413, 26.663610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397494, -0.257698, 0.880676,
		0.917048, 0.078132, -0.391048,
		0.031963, 0.963061, 0.267378,
		29.298370, 42.017330, 26.743824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929108, 41.572628, 26.865744>,  <29.275997, 41.343189, 26.556660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929108, 41.572628, 26.865744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.669735, 41.846920, 26.997995>,  <29.514112, 42.011494, 27.077347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.669735, 41.846920, 26.997995>,  <29.929108, 41.572628, 26.865744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669735, 41.846920, 26.997995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359195, -0.107335, 0.927069,
		0.671205, 0.719900, -0.176711,
		-0.648430, 0.685728, 0.330629,
		29.475206, 42.052639, 27.097183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324547, 42.104393, 27.209896>,  <29.929108, 41.572628, 26.865744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324547, 42.104393, 27.209896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.953535, 42.117432, 27.358826>,  <29.730928, 42.125256, 27.448183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.953535, 42.117432, 27.358826>,  <30.324547, 42.104393, 27.209896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953535, 42.117432, 27.358826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369199, -0.075055, 0.926315,
		0.058135, 0.996647, 0.057583,
		-0.927530, 0.032592, 0.372324,
		29.675276, 42.127209, 27.470524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434086, 42.522358, 27.835798>,  <30.324547, 42.104393, 27.209896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434086, 42.522358, 27.835798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088114, 42.328178, 27.886770>,  <29.880531, 42.211670, 27.917355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088114, 42.328178, 27.886770>,  <30.434086, 42.522358, 27.835798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088114, 42.328178, 27.886770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173398, -0.050761, 0.983543,
		-0.470990, 0.872791, 0.128080,
		-0.864929, -0.485448, 0.127432,
		29.828634, 42.182545, 27.924999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203953, 42.925991, 28.293184>,  <30.434086, 42.522358, 27.835798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203953, 42.925991, 28.293184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.009087, 42.577076, 28.310047>,  <29.892168, 42.367725, 28.320166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.009087, 42.577076, 28.310047>,  <30.203953, 42.925991, 28.293184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009087, 42.577076, 28.310047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206882, -0.068370, 0.975974,
		-0.848452, 0.484181, 0.213770,
		-0.487164, -0.872292, 0.042159,
		29.862938, 42.315388, 28.322695>
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
