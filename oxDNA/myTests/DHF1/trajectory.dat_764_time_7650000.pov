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
	<5.082982, 5.855550, 2.879762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.703484, 5.773651, 2.976064>,  <4.475785, 5.724512, 3.033845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.703484, 5.773651, 2.976064>,  <5.082982, 5.855550, 2.879762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.703484, 5.773651, 2.976064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042177, -0.836985, -0.545597,
		0.313217, -0.507478, 0.802721,
		-0.948745, -0.204746, 0.240755,
		4.418860, 5.712227, 3.048290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.139133, 5.313152, 3.392208>,  <5.082982, 5.855550, 2.879762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.139133, 5.313152, 3.392208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.802402, 5.326797, 3.176742>,  <4.600364, 5.334985, 3.047462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.802402, 5.326797, 3.176742>,  <5.139133, 5.313152, 3.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.802402, 5.326797, 3.176742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209000, -0.899542, -0.383592,
		-0.497639, -0.435500, 0.750130,
		-0.841828, 0.034113, -0.538666,
		4.549854, 5.337031, 3.015141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.932116, 4.761724, 3.628561>,  <5.139133, 5.313152, 3.392208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.932116, 4.761724, 3.628561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.735512, 4.860332, 3.294460>,  <4.617549, 4.919498, 3.094000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.735512, 4.860332, 3.294460>,  <4.932116, 4.761724, 3.628561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.735512, 4.860332, 3.294460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014869, -0.956582, -0.291083,
		-0.870746, -0.155490, 0.466503,
		-0.491509, 0.246523, -0.835251,
		4.588059, 4.934289, 3.043885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.313549, 4.263664, 3.620179>,  <4.932116, 4.761724, 3.628561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.313549, 4.263664, 3.620179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.476971, 4.394789, 3.279446>,  <4.575024, 4.473464, 3.075006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.476971, 4.394789, 3.279446>,  <4.313549, 4.263664, 3.620179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.476971, 4.394789, 3.279446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125273, -0.944585, -0.303423,
		-0.904096, 0.017253, -0.426981,
		0.408555, 0.327812, -0.851834,
		4.599537, 4.493133, 3.023895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.997619, 3.916834, 3.132725>,  <4.313549, 4.263664, 3.620179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.997619, 3.916834, 3.132725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320187, 4.026749, 2.923275>,  <4.513727, 4.092698, 2.797605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320187, 4.026749, 2.923275>,  <3.997619, 3.916834, 3.132725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.320187, 4.026749, 2.923275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076853, -0.926669, -0.367938,
		-0.586331, 0.256470, -0.768401,
		0.806418, 0.274788, -0.523624,
		4.562112, 4.109185, 2.766188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.913791, 3.629300, 2.491642>,  <3.997619, 3.916834, 3.132725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.913791, 3.629300, 2.491642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.304535, 3.706526, 2.528456>,  <4.538981, 3.752861, 2.550544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.304535, 3.706526, 2.528456>,  <3.913791, 3.629300, 2.491642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.304535, 3.706526, 2.528456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211863, -0.932433, -0.292716,
		0.029304, 0.305441, -0.951760,
		0.976860, 0.193065, 0.092036,
		4.597593, 3.764445, 2.556067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.270263, 3.449541, 1.887911>,  <3.913791, 3.629300, 2.491642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.270263, 3.449541, 1.887911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.588287, 3.428932, 2.129646>,  <4.779102, 3.416567, 2.274687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.588287, 3.428932, 2.129646>,  <4.270263, 3.449541, 1.887911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.588287, 3.428932, 2.129646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282606, -0.850150, -0.444272,
		0.536667, 0.524013, -0.661361,
		0.795061, -0.051521, 0.604337,
		4.826806, 3.413476, 2.310947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.444900, 3.309218, 1.189391>,  <4.270263, 3.449541, 1.887911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.444900, 3.309218, 1.189391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.430412, 2.929136, 1.313198>,  <4.421720, 2.701087, 1.387482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.430412, 2.929136, 1.313198>,  <4.444900, 3.309218, 1.189391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.430412, 2.929136, 1.313198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259207, -0.308052, -0.915377,
		0.965142, 0.047075, 0.257457,
		-0.036219, -0.950204, 0.309517,
		4.419547, 2.644075, 1.406053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.107651, 2.245758, 1.617095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.257378, 2.023331, 1.913925>,  <0.347214, 1.889874, 2.092023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.257378, 2.023331, 1.913925>,  <0.107651, 2.245758, 1.617095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.257378, 2.023331, 1.913925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037918, 0.808762, 0.586912,
		-0.926525, -0.191554, 0.323818,
		0.374317, -0.556068, 0.742075,
		0.369673, 1.856510, 2.136548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.327264, 2.094858, 2.273233>,  <0.107651, 2.245758, 1.617095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.327264, 2.094858, 2.273233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.070480, 2.136524, 2.281212>,  <0.309127, 2.161524, 2.285999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.070480, 2.136524, 2.281212>,  <-0.327264, 2.094858, 2.273233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.070480, 2.136524, 2.281212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105140, 0.943443, 0.314421,
		0.013934, -0.314745, 0.949074,
		0.994360, 0.104166, 0.019947,
		0.368788, 2.167774, 2.287196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.058687, 2.344952, 2.938381>,  <-0.327264, 2.094858, 2.273233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.058687, 2.344952, 2.938381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.161430, 2.478584, 2.632292>,  <0.293501, 2.558764, 2.448638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.161430, 2.478584, 2.632292>,  <-0.058687, 2.344952, 2.938381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.161430, 2.478584, 2.632292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095583, 0.935648, 0.339747,
		0.829482, -0.113819, 0.546814,
		0.550295, 0.334080, -0.765224,
		0.326518, 2.578808, 2.402725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.427295, 2.921664, 3.260079>,  <-0.058687, 2.344952, 2.938381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.427295, 2.921664, 3.260079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.396797, 3.008320, 2.870771>,  <0.378498, 3.060313, 2.637187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.396797, 3.008320, 2.870771>,  <0.427295, 2.921664, 3.260079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.396797, 3.008320, 2.870771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143042, 0.963638, 0.225701,
		0.986775, 0.156427, -0.042484,
		-0.076245, 0.216639, -0.973270,
		0.373924, 3.073312, 2.578790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.846493, 3.486530, 3.065511>,  <0.427295, 2.921664, 3.260079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.846493, 3.486530, 3.065511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.530540, 3.472111, 2.820631>,  <0.340969, 3.463459, 2.673703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.530540, 3.472111, 2.820631>,  <0.846493, 3.486530, 3.065511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.530540, 3.472111, 2.820631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154340, 0.977824, 0.141558,
		0.593521, 0.206301, -0.777928,
		-0.789881, -0.036048, -0.612200,
		0.293576, 3.461296, 2.636971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.862666, 4.158450, 2.808516>,  <0.846493, 3.486530, 3.065511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.862666, 4.158450, 2.808516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.502472, 4.024212, 2.697880>,  <0.286355, 3.943669, 2.631498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.502472, 4.024212, 2.697880>,  <0.862666, 4.158450, 2.808516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.502472, 4.024212, 2.697880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336158, 0.940638, -0.046884,
		0.275905, 0.050760, -0.959844,
		-0.900485, -0.335595, -0.276590,
		0.232326, 3.923533, 2.614903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.686744, 4.550088, 2.265821>,  <0.862666, 4.158450, 2.808516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.686744, 4.550088, 2.265821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.356720, 4.412601, 2.445213>,  <0.158706, 4.330110, 2.552849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.356720, 4.412601, 2.445213>,  <0.686744, 4.550088, 2.265821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.356720, 4.412601, 2.445213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361513, 0.931103, 0.048533,
		-0.434263, -0.122089, -0.892474,
		-0.825060, -0.343717, 0.448480,
		0.109202, 4.309486, 2.579757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.192636, 4.870753, 1.985299>,  <0.686744, 4.550088, 2.265821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.192636, 4.870753, 1.985299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.017715, 4.752834, 2.325150>,  <-0.087237, 4.682083, 2.529060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.017715, 4.752834, 2.325150>,  <0.192636, 4.870753, 1.985299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.017715, 4.752834, 2.325150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357685, 0.923821, 0.136441,
		-0.825124, -0.244232, -0.509432,
		-0.437300, -0.294797, 0.849625,
		-0.113475, 4.664395, 2.580037>
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
