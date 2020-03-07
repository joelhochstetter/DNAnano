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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<2.251383, 6.078694, 1.113597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.437328, 5.730988, 1.180862>,  <2.548896, 5.522364, 1.221222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.437328, 5.730988, 1.180862>,  <2.251383, 6.078694, 1.113597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.437328, 5.730988, 1.180862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719089, -0.481489, -0.501078,
		0.516539, 0.112009, -0.848906,
		0.464864, -0.869265, 0.168164,
		2.576788, 5.470208, 1.231311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.535112, 5.525573, 0.560655>,  <2.251383, 6.078694, 1.113597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.535112, 5.525573, 0.560655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.381695, 5.327408, 0.872414>,  <2.289644, 5.208509, 1.059469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.381695, 5.327408, 0.872414>,  <2.535112, 5.525573, 0.560655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.381695, 5.327408, 0.872414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680441, -0.419015, -0.601187,
		0.624415, -0.760916, -0.176388,
		-0.383544, -0.495412, 0.779398,
		2.266632, 5.178784, 1.106233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.298724, 4.765862, 0.359486>,  <2.535112, 5.525573, 0.560655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.298724, 4.765862, 0.359486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.086445, 4.926575, 0.657997>,  <1.959077, 5.023003, 0.837104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.086445, 4.926575, 0.657997>,  <2.298724, 4.765862, 0.359486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.086445, 4.926575, 0.657997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825532, -0.444479, -0.347758,
		0.191982, -0.800631, 0.567568,
		-0.530697, 0.401782, 0.746278,
		1.927236, 5.047110, 0.881881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.036726, 4.152917, 0.726321>,  <2.298724, 4.765862, 0.359486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.036726, 4.152917, 0.726321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.824474, 4.491501, 0.743935>,  <1.697123, 4.694651, 0.754503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.824474, 4.491501, 0.743935>,  <2.036726, 4.152917, 0.726321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.824474, 4.491501, 0.743935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808778, -0.490096, -0.325091,
		-0.253596, -0.208116, 0.944657,
		-0.530630, 0.846459, 0.044033,
		1.665285, 4.745439, 0.757145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.454964, 3.869063, 0.847781>,  <2.036726, 4.152917, 0.726321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.454964, 3.869063, 0.847781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.381237, 4.231949, 0.696526>,  <1.337001, 4.449680, 0.605772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.381237, 4.231949, 0.696526>,  <1.454964, 3.869063, 0.847781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.381237, 4.231949, 0.696526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933934, -0.281541, -0.220228,
		-0.306256, 0.312567, 0.899171,
		-0.184317, 0.907213, -0.378141,
		1.325942, 4.504113, 0.583084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.920855, 4.068112, 1.188727>,  <1.454964, 3.869063, 0.847781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.920855, 4.068112, 1.188727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.930950, 4.293167, 0.858200>,  <0.937008, 4.428200, 0.659884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.930950, 4.293167, 0.858200>,  <0.920855, 4.068112, 1.188727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.930950, 4.293167, 0.858200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970083, -0.185865, -0.156185,
		-0.241459, 0.805539, 0.541114,
		0.025239, 0.562638, -0.826318,
		0.938522, 4.461958, 0.610305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.314443, 4.586655, 1.162429>,  <0.920855, 4.068112, 1.188727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.314443, 4.586655, 1.162429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.431351, 4.501114, 0.789581>,  <0.501495, 4.449789, 0.565873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.431351, 4.501114, 0.789581>,  <0.314443, 4.586655, 1.162429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.431351, 4.501114, 0.789581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953606, -0.138768, -0.267169,
		-0.072214, 0.966959, -0.244489,
		0.292269, -0.213853, -0.932119,
		0.519031, 4.436958, 0.509946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.201864, 4.957699, 0.699610>,  <0.314443, 4.586655, 1.162429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.201864, 4.957699, 0.699610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.022717, 4.656174, 0.507286>,  <0.084772, 4.475258, 0.391892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.022717, 4.656174, 0.507286>,  <-0.201864, 4.957699, 0.699610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.022717, 4.656174, 0.507286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890841, -0.330354, -0.311879,
		0.076261, 0.568007, -0.819483,
		0.447869, -0.753813, -0.480810,
		0.111644, 4.430030, 0.363043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.138913, 4.439604, 0.779982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.044065, 4.051941, 0.753128>,  <-0.987157, 3.819343, 0.737016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.044065, 4.051941, 0.753128>,  <-1.138913, 4.439604, 0.779982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.044065, 4.051941, 0.753128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712500, 0.220468, -0.666137,
		0.660393, 0.110121, 0.742802,
		0.237120, -0.969158, -0.067134,
		-0.972930, 3.761194, 0.732988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.510671, 4.259140, 0.783997>,  <-1.138913, 4.439604, 0.779982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.510671, 4.259140, 0.783997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.631121, 3.945572, 0.566818>,  <-0.703390, 3.757431, 0.436511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.631121, 3.945572, 0.566818>,  <-0.510671, 4.259140, 0.783997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.631121, 3.945572, 0.566818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731523, 0.175349, -0.658883,
		0.611718, -0.595583, 0.520655,
		-0.301123, -0.783922, -0.542947,
		-0.721458, 3.710395, 0.403934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.041313, 3.560894, 0.683681>,  <-0.510671, 4.259140, 0.783997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.041313, 3.560894, 0.683681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.250259, 3.669907, 0.360481>,  <-0.375627, 3.735314, 0.166562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.250259, 3.669907, 0.360481>,  <-0.041313, 3.560894, 0.683681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.250259, 3.669907, 0.360481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846320, 0.281589, -0.452162,
		0.104296, -0.920019, -0.377740,
		-0.522365, 0.272530, -0.807999,
		-0.406969, 3.751666, 0.118082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.334370, 3.312359, 0.127297>,  <-0.041313, 3.560894, 0.683681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.334370, 3.312359, 0.127297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.139410, 3.643204, 0.015350>,  <0.022434, 3.841711, -0.051818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.139410, 3.643204, 0.015350>,  <0.334370, 3.312359, 0.127297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.139410, 3.643204, 0.015350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872521, 0.473777, -0.119343,
		0.033884, -0.302358, -0.952592,
		-0.487400, 0.827112, -0.279868,
		-0.006810, 3.891337, -0.068610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.793646, 3.603670, -0.449188>,  <0.334370, 3.312359, 0.127297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.793646, 3.603670, -0.449188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.587835, 3.858841, -0.219994>,  <0.464349, 4.011943, -0.082477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.587835, 3.858841, -0.219994>,  <0.793646, 3.603670, -0.449188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.587835, 3.858841, -0.219994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791066, 0.610990, 0.030118,
		-0.330875, 0.468766, -0.819012,
		-0.514526, 0.637927, 0.572985,
		0.433477, 4.050219, -0.048098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.067299, 4.262087, -0.662769>,  <0.793646, 3.603670, -0.449188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.067299, 4.262087, -0.662769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.875387, 4.341431, -0.320900>,  <0.760240, 4.389037, -0.115779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.875387, 4.341431, -0.320900>,  <1.067299, 4.262087, -0.662769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.875387, 4.341431, -0.320900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751465, 0.595719, 0.283583,
		-0.452893, 0.778314, -0.434874,
		-0.479779, 0.198359, 0.854673,
		0.731453, 4.400939, -0.064498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.043378, 5.021043, -0.529573>,  <1.067299, 4.262087, -0.662769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.043378, 5.021043, -0.529573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.001568, 4.836990, -0.176903>,  <0.976482, 4.726559, 0.034699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.001568, 4.836990, -0.176903>,  <1.043378, 5.021043, -0.529573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.001568, 4.836990, -0.176903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683593, 0.610664, 0.399738,
		-0.722340, 0.644490, 0.250714,
		-0.104525, -0.460133, 0.881676,
		0.970210, 4.698951, 0.087600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.968187, 5.578641, -0.007563>,  <1.043378, 5.021043, -0.529573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.968187, 5.578641, -0.007563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.096218, 5.232605, 0.146927>,  <1.173037, 5.024983, 0.239621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.096218, 5.232605, 0.146927>,  <0.968187, 5.578641, -0.007563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.096218, 5.232605, 0.146927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687968, 0.492520, 0.533034,
		-0.651346, 0.095099, 0.752798,
		0.320077, -0.865090, 0.386225,
		1.192241, 4.973078, 0.262794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
