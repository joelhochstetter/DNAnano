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
	<0.359532, 2.216475, 2.787858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.685356, 2.078462, 2.974381>,  <0.880850, 1.995654, 3.086296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.685356, 2.078462, 2.974381>,  <0.359532, 2.216475, 2.787858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.685356, 2.078462, 2.974381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305202, 0.428697, 0.850336,
		-0.493300, -0.834968, 0.243894,
		0.814560, -0.345034, 0.466310,
		0.929724, 1.974952, 3.114274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.318988, 1.828560, 3.517955>,  <0.359532, 2.216475, 2.787858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.318988, 1.828560, 3.517955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.654888, 2.042645, 3.481370>,  <0.856429, 2.171096, 3.459419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.654888, 2.042645, 3.481370>,  <0.318988, 1.828560, 3.517955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.654888, 2.042645, 3.481370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223826, 0.494691, 0.839751,
		0.494691, -0.684711, 0.535212,
		-0.839751, -0.535212, 0.091463,
		0.906814, 2.203209, 3.453931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.831282, 1.616665, 4.046422>,  <0.318988, 1.828560, 3.517955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.831282, 1.616665, 4.046422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.881573, 1.989950, 3.911777>,  <0.911747, 2.213921, 3.830991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.881573, 1.989950, 3.911777>,  <0.831282, 1.616665, 4.046422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.881573, 1.989950, 3.911777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346360, 0.359243, 0.866590,
		0.929638, 0.007636, 0.368394,
		0.125726, 0.933213, -0.336611,
		0.919290, 2.269914, 3.810794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.360863, 1.983111, 4.465441>,  <0.831282, 1.616665, 4.046422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.360863, 1.983111, 4.465441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.061237, 2.202109, 4.316229>,  <0.881462, 2.333508, 4.226702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.061237, 2.202109, 4.316229>,  <1.360863, 1.983111, 4.465441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.061237, 2.202109, 4.316229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215341, 0.331276, 0.918632,
		0.626522, 0.768443, -0.130249,
		-0.749065, 0.547495, -0.373029,
		0.836518, 2.366357, 4.204320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.418564, 2.558001, 4.772902>,  <1.360863, 1.983111, 4.465441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.418564, 2.558001, 4.772902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.029190, 2.564798, 4.681568>,  <0.795566, 2.568877, 4.626768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.029190, 2.564798, 4.681568>,  <1.418564, 2.558001, 4.772902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.029190, 2.564798, 4.681568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207634, 0.354823, 0.911586,
		0.096509, 0.934779, -0.341868,
		-0.973434, 0.016993, -0.228336,
		0.737160, 2.569896, 4.613068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.107891, 3.193253, 4.892987>,  <1.418564, 2.558001, 4.772902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.107891, 3.193253, 4.892987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.779034, 2.965613, 4.887257>,  <0.581719, 2.829029, 4.883819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.779034, 2.965613, 4.887257>,  <1.107891, 3.193253, 4.892987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.779034, 2.965613, 4.887257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359948, 0.500170, 0.787571,
		-0.441041, 0.652653, -0.616058,
		-0.822144, -0.569099, -0.014326,
		0.532390, 2.794883, 4.882959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.724540, 3.648067, 5.030225>,  <1.107891, 3.193253, 4.892987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.724540, 3.648067, 5.030225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.520336, 3.310843, 5.097903>,  <0.397814, 3.108508, 5.138510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.520336, 3.310843, 5.097903>,  <0.724540, 3.648067, 5.030225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.520336, 3.310843, 5.097903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446281, 0.427970, 0.785923,
		-0.734992, 0.325713, -0.594725,
		-0.510510, -0.843062, 0.169195,
		0.367183, 3.057924, 5.148662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.060612, 3.818560, 5.169120>,  <0.724540, 3.648067, 5.030225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.060612, 3.818560, 5.169120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.024490, 3.474310, 5.354187>,  <0.075552, 3.267760, 5.465227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.024490, 3.474310, 5.354187>,  <-0.060612, 3.818560, 5.169120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.024490, 3.474310, 5.354187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377724, 0.364255, 0.851260,
		-0.901143, -0.355872, -0.247581,
		0.212757, -0.860624, 0.462667,
		0.088317, 3.216123, 5.492987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.079117, 3.850960, 1.573702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.038109, 3.491741, 1.704927>,  <-0.108445, 3.276210, 1.783663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.038109, 3.491741, 1.704927>,  <0.079117, 3.850960, 1.573702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.038109, 3.491741, 1.704927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248203, -0.402826, -0.880980,
		0.923314, -0.176759, 0.340952,
		-0.293065, -0.898047, 0.328063,
		-0.126028, 3.222327, 1.803346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.588090, 3.305412, 1.648155>,  <0.079117, 3.850960, 1.573702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.588090, 3.305412, 1.648155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.233559, 3.157433, 1.536757>,  <0.020840, 3.068645, 1.469918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.233559, 3.157433, 1.536757>,  <0.588090, 3.305412, 1.648155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.233559, 3.157433, 1.536757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404632, -0.326333, -0.854271,
		0.225154, -0.869853, 0.438931,
		-0.886329, -0.369949, -0.278496,
		-0.032340, 3.046448, 1.453208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.719569, 2.638499, 1.294328>,  <0.588090, 3.305412, 1.648155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.719569, 2.638499, 1.294328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.367287, 2.782703, 1.171436>,  <0.155918, 2.869226, 1.097701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.367287, 2.782703, 1.171436>,  <0.719569, 2.638499, 1.294328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.367287, 2.782703, 1.171436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199247, -0.306478, -0.930791,
		-0.429722, -0.880966, 0.198085,
		-0.880704, 0.360513, -0.307230,
		0.103075, 2.890857, 1.079267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.283449, 2.074721, 0.930079>,  <0.719569, 2.638499, 1.294328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.283449, 2.074721, 0.930079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.185043, 2.440508, 0.801563>,  <0.126000, 2.659980, 0.724454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.185043, 2.440508, 0.801563>,  <0.283449, 2.074721, 0.930079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.185043, 2.440508, 0.801563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210190, -0.273255, -0.938697,
		-0.946201, -0.298465, -0.124987,
		-0.246014, 0.914467, -0.321288,
		0.111239, 2.714848, 0.705177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.284411, 1.970133, 0.430468>,  <0.283449, 2.074721, 0.930079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.284411, 1.970133, 0.430468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.082336, 2.303955, 0.342556>,  <0.038908, 2.504249, 0.289809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.082336, 2.303955, 0.342556>,  <-0.284411, 1.970133, 0.430468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.082336, 2.303955, 0.342556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238316, -0.379668, -0.893900,
		-0.829453, 0.399209, -0.390691,
		0.505186, 0.834556, -0.219779,
		0.069220, 2.554322, 0.276622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.541939, 2.114696, -0.250643>,  <-0.284411, 1.970133, 0.430468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.541939, 2.114696, -0.250643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.198112, 2.308132, -0.184570>,  <0.008184, 2.424194, -0.144927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.198112, 2.308132, -0.184570>,  <-0.541939, 2.114696, -0.250643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.198112, 2.308132, -0.184570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267392, -0.150166, -0.951815,
		-0.435484, 0.862317, -0.258386,
		0.859567, 0.483590, 0.165182,
		0.059758, 2.453209, -0.135016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.516626, 2.595722, -0.759198>,  <-0.541939, 2.114696, -0.250643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.516626, 2.595722, -0.759198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.133011, 2.561508, -0.651176>,  <0.097158, 2.540980, -0.586364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.133011, 2.561508, -0.651176>,  <-0.516626, 2.595722, -0.759198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.133011, 2.561508, -0.651176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274863, 0.050378, -0.960163,
		0.068522, 0.995061, 0.071825,
		0.959039, -0.085534, 0.270053,
		0.154701, 2.535848, -0.570160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.142706, 3.238709, -1.076433>,  <-0.516626, 2.595722, -0.759198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.142706, 3.238709, -1.076433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.078262, 2.911240, -1.013693>,  <0.210844, 2.714758, -0.976049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.078262, 2.911240, -1.013693>,  <-0.142706, 3.238709, -1.076433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.078262, 2.911240, -1.013693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367894, 0.070607, -0.927183,
		0.747986, 0.569900, 0.340191,
		0.552422, -0.818675, 0.156850,
		0.243989, 2.665637, -0.966638>
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
