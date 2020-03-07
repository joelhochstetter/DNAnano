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
	<-0.573497, 3.621027, 3.149780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.343998, 3.458107, 2.865550>,  <-0.206298, 3.360355, 2.695011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.343998, 3.458107, 2.865550>,  <-0.573497, 3.621027, 3.149780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.343998, 3.458107, 2.865550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384509, 0.899980, -0.205398,
		0.723163, -0.155376, 0.672973,
		0.573748, -0.407301, -0.710576,
		-0.171873, 3.335917, 2.652377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.275524, 3.750865, 3.173232>,  <-0.573497, 3.621027, 3.149780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.275524, 3.750865, 3.173232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.123428, 3.704231, 2.806227>,  <0.032171, 3.676251, 2.586025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.123428, 3.704231, 2.806227>,  <0.275524, 3.750865, 3.173232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.123428, 3.704231, 2.806227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308050, 0.919418, -0.244492,
		0.872080, -0.375605, -0.313685,
		-0.380239, -0.116585, -0.917511,
		0.009357, 3.669256, 2.530974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.715576, 3.997997, 2.808850>,  <0.275524, 3.750865, 3.173232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.715576, 3.997997, 2.808850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.393669, 4.025627, 2.573027>,  <0.200525, 4.042205, 2.431533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.393669, 4.025627, 2.573027>,  <0.715576, 3.997997, 2.808850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.393669, 4.025627, 2.573027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260541, 0.933525, -0.246270,
		0.533356, -0.351794, -0.769267,
		-0.804767, 0.069076, -0.589558,
		0.152239, 4.046350, 2.396159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.931146, 4.224120, 2.189053>,  <0.715576, 3.997997, 2.808850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.931146, 4.224120, 2.189053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.555294, 4.357208, 2.221034>,  <0.329783, 4.437061, 2.240223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.555294, 4.357208, 2.221034>,  <0.931146, 4.224120, 2.189053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.555294, 4.357208, 2.221034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323096, 0.939598, -0.112975,
		-0.112713, -0.080322, -0.990376,
		-0.939630, 0.332721, 0.079953,
		0.273405, 4.457025, 2.245020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.837035, 4.725580, 1.557402>,  <0.931146, 4.224120, 2.189053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.837035, 4.725580, 1.557402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.533012, 4.803612, 1.805357>,  <0.350599, 4.850431, 1.954129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.533012, 4.803612, 1.805357>,  <0.837035, 4.725580, 1.557402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.533012, 4.803612, 1.805357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036153, 0.965096, -0.259389,
		-0.648852, -0.174739, -0.740579,
		-0.760055, 0.195079, 0.619887,
		0.304996, 4.862135, 1.991323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.291318, 5.161642, 1.211695>,  <0.837035, 4.725580, 1.557402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.291318, 5.161642, 1.211695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.224056, 5.235718, 1.598979>,  <0.183699, 5.280164, 1.831349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.224056, 5.235718, 1.598979>,  <0.291318, 5.161642, 1.211695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.224056, 5.235718, 1.598979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186510, 0.970431, -0.153224,
		-0.967956, 0.154816, -0.197722,
		-0.168154, 0.185191, 0.968209,
		0.173610, 5.291275, 1.889442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.035621, 5.848462, 1.190801>,  <0.291318, 5.161642, 1.211695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.035621, 5.848462, 1.190801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.083687, 5.793938, 1.568680>,  <0.155272, 5.761223, 1.795408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.083687, 5.793938, 1.568680>,  <-0.035621, 5.848462, 1.190801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.083687, 5.793938, 1.568680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254572, 0.965258, 0.058900,
		-0.919906, 0.222926, 0.322608,
		0.298270, -0.136310, 0.944698,
		0.173168, 5.753045, 1.852090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.338985, 6.399014, 1.524231>,  <-0.035621, 5.848462, 1.190801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.338985, 6.399014, 1.524231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.045387, 6.274475, 1.765665>,  <0.130771, 6.199751, 1.910525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.045387, 6.274475, 1.765665>,  <-0.338985, 6.399014, 1.524231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.045387, 6.274475, 1.765665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234536, 0.950255, 0.204961,
		-0.637374, -0.008878, 0.770504,
		0.733994, -0.311348, 0.603585,
		0.174811, 6.181071, 1.946741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.749655, 2.066050, 1.577999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002197, 2.106575, 1.885538>,  <1.153723, 2.130890, 2.070061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002197, 2.106575, 1.885538>,  <0.749655, 2.066050, 1.577999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.002197, 2.106575, 1.885538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292806, -0.886900, 0.357314,
		0.718092, -0.450715, -0.530284,
		0.631355, 0.101314, 0.768848,
		1.191604, 2.136969, 2.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.164406, 1.428805, 1.648308>,  <0.749655, 2.066050, 1.577999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.164406, 1.428805, 1.648308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.119820, 1.594040, 2.009846>,  <1.093068, 1.693181, 2.226768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.119820, 1.594040, 2.009846>,  <1.164406, 1.428805, 1.648308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.119820, 1.594040, 2.009846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495805, -0.811346, 0.309668,
		0.861250, -0.413613, 0.295250,
		-0.111467, 0.413088, 0.903844,
		1.086380, 1.717966, 2.280999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.425202, 0.959024, 2.086452>,  <1.164406, 1.428805, 1.648308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.425202, 0.959024, 2.086452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.113434, 1.182739, 2.199380>,  <0.926373, 1.316968, 2.267136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.113434, 1.182739, 2.199380>,  <1.425202, 0.959024, 2.086452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.113434, 1.182739, 2.199380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574040, -0.818045, 0.035791,
		0.250966, -0.134166, 0.958653,
		-0.779419, 0.559287, 0.282319,
		0.879608, 1.350525, 2.284075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.094079, 0.770044, 2.733645>,  <1.425202, 0.959024, 2.086452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.094079, 0.770044, 2.733645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.797745, 0.935333, 2.521830>,  <0.619944, 1.034507, 2.394741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.797745, 0.935333, 2.521830>,  <1.094079, 0.770044, 2.733645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.797745, 0.935333, 2.521830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583379, -0.786590, 0.202348,
		-0.332914, 0.458828, 0.823799,
		-0.740835, 0.413223, -0.529538,
		0.575494, 1.059300, 2.362968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.569316, 0.622100, 3.119356>,  <1.094079, 0.770044, 2.733645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.569316, 0.622100, 3.119356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.460976, 0.672890, 2.737672>,  <0.395972, 0.703363, 2.508661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.460976, 0.672890, 2.737672>,  <0.569316, 0.622100, 3.119356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.460976, 0.672890, 2.737672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538399, -0.841701, 0.040821,
		-0.797976, 0.524803, 0.296336,
		-0.270850, 0.126973, -0.954211,
		0.379721, 0.710982, 2.451409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.012068, 0.339014, 3.174495>,  <0.569316, 0.622100, 3.119356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.012068, 0.339014, 3.174495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.047493, 0.346596, 2.779027>,  <0.083230, 0.351145, 2.541746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.047493, 0.346596, 2.779027>,  <-0.012068, 0.339014, 3.174495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.047493, 0.346596, 2.779027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439893, -0.894170, -0.083396,
		-0.885619, 0.447327, -0.124807,
		0.148904, 0.018955, -0.988670,
		0.092164, 0.352282, 2.482426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.617753, 0.185638, 2.820184>,  <-0.012068, 0.339014, 3.174495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.617753, 0.185638, 2.820184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.325836, 0.100288, 2.560376>,  <-0.150686, 0.049078, 2.404492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.325836, 0.100288, 2.560376>,  <-0.617753, 0.185638, 2.820184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.325836, 0.100288, 2.560376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366607, -0.924045, -0.108355,
		-0.577064, 0.317194, -0.752585,
		0.729792, -0.213375, -0.649519,
		-0.106899, 0.036276, 2.365520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.933592, -0.129812, 2.155566>,  <-0.617753, 0.185638, 2.820184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.933592, -0.129812, 2.155566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.558815, -0.265480, 2.189272>,  <-0.333949, -0.346881, 2.209495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.558815, -0.265480, 2.189272>,  <-0.933592, -0.129812, 2.155566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.558815, -0.265480, 2.189272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338792, -0.940665, -0.019199,
		0.085776, -0.010560, -0.996258,
		0.936943, -0.339171, 0.084264,
		-0.277732, -0.367231, 2.214551>
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
