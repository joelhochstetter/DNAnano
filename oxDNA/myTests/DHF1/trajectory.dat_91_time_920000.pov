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
	<3.434591, 3.778991, 0.848801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.261982, 3.426579, 0.771263>,  <3.158417, 3.215131, 0.724741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.261982, 3.426579, 0.771263>,  <3.434591, 3.778991, 0.848801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.261982, 3.426579, 0.771263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721201, 0.207849, 0.660808,
		-0.541902, 0.424954, -0.725091,
		-0.431522, -0.881030, -0.193844,
		3.132525, 3.162270, 0.713110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.759617, 3.909586, 0.745561>,  <3.434591, 3.778991, 0.848801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.759617, 3.909586, 0.745561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801884, 3.533512, 0.875105>,  <2.827244, 3.307868, 0.952831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801884, 3.533512, 0.875105>,  <2.759617, 3.909586, 0.745561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.801884, 3.533512, 0.875105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805130, 0.110253, 0.582761,
		-0.583610, -0.322327, -0.745322,
		0.105666, -0.940186, 0.323860,
		2.833584, 3.251456, 0.972263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.123842, 3.561676, 0.597669>,  <2.759617, 3.909586, 0.745561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.123842, 3.561676, 0.597669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287363, 3.445656, 0.943790>,  <2.385476, 3.376044, 1.151464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287363, 3.445656, 0.943790>,  <2.123842, 3.561676, 0.597669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.287363, 3.445656, 0.943790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778358, 0.384226, 0.496518,
		-0.476487, -0.876494, -0.068690,
		0.408803, -0.290049, 0.865304,
		2.410004, 3.358641, 1.203382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.622548, 3.081630, 0.950637>,  <2.123842, 3.561676, 0.597669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.622548, 3.081630, 0.950637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.841639, 3.280350, 1.219913>,  <1.973093, 3.399582, 1.381479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.841639, 3.280350, 1.219913>,  <1.622548, 3.081630, 0.950637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.841639, 3.280350, 1.219913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825294, 0.188659, 0.532257,
		0.137422, -0.847111, 0.513340,
		0.547727, 0.496800, 0.673191,
		2.005957, 3.429390, 1.421870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.446398, 2.866299, 1.624290>,  <1.622548, 3.081630, 0.950637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.446398, 2.866299, 1.624290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.609118, 3.231239, 1.642756>,  <1.706749, 3.450203, 1.653835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.609118, 3.231239, 1.642756>,  <1.446398, 2.866299, 1.624290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.609118, 3.231239, 1.642756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743862, 0.301492, 0.596467,
		0.530269, -0.276981, 0.801309,
		0.406798, 0.912351, 0.046163,
		1.731157, 3.504945, 1.656605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.479303, 3.116592, 2.361766>,  <1.446398, 2.866299, 1.624290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.479303, 3.116592, 2.361766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.511314, 3.472469, 2.181971>,  <1.530522, 3.685996, 2.074093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.511314, 3.472469, 2.181971>,  <1.479303, 3.116592, 2.361766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.511314, 3.472469, 2.181971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612216, 0.399733, 0.682206,
		0.786630, 0.220588, 0.576675,
		0.080029, 0.889693, -0.449489,
		1.535323, 3.739377, 2.047124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.516960, 3.541380, 2.955516>,  <1.479303, 3.116592, 2.361766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.516960, 3.541380, 2.955516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.388391, 3.755024, 2.642744>,  <1.311251, 3.883210, 2.455081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.388391, 3.755024, 2.642744>,  <1.516960, 3.541380, 2.955516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.388391, 3.755024, 2.642744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562190, 0.556839, 0.611452,
		0.761992, 0.636127, 0.121292,
		-0.321420, 0.534111, -0.781930,
		1.291965, 3.915257, 2.408165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.697853, 4.237107, 3.166795>,  <1.516960, 3.541380, 2.955516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.697853, 4.237107, 3.166795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.410463, 4.270836, 2.890625>,  <1.238030, 4.291073, 2.724923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.410463, 4.270836, 2.890625>,  <1.697853, 4.237107, 3.166795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.410463, 4.270836, 2.890625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477004, 0.662700, 0.577318,
		0.506224, 0.744123, -0.435911,
		-0.718474, 0.084321, -0.690424,
		1.194921, 4.296132, 2.683498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.878039, 4.902384, 3.760935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.515621, 4.985580, 3.613518>,  <0.298171, 5.035498, 3.525068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.515621, 4.985580, 3.613518>,  <0.878039, 4.902384, 3.760935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.515621, 4.985580, 3.613518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316847, -0.243879, -0.916587,
		-0.280523, -0.947239, 0.155063,
		-0.906043, 0.207992, -0.368543,
		0.243808, 5.047977, 3.502955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.732543, 4.320283, 3.265815>,  <0.878039, 4.902384, 3.760935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.732543, 4.320283, 3.265815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.558800, 4.666695, 3.166756>,  <0.454554, 4.874541, 3.107320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.558800, 4.666695, 3.166756>,  <0.732543, 4.320283, 3.265815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.558800, 4.666695, 3.166756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147675, -0.202750, -0.968031,
		-0.888553, -0.457043, -0.039825,
		-0.434357, 0.866028, -0.247648,
		0.428492, 4.926503, 3.092461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.012342, 4.210660, 2.943151>,  <0.732543, 4.320283, 3.265815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.012342, 4.210660, 2.943151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.217754, 4.516212, 2.826134>,  <0.355812, 4.699544, 2.755923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.217754, 4.516212, 2.826134>,  <-0.012342, 4.210660, 2.943151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.217754, 4.516212, 2.826134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181298, -0.467809, -0.865035,
		-0.797639, 0.444567, -0.407593,
		0.575241, 0.763882, -0.292544,
		0.390327, 4.745377, 2.738371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.020908, 4.165980, 2.212931>,  <-0.012342, 4.210660, 2.943151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.020908, 4.165980, 2.212931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334587, 4.387299, 2.325287>,  <0.522794, 4.520090, 2.392700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334587, 4.387299, 2.325287>,  <0.020908, 4.165980, 2.212931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.334587, 4.387299, 2.325287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532676, -0.368091, -0.762080,
		-0.318263, 0.747243, -0.583383,
		0.784197, 0.553296, 0.280889,
		0.569846, 4.553288, 2.409554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.319859, 4.380595, 1.655460>,  <0.020908, 4.165980, 2.212931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.319859, 4.380595, 1.655460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.585976, 4.362823, 1.953564>,  <0.745646, 4.352160, 2.132426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.585976, 4.362823, 1.953564>,  <0.319859, 4.380595, 1.655460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.585976, 4.362823, 1.953564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712757, -0.259269, -0.651734,
		0.222178, 0.964783, -0.140823,
		0.665292, -0.044428, 0.745260,
		0.785563, 4.349495, 2.177142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.912419, 4.684310, 1.404412>,  <0.319859, 4.380595, 1.655460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.912419, 4.684310, 1.404412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.038486, 4.448349, 1.701782>,  <1.114127, 4.306772, 1.880205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.038486, 4.448349, 1.701782>,  <0.912419, 4.684310, 1.404412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.038486, 4.448349, 1.701782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828134, -0.211663, -0.519031,
		0.463534, 0.779238, 0.421810,
		0.315168, -0.589904, 0.743426,
		1.133037, 4.271378, 1.924810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.587904, 4.913291, 1.599708>,  <0.912419, 4.684310, 1.404412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.587904, 4.913291, 1.599708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.553585, 4.530434, 1.710354>,  <1.532994, 4.300719, 1.776741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.553585, 4.530434, 1.710354>,  <1.587904, 4.913291, 1.599708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.553585, 4.530434, 1.710354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909162, -0.188773, -0.371198,
		0.407508, 0.219640, 0.886395,
		-0.085798, -0.957143, 0.276615,
		1.527846, 4.243291, 1.793338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.192813, 4.726100, 1.738305>,  <1.587904, 4.913291, 1.599708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.192813, 4.726100, 1.738305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.021706, 4.373207, 1.659637>,  <1.919041, 4.161471, 1.612437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.021706, 4.373207, 1.659637>,  <2.192813, 4.726100, 1.738305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.021706, 4.373207, 1.659637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775508, -0.246446, -0.581250,
		0.464330, -0.401158, 0.789601,
		-0.427767, -0.882234, -0.196668,
		1.893375, 4.108537, 1.600637>
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
