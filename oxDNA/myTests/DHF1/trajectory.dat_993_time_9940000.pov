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
	<0.277201, -0.700940, 2.177922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.063812, -0.411053, 2.352365>,  <-0.064221, -0.237120, 2.457032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.063812, -0.411053, 2.352365>,  <0.277201, -0.700940, 2.177922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.063812, -0.411053, 2.352365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495303, 0.150285, -0.855622,
		-0.685625, -0.672457, 0.278782,
		-0.533473, 0.724718, 0.436110,
		-0.096229, -0.193637, 2.483198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.499959, -0.827303, 2.262382>,  <0.277201, -0.700940, 2.177922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.499959, -0.827303, 2.262382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.426182, -0.434746, 2.241028>,  <-0.381915, -0.199212, 2.228216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.426182, -0.434746, 2.241028>,  <-0.499959, -0.827303, 2.262382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.426182, -0.434746, 2.241028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636873, 0.077971, -0.767016,
		-0.748581, 0.175470, 0.639403,
		0.184443, 0.981392, -0.053384,
		-0.370849, -0.140328, 2.225013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.174819, -0.522333, 1.620656>,  <-0.499959, -0.827303, 2.262382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.174819, -0.522333, 1.620656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.138008, -0.273173, 1.628323>,  <0.325704, -0.123677, 1.632923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.138008, -0.273173, 1.628323>,  <-0.174819, -0.522333, 1.620656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.138008, -0.273173, 1.628323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078521, 0.129002, -0.988531,
		-0.618228, 0.771592, 0.149799,
		0.782067, 0.622900, 0.019166,
		0.372628, -0.086303, 1.634073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.275624, 0.152863, 1.342586>,  <-0.174819, -0.522333, 1.620656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.275624, 0.152863, 1.342586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.106693, 0.051278, 1.283306>,  <0.336084, -0.009673, 1.247738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.106693, 0.051278, 1.283306>,  <-0.275624, 0.152863, 1.342586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.106693, 0.051278, 1.283306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119637, 0.124529, -0.984977,
		0.268601, 0.959165, 0.088641,
		0.955793, -0.253961, -0.148200,
		0.393431, -0.024910, 1.238846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.063932, 0.699301, 0.846817>,  <-0.275624, 0.152863, 1.342586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.063932, 0.699301, 0.846817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.179348, 0.382753, 0.822063>,  <0.325316, 0.192825, 0.807211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.179348, 0.382753, 0.822063>,  <-0.063932, 0.699301, 0.846817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.179348, 0.382753, 0.822063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077803, 0.018154, -0.996803,
		0.789962, 0.611070, -0.050529,
		0.608200, -0.791368, -0.061884,
		0.361808, 0.145343, 0.803498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.574774, 0.923623, 0.576911>,  <-0.063932, 0.699301, 0.846817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.574774, 0.923623, 0.576911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.636150, 0.541069, 0.477486>,  <0.672976, 0.311537, 0.417831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.636150, 0.541069, 0.477486>,  <0.574774, 0.923623, 0.576911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.636150, 0.541069, 0.477486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014113, 0.249395, -0.968299,
		0.988057, 0.152085, 0.024770,
		0.153441, -0.956385, -0.248562,
		0.682183, 0.254153, 0.402917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.162754, 0.916193, 0.154749>,  <0.574774, 0.923623, 0.576911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.162754, 0.916193, 0.154749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.935917, 0.594149, 0.085236>,  <0.799815, 0.400922, 0.043528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.935917, 0.594149, 0.085236>,  <1.162754, 0.916193, 0.154749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.935917, 0.594149, 0.085236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066204, 0.254864, -0.964708,
		0.820989, -0.535574, -0.197833,
		-0.567093, -0.805112, -0.173783,
		0.765789, 0.352615, 0.033101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.450535, 0.646333, -0.469803>,  <1.162754, 0.916193, 0.154749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.450535, 0.646333, -0.469803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.078133, 0.507182, -0.425604>,  <0.854691, 0.423691, -0.399085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.078133, 0.507182, -0.425604>,  <1.450535, 0.646333, -0.469803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.078133, 0.507182, -0.425604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203851, 0.244439, -0.947995,
		0.302783, -0.905111, -0.298490,
		-0.931003, -0.347884, 0.110496,
		0.798831, 0.402818, -0.392455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.718030, 5.820705, 3.484732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.500114, 5.485790, 3.466160>,  <0.369365, 5.284842, 3.455017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.500114, 5.485790, 3.466160>,  <0.718030, 5.820705, 3.484732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.500114, 5.485790, 3.466160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205018, -0.186676, 0.960791,
		-0.813125, 0.513910, 0.273358,
		-0.544790, -0.837286, -0.046430,
		0.336677, 5.234604, 3.452231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.044751, 5.843271, 3.898628>,  <0.718030, 5.820705, 3.484732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.044751, 5.843271, 3.898628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.212502, 5.481205, 3.870922>,  <0.313152, 5.263965, 3.854299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.212502, 5.481205, 3.870922>,  <0.044751, 5.843271, 3.898628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.212502, 5.481205, 3.870922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036700, -0.059331, 0.997563,
		-0.907070, -0.420897, 0.008337,
		0.419377, -0.905166, -0.069264,
		0.338315, 5.209655, 3.850143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.389365, 5.423511, 4.349620>,  <0.044751, 5.843271, 3.898628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.389365, 5.423511, 4.349620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.022118, 5.284258, 4.273869>,  <0.198231, 5.200706, 4.228417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.022118, 5.284258, 4.273869>,  <-0.389365, 5.423511, 4.349620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.022118, 5.284258, 4.273869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167383, -0.092511, 0.981542,
		-0.359227, -0.932869, -0.026664,
		0.918117, -0.348133, -0.189379,
		0.253318, 5.179818, 4.217055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.350185, 4.840374, 4.882582>,  <-0.389365, 5.423511, 4.349620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.350185, 4.840374, 4.882582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.006111, 4.959995, 4.745674>,  <0.219889, 5.031768, 4.663529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.006111, 4.959995, 4.745674>,  <-0.350185, 4.840374, 4.882582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.006111, 4.959995, 4.745674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389744, -0.115125, 0.913699,
		0.233839, -0.947267, -0.219100,
		0.890741, 0.299052, -0.342271,
		0.273333, 5.049711, 4.642993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.180584, 4.254770, 4.766591>,  <-0.350185, 4.840374, 4.882582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.180584, 4.254770, 4.766591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.357208, 4.600840, 4.861668>,  <0.463183, 4.808481, 4.918714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.357208, 4.600840, 4.861668>,  <0.180584, 4.254770, 4.766591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.357208, 4.600840, 4.861668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324533, -0.400988, 0.856672,
		0.836482, -0.301135, -0.457838,
		0.441562, 0.865174, 0.237691,
		0.489677, 4.860392, 4.932975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.667883, 3.996269, 5.124697>,  <0.180584, 4.254770, 4.766591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.667883, 3.996269, 5.124697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.666122, 4.384041, 5.222828>,  <0.665066, 4.616704, 5.281707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.666122, 4.384041, 5.222828>,  <0.667883, 3.996269, 5.124697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.666122, 4.384041, 5.222828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295542, -0.233110, 0.926453,
		0.955319, 0.076582, -0.285482,
		-0.004400, 0.969430, 0.245328,
		0.664802, 4.674870, 5.296426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.209529, 4.135766, 5.599089>,  <0.667883, 3.996269, 5.124697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.209529, 4.135766, 5.599089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.971283, 4.450603, 5.663246>,  <0.828335, 4.639506, 5.701741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.971283, 4.450603, 5.663246>,  <1.209529, 4.135766, 5.599089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.971283, 4.450603, 5.663246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217985, -0.033805, 0.975366,
		0.773127, 0.615907, -0.151439,
		-0.595616, 0.787093, 0.160394,
		0.792598, 4.686731, 5.711364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.606980, 4.634381, 5.986376>,  <1.209529, 4.135766, 5.599089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.606980, 4.634381, 5.986376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.229652, 4.737219, 6.070332>,  <1.003256, 4.798921, 6.120705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.229652, 4.737219, 6.070332>,  <1.606980, 4.634381, 5.986376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.229652, 4.737219, 6.070332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228876, 0.045951, 0.972371,
		0.240346, 0.965293, -0.102188,
		-0.943319, 0.257094, 0.209888,
		0.946657, 4.814347, 6.133298>
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
