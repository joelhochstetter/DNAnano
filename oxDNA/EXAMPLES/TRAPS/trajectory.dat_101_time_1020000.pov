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
	<36.187378, 53.249084, 49.725410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523151, 53.256275, 49.508148>,  <36.724617, 53.260590, 49.377789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523151, 53.256275, 49.508148>,  <36.187378, 53.249084, 49.725410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523151, 53.256275, 49.508148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469549, -0.527199, 0.708226,
		-0.273618, -0.849552, -0.450994,
		0.839438, 0.017981, -0.543157,
		36.774982, 53.261669, 49.345200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474937, 52.539234, 49.442532>,  <36.187378, 53.249084, 49.725410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474937, 52.539234, 49.442532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767067, 52.805637, 49.503273>,  <36.942345, 52.965477, 49.539719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767067, 52.805637, 49.503273>,  <36.474937, 52.539234, 49.442532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767067, 52.805637, 49.503273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439547, -0.628347, 0.641856,
		0.522899, -0.402016, -0.751638,
		0.730326, 0.666006, 0.151857,
		36.986164, 53.005440, 49.548832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164860, 52.207184, 49.330025>,  <36.474937, 52.539234, 49.442532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164860, 52.207184, 49.330025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227909, 52.513805, 49.579037>,  <37.265739, 52.697781, 49.728443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227909, 52.513805, 49.579037>,  <37.164860, 52.207184, 49.330025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227909, 52.513805, 49.579037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497345, -0.606245, 0.620577,
		0.853114, 0.211799, -0.476799,
		0.157619, 0.766556, 0.622533,
		37.275196, 52.743771, 49.765797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851131, 52.056824, 49.528851>,  <37.164860, 52.207184, 49.330025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851131, 52.056824, 49.528851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625320, 52.253242, 49.794235>,  <37.489834, 52.371094, 49.953468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625320, 52.253242, 49.794235>,  <37.851131, 52.056824, 49.528851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625320, 52.253242, 49.794235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295654, -0.630169, 0.717966,
		0.770650, 0.601465, 0.210566,
		-0.564524, 0.491046, 0.663465,
		37.455963, 52.400555, 49.993275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196049, 52.399235, 50.174278>,  <37.851131, 52.056824, 49.528851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196049, 52.399235, 50.174278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829460, 52.253983, 50.241463>,  <37.609505, 52.166832, 50.281773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829460, 52.253983, 50.241463>,  <38.196049, 52.399235, 50.174278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829460, 52.253983, 50.241463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372958, -0.623419, 0.687205,
		-0.144832, 0.692450, 0.706780,
		-0.916475, -0.363128, 0.167964,
		37.554516, 52.145042, 50.291851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865784, 52.553513, 50.884220>,  <38.196049, 52.399235, 50.174278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865784, 52.553513, 50.884220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756580, 52.197136, 50.739063>,  <37.691059, 51.983311, 50.651970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756580, 52.197136, 50.739063>,  <37.865784, 52.553513, 50.884220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756580, 52.197136, 50.739063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774089, -0.427423, 0.467008,
		-0.571184, -0.153410, 0.806359,
		-0.273012, -0.890941, -0.362890,
		37.674675, 51.929855, 50.630196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216408, 52.555508, 51.607460>,  <37.865784, 52.553513, 50.884220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216408, 52.555508, 51.607460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512760, 52.456696, 51.857285>,  <38.690571, 52.397408, 52.007179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512760, 52.456696, 51.857285>,  <38.216408, 52.555508, 51.607460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512760, 52.456696, 51.857285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522436, 0.372437, 0.767041,
		-0.422090, -0.894577, 0.146874,
		0.740878, -0.247028, 0.624561,
		38.735023, 52.382587, 52.044651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054958, 52.052994, 52.161011>,  <38.216408, 52.555508, 51.607460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054958, 52.052994, 52.161011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342144, 52.301231, 52.287113>,  <38.514454, 52.450172, 52.362774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342144, 52.301231, 52.287113>,  <38.054958, 52.052994, 52.161011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342144, 52.301231, 52.287113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558670, 0.243577, 0.792816,
		0.415227, -0.745340, 0.521588,
		0.717965, 0.620595, 0.315259,
		38.557533, 52.487411, 52.381691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106361, 51.907578, 52.877338>,  <38.054958, 52.052994, 52.161011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106361, 51.907578, 52.877338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278679, 52.262947, 52.813938>,  <38.382069, 52.476170, 52.775898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278679, 52.262947, 52.813938>,  <38.106361, 51.907578, 52.877338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278679, 52.262947, 52.813938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491666, 0.378337, 0.784300,
		0.756756, -0.259941, 0.599792,
		0.430795, 0.888421, -0.158505,
		38.407917, 52.529472, 52.766388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682800, 52.180359, 53.281254>,  <38.106361, 51.907578, 52.877338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682800, 52.180359, 53.281254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524345, 52.517502, 53.135559>,  <38.429272, 52.719788, 53.048141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524345, 52.517502, 53.135559>,  <38.682800, 52.180359, 53.281254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524345, 52.517502, 53.135559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150747, 0.331608, 0.931296,
		0.905733, 0.423826, -0.004303,
		-0.396135, 0.842857, -0.364239,
		38.405506, 52.770359, 53.026287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929607, 52.804756, 53.311420>,  <38.682800, 52.180359, 53.281254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929607, 52.804756, 53.311420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139153, 52.466572, 53.269936>,  <39.264881, 52.263660, 53.245045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139153, 52.466572, 53.269936>,  <38.929607, 52.804756, 53.311420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139153, 52.466572, 53.269936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457968, -0.176895, -0.871191,
		0.718213, 0.503885, -0.479864,
		0.523865, -0.845463, -0.103715,
		39.296310, 52.212933, 53.238823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360916, 52.822517, 52.702343>,  <38.929607, 52.804756, 53.311420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360916, 52.822517, 52.702343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227142, 52.457027, 52.794651>,  <39.146877, 52.237732, 52.850037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227142, 52.457027, 52.794651>,  <39.360916, 52.822517, 52.702343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227142, 52.457027, 52.794651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414200, -0.077442, -0.906886,
		0.846519, -0.398878, -0.352566,
		-0.334433, -0.913728, 0.230771,
		39.126812, 52.182907, 52.863884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853985, 53.027939, 53.262794>,  <39.360916, 52.822517, 52.702343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853985, 53.027939, 53.262794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844814, 52.777489, 53.574547>,  <39.839310, 52.627216, 53.761597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844814, 52.777489, 53.574547>,  <39.853985, 53.027939, 53.262794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844814, 52.777489, 53.574547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967332, 0.182982, 0.175462,
		-0.252475, 0.757944, 0.601479,
		-0.022930, -0.626130, 0.779382,
		39.837936, 52.589649, 53.808361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308830, 53.273178, 53.803680>,  <39.853985, 53.027939, 53.262794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308830, 53.273178, 53.803680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265934, 52.887798, 53.901878>,  <40.240196, 52.656570, 53.960796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265934, 52.887798, 53.901878>,  <40.308830, 53.273178, 53.803680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265934, 52.887798, 53.901878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963709, -0.040011, 0.263940,
		-0.244469, 0.264893, 0.932773,
		-0.107237, -0.963447, 0.245499,
		40.233765, 52.598763, 53.975529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547733, 52.981712, 54.576763>,  <40.308830, 53.273178, 53.803680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547733, 52.981712, 54.576763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550518, 52.647797, 54.356556>,  <40.552189, 52.447445, 54.224430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550518, 52.647797, 54.356556>,  <40.547733, 52.981712, 54.576763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550518, 52.647797, 54.356556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811283, -0.317143, 0.491162,
		-0.584612, -0.450044, 0.675048,
		0.006957, -0.834794, -0.550519,
		40.552605, 52.397358, 54.191399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863499, 52.353088, 54.913410>,  <40.547733, 52.981712, 54.576763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863499, 52.353088, 54.913410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937294, 52.290455, 54.525299>,  <40.981571, 52.252872, 54.292431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937294, 52.290455, 54.525299>,  <40.863499, 52.353088, 54.913410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937294, 52.290455, 54.525299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974398, -0.099937, 0.201399,
		-0.128503, -0.982595, 0.134140,
		0.184489, -0.156586, -0.970281,
		40.992641, 52.243481, 54.234215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288509, 51.625786, 54.652924>,  <40.863499, 52.353088, 54.913410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288509, 51.625786, 54.652924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358280, 51.945633, 54.423080>,  <41.400143, 52.137543, 54.285175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358280, 51.945633, 54.423080>,  <41.288509, 51.625786, 54.652924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358280, 51.945633, 54.423080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973844, -0.053797, 0.220757,
		0.145610, -0.598089, -0.788091,
		0.174429, 0.799622, -0.574612,
		41.410610, 52.185520, 54.250698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896294, 51.455090, 54.191044>,  <41.288509, 51.625786, 54.652924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896294, 51.455090, 54.191044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869785, 51.841248, 54.291935>,  <41.853882, 52.072941, 54.352470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869785, 51.841248, 54.291935>,  <41.896294, 51.455090, 54.191044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869785, 51.841248, 54.291935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909832, -0.045320, 0.412496,
		0.409653, 0.256819, -0.875345,
		-0.066266, 0.965396, 0.252228,
		41.849907, 52.130867, 54.367603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529232, 51.867455, 54.065758>,  <41.896294, 51.455090, 54.191044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529232, 51.867455, 54.065758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318016, 52.050613, 54.351837>,  <42.191288, 52.160507, 54.523483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318016, 52.050613, 54.351837>,  <42.529232, 51.867455, 54.065758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318016, 52.050613, 54.351837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811605, 0.024236, 0.583703,
		0.249940, 0.888677, -0.384426,
		-0.528041, 0.457893, 0.715197,
		42.159603, 52.187981, 54.566395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763531, 52.598400, 54.218426>,  <42.529232, 51.867455, 54.065758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763531, 52.598400, 54.218426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627846, 52.426720, 54.553261>,  <42.546432, 52.323711, 54.754162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627846, 52.426720, 54.553261>,  <42.763531, 52.598400, 54.218426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627846, 52.426720, 54.553261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873525, 0.186533, 0.449621,
		-0.349122, 0.883739, 0.311640,
		-0.339217, -0.429198, 0.837091,
		42.526081, 52.297958, 54.804390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805241, 53.025684, 54.913021>,  <42.763531, 52.598400, 54.218426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805241, 53.025684, 54.913021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847527, 52.630287, 54.956306>,  <42.872898, 52.393051, 54.982277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847527, 52.630287, 54.956306>,  <42.805241, 53.025684, 54.913021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847527, 52.630287, 54.956306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861909, 0.145356, 0.485783,
		-0.495922, 0.041918, 0.867355,
		0.105712, -0.988491, 0.108215,
		42.879242, 52.333740, 54.988770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190575, 53.035419, 55.539116>,  <42.805241, 53.025684, 54.913021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190575, 53.035419, 55.539116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231468, 52.679649, 55.360916>,  <43.256004, 52.466187, 55.253998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231468, 52.679649, 55.360916>,  <43.190575, 53.035419, 55.539116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231468, 52.679649, 55.360916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886784, -0.121438, 0.445945,
		-0.450736, -0.440649, 0.776315,
		0.102231, -0.889427, -0.445497,
		43.262138, 52.412823, 55.227268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285606, 52.366520, 56.041679>,  <43.190575, 53.035419, 55.539116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285606, 52.366520, 56.041679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449692, 52.305134, 55.682083>,  <43.548141, 52.268303, 55.466328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449692, 52.305134, 55.682083>,  <43.285606, 52.366520, 56.041679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449692, 52.305134, 55.682083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893446, -0.130153, 0.429900,
		-0.182983, -0.979544, 0.083727,
		0.410209, -0.153470, -0.898986,
		43.572754, 52.259094, 55.412388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861805, 51.816517, 56.204472>,  <43.285606, 52.366520, 56.041679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861805, 51.816517, 56.204472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945312, 52.045998, 55.887665>,  <43.995415, 52.183685, 55.697582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945312, 52.045998, 55.887665>,  <43.861805, 51.816517, 56.204472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945312, 52.045998, 55.887665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924640, 0.147980, 0.350916,
		0.318523, -0.805586, -0.499574,
		0.208766, 0.573701, -0.792013,
		44.007942, 52.218109, 55.650063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371780, 51.483273, 55.719833>,  <43.861805, 51.816517, 56.204472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371780, 51.483273, 55.719833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345119, 51.879974, 55.763618>,  <44.329124, 52.117996, 55.789890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345119, 51.879974, 55.763618>,  <44.371780, 51.483273, 55.719833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345119, 51.879974, 55.763618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942777, 0.026674, 0.332356,
		0.326696, 0.125352, -0.936780,
		-0.066650, 0.991754, 0.109465,
		44.325123, 52.177502, 55.796459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777283, 51.705921, 55.195534>,  <44.371780, 51.483273, 55.719833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777283, 51.705921, 55.195534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750881, 51.935444, 55.522064>,  <44.735043, 52.073158, 55.717983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750881, 51.935444, 55.522064>,  <44.777283, 51.705921, 55.195534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750881, 51.935444, 55.522064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993720, 0.111882, 0.001698,
		-0.090358, 0.811312, -0.577589,
		-0.066000, 0.573808, 0.816326,
		44.731083, 52.107586, 55.766960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215691, 52.346413, 55.070786>,  <44.777283, 51.705921, 55.195534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215691, 52.346413, 55.070786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185204, 52.272427, 55.462700>,  <45.166912, 52.228035, 55.697849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185204, 52.272427, 55.462700>,  <45.215691, 52.346413, 55.070786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185204, 52.272427, 55.462700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985513, 0.135334, 0.102216,
		-0.151505, 0.973381, 0.171973,
		-0.076222, -0.184968, 0.979784,
		45.162338, 52.216934, 55.756634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425556, 52.980118, 55.437416>,  <45.215691, 52.346413, 55.070786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425556, 52.980118, 55.437416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490971, 52.623398, 55.606148>,  <45.530220, 52.409367, 55.707386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490971, 52.623398, 55.606148>,  <45.425556, 52.980118, 55.437416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490971, 52.623398, 55.606148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956070, 0.248708, 0.155157,
		-0.243283, 0.377929, 0.893299,
		0.163533, -0.891804, 0.421833,
		45.540031, 52.355858, 55.732697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679127, 53.100082, 56.214409>,  <45.425556, 52.980118, 55.437416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679127, 53.100082, 56.214409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817116, 52.774315, 56.027771>,  <45.899910, 52.578854, 55.915787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817116, 52.774315, 56.027771>,  <45.679127, 53.100082, 56.214409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817116, 52.774315, 56.027771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929591, 0.365207, 0.049842,
		0.129811, -0.450938, 0.883065,
		0.344977, -0.814419, -0.466596,
		45.920609, 52.529987, 55.887791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.202679, 52.618324, 56.521454>,  <45.679127, 53.100082, 56.214409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.202679, 52.618324, 56.521454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283226, 52.575554, 56.131989>,  <46.331554, 52.549892, 55.898308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283226, 52.575554, 56.131989>,  <46.202679, 52.618324, 56.521454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283226, 52.575554, 56.131989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959462, 0.221644, 0.174086,
		0.197191, -0.969247, 0.147225,
		0.201364, -0.106928, -0.973663,
		46.343636, 52.543476, 55.839890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730583, 52.078396, 56.113598>,  <46.202679, 52.618324, 56.521454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730583, 52.078396, 56.113598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701660, 52.449539, 55.967255>,  <46.684307, 52.672226, 55.879448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701660, 52.449539, 55.967255>,  <46.730583, 52.078396, 56.113598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701660, 52.449539, 55.967255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991756, 0.105794, 0.072305,
		0.105794, -0.357613, -0.927858,
		-0.072305, 0.927858, -0.365857,
		46.679970, 52.727898, 55.857498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174129, 52.095322, 55.541828>,  <46.730583, 52.078396, 56.113598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174129, 52.095322, 55.541828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127728, 52.463860, 55.690239>,  <47.099888, 52.684982, 55.779285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127728, 52.463860, 55.690239>,  <47.174129, 52.095322, 55.541828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127728, 52.463860, 55.690239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989777, 0.076022, 0.120677,
		0.082979, 0.381230, -0.920749,
		-0.116003, 0.921349, 0.371024,
		47.092926, 52.740265, 55.801548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.591259, 52.559921, 55.129948>,  <47.174129, 52.095322, 55.541828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.591259, 52.559921, 55.129948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552700, 52.658890, 55.515587>,  <47.529564, 52.718273, 55.746971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552700, 52.658890, 55.515587>,  <47.591259, 52.559921, 55.129948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552700, 52.658890, 55.515587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994503, -0.015839, 0.103505,
		0.040880, 0.968778, -0.244538,
		-0.096400, 0.247425, 0.964100,
		47.523781, 52.733116, 55.804817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.035866, 53.124798, 55.142799>,  <47.591259, 52.559921, 55.129948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.035866, 53.124798, 55.142799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.045525, 52.915325, 55.483429>,  <48.051319, 52.789642, 55.687805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.045525, 52.915325, 55.483429>,  <48.035866, 53.124798, 55.142799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.045525, 52.915325, 55.483429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996763, 0.077945, 0.019674,
		-0.076679, 0.848342, 0.523866,
		0.024142, -0.523679, 0.851573,
		48.052769, 52.758221, 55.738899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.659286, 53.402611, 55.317577>,  <48.035866, 53.124798, 55.142799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.659286, 53.402611, 55.317577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.610901, 53.164429, 55.635269>,  <48.581867, 53.021519, 55.825886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.610901, 53.164429, 55.635269>,  <48.659286, 53.402611, 55.317577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.610901, 53.164429, 55.635269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912946, 0.247404, 0.324532,
		-0.389739, 0.764349, 0.513687,
		-0.120968, -0.595451, 0.794232,
		48.574612, 52.985794, 55.873539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.634045, 53.778084, 56.045418>,  <48.659286, 53.402611, 55.317577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.634045, 53.778084, 56.045418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.800621, 53.417290, 55.999809>,  <48.900566, 53.200813, 55.972443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.800621, 53.417290, 55.999809>,  <48.634045, 53.778084, 56.045418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.800621, 53.417290, 55.999809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837327, 0.331646, 0.434621,
		-0.354205, -0.276470, 0.893366,
		0.416441, -0.901984, -0.114025,
		48.925552, 53.146694, 55.965603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.751595, 53.300747, 56.652931>,  <48.634045, 53.778084, 56.045418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.751595, 53.300747, 56.652931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.026917, 53.256531, 56.366150>,  <49.192108, 53.230000, 56.194080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.026917, 53.256531, 56.366150>,  <48.751595, 53.300747, 56.652931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.026917, 53.256531, 56.366150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710712, 0.300780, 0.635940,
		0.145347, -0.947266, 0.285591,
		0.688304, -0.110541, -0.716951,
		49.233406, 53.223370, 56.151066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.368401, 52.874931, 56.953178>,  <48.751595, 53.300747, 56.652931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.368401, 52.874931, 56.953178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.479576, 53.141239, 56.676193>,  <49.546280, 53.301022, 56.510002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.479576, 53.141239, 56.676193>,  <49.368401, 52.874931, 56.953178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.479576, 53.141239, 56.676193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637347, 0.411533, 0.651482,
		0.718707, -0.622411, -0.309944,
		0.277937, 0.665766, -0.692464,
		49.562958, 53.340969, 56.468452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.068188, 52.940784, 56.771332>,  <49.368401, 52.874931, 56.953178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.068188, 52.940784, 56.771332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.906845, 53.304123, 56.727135>,  <49.810040, 53.522125, 56.700615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.906845, 53.304123, 56.727135>,  <50.068188, 52.940784, 56.771332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.906845, 53.304123, 56.727135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716182, 0.388548, 0.579754,
		0.569551, 0.154711, -0.807265,
		-0.403355, 0.908348, -0.110496,
		49.785839, 53.576626, 56.693985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.598148, 53.405224, 56.651276>,  <50.068188, 52.940784, 56.771332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.598148, 53.405224, 56.651276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.305389, 53.651325, 56.768433>,  <50.129734, 53.798985, 56.838726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.305389, 53.651325, 56.768433>,  <50.598148, 53.405224, 56.651276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.305389, 53.651325, 56.768433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647915, 0.495245, 0.578738,
		0.211019, 0.613346, -0.761103,
		-0.731899, 0.615255, 0.292891,
		50.085819, 53.835903, 56.856300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.296196, 53.474689, 56.464935>,  <50.598148, 53.405224, 56.651276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.296196, 53.474689, 56.464935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.330875, 53.854073, 56.343002>,  <51.351681, 54.081703, 56.269844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.330875, 53.854073, 56.343002>,  <51.296196, 53.474689, 56.464935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.330875, 53.854073, 56.343002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791438, -0.251409, -0.557153,
		-0.605070, -0.192952, -0.772438,
		0.086694, 0.948453, -0.304830,
		51.356884, 54.138607, 56.251553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.415443, 53.496120, 55.668537>,  <51.296196, 53.474689, 56.464935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.415443, 53.496120, 55.668537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.570911, 53.814705, 55.853828>,  <51.664192, 54.005856, 55.965004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.570911, 53.814705, 55.853828>,  <51.415443, 53.496120, 55.668537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.570911, 53.814705, 55.853828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899017, -0.217745, -0.379942,
		-0.201745, 0.564120, -0.800667,
		0.388674, 0.796465, 0.463224,
		51.687515, 54.053646, 55.992794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.651806, 54.115818, 55.232960>,  <51.415443, 53.496120, 55.668537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.651806, 54.115818, 55.232960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861290, 54.019932, 55.559952>,  <51.986980, 53.962402, 55.756145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861290, 54.019932, 55.559952>,  <51.651806, 54.115818, 55.232960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.861290, 54.019932, 55.559952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745498, -0.335423, -0.575955,
		0.412264, 0.911059, 0.003042,
		0.523708, -0.239713, 0.817476,
		52.018402, 53.948017, 55.805195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.350628, 54.464943, 55.252117>,  <51.651806, 54.115818, 55.232960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.350628, 54.464943, 55.252117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.297466, 54.103584, 55.415192>,  <52.265568, 53.886768, 55.513035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.297466, 54.103584, 55.415192>,  <52.350628, 54.464943, 55.252117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.297466, 54.103584, 55.415192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706878, -0.374728, -0.599919,
		0.694737, 0.208450, 0.688396,
		-0.132908, -0.903398, 0.407687,
		52.257595, 53.832565, 55.537498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.929146, 54.137886, 55.677254>,  <52.350628, 54.464943, 55.252117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.929146, 54.137886, 55.677254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.714180, 53.862682, 55.482185>,  <52.585201, 53.697559, 55.365143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.714180, 53.862682, 55.482185>,  <52.929146, 54.137886, 55.677254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.714180, 53.862682, 55.482185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827119, -0.317220, -0.463945,
		0.164499, -0.652696, 0.739546,
		-0.537414, -0.688012, -0.487675,
		52.552956, 53.656281, 55.335884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.459202, 53.741016, 55.389687>,  <52.929146, 54.137886, 55.677254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.459202, 53.741016, 55.389687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.131325, 53.625320, 55.191917>,  <52.934601, 53.555904, 55.073257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.131325, 53.625320, 55.191917>,  <53.459202, 53.741016, 55.389687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.131325, 53.625320, 55.191917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552183, -0.628530, -0.547763,
		-0.152324, -0.722006, 0.674911,
		-0.819690, -0.289237, -0.494420,
		52.885418, 53.538551, 55.043591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.224506, 53.954842, 55.479893>,  <53.459202, 53.741016, 55.389687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.224506, 53.954842, 55.479893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.129044, 53.604782, 55.648254>,  <54.071766, 53.394749, 55.749271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.129044, 53.604782, 55.648254>,  <54.224506, 53.954842, 55.479893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.129044, 53.604782, 55.648254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893091, -0.368006, -0.258765,
		0.381353, 0.314152, 0.869412,
		-0.238658, -0.875145, 0.420907,
		54.057446, 53.342239, 55.774525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.895298, 54.018742, 55.849865>,  <54.224506, 53.954842, 55.479893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.895298, 54.018742, 55.849865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.256203, 53.905300, 55.979782>,  <55.472744, 53.837234, 56.057732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.256203, 53.905300, 55.979782>,  <54.895298, 54.018742, 55.849865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.256203, 53.905300, 55.979782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191352, -0.411659, -0.891023,
		0.386405, 0.866085, -0.317155,
		0.902261, -0.283607, 0.324794,
		55.526882, 53.820217, 56.077221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.351620, 54.286663, 55.454823>,  <54.895298, 54.018742, 55.849865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.351620, 54.286663, 55.454823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.548141, 53.975658, 55.611847>,  <55.666054, 53.789055, 55.706062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.548141, 53.975658, 55.611847>,  <55.351620, 54.286663, 55.454823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.548141, 53.975658, 55.611847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417787, -0.185104, -0.889489,
		0.764249, 0.601015, 0.233890,
		0.491302, -0.777507, 0.392562,
		55.695534, 53.742405, 55.729614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.932701, 54.392212, 55.121067>,  <55.351620, 54.286663, 55.454823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.932701, 54.392212, 55.121067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.927452, 54.015778, 55.256233>,  <55.924305, 53.789917, 55.337334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.927452, 54.015778, 55.256233>,  <55.932701, 54.392212, 55.121067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.927452, 54.015778, 55.256233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498546, -0.299098, -0.813629,
		0.866764, 0.157792, 0.473098,
		-0.013119, -0.941086, 0.337914,
		55.923515, 53.733452, 55.357609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.556511, 54.048965, 55.096752>,  <55.932701, 54.392212, 55.121067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.556511, 54.048965, 55.096752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.262222, 53.782558, 55.047554>,  <56.085648, 53.622715, 55.018036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.262222, 53.782558, 55.047554>,  <56.556511, 54.048965, 55.096752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.262222, 53.782558, 55.047554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362461, -0.233782, -0.902202,
		0.572129, -0.708354, 0.413405,
		-0.735725, -0.666019, -0.122997,
		56.041504, 53.582752, 55.010654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.679562, 54.293736, 55.793072>,  <56.556511, 54.048965, 55.096752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.679562, 54.293736, 55.793072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.459991, 54.606339, 55.674469>,  <56.328247, 54.793900, 55.603310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.459991, 54.606339, 55.674469>,  <56.679562, 54.293736, 55.793072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.459991, 54.606339, 55.674469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198763, 0.222509, 0.954454,
		0.811892, 0.582863, 0.033194,
		-0.548930, 0.781512, -0.296505,
		56.295311, 54.840794, 55.585518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.071934, 54.809757, 56.196217>,  <56.679562, 54.293736, 55.793072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.071934, 54.809757, 56.196217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.315430, 55.089371, 56.046127>,  <57.461525, 55.257137, 55.956074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.315430, 55.089371, 56.046127>,  <57.071934, 54.809757, 56.196217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.315430, 55.089371, 56.046127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678835, -0.214126, 0.702377,
		0.410638, -0.682279, -0.604873,
		0.608736, 0.699031, -0.375227,
		57.498051, 55.299080, 55.933559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.138260, 55.288399, 56.851837>,  <57.071934, 54.809757, 56.196217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.138260, 55.288399, 56.851837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.405556, 55.541946, 57.007614>,  <57.565933, 55.694077, 57.101082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.405556, 55.541946, 57.007614>,  <57.138260, 55.288399, 56.851837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.405556, 55.541946, 57.007614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740979, -0.613823, -0.272345,
		0.066418, 0.470561, -0.879864,
		0.668236, 0.633872, 0.389445,
		57.606026, 55.732109, 57.124447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.728710, 55.160889, 56.446297>,  <57.138260, 55.288399, 56.851837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.728710, 55.160889, 56.446297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.840286, 55.349777, 56.780769>,  <57.907234, 55.463112, 56.981453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.840286, 55.349777, 56.780769>,  <57.728710, 55.160889, 56.446297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.840286, 55.349777, 56.780769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831808, -0.553937, 0.035343,
		0.479881, 0.685683, -0.547315,
		0.278944, 0.472221, 0.836180,
		57.923969, 55.491444, 57.031624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.312084, 55.139801, 56.030357>,  <57.728710, 55.160889, 56.446297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.312084, 55.139801, 56.030357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.520935, 54.932625, 55.759323>,  <58.646244, 54.808319, 55.596703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.520935, 54.932625, 55.759323>,  <58.312084, 55.139801, 56.030357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.520935, 54.932625, 55.759323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682330, -0.222963, 0.696213,
		-0.511675, -0.825847, 0.236993,
		0.522124, -0.517942, -0.677585,
		58.677574, 54.777241, 55.556049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.661282, 54.486282, 56.273037>,  <58.312084, 55.139801, 56.030357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.661282, 54.486282, 56.273037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.853401, 54.566456, 55.931480>,  <58.968674, 54.614559, 55.726547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.853401, 54.566456, 55.931480>,  <58.661282, 54.486282, 56.273037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.853401, 54.566456, 55.931480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876770, -0.136548, 0.461117,
		-0.024175, -0.970145, -0.241316,
		0.480301, 0.200431, -0.853896,
		58.997490, 54.626587, 55.675312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.999828, 53.771851, 55.949913>,  <58.661282, 54.486282, 56.273037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.999828, 53.771851, 55.949913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.127914, 54.148628, 55.909515>,  <59.204765, 54.374695, 55.885277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.127914, 54.148628, 55.909515>,  <58.999828, 53.771851, 55.949913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.127914, 54.148628, 55.909515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807761, -0.215780, 0.548599,
		0.494958, -0.257249, -0.829964,
		0.320216, 0.941946, -0.100994,
		59.223980, 54.431213, 55.879219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.746384, 53.799667, 55.787319>,  <58.999828, 53.771851, 55.949913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.746384, 53.799667, 55.787319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.611977, 54.131138, 55.966377>,  <59.531330, 54.330021, 56.073811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.611977, 54.131138, 55.966377>,  <59.746384, 53.799667, 55.787319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.611977, 54.131138, 55.966377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734982, -0.066502, 0.674818,
		0.588975, 0.555764, -0.586715,
		-0.336022, 0.828676, 0.447644,
		59.511169, 54.379742, 56.100670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.896545, 53.287041, 56.303932>,  <59.746384, 53.799667, 55.787319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.896545, 53.287041, 56.303932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.145271, 53.295364, 55.990776>,  <60.294506, 53.300358, 55.802883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.145271, 53.295364, 55.990776>,  <59.896545, 53.287041, 56.303932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.145271, 53.295364, 55.990776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328432, 0.900567, 0.284801,
		0.710971, -0.434219, 0.553150,
		0.621815, 0.020813, -0.782888,
		60.331814, 53.301609, 55.755909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.655499, 53.268044, 56.569004>,  <59.896545, 53.287041, 56.303932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.655499, 53.268044, 56.569004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.561127, 53.441471, 56.221130>,  <60.504501, 53.545528, 56.012405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.561127, 53.441471, 56.221130>,  <60.655499, 53.268044, 56.569004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.561127, 53.441471, 56.221130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422751, 0.851621, 0.309875,
		0.874996, -0.294552, -0.384215,
		-0.235931, 0.433567, -0.869687,
		60.490349, 53.571541, 55.960224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.337872, 53.500435, 57.100300>,  <60.655499, 53.268044, 56.569004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.337872, 53.500435, 57.100300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.105667, 53.210785, 57.249245>,  <59.966347, 53.036995, 57.338612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.105667, 53.210785, 57.249245>,  <60.337872, 53.500435, 57.100300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.105667, 53.210785, 57.249245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763160, -0.643299, -0.061260,
		0.283898, 0.248608, 0.926065,
		-0.580507, -0.724128, 0.372359,
		59.931515, 52.993546, 57.360950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.432396, 53.452560, 57.824303>,  <60.337872, 53.500435, 57.100300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.432396, 53.452560, 57.824303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.381027, 53.132523, 57.589912>,  <60.350204, 52.940502, 57.449280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.381027, 53.132523, 57.589912>,  <60.432396, 53.452560, 57.824303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.381027, 53.132523, 57.589912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960166, -0.248170, 0.128422,
		-0.248170, -0.546138, 0.800090,
		-0.128422, -0.800090, -0.585972,
		60.342499, 52.892494, 57.414120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.471275, 52.807106, 58.183254>,  <60.432396, 53.452560, 57.824303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.471275, 52.807106, 58.183254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.631363, 52.789337, 57.817116>,  <60.727417, 52.778675, 57.597435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.631363, 52.789337, 57.817116>,  <60.471275, 52.807106, 58.183254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.631363, 52.789337, 57.817116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858720, -0.330637, 0.391508,
		-0.320036, -0.942712, -0.094185,
		0.400221, -0.044418, -0.915342,
		60.751431, 52.776012, 57.542515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.628666, 52.191525, 57.994099>,  <60.471275, 52.807106, 58.183254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.628666, 52.191525, 57.994099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.896896, 52.403973, 57.786926>,  <61.057835, 52.531441, 57.662624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.896896, 52.403973, 57.786926>,  <60.628666, 52.191525, 57.994099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.896896, 52.403973, 57.786926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735313, -0.383418, 0.558843,
		0.098227, -0.755584, -0.647646,
		0.670572, 0.531116, -0.517928,
		61.098068, 52.563309, 57.631546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.189358, 51.728207, 57.558342>,  <60.628666, 52.191525, 57.994099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.189358, 51.728207, 57.558342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.279495, 52.070637, 57.744400>,  <61.333576, 52.276096, 57.856033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.279495, 52.070637, 57.744400>,  <61.189358, 51.728207, 57.558342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.279495, 52.070637, 57.744400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576295, -0.502064, 0.644838,
		0.785561, 0.122751, -0.606487,
		0.225341, 0.856075, 0.465142,
		61.347099, 52.327457, 57.883942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.665638, 51.507881, 58.012230>,  <61.189358, 51.728207, 57.558342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.665638, 51.507881, 58.012230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.640694, 51.885254, 58.142487>,  <61.625729, 52.111679, 58.220642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.640694, 51.885254, 58.142487>,  <61.665638, 51.507881, 58.012230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.640694, 51.885254, 58.142487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473046, -0.259362, 0.841997,
		0.878828, 0.206547, -0.430116,
		-0.062356, 0.943435, 0.325641,
		61.621986, 52.168285, 58.240177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.346462, 51.764130, 58.247971>,  <61.665638, 51.507881, 58.012230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.346462, 51.764130, 58.247971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.045723, 51.960278, 58.424271>,  <61.865280, 52.077969, 58.530052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.045723, 51.960278, 58.424271>,  <62.346462, 51.764130, 58.247971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.045723, 51.960278, 58.424271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410069, -0.175690, 0.894973,
		0.516306, 0.853621, -0.068994,
		-0.751846, 0.490372, 0.440753,
		61.820168, 52.107388, 58.556496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.622482, 51.912434, 58.834007>,  <62.346462, 51.764130, 58.247971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.622482, 51.912434, 58.834007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.240768, 52.002197, 58.912987>,  <62.011742, 52.056057, 58.960373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.240768, 52.002197, 58.912987>,  <62.622482, 51.912434, 58.834007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.240768, 52.002197, 58.912987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099721, -0.383707, 0.918055,
		0.281784, 0.895773, 0.343786,
		-0.954282, 0.224411, 0.197449,
		61.954483, 52.069519, 58.972221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.411259, 51.379471, 59.529007>,  <62.622482, 51.912434, 58.834007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.411259, 51.379471, 59.529007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.441353, 51.157265, 59.860245>,  <62.459408, 51.023941, 60.058987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.441353, 51.157265, 59.860245>,  <62.411259, 51.379471, 59.529007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.441353, 51.157265, 59.860245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084596, 0.823899, 0.560387,
		-0.993571, -0.112214, 0.014992,
		0.075235, -0.555516, 0.828095,
		62.463924, 50.990608, 60.108673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.604576, 52.209923, 59.540302>,  <62.411259, 51.379471, 59.529007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.604576, 52.209923, 59.540302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.244011, 52.064198, 59.446716>,  <62.027672, 51.976761, 59.390564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.244011, 52.064198, 59.446716>,  <62.604576, 52.209923, 59.540302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.244011, 52.064198, 59.446716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037521, -0.472603, 0.880476,
		-0.431340, 0.802448, 0.412339,
		-0.901409, -0.364313, -0.233961,
		61.973587, 51.954903, 59.376530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.031158, 52.323814, 59.981117>,  <62.604576, 52.209923, 59.540302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.031158, 52.323814, 59.981117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.901001, 52.602947, 60.236351>,  <61.822906, 52.770428, 60.389492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.901001, 52.602947, 60.236351>,  <62.031158, 52.323814, 59.981117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.901001, 52.602947, 60.236351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143187, 0.703389, -0.696233,
		-0.934676, -0.135181, -0.328796,
		-0.325389, 0.697832, 0.638085,
		61.803383, 52.812298, 60.427776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.484859, 52.802086, 59.692497>,  <62.031158, 52.323814, 59.981117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.484859, 52.802086, 59.692497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.683762, 53.011578, 59.969177>,  <61.803101, 53.137272, 60.135185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.683762, 53.011578, 59.969177>,  <61.484859, 52.802086, 59.692497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.683762, 53.011578, 59.969177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240520, 0.682788, -0.689892,
		-0.833600, 0.509418, 0.213551,
		0.497253, 0.523731, 0.691697,
		61.832939, 53.168697, 60.176685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.199547, 53.161816, 59.561085>,  <61.484859, 52.802086, 59.692497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.199547, 53.161816, 59.561085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.544121, 53.027618, 59.408569>,  <62.750866, 52.947102, 59.317059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.544121, 53.027618, 59.408569>,  <62.199547, 53.161816, 59.561085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.544121, 53.027618, 59.408569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461590, 0.830311, 0.312278,
		0.211824, -0.445006, 0.870115,
		0.861432, -0.335489, -0.381290,
		62.802551, 52.926971, 59.294182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.821823, 53.609787, 59.688263>,  <62.199547, 53.161816, 59.561085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.821823, 53.609787, 59.688263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.066582, 53.360710, 59.493187>,  <63.213436, 53.211266, 59.376141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.066582, 53.360710, 59.493187>,  <62.821823, 53.609787, 59.688263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.066582, 53.360710, 59.493187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688285, 0.722992, -0.059545,
		0.389671, -0.299232, 0.870986,
		0.611898, -0.622690, -0.487686,
		63.250153, 53.173904, 59.346882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.567505, 53.731850, 59.963585>,  <62.821823, 53.609787, 59.688263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.567505, 53.731850, 59.963585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.571648, 53.582684, 59.592461>,  <63.574131, 53.493183, 59.369785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.571648, 53.582684, 59.592461>,  <63.567505, 53.731850, 59.963585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.571648, 53.582684, 59.592461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871257, 0.458706, -0.174644,
		0.490718, -0.806551, 0.329652,
		0.010355, -0.372913, -0.927809,
		63.574753, 53.470810, 59.314117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.141716, 54.045509, 59.799641>,  <63.567505, 53.731850, 59.963585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.141716, 54.045509, 59.799641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.035896, 53.860401, 59.461205>,  <63.972404, 53.749336, 59.258144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.035896, 53.860401, 59.461205>,  <64.141716, 54.045509, 59.799641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.035896, 53.860401, 59.461205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818040, 0.356940, -0.451003,
		0.510713, -0.811442, 0.284138,
		-0.264542, -0.462770, -0.846086,
		63.956535, 53.721569, 59.207378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.572159, 53.546085, 59.523796>,  <64.141716, 54.045509, 59.799641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.572159, 53.546085, 59.523796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.385941, 53.694405, 59.202354>,  <64.274208, 53.783394, 59.009491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.385941, 53.694405, 59.202354>,  <64.572159, 53.546085, 59.523796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.385941, 53.694405, 59.202354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885017, 0.198413, -0.421161,
		0.003282, -0.907273, -0.420530,
		-0.465547, 0.370795, -0.803603,
		64.246277, 53.805641, 58.961273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.836128, 54.001602, 58.859898>,  <64.572159, 53.546085, 59.523796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.836128, 54.001602, 58.859898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.196510, 54.139881, 58.964806>,  <65.412735, 54.222847, 59.027748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.196510, 54.139881, 58.964806>,  <64.836128, 54.001602, 58.859898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.196510, 54.139881, 58.964806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413847, -0.866270, -0.279832,
		0.130459, 0.360654, -0.923531,
		0.900950, 0.345694, 0.262268,
		65.466797, 54.243587, 59.043488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.291718, 53.707176, 58.360886>,  <64.836128, 54.001602, 58.859898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.291718, 53.707176, 58.360886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.534256, 53.830513, 58.654076>,  <65.679779, 53.904514, 58.829990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.534256, 53.830513, 58.654076>,  <65.291718, 53.707176, 58.360886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.534256, 53.830513, 58.654076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655991, -0.714953, -0.241905,
		0.449455, 0.627508, -0.635787,
		0.606355, 0.308345, 0.732978,
		65.716164, 53.923016, 58.873970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.028831, 54.012409, 58.120663>,  <65.291718, 53.707176, 58.360886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.028831, 54.012409, 58.120663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.995468, 53.828228, 58.474167>,  <65.975449, 53.717720, 58.686268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.995468, 53.828228, 58.474167>,  <66.028831, 54.012409, 58.120663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.995468, 53.828228, 58.474167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768526, -0.594267, -0.237098,
		0.634360, 0.659416, 0.403432,
		-0.083400, -0.460453, 0.883757,
		65.970451, 53.690090, 58.739296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.682449, 53.740154, 58.303368>,  <66.028831, 54.012409, 58.120663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.682449, 53.740154, 58.303368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.444252, 53.546810, 58.560036>,  <66.301331, 53.430801, 58.714035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.444252, 53.546810, 58.560036>,  <66.682449, 53.740154, 58.303368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.444252, 53.546810, 58.560036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728030, -0.662389, 0.176672,
		0.339638, 0.572362, 0.746356,
		-0.595499, -0.483365, 0.641669,
		66.265602, 53.401802, 58.752537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.091721, 53.591717, 58.867699>,  <66.682449, 53.740154, 58.303368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.091721, 53.591717, 58.867699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.796440, 53.322533, 58.849037>,  <66.619270, 53.161022, 58.837841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.796440, 53.322533, 58.849037>,  <67.091721, 53.591717, 58.867699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.796440, 53.322533, 58.849037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624049, -0.707542, 0.331582,
		-0.256152, 0.215660, 0.942272,
		-0.738206, -0.672960, -0.046656,
		66.574982, 53.120644, 58.835041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.538872, 53.037014, 59.051262>,  <67.091721, 53.591717, 58.867699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.538872, 53.037014, 59.051262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.851242, 53.282944, 59.007156>,  <68.038666, 53.430500, 58.980694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.851242, 53.282944, 59.007156>,  <67.538872, 53.037014, 59.051262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.851242, 53.282944, 59.007156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624437, 0.772844, -0.113097,
		0.015678, 0.157170, 0.987447,
		0.780918, 0.614826, -0.110260,
		68.085518, 53.467392, 58.974079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.513931, 53.625511, 59.548328>,  <67.538872, 53.037014, 59.051262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.513931, 53.625511, 59.548328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.694107, 53.738750, 59.209633>,  <67.802208, 53.806694, 59.006416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.694107, 53.738750, 59.209633>,  <67.513931, 53.625511, 59.548328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.694107, 53.738750, 59.209633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611305, 0.789010, -0.061395,
		0.650702, 0.545269, 0.528459,
		0.450436, 0.283100, -0.846736,
		67.829239, 53.823681, 58.955612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.682594, 54.292339, 59.612850>,  <67.513931, 53.625511, 59.548328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.682594, 54.292339, 59.612850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.658150, 54.204803, 59.223312>,  <67.643486, 54.152283, 58.989590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.658150, 54.204803, 59.223312>,  <67.682594, 54.292339, 59.612850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.658150, 54.204803, 59.223312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333293, 0.924141, -0.186760,
		0.940841, 0.313163, -0.129410,
		-0.061107, -0.218843, -0.973845,
		67.639816, 54.139149, 58.931160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.229309, 54.738976, 59.321526>,  <67.682594, 54.292339, 59.612850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.229309, 54.738976, 59.321526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.906639, 54.665848, 59.096725>,  <67.713036, 54.621971, 58.961845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.906639, 54.665848, 59.096725>,  <68.229309, 54.738976, 59.321526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.906639, 54.665848, 59.096725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325633, 0.931070, 0.164537,
		0.493177, 0.315734, -0.810610,
		-0.806684, -0.182816, -0.561996,
		67.664635, 54.611004, 58.928127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.135689, 55.299305, 58.881931>,  <68.229309, 54.738976, 59.321526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.135689, 55.299305, 58.881931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.779526, 55.117474, 58.891106>,  <67.565826, 55.008373, 58.896610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.779526, 55.117474, 58.891106>,  <68.135689, 55.299305, 58.881931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.779526, 55.117474, 58.891106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451121, 0.888092, 0.088220,
		-0.060472, 0.068205, -0.995837,
		-0.890411, -0.454578, 0.022936,
		67.512405, 54.981102, 58.897987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.632286, 56.055229, 58.884274>,  <68.135689, 55.299305, 58.881931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.632286, 56.055229, 58.884274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.840981, 56.119919, 58.549217>,  <68.966194, 56.158733, 58.348183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.840981, 56.119919, 58.549217>,  <68.632286, 56.055229, 58.884274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.840981, 56.119919, 58.549217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792388, 0.271926, 0.546056,
		0.316084, -0.948632, 0.013727,
		0.521739, 0.161722, -0.837636,
		68.997505, 56.168434, 58.297928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.312920, 55.663315, 58.734173>,  <68.632286, 56.055229, 58.884274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.312920, 55.663315, 58.734173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.326591, 56.037010, 58.592171>,  <69.334793, 56.261227, 58.506969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.326591, 56.037010, 58.592171>,  <69.312920, 55.663315, 58.734173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.326591, 56.037010, 58.592171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762599, 0.205209, 0.613460,
		0.645968, -0.291702, -0.705433,
		0.034186, 0.934237, -0.355009,
		69.336845, 56.317280, 58.485668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.967415, 55.965950, 58.421162>,  <69.312920, 55.663315, 58.734173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.967415, 55.965950, 58.421162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.789864, 56.250523, 58.639091>,  <69.683334, 56.421265, 58.769848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.789864, 56.250523, 58.639091>,  <69.967415, 55.965950, 58.421162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.789864, 56.250523, 58.639091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854047, 0.151841, 0.497541,
		0.271240, 0.686155, -0.674996,
		-0.443883, 0.711432, 0.544824,
		69.656700, 56.463951, 58.802540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.370918, 56.603443, 58.332588>,  <69.967415, 55.965950, 58.421162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.370918, 56.603443, 58.332588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.177803, 56.567963, 58.681084>,  <70.061935, 56.546677, 58.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.177803, 56.567963, 58.681084>,  <70.370918, 56.603443, 58.332588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.177803, 56.567963, 58.681084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820876, 0.300760, 0.485496,
		-0.305095, 0.949566, -0.072393,
		-0.482784, -0.088697, 0.871236,
		70.032967, 56.541355, 58.942455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.709496, 57.063507, 58.630260>,  <70.370918, 56.603443, 58.332588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.709496, 57.063507, 58.630260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.522499, 56.918465, 58.952744>,  <70.410301, 56.831440, 59.146233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.522499, 56.918465, 58.952744>,  <70.709496, 57.063507, 58.630260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.522499, 56.918465, 58.952744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663914, 0.458136, 0.591041,
		-0.583667, 0.811559, 0.026564,
		-0.467495, -0.362608, 0.806204,
		70.382248, 56.809681, 59.194603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.362885, 57.603333, 59.143635>,  <70.709496, 57.063507, 58.630260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.362885, 57.603333, 59.143635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.513863, 57.270657, 59.306519>,  <70.604454, 57.071049, 59.404247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.513863, 57.270657, 59.306519>,  <70.362885, 57.603333, 59.143635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.513863, 57.270657, 59.306519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610447, 0.554135, 0.565941,
		-0.696335, 0.034961, 0.716865,
		0.377454, -0.831693, 0.407205,
		70.627098, 57.021149, 59.428680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.472771, 57.687218, 59.837448>,  <70.362885, 57.603333, 59.143635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.472771, 57.687218, 59.837448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.733841, 57.396393, 59.752220>,  <70.890480, 57.221897, 59.701084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.733841, 57.396393, 59.752220>,  <70.472771, 57.687218, 59.837448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.733841, 57.396393, 59.752220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691576, 0.456872, 0.559457,
		-0.309414, -0.512496, 0.801006,
		0.652676, -0.727060, -0.213067,
		70.929642, 57.178276, 59.688301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.848312, 57.510239, 60.486042>,  <70.472771, 57.687218, 59.837448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.848312, 57.510239, 60.486042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.099159, 57.395355, 60.196426>,  <71.249664, 57.326424, 60.022655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.099159, 57.395355, 60.196426>,  <70.848312, 57.510239, 60.486042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.099159, 57.395355, 60.196426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746284, 0.487818, 0.452873,
		0.223131, -0.824344, 0.520258,
		0.627115, -0.287210, -0.724042,
		71.287292, 57.309193, 59.979214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.413635, 57.312778, 60.895481>,  <70.848312, 57.510239, 60.486042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.413635, 57.312778, 60.895481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.556587, 57.391380, 60.530258>,  <71.642357, 57.438541, 60.311127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.556587, 57.391380, 60.530258>,  <71.413635, 57.312778, 60.895481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.556587, 57.391380, 60.530258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826446, 0.388848, 0.407167,
		0.435048, -0.900102, -0.023433,
		0.357380, 0.196503, -0.913053,
		71.663803, 57.450333, 60.256344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.172226, 57.034622, 60.772675>,  <71.413635, 57.312778, 60.895481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.172226, 57.034622, 60.772675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.106758, 57.384132, 60.589493>,  <72.067482, 57.593838, 60.479584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.106758, 57.384132, 60.589493>,  <72.172226, 57.034622, 60.772675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.106758, 57.384132, 60.589493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665046, 0.440595, 0.602984,
		0.728648, -0.205877, -0.653212,
		-0.163662, 0.873780, -0.457956,
		72.057663, 57.646267, 60.452106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.752182, 57.259018, 60.212612>,  <72.172226, 57.034622, 60.772675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.752182, 57.259018, 60.212612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.555145, 57.516205, 60.447197>,  <72.436920, 57.670517, 60.587948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.555145, 57.516205, 60.447197>,  <72.752182, 57.259018, 60.212612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.555145, 57.516205, 60.447197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837104, 0.165852, 0.521297,
		0.237912, 0.747719, -0.619931,
		-0.492601, 0.642969, 0.586460,
		72.407364, 57.709095, 60.623135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.129105, 57.555916, 60.794952>,  <72.752182, 57.259018, 60.212612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.129105, 57.555916, 60.794952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.231659, 57.305973, 61.089928>,  <73.293190, 57.156006, 61.266914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.231659, 57.305973, 61.089928>,  <73.129105, 57.555916, 60.794952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.231659, 57.305973, 61.089928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933914, -0.356795, 0.022382,
		0.249129, -0.694442, -0.675044,
		0.256395, -0.624858, 0.737437,
		73.308578, 57.118515, 61.311157>
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
