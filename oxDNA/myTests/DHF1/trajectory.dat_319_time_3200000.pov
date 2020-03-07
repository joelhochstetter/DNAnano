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
	<2.530882, 4.065513, 0.882324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.548161, 4.461014, 0.939598>,  <2.558527, 4.698315, 0.973963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.548161, 4.461014, 0.939598>,  <2.530882, 4.065513, 0.882324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.548161, 4.461014, 0.939598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885999, -0.028317, 0.462822,
		0.461671, -0.146854, 0.874811,
		0.043195, 0.988753, 0.143185,
		2.561119, 4.757640, 0.982554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.507702, 4.280647, 1.632492>,  <2.530882, 4.065513, 0.882324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.507702, 4.280647, 1.632492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.344421, 4.545319, 1.380920>,  <2.246453, 4.704122, 1.229977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.344421, 4.545319, 1.380920>,  <2.507702, 4.280647, 1.632492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.344421, 4.545319, 1.380920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782597, 0.101071, 0.614269,
		0.470016, 0.742944, 0.476571,
		-0.408200, 0.661679, -0.628930,
		2.221961, 4.743823, 1.192241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.148095, 4.789972, 2.091391>,  <2.507702, 4.280647, 1.632492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.148095, 4.789972, 2.091391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.991203, 4.803734, 1.723701>,  <1.897068, 4.811991, 1.503088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.991203, 4.803734, 1.723701>,  <2.148095, 4.789972, 2.091391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.991203, 4.803734, 1.723701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869359, 0.312711, 0.382656,
		0.300617, 0.949225, -0.092745,
		-0.392229, 0.034405, -0.919224,
		1.873535, 4.814055, 1.447934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.884086, 5.555071, 1.982852>,  <2.148095, 4.789972, 2.091391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.884086, 5.555071, 1.982852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.714672, 5.250443, 1.786636>,  <1.613023, 5.067666, 1.668907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.714672, 5.250443, 1.786636>,  <1.884086, 5.555071, 1.982852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.714672, 5.250443, 1.786636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898753, 0.285476, 0.332785,
		-0.113403, 0.581819, -0.805373,
		-0.423536, -0.761570, -0.490538,
		1.587611, 5.021971, 1.639475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.202627, 5.837118, 1.699441>,  <1.884086, 5.555071, 1.982852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.202627, 5.837118, 1.699441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.190220, 5.437500, 1.711761>,  <1.182775, 5.197730, 1.719154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.190220, 5.437500, 1.711761>,  <1.202627, 5.837118, 1.699441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.190220, 5.437500, 1.711761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902570, 0.041236, 0.428563,
		-0.429424, -0.014507, -0.902987,
		-0.031018, -0.999044, 0.030801,
		1.180914, 5.137787, 1.721002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.666528, 5.423889, 1.322331>,  <1.202627, 5.837118, 1.699441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.666528, 5.423889, 1.322331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.753422, 5.192902, 1.637123>,  <0.805558, 5.054309, 1.825999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.753422, 5.192902, 1.637123>,  <0.666528, 5.423889, 1.322331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.753422, 5.192902, 1.637123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959927, 0.019860, 0.279547,
		-0.177059, -0.816172, -0.550013,
		0.217235, -0.577468, 0.786981,
		0.818592, 5.019661, 1.873217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.149327, 4.818933, 1.307579>,  <0.666528, 5.423889, 1.322331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.149327, 4.818933, 1.307579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.305321, 4.860344, 1.673573>,  <0.398917, 4.885190, 1.893169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.305321, 4.860344, 1.673573>,  <0.149327, 4.818933, 1.307579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.305321, 4.860344, 1.673573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911602, -0.096854, 0.399502,
		0.129979, -0.989900, 0.056603,
		0.389984, 0.103526, 0.914984,
		0.422316, 4.891402, 1.948068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.144513, 4.237082, 1.802400>,  <0.149327, 4.818933, 1.307579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.144513, 4.237082, 1.802400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.010521, 4.549217, 2.013630>,  <0.069874, 4.736498, 2.140368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.010521, 4.549217, 2.013630>,  <-0.144513, 4.237082, 1.802400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.010521, 4.549217, 2.013630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796708, -0.064635, 0.600898,
		0.503035, -0.622009, 0.600050,
		0.334980, 0.780338, 0.528073,
		0.089973, 4.783319, 2.172052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.447619, -0.228150, 2.369145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.396877, 0.058540, 2.643433>,  <-1.366432, 0.230555, 2.808005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.396877, 0.058540, 2.643433>,  <-1.447619, -0.228150, 2.369145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.396877, 0.058540, 2.643433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981319, 0.010123, -0.192119,
		-0.144638, 0.697282, -0.702053,
		0.126854, 0.716726, 0.685720,
		-1.358821, 0.273558, 2.849149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.089132, 0.403296, 2.094141>,  <-1.447619, -0.228150, 2.369145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.089132, 0.403296, 2.094141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.015326, 0.351929, 2.483902>,  <-0.971041, 0.321108, 2.717759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.015326, 0.351929, 2.483902>,  <-1.089132, 0.403296, 2.094141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.015326, 0.351929, 2.483902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982756, 0.012001, -0.184517,
		0.012001, 0.991648, 0.128418,
		0.184517, -0.128418, 0.974404,
		-0.959970, 0.313403, 2.776223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.508278, 0.700655, 2.200361>,  <-1.089132, 0.403296, 2.094141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.508278, 0.700655, 2.200361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.556837, 0.435417, 2.495811>,  <-0.585973, 0.276274, 2.673082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.556837, 0.435417, 2.495811>,  <-0.508278, 0.700655, 2.200361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.556837, 0.435417, 2.495811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948247, -0.297437, -0.111170,
		0.293411, 0.686903, 0.664886,
		-0.121399, -0.663095, 0.738626,
		-0.593257, 0.236489, 2.717399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.065689, 0.761104, 2.937814>,  <-0.508278, 0.700655, 2.200361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.065689, 0.761104, 2.937814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.158304, 0.401451, 2.789246>,  <-0.213873, 0.185660, 2.700105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.158304, 0.401451, 2.789246>,  <-0.065689, 0.761104, 2.937814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.158304, 0.401451, 2.789246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958393, -0.145300, -0.245705,
		0.166954, -0.412857, 0.895363,
		-0.231537, -0.899131, -0.371421,
		-0.227765, 0.131712, 2.677819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.486307, 0.433174, 3.157522>,  <-0.065689, 0.761104, 2.937814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.486307, 0.433174, 3.157522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.350334, 0.218468, 2.848633>,  <0.268750, 0.089644, 2.663299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.350334, 0.218468, 2.848633>,  <0.486307, 0.433174, 3.157522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.350334, 0.218468, 2.848633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939872, -0.165107, -0.298967,
		0.032976, -0.827418, 0.560617,
		-0.339933, -0.536767, -0.772222,
		0.248354, 0.057438, 2.616966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.991458, -0.008308, 3.129894>,  <0.486307, 0.433174, 3.157522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.991458, -0.008308, 3.129894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.800610, -0.025307, 2.778770>,  <0.686101, -0.035506, 2.568096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.800610, -0.025307, 2.778770>,  <0.991458, -0.008308, 3.129894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.800610, -0.025307, 2.778770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852109, -0.266834, -0.450233,
		-0.215095, -0.962805, 0.163524,
		-0.477120, -0.042498, -0.877810,
		0.657474, -0.038056, 2.515427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.304255, -0.652622, 2.896161>,  <0.991458, -0.008308, 3.129894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.304255, -0.652622, 2.896161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.155077, -0.452560, 2.583557>,  <1.065570, -0.332523, 2.395995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.155077, -0.452560, 2.583557>,  <1.304255, -0.652622, 2.896161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.155077, -0.452560, 2.583557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777913, -0.290540, -0.557169,
		-0.505731, -0.815740, -0.280721,
		-0.372945, 0.500154, -0.781510,
		1.043194, -0.302514, 2.349104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.310498, -1.088281, 2.219354>,  <1.304255, -0.652622, 2.896161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.310498, -1.088281, 2.219354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.337864, -0.696106, 2.145531>,  <1.354283, -0.460801, 2.101236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.337864, -0.696106, 2.145531>,  <1.310498, -1.088281, 2.219354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.337864, -0.696106, 2.145531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875921, -0.147586, -0.459326,
		-0.477578, -0.130235, -0.868883,
		0.068415, 0.980437, -0.184560,
		1.358388, -0.401975, 2.090163>
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
