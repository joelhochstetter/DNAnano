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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.286521, 15.129568, 15.145666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188323, 14.963964, 14.795049>,  <4.129404, 14.864602, 14.584679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188323, 14.963964, 14.795049>,  <4.286521, 15.129568, 15.145666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188323, 14.963964, 14.795049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105804, -0.910256, 0.400300,
		-0.963607, 0.005531, 0.267267,
		-0.245496, -0.414009, -0.876543,
		4.114675, 14.839762, 14.532085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.896608, 14.520549, 15.356314>,  <4.286521, 15.129568, 15.145666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.896608, 14.520549, 15.356314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.078794, 14.462931, 15.004905>,  <4.188107, 14.428360, 14.794060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.078794, 14.462931, 15.004905>,  <3.896608, 14.520549, 15.356314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.078794, 14.462931, 15.004905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262778, -0.921101, 0.287264,
		-0.850587, -0.361696, -0.381679,
		0.455466, -0.144046, -0.878522,
		4.215435, 14.419717, 14.741348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.774654, 13.813169, 15.163394>,  <3.896608, 14.520549, 15.356314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.774654, 13.813169, 15.163394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.085152, 13.927451, 14.938603>,  <4.271451, 13.996020, 14.803729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.085152, 13.927451, 14.938603>,  <3.774654, 13.813169, 15.163394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.085152, 13.927451, 14.938603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431926, -0.890345, 0.143965,
		-0.459222, -0.354484, -0.814529,
		0.776245, 0.285704, -0.561976,
		4.318025, 14.013163, 14.770010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.820131, 13.242523, 14.708177>,  <3.774654, 13.813169, 15.163394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.820131, 13.242523, 14.708177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.160751, 13.443246, 14.768906>,  <4.365123, 13.563680, 14.805344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.160751, 13.443246, 14.768906>,  <3.820131, 13.242523, 14.708177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.160751, 13.443246, 14.768906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501964, -0.863957, 0.040127,
		0.151305, 0.042039, -0.987593,
		0.851551, 0.501808, 0.151823,
		4.416216, 13.593788, 14.814452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.239567, 12.751052, 14.389902>,  <3.820131, 13.242523, 14.708177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.239567, 12.751052, 14.389902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.456037, 12.951625, 14.659924>,  <4.585918, 13.071969, 14.821937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.456037, 12.951625, 14.659924>,  <4.239567, 12.751052, 14.389902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.456037, 12.951625, 14.659924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661110, -0.749804, 0.026963,
		0.519677, 0.431693, -0.737277,
		0.541173, 0.501433, 0.675053,
		4.618389, 13.102055, 14.862439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.982263, 12.704808, 14.210641>,  <4.239567, 12.751052, 14.389902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.982263, 12.704808, 14.210641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.986266, 12.811921, 14.596012>,  <4.988667, 12.876188, 14.827234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.986266, 12.811921, 14.596012>,  <4.982263, 12.704808, 14.210641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.986266, 12.811921, 14.596012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768550, -0.618438, 0.163909,
		0.639712, 0.738802, -0.211993,
		0.010008, 0.267782, 0.963428,
		4.989268, 12.892256, 14.885040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.674452, 12.947822, 14.422585>,  <4.982263, 12.704808, 14.210641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.674452, 12.947822, 14.422585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.478490, 12.801173, 14.738959>,  <5.360913, 12.713184, 14.928784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.478490, 12.801173, 14.738959>,  <5.674452, 12.947822, 14.422585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.478490, 12.801173, 14.738959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795004, -0.560166, 0.232771,
		0.357718, 0.742834, 0.565893,
		-0.489904, -0.366621, 0.790938,
		5.331519, 12.691187, 14.976240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.199596, 12.920268, 14.867567>,  <5.674452, 12.947822, 14.422585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.199596, 12.920268, 14.867567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.930124, 12.659680, 15.007133>,  <5.768440, 12.503328, 15.090872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.930124, 12.659680, 15.007133>,  <6.199596, 12.920268, 14.867567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.930124, 12.659680, 15.007133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717687, -0.689350, 0.098598,
		0.176291, 0.316836, 0.931953,
		-0.673682, -0.651469, 0.348915,
		5.728019, 12.464240, 15.111807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.649742, 12.519431, 15.328094>,  <6.199596, 12.920268, 14.867567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.649742, 12.519431, 15.328094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.326278, 12.285381, 15.303761>,  <6.132200, 12.144952, 15.289162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.326278, 12.285381, 15.303761>,  <6.649742, 12.519431, 15.328094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.326278, 12.285381, 15.303761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577334, -0.809214, 0.108895,
		-0.112944, 0.052938, 0.992190,
		-0.808659, -0.585124, -0.060832,
		6.083681, 12.109844, 15.285512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.555003, 12.160273, 15.880251>,  <6.649742, 12.519431, 15.328094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.555003, 12.160273, 15.880251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.362737, 11.940508, 15.606870>,  <6.247378, 11.808649, 15.442842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.362737, 11.940508, 15.606870>,  <6.555003, 12.160273, 15.880251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.362737, 11.940508, 15.606870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576823, -0.785134, 0.225479,
		-0.660482, -0.285851, 0.694300,
		-0.480665, -0.549413, -0.683452,
		6.218538, 11.775684, 15.401834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.571434, 11.572366, 16.194874>,  <6.555003, 12.160273, 15.880251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.571434, 11.572366, 16.194874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.422151, 11.428540, 15.852778>,  <6.332581, 11.342245, 15.647522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.422151, 11.428540, 15.852778>,  <6.571434, 11.572366, 16.194874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.422151, 11.428540, 15.852778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376830, -0.901124, 0.214415,
		-0.847771, -0.242258, 0.471801,
		-0.373207, -0.359564, -0.855237,
		6.310188, 11.320671, 15.596208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.234395, 10.949737, 16.369211>,  <6.571434, 11.572366, 16.194874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.234395, 10.949737, 16.369211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.308778, 10.918829, 15.977406>,  <6.353407, 10.900285, 15.742322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.308778, 10.918829, 15.977406>,  <6.234395, 10.949737, 16.369211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.308778, 10.918829, 15.977406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335907, -0.931838, 0.137279,
		-0.923356, -0.354554, -0.147328,
		0.185958, -0.077269, -0.979515,
		6.364565, 10.895648, 15.683551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.875386, 10.464547, 16.020136>,  <6.234395, 10.949737, 16.369211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.875386, 10.464547, 16.020136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.196939, 10.463090, 15.782225>,  <6.389870, 10.462215, 15.639478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.196939, 10.463090, 15.782225>,  <5.875386, 10.464547, 16.020136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.196939, 10.463090, 15.782225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106162, -0.983045, 0.149508,
		-0.585239, -0.183330, -0.789864,
		0.803881, -0.003644, -0.594778,
		6.438103, 10.461997, 15.603791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.947494, 9.791961, 15.966641>,  <5.875386, 10.464547, 16.020136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.947494, 9.791961, 15.966641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.287494, 9.926061, 15.804108>,  <6.491494, 10.006520, 15.706588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.287494, 9.926061, 15.804108>,  <5.947494, 9.791961, 15.966641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.287494, 9.926061, 15.804108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383287, -0.922742, 0.040473,
		-0.361373, -0.190145, -0.912828,
		0.850001, 0.335249, -0.406334,
		6.542494, 10.026635, 15.682207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.176478, 9.282774, 15.446851>,  <5.947494, 9.791961, 15.966641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.176478, 9.282774, 15.446851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.510997, 9.491212, 15.515046>,  <6.711709, 9.616275, 15.555964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.510997, 9.491212, 15.515046>,  <6.176478, 9.282774, 15.446851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.510997, 9.491212, 15.515046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524561, -0.850922, 0.027695,
		0.159503, 0.066270, -0.984971,
		0.836298, 0.521095, 0.170487,
		6.761887, 9.647540, 15.566193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.677213, 9.047037, 14.935587>,  <6.176478, 9.282774, 15.446851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.677213, 9.047037, 14.935587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.857593, 9.207349, 15.254591>,  <6.965820, 9.303536, 15.445993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.857593, 9.207349, 15.254591>,  <6.677213, 9.047037, 14.935587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.857593, 9.207349, 15.254591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507006, -0.850386, 0.140668,
		0.734568, 0.340909, -0.586678,
		0.450948, 0.400780, 0.797510,
		6.992877, 9.327582, 15.493844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.429442, 8.865347, 14.952649>,  <6.677213, 9.047037, 14.935587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.429442, 8.865347, 14.952649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.376703, 8.956493, 15.338539>,  <7.345059, 9.011181, 15.570073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.376703, 8.956493, 15.338539>,  <7.429442, 8.865347, 14.952649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.376703, 8.956493, 15.338539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519361, -0.813069, 0.263026,
		0.844322, 0.535720, -0.011143,
		-0.131848, 0.227866, 0.964724,
		7.337148, 9.024853, 15.627956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.181474, 8.816290, 15.280614>,  <7.429442, 8.865347, 14.952649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.181474, 8.816290, 15.280614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.895739, 8.795432, 15.559756>,  <7.724298, 8.782917, 15.727242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.895739, 8.795432, 15.559756>,  <8.181474, 8.816290, 15.280614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.895739, 8.795432, 15.559756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537124, -0.680076, 0.498994,
		0.448575, 0.731285, 0.513812,
		-0.714338, -0.052144, 0.697856,
		7.681438, 8.779789, 15.769113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.573120, 8.870299, 15.908967>,  <8.181474, 8.816290, 15.280614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.573120, 8.870299, 15.908967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.218726, 8.698071, 15.977832>,  <8.006090, 8.594733, 16.019150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.218726, 8.698071, 15.977832>,  <8.573120, 8.870299, 15.908967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.218726, 8.698071, 15.977832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458823, -0.760198, 0.459979,
		-0.067177, 0.486526, 0.871080,
		-0.885985, -0.430571, 0.172162,
		7.952931, 8.568899, 16.029480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.655611, 8.608101, 16.615728>,  <8.573120, 8.870299, 15.908967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.655611, 8.608101, 16.615728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.346227, 8.401482, 16.468794>,  <8.160596, 8.277510, 16.380632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.346227, 8.401482, 16.468794>,  <8.655611, 8.608101, 16.615728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.346227, 8.401482, 16.468794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483646, -0.855550, 0.184716,
		-0.409690, -0.034790, 0.911561,
		-0.773460, -0.516549, -0.367337,
		8.114188, 8.246517, 16.358593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.470177, 8.203254, 17.205303>,  <8.655611, 8.608101, 16.615728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.470177, 8.203254, 17.205303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.310809, 8.034056, 16.879766>,  <8.215189, 7.932537, 16.684444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.310809, 8.034056, 16.879766>,  <8.470177, 8.203254, 17.205303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.310809, 8.034056, 16.879766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312405, -0.896835, 0.313192,
		-0.862360, -0.129466, 0.489462,
		-0.398419, -0.422995, -0.813841,
		8.191283, 7.907157, 16.635614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.193377, 7.542787, 17.402973>,  <8.470177, 8.203254, 17.205303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.193377, 7.542787, 17.402973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.242258, 7.528436, 17.006231>,  <8.271587, 7.519825, 16.768187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.242258, 7.528436, 17.006231>,  <8.193377, 7.542787, 17.402973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.242258, 7.528436, 17.006231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363686, -0.928218, 0.078385,
		-0.923471, -0.370303, -0.100385,
		0.122205, -0.035878, -0.991856,
		8.278919, 7.517672, 16.708675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.896025, 6.880278, 17.229033>,  <8.193377, 7.542787, 17.402973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.896025, 6.880278, 17.229033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.119941, 6.963177, 16.908113>,  <8.254291, 7.012916, 16.715563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.119941, 6.963177, 16.908113>,  <7.896025, 6.880278, 17.229033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.119941, 6.963177, 16.908113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366459, -0.930307, 0.015375,
		-0.743197, -0.302616, -0.596726,
		0.559791, 0.207248, -0.802298,
		8.287878, 7.025351, 16.667423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.705182, 6.412693, 16.610468>,  <7.896025, 6.880278, 17.229033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.705182, 6.412693, 16.610468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.080936, 6.534713, 16.547859>,  <8.306389, 6.607925, 16.510294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.080936, 6.534713, 16.547859>,  <7.705182, 6.412693, 16.610468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.080936, 6.534713, 16.547859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261046, -0.932309, -0.250309,
		-0.222282, 0.194277, -0.955430,
		0.939386, 0.305051, -0.156520,
		8.362752, 6.626228, 16.500902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.975554, 6.078303, 15.937066>,  <7.705182, 6.412693, 16.610468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.975554, 6.078303, 15.937066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.298922, 6.186115, 16.146376>,  <8.492942, 6.250802, 16.271961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.298922, 6.186115, 16.146376>,  <7.975554, 6.078303, 15.937066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.298922, 6.186115, 16.146376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466647, -0.835311, -0.290681,
		0.358749, 0.479175, -0.801056,
		0.808418, 0.269529, 0.523273,
		8.541447, 6.266973, 16.303358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.561925, 6.127152, 15.507833>,  <7.975554, 6.078303, 15.937066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.561925, 6.127152, 15.507833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.681026, 6.015216, 15.872915>,  <8.752487, 5.948054, 16.091965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.681026, 6.015216, 15.872915>,  <8.561925, 6.127152, 15.507833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.681026, 6.015216, 15.872915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439478, -0.808555, -0.391278,
		0.847468, 0.517619, -0.117766,
		0.297753, -0.279840, 0.912706,
		8.770352, 5.931264, 16.146727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.319873, 6.134825, 15.635589>,  <8.561925, 6.127152, 15.507833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.319873, 6.134825, 15.635589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.104084, 5.856404, 15.825105>,  <8.974610, 5.689351, 15.938814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.104084, 5.856404, 15.825105>,  <9.319873, 6.134825, 15.635589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.104084, 5.856404, 15.825105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520102, -0.717983, -0.462595,
		0.662165, -0.003138, 0.749352,
		-0.539473, -0.696054, 0.473791,
		8.942242, 5.647588, 15.967242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.678434, 5.479714, 15.503693>,  <9.319873, 6.134825, 15.635589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.678434, 5.479714, 15.503693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.412701, 5.364238, 15.779466>,  <9.253261, 5.294952, 15.944929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.412701, 5.364238, 15.779466>,  <9.678434, 5.479714, 15.503693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.412701, 5.364238, 15.779466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315352, -0.944539, -0.091640,
		0.677651, 0.156534, 0.718530,
		-0.664335, -0.288691, 0.689432,
		9.213400, 5.277631, 15.986296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.945320, 5.160913, 16.200867>,  <9.678434, 5.479714, 15.503693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.945320, 5.160913, 16.200867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.602881, 4.980058, 16.100729>,  <9.397418, 4.871545, 16.040648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.602881, 4.980058, 16.100729>,  <9.945320, 5.160913, 16.200867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.602881, 4.980058, 16.100729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470724, -0.882125, -0.016546,
		-0.213352, -0.132007, 0.968016,
		-0.856096, -0.452138, -0.250342,
		9.346053, 4.844417, 16.025627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.275004, 5.431557, 16.824024>,  <9.945320, 5.160913, 16.200867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.275004, 5.431557, 16.824024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.089781, 5.721110, 17.028601>,  <9.978647, 5.894842, 17.151346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.089781, 5.721110, 17.028601>,  <10.275004, 5.431557, 16.824024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.089781, 5.721110, 17.028601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503696, -0.259874, 0.823866,
		0.729293, 0.639108, -0.244280,
		-0.463058, 0.723883, 0.511440,
		9.950864, 5.938275, 17.182034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.728525, 5.829612, 17.094950>,  <10.275004, 5.431557, 16.824024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.728525, 5.829612, 17.094950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.402225, 5.778829, 17.320669>,  <10.206446, 5.748359, 17.456100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.402225, 5.778829, 17.320669>,  <10.728525, 5.829612, 17.094950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.402225, 5.778829, 17.320669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566442, -0.372740, 0.734988,
		0.117025, 0.919210, 0.375977,
		-0.815750, -0.126958, 0.564299,
		10.157500, 5.740741, 17.489960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.281288, 6.339198, 17.151405>,  <10.728525, 5.829612, 17.094950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.281288, 6.339198, 17.151405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.482047, 6.685121, 17.145655>,  <11.602503, 6.892675, 17.142204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.482047, 6.685121, 17.145655>,  <11.281288, 6.339198, 17.151405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.482047, 6.685121, 17.145655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700503, 0.416181, 0.579732,
		0.507340, -0.280895, 0.814681,
		0.501898, 0.864807, -0.014377,
		11.632617, 6.944563, 17.141342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.190456, 6.618353, 17.859341>,  <11.281288, 6.339198, 17.151405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.190456, 6.618353, 17.859341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307920, 6.961503, 17.690668>,  <11.378399, 7.167392, 17.589464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307920, 6.961503, 17.690668>,  <11.190456, 6.618353, 17.859341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.307920, 6.961503, 17.690668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534520, 0.513087, 0.671588,
		0.792498, 0.028180, 0.609224,
		0.293660, 0.857874, -0.421683,
		11.396018, 7.218864, 17.564163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.435114, 7.101173, 18.417706>,  <11.190456, 6.618353, 17.859341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.435114, 7.101173, 18.417706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.236184, 7.249205, 18.103836>,  <11.116826, 7.338024, 17.915514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.236184, 7.249205, 18.103836>,  <11.435114, 7.101173, 18.417706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.236184, 7.249205, 18.103836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618179, 0.483426, 0.619802,
		0.608706, 0.793310, -0.011645,
		-0.497325, 0.370079, -0.784672,
		11.086987, 7.360229, 17.868435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.376586, 7.855112, 18.430357>,  <11.435114, 7.101173, 18.417706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.376586, 7.855112, 18.430357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063360, 7.743763, 18.207891>,  <10.875425, 7.676953, 18.074411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063360, 7.743763, 18.207891>,  <11.376586, 7.855112, 18.430357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063360, 7.743763, 18.207891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556820, 0.712154, 0.427536,
		0.277061, 0.644472, -0.712665,
		-0.783063, -0.278373, -0.556166,
		10.828442, 7.660251, 18.041042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.097829, 8.410894, 17.816574>,  <11.376586, 7.855112, 18.430357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.097829, 8.410894, 17.816574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.826287, 8.161609, 17.971886>,  <10.663363, 8.012037, 18.065073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.826287, 8.161609, 17.971886>,  <11.097829, 8.410894, 17.816574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.826287, 8.161609, 17.971886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545894, 0.782012, 0.300760,
		-0.491078, -0.007788, -0.871081,
		-0.678853, -0.623214, 0.388281,
		10.622631, 7.974645, 18.088369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.448959, 8.664907, 17.567398>,  <11.097829, 8.410894, 17.816574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.448959, 8.664907, 17.567398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.427302, 8.442357, 17.899063>,  <10.414309, 8.308826, 18.098063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.427302, 8.442357, 17.899063>,  <10.448959, 8.664907, 17.567398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.427302, 8.442357, 17.899063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506503, 0.730927, 0.457385,
		-0.860537, -0.395211, -0.321380,
		-0.054142, -0.556376, 0.829165,
		10.411060, 8.275444, 18.147812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.777659, 8.460644, 17.682371>,  <10.448959, 8.664907, 17.567398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.777659, 8.460644, 17.682371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.920645, 8.477960, 18.055540>,  <10.006436, 8.488349, 18.279442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.920645, 8.477960, 18.055540>,  <9.777659, 8.460644, 17.682371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.920645, 8.477960, 18.055540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754314, 0.602370, 0.261075,
		-0.550663, -0.797042, 0.247980,
		0.357463, 0.043290, 0.932923,
		10.027884, 8.490947, 18.335417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.177220, 8.246110, 18.010204>,  <9.777659, 8.460644, 17.682371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.177220, 8.246110, 18.010204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.428580, 8.432040, 18.259699>,  <9.579396, 8.543598, 18.409395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.428580, 8.432040, 18.259699>,  <9.177220, 8.246110, 18.010204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.428580, 8.432040, 18.259699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723621, 0.643546, 0.249443,
		-0.285457, -0.608100, 0.740762,
		0.628401, 0.464825, 0.623739,
		9.617101, 8.571487, 18.446821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.753263, 8.563295, 18.483719>,  <9.177220, 8.246110, 18.010204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.753263, 8.563295, 18.483719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.082894, 8.753998, 18.606094>,  <9.280673, 8.868420, 18.679520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.082894, 8.753998, 18.606094>,  <8.753263, 8.563295, 18.483719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.082894, 8.753998, 18.606094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562620, 0.751749, 0.343993,
		-0.065991, -0.455605, 0.887732,
		0.824077, 0.476756, 0.305941,
		9.330117, 8.897025, 18.697876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.633418, 8.919709, 19.186829>,  <8.753263, 8.563295, 18.483719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.633418, 8.919709, 19.186829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951571, 9.109605, 19.036104>,  <9.142464, 9.223542, 18.945669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951571, 9.109605, 19.036104>,  <8.633418, 8.919709, 19.186829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.951571, 9.109605, 19.036104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419298, 0.879905, 0.223511,
		0.437667, -0.019781, 0.898919,
		0.795384, 0.474738, -0.376812,
		9.190187, 9.252027, 18.923061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.760358, 9.414651, 19.634592>,  <8.633418, 8.919709, 19.186829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.760358, 9.414651, 19.634592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.903906, 9.531285, 19.279922>,  <8.990035, 9.601266, 19.067122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.903906, 9.531285, 19.279922>,  <8.760358, 9.414651, 19.634592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.903906, 9.531285, 19.279922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401568, 0.905774, 0.135338,
		0.842588, 0.307491, 0.442148,
		0.358871, 0.291586, -0.886673,
		9.011567, 9.618761, 19.013920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.850853, 10.152658, 19.617359>,  <8.760358, 9.414651, 19.634592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.850853, 10.152658, 19.617359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.821645, 10.103691, 19.221443>,  <8.804120, 10.074311, 18.983894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.821645, 10.103691, 19.221443>,  <8.850853, 10.152658, 19.617359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.821645, 10.103691, 19.221443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563544, 0.823881, -0.060322,
		0.822852, 0.553385, -0.129150,
		-0.073023, -0.122418, -0.989788,
		8.799739, 10.066966, 18.924507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.992137, 10.731730, 19.346292>,  <8.850853, 10.152658, 19.617359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.992137, 10.731730, 19.346292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.811132, 10.565297, 19.030798>,  <8.702530, 10.465437, 18.841501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.811132, 10.565297, 19.030798>,  <8.992137, 10.731730, 19.346292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.811132, 10.565297, 19.030798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483645, 0.857604, -0.174938,
		0.749214, 0.302308, -0.589312,
		-0.452511, -0.416084, -0.788738,
		8.675379, 10.440472, 18.794176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.184207, 11.107136, 18.787003>,  <8.992137, 10.731730, 19.346292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.184207, 11.107136, 18.787003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.827592, 10.945903, 18.704361>,  <8.613623, 10.849163, 18.654776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.827592, 10.945903, 18.704361>,  <9.184207, 11.107136, 18.787003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.827592, 10.945903, 18.704361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315368, 0.879812, -0.355631,
		0.325121, -0.251903, -0.911505,
		-0.891538, -0.403082, -0.206603,
		8.560130, 10.824978, 18.642380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.956626, 11.637739, 18.326159>,  <9.184207, 11.107136, 18.787003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.956626, 11.637739, 18.326159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.638098, 11.401469, 18.378277>,  <8.446980, 11.259707, 18.409548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.638098, 11.401469, 18.378277>,  <8.956626, 11.637739, 18.326159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.638098, 11.401469, 18.378277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569153, 0.658772, -0.492021,
		0.204790, -0.465964, -0.860778,
		-0.796320, -0.590675, 0.130295,
		8.399201, 11.224267, 18.417366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.550434, 11.655782, 17.698496>,  <8.956626, 11.637739, 18.326159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.550434, 11.655782, 17.698496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.261700, 11.546033, 17.952637>,  <8.088459, 11.480184, 18.105122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.261700, 11.546033, 17.952637>,  <8.550434, 11.655782, 17.698496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.261700, 11.546033, 17.952637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611177, 0.683427, -0.399238,
		-0.324676, -0.676497, -0.661013,
		-0.721837, -0.274372, 0.635352,
		8.045149, 11.463721, 18.143242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.970090, 11.625966, 17.324627>,  <8.550434, 11.655782, 17.698496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.970090, 11.625966, 17.324627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.849225, 11.678459, 17.702299>,  <7.776705, 11.709955, 17.928902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.849225, 11.678459, 17.702299>,  <7.970090, 11.625966, 17.324627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.849225, 11.678459, 17.702299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639073, 0.707037, -0.302794,
		-0.707306, -0.694893, -0.129774,
		-0.302165, 0.131233, 0.944179,
		7.758575, 11.717829, 17.985554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.381313, 11.854570, 17.172241>,  <7.970090, 11.625966, 17.324627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.381313, 11.854570, 17.172241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.401058, 11.955967, 17.558672>,  <7.412905, 12.016805, 17.790531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.401058, 11.955967, 17.558672>,  <7.381313, 11.854570, 17.172241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.401058, 11.955967, 17.558672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803335, 0.584822, -0.112405,
		-0.593477, -0.770536, 0.232506,
		0.049363, 0.253490, 0.966077,
		7.415867, 12.032014, 17.848495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.738132, 11.859029, 17.337843>,  <7.381313, 11.854570, 17.172241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.738132, 11.859029, 17.337843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.926085, 12.070471, 17.620625>,  <7.038857, 12.197336, 17.790295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.926085, 12.070471, 17.620625>,  <6.738132, 11.859029, 17.337843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.926085, 12.070471, 17.620625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724119, 0.688847, -0.033773,
		-0.504837, -0.496051, 0.706451,
		0.469884, 0.528605, 0.706956,
		7.067050, 12.229053, 17.832710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.222603, 12.008619, 17.821558>,  <6.738132, 11.859029, 17.337843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.222603, 12.008619, 17.821558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.514724, 12.278831, 17.862183>,  <6.689997, 12.440959, 17.886559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.514724, 12.278831, 17.862183>,  <6.222603, 12.008619, 17.821558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.514724, 12.278831, 17.862183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669913, 0.737318, -0.087050,
		-0.133690, -0.004466, 0.991013,
		0.730303, 0.675530, 0.101564,
		6.733815, 12.481491, 17.892653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.936206, 12.553162, 18.260969>,  <6.222603, 12.008619, 17.821558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.936206, 12.553162, 18.260969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.257153, 12.722443, 18.092634>,  <6.449721, 12.824011, 17.991632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.257153, 12.722443, 18.092634>,  <5.936206, 12.553162, 18.260969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.257153, 12.722443, 18.092634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528176, 0.831840, -0.170506,
		0.277912, 0.359086, 0.890967,
		0.802368, 0.423202, -0.420839,
		6.497864, 12.849403, 17.966383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.979403, 13.107940, 18.538130>,  <5.936206, 12.553162, 18.260969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.979403, 13.107940, 18.538130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.215949, 13.181911, 18.224165>,  <6.357877, 13.226294, 18.035786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.215949, 13.181911, 18.224165>,  <5.979403, 13.107940, 18.538130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.215949, 13.181911, 18.224165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466500, 0.872400, -0.145928,
		0.657773, 0.452459, 0.602176,
		0.591365, 0.184928, -0.784914,
		6.393359, 13.237389, 17.988691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.218044, 13.871613, 18.552694>,  <5.979403, 13.107940, 18.538130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.218044, 13.871613, 18.552694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.249608, 13.777340, 18.165245>,  <6.268546, 13.720777, 17.932775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.249608, 13.777340, 18.165245>,  <6.218044, 13.871613, 18.552694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.249608, 13.777340, 18.165245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347759, 0.904104, -0.248314,
		0.934257, 0.356441, -0.010618,
		0.078909, -0.235681, -0.968622,
		6.273281, 13.706635, 17.874659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.144450, 14.510471, 18.239508>,  <6.218044, 13.871613, 18.552694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.144450, 14.510471, 18.239508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.132851, 14.269867, 17.920172>,  <6.125891, 14.125504, 17.728571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.132851, 14.269867, 17.920172>,  <6.144450, 14.510471, 18.239508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.132851, 14.269867, 17.920172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417101, 0.733100, -0.537207,
		0.908398, 0.317410, -0.272148,
		-0.028997, -0.601511, -0.798339,
		6.124151, 14.089414, 17.680670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.569014, 14.857974, 17.648157>,  <6.144450, 14.510471, 18.239508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.569014, 14.857974, 17.648157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.254427, 14.635116, 17.541531>,  <6.065675, 14.501401, 17.477554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.254427, 14.635116, 17.541531>,  <6.569014, 14.857974, 17.648157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.254427, 14.635116, 17.541531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322602, 0.738602, -0.591942,
		0.526684, -0.379548, -0.760623,
		-0.786468, -0.557145, -0.266567,
		6.018486, 14.467972, 17.461561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.516737, 14.836079, 16.912659>,  <6.569014, 14.857974, 17.648157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.516737, 14.836079, 16.912659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.141600, 14.798603, 17.046329>,  <5.916518, 14.776118, 17.126532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.141600, 14.798603, 17.046329>,  <6.516737, 14.836079, 16.912659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.141600, 14.798603, 17.046329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312814, 0.645254, -0.696990,
		-0.150329, -0.758202, -0.634454,
		-0.937842, -0.093688, 0.334176,
		5.860248, 14.770496, 17.146582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.112539, 14.640844, 16.346842>,  <6.516737, 14.836079, 16.912659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.112539, 14.640844, 16.346842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.941167, 14.852154, 16.640064>,  <5.838344, 14.978939, 16.815998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.941167, 14.852154, 16.640064>,  <6.112539, 14.640844, 16.346842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.941167, 14.852154, 16.640064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228190, 0.721733, -0.653476,
		-0.874286, -0.447246, -0.188666,
		-0.428431, 0.528273, 0.733058,
		5.812637, 15.010635, 16.859982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.906360, 14.581188, 16.201065>,  <6.112539, 14.640844, 16.346842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.906360, 14.581188, 16.201065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.058119, 14.895797, 16.006153>,  <7.149175, 15.084562, 15.889206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.058119, 14.895797, 16.006153>,  <6.906360, 14.581188, 16.201065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.058119, 14.895797, 16.006153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041082, -0.540457, -0.840368,
		-0.924321, 0.298815, -0.237360,
		0.379397, 0.786521, -0.487280,
		7.171938, 15.131753, 15.859969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.731090, 14.564349, 16.197872>,  <6.906360, 14.581188, 16.201065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.731090, 14.564349, 16.197872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.854887, 14.829164, 15.924838>,  <7.929165, 14.988052, 15.761018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.854887, 14.829164, 15.924838>,  <7.731090, 14.564349, 16.197872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.854887, 14.829164, 15.924838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491542, 0.503101, 0.710827,
		0.814002, -0.555516, -0.169712,
		0.309494, 0.662036, -0.682585,
		7.947735, 15.027774, 15.720062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.523194, 14.606924, 16.248859>,  <7.731090, 14.564349, 16.197872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.523194, 14.606924, 16.248859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.346495, 14.933682, 16.100513>,  <8.240475, 15.129737, 16.011505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.346495, 14.933682, 16.100513>,  <8.523194, 14.606924, 16.248859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.346495, 14.933682, 16.100513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600206, 0.576351, 0.554592,
		0.666791, 0.022395, -0.744908,
		-0.441749, 0.816895, -0.370864,
		8.213970, 15.178751, 15.989254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.034456, 15.021503, 15.889722>,  <8.523194, 14.606924, 16.248859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.034456, 15.021503, 15.889722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.730047, 15.250319, 16.012110>,  <8.547402, 15.387609, 16.085543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.730047, 15.250319, 16.012110>,  <9.034456, 15.021503, 15.889722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.730047, 15.250319, 16.012110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640890, 0.589868, 0.491239,
		0.100526, 0.569936, -0.815516,
		-0.761022, 0.572039, 0.305969,
		8.501740, 15.421931, 16.103901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.149909, 15.689436, 15.653419>,  <9.034456, 15.021503, 15.889722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.149909, 15.689436, 15.653419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.928547, 15.680920, 15.986475>,  <8.795730, 15.675810, 16.186308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.928547, 15.680920, 15.986475>,  <9.149909, 15.689436, 15.653419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.928547, 15.680920, 15.986475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657645, 0.602286, 0.452498,
		-0.511120, 0.797997, -0.319308,
		-0.553406, -0.021290, 0.832639,
		8.762525, 15.674533, 16.236267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.941352, 16.359083, 15.979465>,  <9.149909, 15.689436, 15.653419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.941352, 16.359083, 15.979465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.942848, 16.115976, 16.297108>,  <8.943747, 15.970113, 16.487694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.942848, 16.115976, 16.297108>,  <8.941352, 16.359083, 15.979465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.942848, 16.115976, 16.297108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477244, 0.698927, 0.532672,
		-0.878763, 0.376990, 0.292668,
		0.003741, -0.607766, 0.794107,
		8.943971, 15.933646, 16.535339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.647113, 16.707176, 16.508026>,  <8.941352, 16.359083, 15.979465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.647113, 16.707176, 16.508026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.845405, 16.415487, 16.696699>,  <8.964379, 16.240475, 16.809904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.845405, 16.415487, 16.696699>,  <8.647113, 16.707176, 16.508026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.845405, 16.415487, 16.696699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254373, 0.641214, 0.723975,
		-0.830389, -0.238912, 0.503363,
		0.495730, -0.729223, 0.471685,
		8.994123, 16.196720, 16.838205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.574837, 16.972227, 17.191641>,  <8.647113, 16.707176, 16.508026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.574837, 16.972227, 17.191641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.822634, 16.664869, 17.255892>,  <8.971312, 16.480455, 17.294441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.822634, 16.664869, 17.255892>,  <8.574837, 16.972227, 17.191641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.822634, 16.664869, 17.255892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511981, 0.550596, 0.659333,
		-0.595067, -0.326215, 0.734493,
		0.619493, -0.768393, 0.160626,
		9.008482, 16.434351, 17.304079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.678052, 16.859583, 17.956110>,  <8.574837, 16.972227, 17.191641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.678052, 16.859583, 17.956110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.991375, 16.706518, 17.760151>,  <9.179369, 16.614679, 17.642576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.991375, 16.706518, 17.760151>,  <8.678052, 16.859583, 17.956110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.991375, 16.706518, 17.760151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619457, 0.546401, 0.563666,
		0.051987, -0.744994, 0.665042,
		0.783308, -0.382662, -0.489897,
		9.226367, 16.591721, 17.613182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.162730, 16.723267, 18.526594>,  <8.678052, 16.859583, 17.956110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.162730, 16.723267, 18.526594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353917, 16.735178, 18.175446>,  <9.468629, 16.742325, 17.964756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353917, 16.735178, 18.175446>,  <9.162730, 16.723267, 18.526594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.353917, 16.735178, 18.175446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731640, 0.539541, 0.416651,
		0.486055, -0.841433, 0.236095,
		0.477967, 0.029779, -0.877873,
		9.497307, 16.744112, 17.912085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.800841, 16.500566, 18.683832>,  <9.162730, 16.723267, 18.526594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.800841, 16.500566, 18.683832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.871006, 16.695923, 18.341908>,  <9.913105, 16.813137, 18.136753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.871006, 16.695923, 18.341908>,  <9.800841, 16.500566, 18.683832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.871006, 16.695923, 18.341908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757109, 0.488089, 0.434229,
		0.629298, -0.723356, -0.284148,
		0.175413, 0.488390, -0.854813,
		9.923630, 16.842440, 18.085463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.546672, 16.406389, 18.519995>,  <9.800841, 16.500566, 18.683832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.546672, 16.406389, 18.519995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.410920, 16.742682, 18.351236>,  <10.329469, 16.944456, 18.249981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.410920, 16.742682, 18.351236>,  <10.546672, 16.406389, 18.519995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.410920, 16.742682, 18.351236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625428, 0.536696, 0.566391,
		0.702610, -0.071643, -0.707959,
		-0.339380, 0.840729, -0.421896,
		10.309106, 16.994900, 18.224669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.088030, 16.823177, 18.448957>,  <10.546672, 16.406389, 18.519995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.088030, 16.823177, 18.448957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.798180, 17.090658, 18.382318>,  <10.624269, 17.251146, 18.342335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.798180, 17.090658, 18.382318>,  <11.088030, 16.823177, 18.448957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.798180, 17.090658, 18.382318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499585, 0.676245, 0.541393,
		0.474691, 0.309079, -0.824099,
		-0.724626, 0.668702, -0.166596,
		10.580791, 17.291269, 18.332340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.341693, 17.400709, 18.036545>,  <11.088030, 16.823177, 18.448957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.341693, 17.400709, 18.036545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.036260, 17.518724, 18.266291>,  <10.853000, 17.589533, 18.404139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.036260, 17.518724, 18.266291>,  <11.341693, 17.400709, 18.036545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.036260, 17.518724, 18.266291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596174, 0.663806, 0.451595,
		-0.248031, 0.687251, -0.682764,
		-0.763582, 0.295036, 0.574365,
		10.807185, 17.607235, 18.438601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.519205, 18.072771, 18.212330>,  <11.341693, 17.400709, 18.036545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.519205, 18.072771, 18.212330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.206917, 18.035990, 18.459560>,  <11.019544, 18.013922, 18.607899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.206917, 18.035990, 18.459560>,  <11.519205, 18.072771, 18.212330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.206917, 18.035990, 18.459560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349370, 0.755843, 0.553753,
		-0.518088, 0.648264, -0.557977,
		-0.780721, -0.091952, 0.618078,
		10.972700, 18.008404, 18.644983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.200387, 18.775511, 18.295004>,  <11.519205, 18.072771, 18.212330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.200387, 18.775511, 18.295004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.097595, 18.558018, 18.614582>,  <11.035920, 18.427523, 18.806330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.097595, 18.558018, 18.614582>,  <11.200387, 18.775511, 18.295004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.097595, 18.558018, 18.614582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413041, 0.685606, 0.599451,
		-0.873704, 0.484045, 0.048397,
		-0.256980, -0.543733, 0.798947,
		11.020501, 18.394897, 18.854265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.899190, 19.265789, 18.800442>,  <11.200387, 18.775511, 18.295004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.899190, 19.265789, 18.800442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.013730, 18.957733, 19.028439>,  <11.082454, 18.772900, 19.165237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.013730, 18.957733, 19.028439>,  <10.899190, 19.265789, 18.800442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.013730, 18.957733, 19.028439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335305, 0.637834, 0.693353,
		-0.897538, -0.007421, 0.440875,
		0.286350, -0.770138, 0.569992,
		11.099635, 18.726692, 19.199436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.707586, 19.479303, 19.442102>,  <10.899190, 19.265789, 18.800442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.707586, 19.479303, 19.442102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.960180, 19.179600, 19.521938>,  <11.111736, 18.999777, 19.569839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.960180, 19.179600, 19.521938>,  <10.707586, 19.479303, 19.442102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.960180, 19.179600, 19.521938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374965, 0.520392, 0.767199,
		-0.678696, -0.409636, 0.609566,
		0.631485, -0.749260, 0.199589,
		11.149626, 18.954823, 19.581816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.683268, 19.313583, 20.195112>,  <10.707586, 19.479303, 19.442102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.683268, 19.313583, 20.195112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028769, 19.176474, 20.047365>,  <11.236071, 19.094208, 19.958717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028769, 19.176474, 20.047365>,  <10.683268, 19.313583, 20.195112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.028769, 19.176474, 20.047365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497832, 0.466942, 0.730841,
		-0.078039, -0.815151, 0.573967,
		0.863755, -0.342773, -0.369369,
		11.287896, 19.073641, 19.936554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.943264, 18.984592, 20.777519>,  <10.683268, 19.313583, 20.195112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.943264, 18.984592, 20.777519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261955, 19.041714, 20.542629>,  <11.453170, 19.075987, 20.401695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261955, 19.041714, 20.542629>,  <10.943264, 18.984592, 20.777519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.261955, 19.041714, 20.542629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499321, 0.391834, 0.772751,
		0.340447, -0.908885, 0.240879,
		0.796727, 0.142805, -0.587225,
		11.500974, 19.084555, 20.366463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.626201, 18.743538, 21.164911>,  <10.943264, 18.984592, 20.777519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.626201, 18.743538, 21.164911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737421, 18.992821, 20.872526>,  <11.804153, 19.142389, 20.697096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737421, 18.992821, 20.872526>,  <11.626201, 18.743538, 21.164911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.737421, 18.992821, 20.872526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672381, 0.417178, 0.611446,
		0.685997, -0.661496, -0.303035,
		0.278050, 0.623206, -0.730961,
		11.820836, 19.179783, 20.653238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.279776, 18.701643, 21.206522>,  <11.626201, 18.743538, 21.164911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.279776, 18.701643, 21.206522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198532, 19.049217, 21.025991>,  <12.149786, 19.257763, 20.917673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198532, 19.049217, 21.025991>,  <12.279776, 18.701643, 21.206522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.198532, 19.049217, 21.025991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638789, 0.466925, 0.611498,
		0.742089, -0.164101, -0.649904,
		-0.203109, 0.868937, -0.451326,
		12.137599, 19.309898, 20.890594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.943406, 19.084997, 21.192471>,  <12.279776, 18.701643, 21.206522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.943406, 19.084997, 21.192471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648314, 19.351555, 21.149256>,  <12.471258, 19.511490, 21.123327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648314, 19.351555, 21.149256>,  <12.943406, 19.084997, 21.192471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.648314, 19.351555, 21.149256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471408, 0.623065, 0.624151,
		0.483245, 0.409526, -0.773797,
		-0.737732, 0.666392, -0.108039,
		12.426993, 19.551472, 21.116844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.294527, 19.707830, 21.211039>,  <12.943406, 19.084997, 21.192471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.294527, 19.707830, 21.211039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.909863, 19.800941, 21.269037>,  <12.679064, 19.856808, 21.303837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.909863, 19.800941, 21.269037>,  <13.294527, 19.707830, 21.211039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.909863, 19.800941, 21.269037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273516, 0.775677, 0.568783,
		0.019930, 0.586635, -0.809606,
		-0.961661, 0.232777, 0.144995,
		12.621365, 19.870775, 21.312536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.219277, 20.422005, 21.058626>,  <13.294527, 19.707830, 21.211039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.219277, 20.422005, 21.058626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.918324, 20.319105, 21.301193>,  <12.737751, 20.257366, 21.446733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.918324, 20.319105, 21.301193>,  <13.219277, 20.422005, 21.058626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.918324, 20.319105, 21.301193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153220, 0.826999, 0.540922,
		-0.640656, 0.499896, -0.582806,
		-0.752385, -0.257248, 0.606416,
		12.692608, 20.241930, 21.483118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.709225, 20.976572, 21.139721>,  <13.219277, 20.422005, 21.058626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.709225, 20.976572, 21.139721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.595351, 20.752291, 21.450737>,  <12.527027, 20.617722, 21.637346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.595351, 20.752291, 21.450737>,  <12.709225, 20.976572, 21.139721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.595351, 20.752291, 21.450737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162138, 0.827578, 0.537426,
		-0.944810, 0.026928, -0.326509,
		-0.284683, -0.560705, 0.777538,
		12.509946, 20.584080, 21.683998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.169013, 21.317505, 21.457878>,  <12.709225, 20.976572, 21.139721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.169013, 21.317505, 21.457878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293272, 21.065962, 21.742985>,  <12.367827, 20.915035, 21.914049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293272, 21.065962, 21.742985>,  <12.169013, 21.317505, 21.457878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.293272, 21.065962, 21.742985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052914, 0.737262, 0.673532,
		-0.949051, -0.246947, 0.195753,
		0.310648, -0.628858, 0.712766,
		12.386466, 20.877304, 21.956814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.782323, 21.552891, 22.017448>,  <12.169013, 21.317505, 21.457878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.782323, 21.552891, 22.017448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102069, 21.361267, 22.162512>,  <12.293917, 21.246294, 22.249550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102069, 21.361267, 22.162512>,  <11.782323, 21.552891, 22.017448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.102069, 21.361267, 22.162512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106736, 0.707196, 0.698915,
		-0.591291, -0.519978, 0.616440,
		0.799364, -0.479058, 0.362658,
		12.341878, 21.217550, 22.271309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.674078, 21.294762, 22.787138>,  <11.782323, 21.552891, 22.017448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.674078, 21.294762, 22.787138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.062878, 21.359451, 22.718948>,  <12.296158, 21.398266, 22.678034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.062878, 21.359451, 22.718948>,  <11.674078, 21.294762, 22.787138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.062878, 21.359451, 22.718948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058134, 0.537421, 0.841308,
		0.227677, -0.827661, 0.512971,
		0.972000, 0.161725, -0.170474,
		12.354478, 21.407969, 22.667807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.984922, 21.142309, 23.450560>,  <11.674078, 21.294762, 22.787138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.984922, 21.142309, 23.450560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.232931, 21.375601, 23.240639>,  <12.381736, 21.515575, 23.114687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.232931, 21.375601, 23.240639>,  <11.984922, 21.142309, 23.450560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.232931, 21.375601, 23.240639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044819, 0.641468, 0.765839,
		0.783304, -0.498357, 0.371584,
		0.620021, 0.583231, -0.524801,
		12.418938, 21.550570, 23.083199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.480748, 21.313593, 23.918419>,  <11.984922, 21.142309, 23.450560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.480748, 21.313593, 23.918419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.562527, 21.609859, 23.662415>,  <12.611594, 21.787621, 23.508812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.562527, 21.609859, 23.662415>,  <12.480748, 21.313593, 23.918419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.562527, 21.609859, 23.662415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263140, 0.588169, 0.764732,
		0.942846, -0.324759, -0.074650,
		0.204446, 0.740668, -0.640010,
		12.623860, 21.832060, 23.470411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.044836, 21.632864, 24.278957>,  <12.480748, 21.313593, 23.918419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.044836, 21.632864, 24.278957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.926139, 21.911285, 24.017437>,  <12.854920, 22.078339, 23.860525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.926139, 21.911285, 24.017437>,  <13.044836, 21.632864, 24.278957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.926139, 21.911285, 24.017437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316321, 0.717631, 0.620440,
		0.901047, -0.022700, -0.433128,
		-0.296742, 0.696053, -0.653800,
		12.837116, 22.120102, 23.821297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.566759, 22.078981, 24.414427>,  <13.044836, 21.632864, 24.278957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.566759, 22.078981, 24.414427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.280223, 22.276171, 24.216909>,  <13.108301, 22.394485, 24.098398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.280223, 22.276171, 24.216909>,  <13.566759, 22.078981, 24.414427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.280223, 22.276171, 24.216909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190116, 0.818817, 0.541660,
		0.671353, 0.294134, -0.680273,
		-0.716339, 0.492975, -0.493795,
		13.065321, 22.424063, 24.068771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.778834, 22.709059, 24.033283>,  <13.566759, 22.078981, 24.414427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.778834, 22.709059, 24.033283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.387305, 22.735464, 24.110794>,  <13.152388, 22.751307, 24.157301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.387305, 22.735464, 24.110794>,  <13.778834, 22.709059, 24.033283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387305, 22.735464, 24.110794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131419, 0.928403, 0.347559,
		-0.156960, 0.365665, -0.917416,
		-0.978822, 0.066013, 0.193777,
		13.093658, 22.755268, 24.168928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600141, 23.396091, 23.739685>,  <13.778834, 22.709059, 24.033283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.600141, 23.396091, 23.739685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.350636, 23.273367, 24.027237>,  <13.200933, 23.199732, 24.199768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.350636, 23.273367, 24.027237>,  <13.600141, 23.396091, 23.739685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.350636, 23.273367, 24.027237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110344, 0.875958, 0.469598,
		-0.773785, 0.372242, -0.512535,
		-0.623763, -0.306813, 0.718878,
		13.163507, 23.181324, 24.242901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.321843, 23.967739, 23.966633>,  <13.600141, 23.396091, 23.739685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.321843, 23.967739, 23.966633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.218338, 23.734800, 24.274897>,  <13.156235, 23.595037, 24.459854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.218338, 23.734800, 24.274897>,  <13.321843, 23.967739, 23.966633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.218338, 23.734800, 24.274897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074587, 0.807497, 0.585137,
		-0.963057, 0.093931, -0.252386,
		-0.258764, -0.582345, 0.770659,
		13.140709, 23.560097, 24.506094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769971, 24.284506, 24.249134>,  <13.321843, 23.967739, 23.966633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.769971, 24.284506, 24.249134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.916571, 24.062235, 24.547636>,  <13.004531, 23.928871, 24.726738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.916571, 24.062235, 24.547636>,  <12.769971, 24.284506, 24.249134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.916571, 24.062235, 24.547636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123883, 0.765780, 0.631058,
		-0.922134, -0.323732, 0.211819,
		0.366500, -0.555679, 0.746256,
		13.026521, 23.895531, 24.771513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374774, 24.548832, 24.828312>,  <12.769971, 24.284506, 24.249134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374774, 24.548832, 24.828312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.678307, 24.343170, 24.988222>,  <12.860426, 24.219772, 25.084169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.678307, 24.343170, 24.988222>,  <12.374774, 24.548832, 24.828312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.678307, 24.343170, 24.988222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050979, 0.565051, 0.823480,
		-0.649289, -0.645262, 0.402567,
		0.758831, -0.514154, 0.399776,
		12.905956, 24.188925, 25.108154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.193239, 24.507189, 25.553831>,  <12.374774, 24.548832, 24.828312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.193239, 24.507189, 25.553831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586514, 24.441004, 25.522923>,  <12.822478, 24.401293, 25.504377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586514, 24.441004, 25.522923>,  <12.193239, 24.507189, 25.553831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.586514, 24.441004, 25.522923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171881, 0.695552, 0.697613,
		-0.061682, -0.699164, 0.712296,
		0.983185, -0.165460, -0.077270,
		12.881469, 24.391365, 25.499741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.402420, 24.471689, 26.248901>,  <12.193239, 24.507189, 25.553831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.402420, 24.471689, 26.248901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724187, 24.571400, 26.033209>,  <12.917247, 24.631226, 25.903793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724187, 24.571400, 26.033209>,  <12.402420, 24.471689, 26.248901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724187, 24.571400, 26.033209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352891, 0.529683, 0.771300,
		0.477886, -0.810739, 0.338122,
		0.804420, 0.249273, -0.539231,
		12.965512, 24.646183, 25.871439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.884863, 24.283468, 26.691175>,  <12.402420, 24.471689, 26.248901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.884863, 24.283468, 26.691175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.058725, 24.525349, 26.424219>,  <13.163043, 24.670477, 26.264046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.058725, 24.525349, 26.424219>,  <12.884863, 24.283468, 26.691175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.058725, 24.525349, 26.424219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460049, 0.487988, 0.741770,
		0.774227, -0.629448, -0.066085,
		0.434657, 0.604701, -0.667391,
		13.189122, 24.706758, 26.224003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625401, 24.328241, 26.783339>,  <12.884863, 24.283468, 26.691175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625401, 24.328241, 26.783339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.541924, 24.669893, 26.592798>,  <13.491838, 24.874884, 26.478474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.541924, 24.669893, 26.592798>,  <13.625401, 24.328241, 26.783339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.541924, 24.669893, 26.592798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413557, 0.518456, 0.748448,
		0.886239, -0.040804, -0.461428,
		-0.208691, 0.854130, -0.476350,
		13.479318, 24.926132, 26.449894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176063, 24.799479, 27.039978>,  <13.625401, 24.328241, 26.783339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.176063, 24.799479, 27.039978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.895291, 25.030899, 26.873810>,  <13.726829, 25.169752, 26.774109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.895291, 25.030899, 26.873810>,  <14.176063, 24.799479, 27.039978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.895291, 25.030899, 26.873810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096783, 0.655318, 0.749127,
		0.705642, 0.485627, -0.515980,
		-0.701927, 0.578554, -0.415420,
		13.684713, 25.204466, 26.749184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461977, 25.533724, 27.043058>,  <14.176063, 24.799479, 27.039978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461977, 25.533724, 27.043058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062075, 25.526688, 27.037743>,  <13.822133, 25.522465, 27.034554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062075, 25.526688, 27.037743>,  <14.461977, 25.533724, 27.043058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062075, 25.526688, 27.037743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022042, 0.785211, 0.618836,
		-0.000451, 0.618979, -0.785408,
		-0.999757, -0.017591, -0.013289,
		13.762148, 25.521410, 27.033756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.338318, 26.232571, 27.055614>,  <14.461977, 25.533724, 27.043058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.338318, 26.232571, 27.055614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989036, 26.072504, 27.166883>,  <13.779467, 25.976463, 27.233644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989036, 26.072504, 27.166883>,  <14.338318, 26.232571, 27.055614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989036, 26.072504, 27.166883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128778, 0.739953, 0.660217,
		-0.470032, 0.540682, -0.697663,
		-0.873205, -0.400167, 0.278173,
		13.727075, 25.952454, 27.250336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800859, 26.732903, 26.991869>,  <14.338318, 26.232571, 27.055614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.800859, 26.732903, 26.991869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659109, 26.469694, 27.257629>,  <13.574059, 26.311769, 27.417086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659109, 26.469694, 27.257629>,  <13.800859, 26.732903, 26.991869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659109, 26.469694, 27.257629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001663, 0.710953, 0.703238,
		-0.935102, 0.248105, -0.253038,
		-0.354375, -0.658020, 0.664401,
		13.552796, 26.272287, 27.456949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.460421, 27.156981, 27.565365>,  <13.800859, 26.732903, 26.991869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.460421, 27.156981, 27.565365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.521322, 26.794954, 27.724199>,  <13.557863, 26.577740, 27.819500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.521322, 26.794954, 27.724199>,  <13.460421, 27.156981, 27.565365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.521322, 26.794954, 27.724199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023429, 0.404962, 0.914033,
		-0.988064, -0.129861, 0.082862,
		0.152254, -0.905065, 0.397086,
		13.566998, 26.523436, 27.843325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.115335, 27.101276, 28.215790>,  <13.460421, 27.156981, 27.565365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.115335, 27.101276, 28.215790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.393834, 26.814348, 28.226269>,  <13.560934, 26.642191, 28.232555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.393834, 26.814348, 28.226269>,  <13.115335, 27.101276, 28.215790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.393834, 26.814348, 28.226269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244377, 0.271197, 0.930984,
		-0.674920, -0.641795, 0.364117,
		0.696249, -0.717322, 0.026196,
		13.602709, 26.599152, 28.234127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.879475, 26.535736, 28.683472>,  <13.115335, 27.101276, 28.215790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.879475, 26.535736, 28.683472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.266556, 26.628136, 28.643089>,  <13.498804, 26.683577, 28.618860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.266556, 26.628136, 28.643089>,  <12.879475, 26.535736, 28.683472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.266556, 26.628136, 28.643089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030883, 0.506069, 0.861940,
		0.250198, -0.830983, 0.496858,
		0.967702, 0.231000, -0.100954,
		13.556867, 26.697435, 28.612803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069575, 26.351004, 29.356911>,  <12.879475, 26.535736, 28.683472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069575, 26.351004, 29.356911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.352830, 26.599522, 29.222727>,  <13.522783, 26.748632, 29.142218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.352830, 26.599522, 29.222727>,  <13.069575, 26.351004, 29.356911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.352830, 26.599522, 29.222727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064730, 0.415979, 0.907067,
		0.703101, -0.664042, 0.254354,
		0.708137, 0.621296, -0.335459,
		13.565271, 26.785910, 29.122089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.760591, 26.137629, 29.659018>,  <13.069575, 26.351004, 29.356911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.760591, 26.137629, 29.659018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721908, 26.522896, 29.558655>,  <13.698698, 26.754057, 29.498438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721908, 26.522896, 29.558655>,  <13.760591, 26.137629, 29.659018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721908, 26.522896, 29.558655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103992, 0.260485, 0.959861,
		0.989865, 0.066733, -0.125352,
		-0.096707, 0.963169, -0.250906,
		13.692896, 26.811846, 29.483383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272296, 26.492445, 29.951651>,  <13.760591, 26.137629, 29.659018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272296, 26.492445, 29.951651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998736, 26.775314, 29.879889>,  <13.834600, 26.945036, 29.836830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998736, 26.775314, 29.879889>,  <14.272296, 26.492445, 29.951651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.998736, 26.775314, 29.879889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248132, 0.456702, 0.854315,
		0.686084, 0.539749, -0.487811,
		-0.683900, 0.707173, -0.179407,
		13.793567, 26.987467, 29.826067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.716067, 25.874708, 29.613470>,  <14.272296, 26.492445, 29.951651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.716067, 25.874708, 29.613470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993379, 25.586859, 29.597948>,  <15.159765, 25.414148, 29.588634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993379, 25.586859, 29.597948>,  <14.716067, 25.874708, 29.613470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993379, 25.586859, 29.597948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712577, -0.692544, 0.112322,
		-0.107702, -0.050221, -0.992914,
		0.693277, -0.719626, -0.038802,
		15.201362, 25.370972, 29.586308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301070, 25.293358, 29.603199>,  <14.716067, 25.874708, 29.613470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301070, 25.293358, 29.603199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.648754, 25.128534, 29.712511>,  <14.857365, 25.029640, 29.778099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.648754, 25.128534, 29.712511>,  <14.301070, 25.293358, 29.603199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.648754, 25.128534, 29.712511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448731, -0.889518, 0.086013,
		0.207645, -0.197392, -0.958082,
		0.869209, -0.412061, 0.273279,
		14.909516, 25.004915, 29.794495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.188388, 24.598473, 29.339231>,  <14.301070, 25.293358, 29.603199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.188388, 24.598473, 29.339231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.485718, 24.611740, 29.606476>,  <14.664116, 24.619701, 29.766823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.485718, 24.611740, 29.606476>,  <14.188388, 24.598473, 29.339231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485718, 24.611740, 29.606476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330497, -0.850144, 0.409910,
		0.581586, -0.525504, -0.620970,
		0.743324, 0.033169, 0.668109,
		14.708714, 24.621691, 29.806908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.643288, 24.106281, 29.147890>,  <14.188388, 24.598473, 29.339231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.643288, 24.106281, 29.147890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.577049, 24.172878, 29.536705>,  <14.537306, 24.212835, 29.769995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.577049, 24.172878, 29.536705>,  <14.643288, 24.106281, 29.147890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.577049, 24.172878, 29.536705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527609, -0.847685, 0.055309,
		0.833191, -0.503697, 0.228215,
		-0.165596, 0.166491, 0.972039,
		14.527370, 24.222826, 29.828316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.717215, 23.502043, 29.634533>,  <14.643288, 24.106281, 29.147890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.717215, 23.502043, 29.634533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.411384, 23.759609, 29.645821>,  <14.227885, 23.914148, 29.652594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.411384, 23.759609, 29.645821>,  <14.717215, 23.502043, 29.634533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.411384, 23.759609, 29.645821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592867, -0.685437, -0.422711,
		-0.252846, -0.339926, 0.905825,
		-0.764577, 0.643914, 0.028221,
		14.182011, 23.952784, 29.654287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127857, 23.121698, 29.710491>,  <14.717215, 23.502043, 29.634533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.127857, 23.121698, 29.710491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.012391, 23.472116, 29.555977>,  <13.943111, 23.682367, 29.463268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.012391, 23.472116, 29.555977>,  <14.127857, 23.121698, 29.710491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.012391, 23.472116, 29.555977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748987, -0.457947, -0.478856,
		-0.596399, 0.151095, 0.788339,
		-0.288665, 0.876045, -0.386288,
		13.925792, 23.734930, 29.440090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.446466, 23.113104, 29.759468>,  <14.127857, 23.121698, 29.710491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.446466, 23.113104, 29.759468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.512276, 23.367739, 29.458086>,  <13.551761, 23.520519, 29.277258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.512276, 23.367739, 29.458086>,  <13.446466, 23.113104, 29.759468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.512276, 23.367739, 29.458086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652363, -0.502715, -0.567187,
		-0.739835, 0.584840, 0.332576,
		0.164522, 0.636585, -0.753453,
		13.561632, 23.558714, 29.232050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806656, 23.250305, 29.584806>,  <13.446466, 23.113104, 29.759468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806656, 23.250305, 29.584806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.026640, 23.337616, 29.262341>,  <13.158630, 23.390003, 29.068861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.026640, 23.337616, 29.262341>,  <12.806656, 23.250305, 29.584806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.026640, 23.337616, 29.262341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604841, -0.561538, -0.564661,
		-0.575944, 0.798142, -0.176802,
		0.549961, 0.218276, -0.806163,
		13.191628, 23.403099, 29.020493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420674, 23.747374, 29.110508>,  <12.806656, 23.250305, 29.584806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420674, 23.747374, 29.110508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.681308, 23.564997, 28.868004>,  <12.837687, 23.455570, 28.722502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.681308, 23.564997, 28.868004>,  <12.420674, 23.747374, 29.110508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.681308, 23.564997, 28.868004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748100, -0.253859, -0.613109,
		0.125638, 0.853036, -0.506501,
		0.651584, -0.455944, -0.606262,
		12.876783, 23.428213, 28.686125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.043090, 23.582512, 28.389860>,  <12.420674, 23.747374, 29.110508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.043090, 23.582512, 28.389860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359078, 23.339142, 28.359501>,  <12.548672, 23.193119, 28.341286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359078, 23.339142, 28.359501>,  <12.043090, 23.582512, 28.389860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359078, 23.339142, 28.359501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496018, -0.561389, -0.662426,
		0.360431, 0.560945, -0.745272,
		0.789972, -0.608427, -0.075897,
		12.596070, 23.156614, 28.336731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.204915, 23.545387, 27.681974>,  <12.043090, 23.582512, 28.389860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.204915, 23.545387, 27.681974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380912, 23.228144, 27.850445>,  <12.486510, 23.037798, 27.951527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380912, 23.228144, 27.850445>,  <12.204915, 23.545387, 27.681974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380912, 23.228144, 27.850445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222113, -0.550556, -0.804708,
		0.870099, 0.260517, -0.418400,
		0.439992, -0.793107, 0.421174,
		12.512910, 22.990211, 27.976797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.481346, 23.207687, 27.200989>,  <12.204915, 23.545387, 27.681974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.481346, 23.207687, 27.200989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505963, 22.906963, 27.463591>,  <12.520734, 22.726530, 27.621151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505963, 22.906963, 27.463591>,  <12.481346, 23.207687, 27.200989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.505963, 22.906963, 27.463591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130471, -0.646047, -0.752064,
		0.989540, 0.131938, 0.058330,
		0.061542, -0.751808, 0.656504,
		12.524426, 22.681421, 27.660542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.948918, 22.623993, 26.966631>,  <12.481346, 23.207687, 27.200989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.948918, 22.623993, 26.966631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724213, 22.432867, 27.236776>,  <12.589389, 22.318192, 27.398863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724213, 22.432867, 27.236776>,  <12.948918, 22.623993, 26.966631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724213, 22.432867, 27.236776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169392, -0.732620, -0.659222,
		0.809770, -0.484729, 0.330621,
		-0.561764, -0.477813, 0.675363,
		12.555683, 22.289522, 27.439384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.198160, 21.981451, 26.994871>,  <12.948918, 22.623993, 26.966631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.198160, 21.981451, 26.994871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846419, 21.923260, 27.176233>,  <12.635375, 21.888346, 27.285051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846419, 21.923260, 27.176233>,  <13.198160, 21.981451, 26.994871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.846419, 21.923260, 27.176233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074924, -0.898055, -0.433455,
		0.470242, -0.415130, 0.778807,
		-0.879351, -0.145478, 0.453406,
		12.582614, 21.879616, 27.312256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166301, 21.373117, 27.343639>,  <13.198160, 21.981451, 26.994871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.166301, 21.373117, 27.343639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798023, 21.474459, 27.224890>,  <12.577057, 21.535263, 27.153639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798023, 21.474459, 27.224890>,  <13.166301, 21.373117, 27.343639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798023, 21.474459, 27.224890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150819, -0.932530, -0.328087,
		-0.359967, -0.257294, 0.896785,
		-0.920694, 0.253353, -0.296875,
		12.521815, 21.550465, 27.135828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.886617, 20.726332, 27.332317>,  <13.166301, 21.373117, 27.343639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.886617, 20.726332, 27.332317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.609537, 20.950546, 27.150784>,  <12.443290, 21.085075, 27.041862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.609537, 20.950546, 27.150784>,  <12.886617, 20.726332, 27.332317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.609537, 20.950546, 27.150784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343510, -0.809714, -0.475778,
		-0.634167, -0.173674, 0.753438,
		-0.692699, 0.560537, -0.453835,
		12.401728, 21.118708, 27.014633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.228859, 20.363861, 27.334974>,  <12.886617, 20.726332, 27.332317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.228859, 20.363861, 27.334974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198812, 20.619623, 27.028898>,  <12.180785, 20.773081, 26.845253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198812, 20.619623, 27.028898>,  <12.228859, 20.363861, 27.334974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.198812, 20.619623, 27.028898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160368, -0.765118, -0.623600,
		-0.984195, 0.075871, 0.160012,
		-0.075115, 0.639405, -0.765192,
		12.176278, 20.811445, 26.799341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.815001, 20.022703, 26.892475>,  <12.228859, 20.363861, 27.334974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.815001, 20.022703, 26.892475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.945288, 20.307247, 26.643356>,  <12.023460, 20.477974, 26.493885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.945288, 20.307247, 26.643356>,  <11.815001, 20.022703, 26.892475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.945288, 20.307247, 26.643356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074328, -0.637414, -0.766928,
		-0.942541, 0.296093, -0.154744,
		0.325718, 0.711359, -0.622797,
		12.043003, 20.520655, 26.456516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.323718, 20.027014, 26.401735>,  <11.815001, 20.022703, 26.892475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.323718, 20.027014, 26.401735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.667686, 20.177479, 26.263725>,  <11.874066, 20.267757, 26.180920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.667686, 20.177479, 26.263725>,  <11.323718, 20.027014, 26.401735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.667686, 20.177479, 26.263725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036068, -0.629476, -0.776183,
		-0.509155, 0.679898, -0.527730,
		0.859919, 0.376163, -0.345023,
		11.925661, 20.290327, 26.160219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.197495, 20.310078, 25.684132>,  <11.323718, 20.027014, 26.401735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.197495, 20.310078, 25.684132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.591581, 20.242323, 25.673880>,  <11.828033, 20.201670, 25.667728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.591581, 20.242323, 25.673880>,  <11.197495, 20.310078, 25.684132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.591581, 20.242323, 25.673880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113235, -0.531609, -0.839386,
		0.128554, 0.829880, -0.542930,
		0.985216, -0.169386, -0.025631,
		11.887146, 20.191507, 25.666191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.431664, 20.484865, 24.893698>,  <11.197495, 20.310078, 25.684132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.431664, 20.484865, 24.893698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.705591, 20.272207, 25.093050>,  <11.869947, 20.144613, 25.212662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.705591, 20.272207, 25.093050>,  <11.431664, 20.484865, 24.893698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.705591, 20.272207, 25.093050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068798, -0.633690, -0.770521,
		0.725461, 0.561953, -0.397385,
		0.684816, -0.531644, 0.498379,
		11.911036, 20.112715, 25.242563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.926407, 20.450407, 24.425705>,  <11.431664, 20.484865, 24.893698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.926407, 20.450407, 24.425705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.976212, 20.148525, 24.683361>,  <12.006094, 19.967396, 24.837955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.976212, 20.148525, 24.683361>,  <11.926407, 20.450407, 24.425705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.976212, 20.148525, 24.683361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126996, -0.655975, -0.744022,
		0.984057, 0.010836, -0.177521,
		0.124512, -0.754705, 0.644141,
		12.013565, 19.922113, 24.876604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.386328, 19.944204, 24.063633>,  <11.926407, 20.450407, 24.425705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.386328, 19.944204, 24.063633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219876, 19.750570, 24.371529>,  <12.120006, 19.634390, 24.556267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219876, 19.750570, 24.371529>,  <12.386328, 19.944204, 24.063633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.219876, 19.750570, 24.371529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142590, -0.801301, -0.581021,
		0.898056, -0.351537, 0.264419,
		-0.416129, -0.484086, 0.769738,
		12.095037, 19.605345, 24.602449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.586168, 19.177189, 24.007191>,  <12.386328, 19.944204, 24.063633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.586168, 19.177189, 24.007191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.257822, 19.164385, 24.235281>,  <12.060814, 19.156702, 24.372135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.257822, 19.164385, 24.235281>,  <12.586168, 19.177189, 24.007191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.257822, 19.164385, 24.235281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332342, -0.785200, -0.522503,
		0.464465, -0.618414, 0.633905,
		-0.820866, -0.032011, 0.570224,
		12.011562, 19.154781, 24.406347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.581574, 18.473871, 24.146925>,  <12.586168, 19.177189, 24.007191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.581574, 18.473871, 24.146925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.221291, 18.638315, 24.203081>,  <12.005120, 18.736982, 24.236774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.221291, 18.638315, 24.203081>,  <12.581574, 18.473871, 24.146925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.221291, 18.638315, 24.203081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422273, -0.752650, -0.505177,
		-0.102018, -0.514302, 0.851520,
		-0.900710, 0.411111, 0.140392,
		11.951077, 18.761648, 24.245199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.154429, 17.914618, 24.232786>,  <12.581574, 18.473871, 24.146925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.154429, 17.914618, 24.232786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910453, 18.212955, 24.125689>,  <11.764067, 18.391958, 24.061430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910453, 18.212955, 24.125689>,  <12.154429, 17.914618, 24.232786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.910453, 18.212955, 24.125689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481149, -0.617020, -0.622722,
		-0.629661, -0.250994, 0.735207,
		-0.609937, 0.745847, -0.267747,
		11.727470, 18.436708, 24.045366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.467028, 17.688000, 24.347836>,  <12.154429, 17.914618, 24.232786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.467028, 17.688000, 24.347836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422779, 17.981503, 24.079697>,  <11.396230, 18.157604, 23.918814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422779, 17.981503, 24.079697>,  <11.467028, 17.688000, 24.347836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.422779, 17.981503, 24.079697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600164, -0.586940, -0.543419,
		-0.792190, 0.342205, 0.505302,
		-0.110621, 0.733756, -0.670347,
		11.389593, 18.201630, 23.878592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.750212, 17.562340, 24.205883>,  <11.467028, 17.688000, 24.347836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.750212, 17.562340, 24.205883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.890104, 17.786274, 23.905411>,  <10.974040, 17.920633, 23.725126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.890104, 17.786274, 23.905411>,  <10.750212, 17.562340, 24.205883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.890104, 17.786274, 23.905411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624723, -0.458158, -0.632307,
		-0.698147, 0.690418, 0.189509,
		0.349731, 0.559834, -0.751182,
		10.995024, 17.954224, 23.680056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.212511, 17.607197, 23.783644>,  <10.750212, 17.562340, 24.205883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.212511, 17.607197, 23.783644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512762, 17.725128, 23.547125>,  <10.692913, 17.795887, 23.405212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512762, 17.725128, 23.547125>,  <10.212511, 17.607197, 23.783644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.512762, 17.725128, 23.547125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445299, -0.435408, -0.782387,
		-0.488126, 0.850586, -0.195542,
		0.750628, 0.294829, -0.591299,
		10.737950, 17.813578, 23.369736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.988532, 18.020460, 23.216755>,  <10.212511, 17.607197, 23.783644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.988532, 18.020460, 23.216755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.342566, 17.868843, 23.108717>,  <10.554986, 17.777872, 23.043894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.342566, 17.868843, 23.108717>,  <9.988532, 18.020460, 23.216755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.342566, 17.868843, 23.108717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424218, -0.418238, -0.803191,
		0.191480, 0.825471, -0.530973,
		0.885084, -0.379044, -0.270096,
		10.608090, 17.755131, 23.027689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.054952, 18.100235, 22.542482>,  <9.988532, 18.020460, 23.216755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.054952, 18.100235, 22.542482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.322482, 17.807808, 22.596460>,  <10.483001, 17.632351, 22.628847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.322482, 17.807808, 22.596460>,  <10.054952, 18.100235, 22.542482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.322482, 17.807808, 22.596460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310752, -0.439830, -0.842605,
		0.675356, 0.521621, -0.521350,
		0.668826, -0.731069, 0.134947,
		10.523129, 17.588488, 22.636944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.402391, 18.095581, 21.962078>,  <10.054952, 18.100235, 22.542482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.402391, 18.095581, 21.962078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.465805, 17.736534, 22.126591>,  <10.503853, 17.521107, 22.225298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.465805, 17.736534, 22.126591>,  <10.402391, 18.095581, 21.962078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.465805, 17.736534, 22.126591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234849, -0.438877, -0.867313,
		0.959017, 0.040908, -0.280381,
		0.158533, -0.897615, 0.411284,
		10.513365, 17.467249, 22.249975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.886064, 17.753700, 21.473644>,  <10.402391, 18.095581, 21.962078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.886064, 17.753700, 21.473644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.728432, 17.469740, 21.707136>,  <10.633852, 17.299364, 21.847231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.728432, 17.469740, 21.707136>,  <10.886064, 17.753700, 21.473644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.728432, 17.469740, 21.707136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283406, -0.510313, -0.811949,
		0.874289, -0.485406, -0.000086,
		-0.394081, -0.709903, 0.583728,
		10.610208, 17.256769, 21.882256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.224401, 17.143818, 21.240129>,  <10.886064, 17.753700, 21.473644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.224401, 17.143818, 21.240129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.888164, 17.032810, 21.426197>,  <10.686420, 16.966206, 21.537838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.888164, 17.032810, 21.426197>,  <11.224401, 17.143818, 21.240129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.888164, 17.032810, 21.426197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189249, -0.654185, -0.732275,
		0.507529, -0.703579, 0.497384,
		-0.840595, -0.277521, 0.465169,
		10.635985, 16.949554, 21.565748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.308702, 16.482088, 21.279808>,  <11.224401, 17.143818, 21.240129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.308702, 16.482088, 21.279808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.912352, 16.486671, 21.333521>,  <10.674541, 16.489422, 21.365749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.912352, 16.486671, 21.333521>,  <11.308702, 16.482088, 21.279808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.912352, 16.486671, 21.333521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099515, -0.734123, -0.671685,
		0.090886, -0.678920, 0.728565,
		-0.990876, 0.011456, 0.134284,
		10.615088, 16.490108, 21.373806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.089950, 15.805477, 21.189215>,  <11.308702, 16.482088, 21.279808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.089950, 15.805477, 21.189215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.745263, 16.006628, 21.162199>,  <10.538451, 16.127319, 21.145990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.745263, 16.006628, 21.162199>,  <11.089950, 15.805477, 21.189215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.745263, 16.006628, 21.162199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270980, -0.568651, -0.776664,
		-0.428970, -0.650962, 0.626285,
		-0.861716, 0.502876, -0.067536,
		10.486749, 16.157492, 21.141937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.476725, 15.295484, 21.284218>,  <11.089950, 15.805477, 21.189215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.476725, 15.295484, 21.284218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.344134, 15.607055, 21.071278>,  <10.264580, 15.793998, 20.943514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.344134, 15.607055, 21.071278>,  <10.476725, 15.295484, 21.284218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.344134, 15.607055, 21.071278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363310, -0.626121, -0.689912,
		-0.870707, -0.035281, 0.490535,
		-0.331475, 0.778928, -0.532349,
		10.244692, 15.840733, 20.911573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.810308, 15.076188, 20.996172>,  <10.476725, 15.295484, 21.284218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.810308, 15.076188, 20.996172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.837710, 15.411772, 20.780226>,  <9.854152, 15.613122, 20.650658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.837710, 15.411772, 20.780226>,  <9.810308, 15.076188, 20.996172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.837710, 15.411772, 20.780226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444029, -0.458944, -0.769551,
		-0.893390, 0.292435, 0.341081,
		0.068506, 0.838959, -0.539865,
		9.858262, 15.663460, 20.618267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.135566, 15.273012, 20.719616>,  <9.810308, 15.076188, 20.996172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.135566, 15.273012, 20.719616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.436531, 15.417025, 20.498980>,  <9.617110, 15.503432, 20.366598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.436531, 15.417025, 20.498980>,  <9.135566, 15.273012, 20.719616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.436531, 15.417025, 20.498980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262519, -0.604119, -0.752412,
		-0.604119, 0.710928, -0.360031,
		0.752412, 0.360031, -0.551592,
		9.662254, 15.525034, 20.333502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.813367, 15.265394, 19.956032>,  <9.135566, 15.273012, 20.719616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.813367, 15.265394, 19.956032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.203890, 15.318063, 19.887346>,  <9.438204, 15.349664, 19.846134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.203890, 15.318063, 19.887346>,  <8.813367, 15.265394, 19.956032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.203890, 15.318063, 19.887346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023723, -0.723641, -0.689769,
		-0.215081, 0.677500, -0.703373,
		0.976308, 0.131670, -0.171714,
		9.496782, 15.357564, 19.835833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.907306, 15.487805, 19.267771>,  <8.813367, 15.265394, 19.956032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.907306, 15.487805, 19.267771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247645, 15.313899, 19.385778>,  <9.451849, 15.209556, 19.456583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247645, 15.313899, 19.385778>,  <8.907306, 15.487805, 19.267771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.247645, 15.313899, 19.385778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019186, -0.535418, -0.844369,
		0.525061, 0.724091, -0.447218,
		0.850848, -0.434765, 0.295020,
		9.502900, 15.183470, 19.474285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.353954, 15.434232, 18.680294>,  <8.907306, 15.487805, 19.267771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.353954, 15.434232, 18.680294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.506605, 15.168052, 18.936899>,  <9.598196, 15.008344, 19.090862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.506605, 15.168052, 18.936899>,  <9.353954, 15.434232, 18.680294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.506605, 15.168052, 18.936899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334515, -0.547561, -0.766992,
		0.861661, 0.507301, 0.013638,
		0.381628, -0.665449, 0.641512,
		9.621094, 14.968417, 19.129353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.967130, 15.366133, 18.508198>,  <9.353954, 15.434232, 18.680294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.967130, 15.366133, 18.508198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.924138, 15.021271, 18.706242>,  <9.898343, 14.814353, 18.825069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.924138, 15.021271, 18.706242>,  <9.967130, 15.366133, 18.508198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.924138, 15.021271, 18.706242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341111, -0.499746, -0.796177,
		0.933858, 0.083317, 0.347803,
		-0.107478, -0.862156, 0.495112,
		9.891894, 14.762624, 18.854774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.514569, 14.983001, 18.345181>,  <9.967130, 15.366133, 18.508198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.514569, 14.983001, 18.345181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.237239, 14.712847, 18.445702>,  <10.070841, 14.550755, 18.506014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.237239, 14.712847, 18.445702>,  <10.514569, 14.983001, 18.345181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.237239, 14.712847, 18.445702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096769, -0.432832, -0.896266,
		0.714097, -0.597086, 0.365450,
		-0.693326, -0.675385, 0.251304,
		10.029241, 14.510231, 18.521093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.770616, 14.316063, 18.196262>,  <10.514569, 14.983001, 18.345181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.770616, 14.316063, 18.196262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.372021, 14.322439, 18.163380>,  <10.132864, 14.326265, 18.143650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.372021, 14.322439, 18.163380>,  <10.770616, 14.316063, 18.196262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.372021, 14.322439, 18.163380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071403, -0.351099, -0.933612,
		-0.043744, -0.936202, 0.348728,
		-0.996488, 0.015940, -0.082206,
		10.073074, 14.327221, 18.138718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.897611, 13.811083, 18.747475>,  <10.770616, 14.316063, 18.196262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.897611, 13.811083, 18.747475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.196521, 13.545619, 18.760954>,  <11.375867, 13.386340, 18.769041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.196521, 13.545619, 18.760954>,  <10.897611, 13.811083, 18.747475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.196521, 13.545619, 18.760954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550938, 0.647109, 0.526989,
		-0.371549, -0.375239, 0.849204,
		0.747274, -0.663661, 0.033700,
		11.420703, 13.346520, 18.771063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.103945, 13.581370, 19.469126>,  <10.897611, 13.811083, 18.747475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.103945, 13.581370, 19.469126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.427095, 13.519732, 19.241587>,  <11.620986, 13.482748, 19.105062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.427095, 13.519732, 19.241587>,  <11.103945, 13.581370, 19.469126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.427095, 13.519732, 19.241587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562885, 0.487752, 0.667277,
		0.174632, -0.859274, 0.480782,
		0.807876, -0.154097, -0.568850,
		11.669458, 13.473502, 19.070932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.663268, 13.460474, 19.925047>,  <11.103945, 13.581370, 19.469126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.663268, 13.460474, 19.925047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808351, 13.609440, 19.583345>,  <11.895400, 13.698819, 19.378325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808351, 13.609440, 19.583345>,  <11.663268, 13.460474, 19.925047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808351, 13.609440, 19.583345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670624, 0.532196, 0.516750,
		0.647076, -0.760312, -0.056720,
		0.362705, 0.372415, -0.854255,
		11.917162, 13.721164, 19.327068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.428955, 13.252897, 19.952583>,  <11.663268, 13.460474, 19.925047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.428955, 13.252897, 19.952583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.336944, 13.588165, 19.754772>,  <12.281736, 13.789326, 19.636086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.336944, 13.588165, 19.754772>,  <12.428955, 13.252897, 19.952583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.336944, 13.588165, 19.754772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610080, 0.520105, 0.597740,
		0.758215, -0.164205, -0.630989,
		-0.230029, 0.838169, -0.494529,
		12.267935, 13.839616, 19.606413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938143, 13.675231, 20.218998>,  <12.428955, 13.252897, 19.952583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.938143, 13.675231, 20.218998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721135, 13.929438, 19.999256>,  <12.590931, 14.081962, 19.867411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721135, 13.929438, 19.999256>,  <12.938143, 13.675231, 20.218998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.721135, 13.929438, 19.999256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460653, 0.771933, 0.438084,
		0.702476, -0.015394, -0.711541,
		-0.542518, 0.635517, -0.549356,
		12.558379, 14.120092, 19.834450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368071, 14.129832, 20.047808>,  <12.938143, 13.675231, 20.218998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368071, 14.129832, 20.047808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.013638, 14.311357, 20.010054>,  <12.800978, 14.420273, 19.987400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.013638, 14.311357, 20.010054>,  <13.368071, 14.129832, 20.047808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.013638, 14.311357, 20.010054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385216, 0.834212, 0.394587,
		0.257807, 0.313278, -0.913998,
		-0.886083, 0.453814, -0.094386,
		12.747812, 14.447502, 19.981737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.516017, 14.718318, 19.846367>,  <13.368071, 14.129832, 20.047808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.516017, 14.718318, 19.846367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.148609, 14.803756, 19.979452>,  <12.928164, 14.855019, 20.059303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.148609, 14.803756, 19.979452>,  <13.516017, 14.718318, 19.846367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.148609, 14.803756, 19.979452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305998, 0.916935, 0.256114,
		-0.250373, 0.337056, -0.907583,
		-0.918520, 0.213595, 0.332714,
		12.873054, 14.867834, 20.079266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.374660, 15.415779, 19.495165>,  <13.516017, 14.718318, 19.846367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.374660, 15.415779, 19.495165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.150078, 15.321358, 19.812414>,  <13.015328, 15.264705, 20.002764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.150078, 15.321358, 19.812414>,  <13.374660, 15.415779, 19.495165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.150078, 15.321358, 19.812414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182919, 0.899339, 0.397153,
		-0.807037, 0.368061, -0.461760,
		-0.561455, -0.236052, 0.793125,
		12.981641, 15.250542, 20.050352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.062551, 16.128201, 19.807468>,  <13.374660, 15.415779, 19.495165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.062551, 16.128201, 19.807468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060669, 15.857788, 20.102211>,  <13.059540, 15.695540, 20.279057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060669, 15.857788, 20.102211>,  <13.062551, 16.128201, 19.807468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.060669, 15.857788, 20.102211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279252, 0.706662, 0.650113,
		-0.960206, 0.208828, 0.185458,
		-0.004706, -0.676032, 0.736857,
		13.059258, 15.654979, 20.323269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.732143, 16.464298, 20.270750>,  <13.062551, 16.128201, 19.807468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.732143, 16.464298, 20.270750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.933500, 16.175077, 20.459976>,  <13.054315, 16.001545, 20.573513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.933500, 16.175077, 20.459976>,  <12.732143, 16.464298, 20.270750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.933500, 16.175077, 20.459976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233474, 0.640951, 0.731212,
		-0.831918, -0.257637, 0.491463,
		0.503391, -0.723052, 0.473067,
		13.084517, 15.958161, 20.601896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.538280, 16.658365, 20.924545>,  <12.732143, 16.464298, 20.270750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.538280, 16.658365, 20.924545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.831050, 16.397593, 21.003815>,  <13.006711, 16.241129, 21.051376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.831050, 16.397593, 21.003815>,  <12.538280, 16.658365, 20.924545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.831050, 16.397593, 21.003815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195322, 0.479369, 0.855602,
		-0.652793, -0.587527, 0.478198,
		0.731923, -0.651934, 0.198171,
		13.050627, 16.202013, 21.063267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.381491, 16.297907, 21.573158>,  <12.538280, 16.658365, 20.924545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.381491, 16.297907, 21.573158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.776696, 16.247963, 21.536852>,  <13.013820, 16.217997, 21.515068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.776696, 16.247963, 21.536852>,  <12.381491, 16.297907, 21.573158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.776696, 16.247963, 21.536852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136482, 0.431870, 0.891550,
		-0.072122, -0.893251, 0.443735,
		0.988014, -0.124862, -0.090765,
		13.073100, 16.210505, 21.509623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.712286, 15.944973, 22.182848>,  <12.381491, 16.297907, 21.573158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.712286, 15.944973, 22.182848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009936, 16.144449, 22.005045>,  <13.188526, 16.264135, 21.898363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009936, 16.144449, 22.005045>,  <12.712286, 15.944973, 22.182848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009936, 16.144449, 22.005045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241561, 0.419501, 0.875024,
		0.622837, -0.758502, 0.191697,
		0.744125, 0.498691, -0.444506,
		13.233174, 16.294056, 21.871693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.033152, 16.128494, 22.759050>,  <12.712286, 15.944973, 22.182848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.033152, 16.128494, 22.759050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205932, 16.352833, 22.476528>,  <13.309600, 16.487436, 22.307014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205932, 16.352833, 22.476528>,  <13.033152, 16.128494, 22.759050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.205932, 16.352833, 22.476528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292680, 0.653583, 0.697975,
		0.853087, -0.508212, 0.118166,
		0.431950, 0.560849, -0.706306,
		13.335517, 16.521088, 22.264637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581069, 16.331032, 23.127634>,  <13.033152, 16.128494, 22.759050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581069, 16.331032, 23.127634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.555402, 16.566883, 22.805586>,  <13.540002, 16.708393, 22.612356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.555402, 16.566883, 22.805586>,  <13.581069, 16.331032, 23.127634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.555402, 16.566883, 22.805586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401774, 0.753775, 0.520002,
		0.913488, -0.290110, -0.285264,
		-0.064167, 0.589627, -0.805123,
		13.536152, 16.743771, 22.564049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254735, 16.585520, 23.063391>,  <13.581069, 16.331032, 23.127634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254735, 16.585520, 23.063391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022326, 16.843882, 22.865311>,  <13.882881, 16.998898, 22.746462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022326, 16.843882, 22.865311>,  <14.254735, 16.585520, 23.063391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.022326, 16.843882, 22.865311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342448, 0.745969, 0.571191,
		0.738338, 0.162294, -0.654612,
		-0.581021, 0.645903, -0.495200,
		13.848020, 17.037653, 22.716751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.690554, 17.214426, 22.844404>,  <14.254735, 16.585520, 23.063391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.690554, 17.214426, 22.844404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.325758, 17.377594, 22.827068>,  <14.106881, 17.475494, 22.816666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.325758, 17.377594, 22.827068>,  <14.690554, 17.214426, 22.844404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.325758, 17.377594, 22.827068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349298, 0.827610, 0.439377,
		0.215101, 0.385567, -0.897257,
		-0.911988, 0.407920, -0.043342,
		14.052161, 17.499969, 22.814066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840919, 17.966082, 22.623022>,  <14.690554, 17.214426, 22.844404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840919, 17.966082, 22.623022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490135, 17.940828, 22.813580>,  <14.279664, 17.925676, 22.927914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490135, 17.940828, 22.813580>,  <14.840919, 17.966082, 22.623022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490135, 17.940828, 22.813580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236705, 0.805986, 0.542547,
		-0.418221, 0.588558, -0.691875,
		-0.876962, -0.063134, 0.476395,
		14.227047, 17.921888, 22.956497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854054, 18.548601, 22.870537>,  <14.840919, 17.966082, 22.623022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854054, 18.548601, 22.870537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.540152, 18.383003, 23.055042>,  <14.351810, 18.283644, 23.165747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.540152, 18.383003, 23.055042>,  <14.854054, 18.548601, 22.870537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.540152, 18.383003, 23.055042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018551, 0.759567, 0.650165,
		-0.619527, 0.501664, -0.603755,
		-0.784756, -0.413995, 0.461266,
		14.304725, 18.258804, 23.193422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254456, 19.035740, 22.950891>,  <14.854054, 18.548601, 22.870537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254456, 19.035740, 22.950891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.207880, 18.775522, 23.251087>,  <14.179935, 18.619392, 23.431204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.207880, 18.775522, 23.251087>,  <14.254456, 19.035740, 22.950891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.207880, 18.775522, 23.251087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145633, 0.758645, 0.635018,
		-0.982463, -0.035355, -0.183077,
		-0.116439, -0.650544, 0.750490,
		14.172948, 18.580359, 23.476234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676783, 19.268120, 23.352535>,  <14.254456, 19.035740, 22.950891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.676783, 19.268120, 23.352535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.836950, 18.998875, 23.601238>,  <13.933051, 18.837328, 23.750460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.836950, 18.998875, 23.601238>,  <13.676783, 19.268120, 23.352535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.836950, 18.998875, 23.601238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086947, 0.647557, 0.757041,
		-0.912198, -0.357194, 0.200769,
		0.400419, -0.673114, 0.621757,
		13.957076, 18.796940, 23.787766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.323500, 19.396332, 24.018536>,  <13.676783, 19.268120, 23.352535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.323500, 19.396332, 24.018536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.664606, 19.207005, 24.106863>,  <13.869269, 19.093409, 24.159859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.664606, 19.207005, 24.106863>,  <13.323500, 19.396332, 24.018536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.664606, 19.207005, 24.106863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082960, 0.540167, 0.837459,
		-0.515664, -0.695836, 0.499902,
		0.852765, -0.473319, 0.220818,
		13.920436, 19.065008, 24.173109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.285272, 19.447926, 24.694309>,  <13.323500, 19.396332, 24.018536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.285272, 19.447926, 24.694309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668747, 19.359066, 24.623240>,  <13.898832, 19.305750, 24.580597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668747, 19.359066, 24.623240>,  <13.285272, 19.447926, 24.694309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.668747, 19.359066, 24.623240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273476, 0.547864, 0.790605,
		-0.078288, -0.806533, 0.585983,
		0.958688, -0.222147, -0.177676,
		13.956353, 19.292421, 24.569937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547107, 19.316797, 25.272758>,  <13.285272, 19.447926, 24.694309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.547107, 19.316797, 25.272758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858675, 19.425810, 25.046835>,  <14.045616, 19.491217, 24.911280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858675, 19.425810, 25.046835>,  <13.547107, 19.316797, 25.272758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858675, 19.425810, 25.046835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355743, 0.549692, 0.755834,
		0.516458, -0.789662, 0.331216,
		0.778921, 0.272529, -0.564810,
		14.092351, 19.507568, 24.877392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.083848, 19.237103, 25.711805>,  <13.547107, 19.316797, 25.272758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.083848, 19.237103, 25.711805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.232466, 19.494198, 25.443823>,  <14.321636, 19.648455, 25.283033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.232466, 19.494198, 25.443823>,  <14.083848, 19.237103, 25.711805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.232466, 19.494198, 25.443823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408107, 0.535092, 0.739679,
		0.833909, -0.548237, -0.063495,
		0.371544, 0.642738, -0.669958,
		14.343929, 19.687019, 25.242836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.768383, 19.479572, 26.041365>,  <14.083848, 19.237103, 25.711805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.768383, 19.479572, 26.041365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.626398, 19.739389, 25.772411>,  <14.541207, 19.895279, 25.611040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.626398, 19.739389, 25.772411>,  <14.768383, 19.479572, 26.041365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.626398, 19.739389, 25.772411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140569, 0.748123, 0.648500,
		0.924252, 0.135678, -0.356862,
		-0.354963, 0.649541, -0.672382,
		14.519909, 19.934252, 25.570696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246280, 20.035446, 25.675322>,  <14.768383, 19.479572, 26.041365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246280, 20.035446, 25.675322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.874602, 20.183050, 25.683594>,  <14.651596, 20.271612, 25.688557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.874602, 20.183050, 25.683594>,  <15.246280, 20.035446, 25.675322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874602, 20.183050, 25.683594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288924, 0.690356, 0.663273,
		0.230478, 0.622285, -0.748092,
		-0.929194, 0.369012, 0.020681,
		14.595844, 20.293755, 25.689798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.253072, 20.728064, 25.402632>,  <15.246280, 20.035446, 25.675322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.253072, 20.728064, 25.402632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940316, 20.672121, 25.645643>,  <14.752663, 20.638556, 25.791451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940316, 20.672121, 25.645643>,  <15.253072, 20.728064, 25.402632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940316, 20.672121, 25.645643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362270, 0.691156, 0.625351,
		-0.507356, 0.709044, -0.489742,
		-0.781889, -0.139856, 0.607527,
		14.705750, 20.630163, 25.827902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.168521, 21.383078, 25.566898>,  <15.253072, 20.728064, 25.402632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.168521, 21.383078, 25.566898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.004816, 21.140753, 25.839808>,  <14.906593, 20.995358, 26.003553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.004816, 21.140753, 25.839808>,  <15.168521, 21.383078, 25.566898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.004816, 21.140753, 25.839808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391120, 0.559097, 0.731051,
		-0.824336, 0.566042, 0.008128,
		-0.409261, -0.605811, 0.682275,
		14.882038, 20.959009, 26.044491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.740174, 21.836691, 26.075436>,  <15.168521, 21.383078, 25.566898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.740174, 21.836691, 26.075436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.820141, 21.496988, 26.270903>,  <14.868121, 21.293167, 26.388184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.820141, 21.496988, 26.270903>,  <14.740174, 21.836691, 26.075436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820141, 21.496988, 26.270903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401458, 0.525949, 0.749806,
		-0.893792, 0.046281, 0.446087,
		0.199917, -0.849256, 0.488669,
		14.880116, 21.242212, 26.417503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527112, 21.993822, 26.798811>,  <14.740174, 21.836691, 26.075436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527112, 21.993822, 26.798811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.766525, 21.673529, 26.808495>,  <14.910173, 21.481354, 26.814304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.766525, 21.673529, 26.808495>,  <14.527112, 21.993822, 26.798811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.766525, 21.673529, 26.808495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442524, 0.355665, 0.823210,
		-0.667781, -0.482006, 0.567221,
		0.598533, -0.800733, 0.024207,
		14.946085, 21.433310, 26.815756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.309304, 21.610800, 27.348497>,  <14.527112, 21.993822, 26.798811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.309304, 21.610800, 27.348497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.698228, 21.582281, 27.259474>,  <14.931582, 21.565170, 27.206060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.698228, 21.582281, 27.259474>,  <14.309304, 21.610800, 27.348497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.698228, 21.582281, 27.259474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232832, 0.377503, 0.896259,
		0.020116, -0.923260, 0.383649,
		0.972309, -0.071297, -0.222558,
		14.989921, 21.560892, 27.192707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376177, 21.843407, 28.002493>,  <14.309304, 21.610800, 27.348497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376177, 21.843407, 28.002493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.711803, 21.883608, 27.788628>,  <14.913179, 21.907728, 27.660309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.711803, 21.883608, 27.788628>,  <14.376177, 21.843407, 28.002493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711803, 21.883608, 27.788628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381407, 0.592138, 0.709860,
		0.387937, -0.799545, 0.458511,
		0.839067, 0.100502, -0.534664,
		14.963524, 21.913759, 27.628229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.061541, 22.263187, 28.258532>,  <14.376177, 21.843407, 28.002493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.061541, 22.263187, 28.258532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.457541, 22.319572, 28.260590>,  <15.695142, 22.353403, 28.261824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.457541, 22.319572, 28.260590>,  <15.061541, 22.263187, 28.258532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457541, 22.319572, 28.260590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141029, 0.989870, 0.016372,
		-0.002785, -0.016934, 0.999853,
		0.990002, 0.140963, 0.005145,
		15.754542, 22.361862, 28.262133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.380367, 22.899275, 28.745623>,  <15.061541, 22.263187, 28.258532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.380367, 22.899275, 28.745623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.663117, 22.845434, 28.467857>,  <15.832767, 22.813129, 28.301199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.663117, 22.845434, 28.467857>,  <15.380367, 22.899275, 28.745623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.663117, 22.845434, 28.467857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021845, 0.977104, -0.211636,
		0.707002, 0.164770, 0.687750,
		0.706875, -0.134603, -0.694414,
		15.875180, 22.805054, 28.259533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839489, 23.428604, 28.771534>,  <15.380367, 22.899275, 28.745623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839489, 23.428604, 28.771534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.885654, 23.277483, 28.404068>,  <15.913354, 23.186810, 28.183588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.885654, 23.277483, 28.404068>,  <15.839489, 23.428604, 28.771534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885654, 23.277483, 28.404068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073724, 0.925552, -0.371374,
		0.990578, -0.024866, 0.134674,
		0.115413, -0.377804, -0.918664,
		15.920279, 23.164143, 28.128469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511444, 23.693983, 28.315647>,  <15.839489, 23.428604, 28.771534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.511444, 23.693983, 28.315647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182386, 23.590864, 28.112946>,  <15.984952, 23.528992, 27.991325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182386, 23.590864, 28.112946>,  <16.511444, 23.693983, 28.315647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.182386, 23.590864, 28.112946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079119, 0.830716, -0.551046,
		0.563026, -0.493408, -0.662986,
		-0.822643, -0.257798, -0.506752,
		15.935594, 23.513525, 27.960920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698582, 23.776836, 27.566677>,  <16.511444, 23.693983, 28.315647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.698582, 23.776836, 27.566677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305622, 23.790792, 27.640076>,  <16.069845, 23.799166, 27.684114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305622, 23.790792, 27.640076>,  <16.698582, 23.776836, 27.566677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305622, 23.790792, 27.640076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089194, 0.775523, -0.624987,
		-0.164111, -0.630355, -0.758762,
		-0.982401, 0.034890, 0.183496,
		16.010902, 23.801260, 27.695124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806393, 24.413574, 27.571470>,  <16.698582, 23.776836, 27.566677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806393, 24.413574, 27.571470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081999, 24.513712, 27.299416>,  <17.247362, 24.573795, 27.136183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081999, 24.513712, 27.299416>,  <16.806393, 24.413574, 27.571470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081999, 24.513712, 27.299416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231973, -0.812899, -0.534213,
		-0.686619, 0.525854, -0.502027,
		0.689015, 0.250345, -0.680136,
		17.288704, 24.588816, 27.095375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518877, 24.423664, 26.921041>,  <16.806393, 24.413574, 27.571470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.518877, 24.423664, 26.921041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903687, 24.368698, 26.826696>,  <17.134571, 24.335718, 26.770088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903687, 24.368698, 26.826696>,  <16.518877, 24.423664, 26.921041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.903687, 24.368698, 26.826696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266149, -0.664158, -0.698612,
		-0.060652, 0.734855, -0.675507,
		0.962022, -0.137413, -0.235864,
		17.192293, 24.327475, 26.755938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547268, 24.321320, 26.147198>,  <16.518877, 24.423664, 26.921041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547268, 24.321320, 26.147198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911800, 24.198252, 26.256605>,  <17.130520, 24.124411, 26.322248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911800, 24.198252, 26.256605>,  <16.547268, 24.321320, 26.147198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911800, 24.198252, 26.256605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002212, -0.660741, -0.750610,
		0.411664, 0.684661, -0.601475,
		0.911333, -0.307669, 0.273518,
		17.185200, 24.105951, 26.338661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979666, 24.289436, 25.517668>,  <16.547268, 24.321320, 26.147198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.979666, 24.289436, 25.517668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151348, 24.060785, 25.797388>,  <17.254358, 23.923594, 25.965219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151348, 24.060785, 25.797388>,  <16.979666, 24.289436, 25.517668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151348, 24.060785, 25.797388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012055, -0.770548, -0.637267,
		0.903126, 0.281949, -0.323833,
		0.429206, -0.571629, 0.699301,
		17.280109, 23.889296, 26.007179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540113, 23.960039, 25.192478>,  <16.979666, 24.289436, 25.517668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540113, 23.960039, 25.192478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448704, 23.737797, 25.512247>,  <17.393858, 23.604450, 25.704109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448704, 23.737797, 25.512247>,  <17.540113, 23.960039, 25.192478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.448704, 23.737797, 25.512247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221274, -0.829304, -0.513121,
		0.948058, 0.059631, 0.312457,
		-0.228524, -0.555607, 0.799423,
		17.380146, 23.571115, 25.752073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104235, 23.426023, 25.258631>,  <17.540113, 23.960039, 25.192478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104235, 23.426023, 25.258631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776161, 23.294355, 25.445797>,  <17.579317, 23.215355, 25.558098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776161, 23.294355, 25.445797>,  <18.104235, 23.426023, 25.258631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776161, 23.294355, 25.445797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037574, -0.847119, -0.530074,
		0.570866, -0.417176, 0.707160,
		-0.820183, -0.329172, 0.467917,
		17.530106, 23.195604, 25.586172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209955, 22.716599, 25.310583>,  <18.104235, 23.426023, 25.258631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.209955, 22.716599, 25.310583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.814734, 22.731913, 25.370287>,  <17.577600, 22.741100, 25.406109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.814734, 22.731913, 25.370287>,  <18.209955, 22.716599, 25.310583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.814734, 22.731913, 25.370287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117714, -0.812608, -0.570799,
		0.099438, -0.581552, 0.807409,
		-0.988056, 0.038285, 0.149261,
		17.518316, 22.743399, 25.415066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937725, 22.027721, 25.538984>,  <18.209955, 22.716599, 25.310583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937725, 22.027721, 25.538984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635878, 22.222330, 25.362873>,  <17.454769, 22.339096, 25.257206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635878, 22.222330, 25.362873>,  <17.937725, 22.027721, 25.538984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635878, 22.222330, 25.362873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239686, -0.829008, -0.505268,
		-0.610818, -0.275758, 0.742199,
		-0.754620, 0.486521, -0.440278,
		17.409492, 22.368286, 25.230789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604794, 21.443687, 25.410616>,  <17.937725, 22.027721, 25.538984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.604794, 21.443687, 25.410616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431726, 21.729631, 25.190878>,  <17.327887, 21.901197, 25.059036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431726, 21.729631, 25.190878>,  <17.604794, 21.443687, 25.410616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.431726, 21.729631, 25.190878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253717, -0.681249, -0.686679,
		-0.865118, -0.157725, 0.476125,
		-0.432666, 0.714859, -0.549343,
		17.301928, 21.944090, 25.026075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999538, 21.124109, 25.112743>,  <17.604794, 21.443687, 25.410616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.999538, 21.124109, 25.112743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060753, 21.441433, 24.877037>,  <17.097481, 21.631828, 24.735613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060753, 21.441433, 24.877037>,  <16.999538, 21.124109, 25.112743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.060753, 21.441433, 24.877037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212719, -0.555869, -0.803592,
		-0.965055, 0.248328, 0.083684,
		0.153037, 0.793311, -0.589268,
		17.106665, 21.679426, 24.700256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423891, 21.138140, 24.636652>,  <16.999538, 21.124109, 25.112743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423891, 21.138140, 24.636652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689808, 21.368494, 24.446323>,  <16.849358, 21.506706, 24.332127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689808, 21.368494, 24.446323>,  <16.423891, 21.138140, 24.636652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689808, 21.368494, 24.446323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331844, -0.343002, -0.878766,
		-0.669275, 0.742097, -0.036922,
		0.664794, 0.575883, -0.475822,
		16.889246, 21.541260, 24.303577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024961, 21.428391, 24.112398>,  <16.423891, 21.138140, 24.636652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024961, 21.428391, 24.112398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.401413, 21.465803, 23.982456>,  <16.627283, 21.488251, 23.904491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.401413, 21.465803, 23.982456>,  <16.024961, 21.428391, 24.112398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401413, 21.465803, 23.982456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258651, -0.419526, -0.870114,
		-0.217669, 0.902912, -0.370635,
		0.941127, 0.093532, -0.324857,
		16.683750, 21.493862, 23.884998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916672, 21.695465, 23.473515>,  <16.024961, 21.428391, 24.112398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916672, 21.695465, 23.473515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280851, 21.531860, 23.498144>,  <16.499359, 21.433697, 23.512922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280851, 21.531860, 23.498144>,  <15.916672, 21.695465, 23.473515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280851, 21.531860, 23.498144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205034, -0.575574, -0.791629,
		0.359228, 0.708112, -0.607892,
		0.910449, -0.409014, 0.061575,
		16.553986, 21.409157, 23.516617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218346, 21.858925, 22.845324>,  <15.916672, 21.695465, 23.473515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218346, 21.858925, 22.845324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.405237, 21.533155, 22.982965>,  <16.517372, 21.337694, 23.065550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.405237, 21.533155, 22.982965>,  <16.218346, 21.858925, 22.845324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405237, 21.533155, 22.982965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119957, -0.443993, -0.887964,
		0.875960, 0.373607, -0.305143,
		0.467231, -0.814425, 0.344104,
		16.545406, 21.288828, 23.086197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642103, 21.578287, 22.261806>,  <16.218346, 21.858925, 22.845324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642103, 21.578287, 22.261806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.594114, 21.270676, 22.512947>,  <16.565321, 21.086109, 22.663631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.594114, 21.270676, 22.512947>,  <16.642103, 21.578287, 22.261806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.594114, 21.270676, 22.512947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200676, -0.600581, -0.773971,
		0.972284, -0.218848, -0.082274,
		-0.119970, -0.769030, 0.627853,
		16.558123, 21.039967, 22.701303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053499, 20.990992, 21.893976>,  <16.642103, 21.578287, 22.261806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053499, 20.990992, 21.893976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812767, 20.811493, 22.158226>,  <16.668327, 20.703793, 22.316776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812767, 20.811493, 22.158226>,  <17.053499, 20.990992, 21.893976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812767, 20.811493, 22.158226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017607, -0.834458, -0.550790,
		0.798428, -0.319852, 0.510105,
		-0.601833, -0.448748, 0.660623,
		16.632217, 20.676868, 22.356413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.282991, 20.308462, 21.887066>,  <17.053499, 20.990992, 21.893976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.282991, 20.308462, 21.887066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.938292, 20.265810, 22.085466>,  <16.731472, 20.240219, 22.204508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.938292, 20.265810, 22.085466>,  <17.282991, 20.308462, 21.887066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.938292, 20.265810, 22.085466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155309, -0.875281, -0.457999,
		0.482979, -0.471714, 0.737711,
		-0.861748, -0.106631, 0.496003,
		16.679768, 20.233820, 22.234268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325586, 19.691523, 22.002924>,  <17.282991, 20.308462, 21.887066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325586, 19.691523, 22.002924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939299, 19.774250, 22.065674>,  <16.707525, 19.823887, 22.103323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939299, 19.774250, 22.065674>,  <17.325586, 19.691523, 22.002924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939299, 19.774250, 22.065674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255556, -0.863505, -0.434800,
		0.045537, -0.459985, 0.886758,
		-0.965721, 0.206817, 0.156873,
		16.649582, 19.836294, 22.112736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971151, 19.078732, 22.301693>,  <17.325586, 19.691523, 22.002924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971151, 19.078732, 22.301693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668304, 19.265779, 22.119219>,  <16.486597, 19.378008, 22.009735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668304, 19.265779, 22.119219>,  <16.971151, 19.078732, 22.301693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668304, 19.265779, 22.119219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323297, -0.874995, -0.360366,
		-0.567674, -0.125355, 0.813653,
		-0.757116, 0.467622, -0.456185,
		16.441170, 19.406067, 21.982363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335594, 18.679668, 22.470287>,  <16.971151, 19.078732, 22.301693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335594, 18.679668, 22.470287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.238550, 18.901806, 22.152109>,  <16.180325, 19.035089, 21.961203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.238550, 18.901806, 22.152109>,  <16.335594, 18.679668, 22.470287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238550, 18.901806, 22.152109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525758, -0.764354, -0.373284,
		-0.815303, 0.327650, 0.477415,
		-0.242608, 0.555344, -0.795445,
		16.165768, 19.068409, 21.913475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613014, 18.667456, 22.347349>,  <16.335594, 18.679668, 22.470287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613014, 18.667456, 22.347349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.782872, 18.781197, 22.003531>,  <15.884788, 18.849442, 21.797239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.782872, 18.781197, 22.003531>,  <15.613014, 18.667456, 22.347349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.782872, 18.781197, 22.003531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566262, -0.657358, -0.497220,
		-0.706416, 0.697870, -0.118126,
		0.424646, 0.284354, -0.859546,
		15.910266, 18.866503, 21.745667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.091984, 18.859976, 21.816730>,  <15.613014, 18.667456, 22.347349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.091984, 18.859976, 21.816730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.417902, 18.705849, 21.643461>,  <15.613453, 18.613373, 21.539499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.417902, 18.705849, 21.643461>,  <15.091984, 18.859976, 21.816730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417902, 18.705849, 21.643461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569397, -0.672427, -0.472893,
		-0.109065, 0.631960, -0.767288,
		0.814795, -0.385316, -0.433174,
		15.662341, 18.590254, 21.513510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854912, 18.606773, 21.222008>,  <15.091984, 18.859976, 21.816730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854912, 18.606773, 21.222008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.214497, 18.432022, 21.209322>,  <15.430247, 18.327171, 21.201710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.214497, 18.432022, 21.209322>,  <14.854912, 18.606773, 21.222008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214497, 18.432022, 21.209322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329639, -0.627060, -0.705786,
		0.288453, 0.644930, -0.707714,
		0.898962, -0.436877, -0.031717,
		15.484185, 18.300959, 21.199806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902956, 18.404694, 20.526983>,  <14.854912, 18.606773, 21.222008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902956, 18.404694, 20.526983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193438, 18.202068, 20.712894>,  <15.367726, 18.080492, 20.824442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193438, 18.202068, 20.712894>,  <14.902956, 18.404694, 20.526983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193438, 18.202068, 20.712894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161635, -0.782920, -0.600758,
		0.668208, 0.361148, -0.650438,
		0.726204, -0.506565, 0.464780,
		15.411299, 18.050098, 20.852329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.380078, 18.138168, 19.999702>,  <14.902956, 18.404694, 20.526983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.380078, 18.138168, 19.999702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.438046, 17.903816, 20.318636>,  <15.472826, 17.763205, 20.509996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.438046, 17.903816, 20.318636>,  <15.380078, 18.138168, 19.999702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.438046, 17.903816, 20.318636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040869, -0.808698, -0.586803,
		0.988599, 0.052452, -0.141138,
		0.144917, -0.585882, 0.797334,
		15.481521, 17.728052, 20.557837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.789149, 17.697365, 19.795940>,  <15.380078, 18.138168, 19.999702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.789149, 17.697365, 19.795940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694741, 17.510796, 20.136938>,  <15.638097, 17.398853, 20.341536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694741, 17.510796, 20.136938>,  <15.789149, 17.697365, 19.795940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.694741, 17.510796, 20.136938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284595, -0.871989, -0.398298,
		0.929139, 0.148609, 0.338549,
		-0.236020, -0.466424, 0.852493,
		15.623935, 17.370869, 20.392685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.309578, 17.444815, 20.061407>,  <15.789149, 17.697365, 19.795940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.309578, 17.444815, 20.061407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028053, 17.208946, 20.219868>,  <15.859138, 17.067425, 20.314945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028053, 17.208946, 20.219868>,  <16.309578, 17.444815, 20.061407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028053, 17.208946, 20.219868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500345, -0.807346, -0.312804,
		0.504284, -0.021942, 0.863259,
		-0.703813, -0.589669, 0.396153,
		15.816910, 17.032045, 20.338713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682974, 16.936687, 20.447468>,  <16.309578, 17.444815, 20.061407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682974, 16.936687, 20.447468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327431, 16.770845, 20.369457>,  <16.114105, 16.671341, 20.322651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327431, 16.770845, 20.369457>,  <16.682974, 16.936687, 20.447468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327431, 16.770845, 20.369457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458107, -0.811902, -0.361874,
		-0.008308, -0.410998, 0.911599,
		-0.888858, -0.414603, -0.195026,
		16.060774, 16.646465, 20.310949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746431, 16.310320, 20.605799>,  <16.682974, 16.936687, 20.447468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.746431, 16.310320, 20.605799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.430769, 16.296974, 20.360483>,  <16.241371, 16.288967, 20.213295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.430769, 16.296974, 20.360483>,  <16.746431, 16.310320, 20.605799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.430769, 16.296974, 20.360483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382682, -0.807724, -0.448482,
		-0.480404, -0.588616, 0.650187,
		-0.789155, -0.033363, -0.613287,
		16.194023, 16.286966, 20.176497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.406096, 15.575383, 20.596205>,  <16.746431, 16.310320, 20.605799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.406096, 15.575383, 20.596205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320391, 15.748799, 20.246088>,  <16.268967, 15.852849, 20.036018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320391, 15.748799, 20.246088>,  <16.406096, 15.575383, 20.596205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320391, 15.748799, 20.246088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207710, -0.855384, -0.474525,
		-0.954436, -0.283481, 0.093227,
		-0.214263, 0.433540, -0.875291,
		16.256111, 15.878861, 19.983501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.296034, 15.038576, 20.248173>,  <16.406096, 15.575383, 20.596205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.296034, 15.038576, 20.248173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.334597, 15.311504, 19.958305>,  <16.357735, 15.475262, 19.784386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.334597, 15.311504, 19.958305>,  <16.296034, 15.038576, 20.248173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.334597, 15.311504, 19.958305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403057, -0.692457, -0.598372,
		-0.910083, -0.234396, -0.341770,
		0.096405, 0.682321, -0.724668,
		16.363518, 15.516201, 19.740906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136272, 14.656078, 19.720133>,  <16.296034, 15.038576, 20.248173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136272, 14.656078, 19.720133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337004, 14.974484, 19.584764>,  <16.457441, 15.165528, 19.503544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337004, 14.974484, 19.584764>,  <16.136272, 14.656078, 19.720133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337004, 14.974484, 19.584764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524995, -0.591248, -0.612214,
		-0.687423, 0.129556, -0.714608,
		0.501827, 0.796016, -0.338421,
		16.487553, 15.213289, 19.483238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122416, 14.539965, 18.949095>,  <16.136272, 14.656078, 19.720133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122416, 14.539965, 18.949095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.410515, 14.811110, 19.008072>,  <16.583374, 14.973798, 19.043457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.410515, 14.811110, 19.008072>,  <16.122416, 14.539965, 18.949095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.410515, 14.811110, 19.008072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585580, -0.480135, -0.653121,
		-0.371936, 0.556749, -0.742761,
		0.720250, 0.677865, 0.147442,
		16.626591, 15.014470, 19.052305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402952, 14.666401, 18.321289>,  <16.122416, 14.539965, 18.949095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402952, 14.666401, 18.321289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.701902, 14.813215, 18.542816>,  <16.881273, 14.901304, 18.675732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.701902, 14.813215, 18.542816>,  <16.402952, 14.666401, 18.321289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.701902, 14.813215, 18.542816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657998, -0.524349, -0.540460,
		0.092025, 0.768337, -0.633395,
		0.747375, 0.367036, 0.553818,
		16.926115, 14.923326, 18.708961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963427, 14.987207, 17.893141>,  <16.402952, 14.666401, 18.321289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963427, 14.987207, 17.893141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154039, 14.904109, 18.234844>,  <17.268408, 14.854250, 18.439867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154039, 14.904109, 18.234844>,  <16.963427, 14.987207, 17.893141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154039, 14.904109, 18.234844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759352, -0.392425, -0.519025,
		0.443058, 0.896016, -0.029250,
		0.476533, -0.207747, 0.854258,
		17.296999, 14.841785, 18.491121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635435, 15.114580, 17.674740>,  <16.963427, 14.987207, 17.893141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635435, 15.114580, 17.674740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.634926, 14.898972, 18.011656>,  <17.634621, 14.769607, 18.213806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.634926, 14.898972, 18.011656>,  <17.635435, 15.114580, 17.674740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.634926, 14.898972, 18.011656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689201, -0.610772, -0.389819,
		0.724569, 0.580012, 0.372272,
		-0.001274, -0.539021, 0.842291,
		17.634544, 14.737266, 18.264343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409857, 14.922536, 17.777405>,  <17.635435, 15.114580, 17.674740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.409857, 14.922536, 17.777405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.178274, 14.662565, 17.974342>,  <18.039324, 14.506583, 18.092505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.178274, 14.662565, 17.974342>,  <18.409857, 14.922536, 17.777405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.178274, 14.662565, 17.974342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623546, -0.741995, -0.246240,
		0.525356, 0.164438, 0.834842,
		-0.578957, -0.649926, 0.492346,
		18.004587, 14.467587, 18.122046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871523, 14.431328, 17.993828>,  <18.409857, 14.922536, 17.777405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.871523, 14.431328, 17.993828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.517963, 14.253013, 18.050396>,  <18.305828, 14.146024, 18.084337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.517963, 14.253013, 18.050396>,  <18.871523, 14.431328, 17.993828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517963, 14.253013, 18.050396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400991, -0.877998, -0.261392,
		0.240693, -0.174335, 0.954816,
		-0.883896, -0.445788, 0.141421,
		18.252794, 14.119276, 18.092823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.904232, 13.815858, 18.519106>,  <18.871523, 14.431328, 17.993828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.904232, 13.815858, 18.519106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586065, 13.762727, 18.282576>,  <18.395164, 13.730848, 18.140657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586065, 13.762727, 18.282576>,  <18.904232, 13.815858, 18.519106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586065, 13.762727, 18.282576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285282, -0.942894, -0.171946,
		-0.534720, -0.305463, 0.787888,
		-0.795418, -0.132827, -0.591327,
		18.347441, 13.722878, 18.105177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.613039, 13.077734, 18.594025>,  <18.904232, 13.815858, 18.519106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.613039, 13.077734, 18.594025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.504200, 13.235821, 18.243078>,  <18.438896, 13.330673, 18.032511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.504200, 13.235821, 18.243078>,  <18.613039, 13.077734, 18.594025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504200, 13.235821, 18.243078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292127, -0.834808, -0.466644,
		-0.916857, -0.383273, 0.111694,
		-0.272095, 0.395217, -0.877364,
		18.422571, 13.354386, 17.979870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170717, 12.586543, 18.297377>,  <18.613039, 13.077734, 18.594025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170717, 12.586543, 18.297377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391344, 12.817396, 18.056482>,  <18.523720, 12.955908, 17.911945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391344, 12.817396, 18.056482>,  <18.170717, 12.586543, 18.297377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.391344, 12.817396, 18.056482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431811, -0.815282, -0.385817,
		-0.713660, -0.047247, -0.698897,
		0.551570, 0.577134, -0.602236,
		18.556814, 12.990537, 17.875811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356997, 12.455895, 17.594158>,  <18.170717, 12.586543, 18.297377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.356997, 12.455895, 17.594158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.295609, 12.196464, 17.892365>,  <18.258776, 12.040805, 18.071289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.295609, 12.196464, 17.892365>,  <18.356997, 12.455895, 17.594158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.295609, 12.196464, 17.892365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467974, 0.616779, 0.632917,
		-0.870315, 0.446015, 0.208861,
		-0.153469, -0.648579, 0.745515,
		18.249567, 12.001890, 18.116018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.019739, 11.741475, 17.420208>,  <18.356997, 12.455895, 17.594158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.019739, 11.741475, 17.420208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.907804, 11.595505, 17.065014>,  <17.840643, 11.507923, 16.851896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.907804, 11.595505, 17.065014>,  <18.019739, 11.741475, 17.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.907804, 11.595505, 17.065014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566848, 0.683699, -0.459606,
		0.774838, -0.631969, 0.015533,
		-0.279837, -0.364925, -0.887987,
		17.823853, 11.486027, 16.798618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552895, 11.643683, 16.894236>,  <18.019739, 11.741475, 17.420208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.552895, 11.643683, 16.894236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210480, 11.696925, 16.694443>,  <18.005032, 11.728870, 16.574566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210480, 11.696925, 16.694443>,  <18.552895, 11.643683, 16.894236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.210480, 11.696925, 16.694443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496066, 0.483192, -0.721418,
		0.145323, -0.865337, -0.479659,
		-0.856037, 0.133105, -0.499483,
		17.953669, 11.736856, 16.544598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.643087, 11.344007, 16.269958>,  <18.552895, 11.643683, 16.894236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.643087, 11.344007, 16.269958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369539, 11.633958, 16.236807>,  <18.205410, 11.807929, 16.216917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369539, 11.633958, 16.236807>,  <18.643087, 11.344007, 16.269958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369539, 11.633958, 16.236807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634438, 0.534730, -0.558168,
		-0.360288, -0.434296, -0.825578,
		-0.683872, 0.724880, -0.082878,
		18.164377, 11.851421, 16.211943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535419, 11.419223, 15.556459>,  <18.643087, 11.344007, 16.269958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535419, 11.419223, 15.556459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.478910, 11.748272, 15.776763>,  <18.445005, 11.945702, 15.908945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.478910, 11.748272, 15.776763>,  <18.535419, 11.419223, 15.556459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.478910, 11.748272, 15.776763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659421, 0.493146, -0.567426,
		-0.738381, 0.283021, -0.612121,
		-0.141272, 0.822622, 0.550759,
		18.436529, 11.995058, 15.941991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603907, 12.053960, 15.134795>,  <18.535419, 11.419223, 15.556459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603907, 12.053960, 15.134795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701033, 12.129191, 15.515462>,  <18.759308, 12.174331, 15.743862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701033, 12.129191, 15.515462>,  <18.603907, 12.053960, 15.134795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.701033, 12.129191, 15.515462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808872, 0.502298, -0.305651,
		-0.535506, 0.843992, -0.030167,
		0.242814, 0.188079, 0.951666,
		18.773876, 12.185616, 15.800961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.839724, 11.750319, 14.395390>,  <18.603907, 12.053960, 15.134795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.839724, 11.750319, 14.395390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.813063, 11.881544, 14.018469>,  <18.797066, 11.960279, 13.792316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.813063, 11.881544, 14.018469>,  <18.839724, 11.750319, 14.395390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813063, 11.881544, 14.018469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917012, -0.392357, -0.071735,
		-0.393252, 0.859321, 0.326986,
		-0.066652, 0.328060, -0.942303,
		18.793066, 11.979963, 13.735779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184824, 11.560344, 14.998181>,  <18.839724, 11.750319, 14.395390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184824, 11.560344, 14.998181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.417751, 11.405963, 14.711980>,  <19.557508, 11.313334, 14.540258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.417751, 11.405963, 14.711980>,  <19.184824, 11.560344, 14.998181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.417751, 11.405963, 14.711980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607074, 0.791819, 0.066955,
		0.540709, -0.473354, 0.695392,
		0.582318, -0.385951, -0.715505,
		19.592447, 11.290177, 14.497329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746092, 11.984906, 15.026670>,  <19.184824, 11.560344, 14.998181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746092, 11.984906, 15.026670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788284, 11.785284, 14.682620>,  <19.813601, 11.665511, 14.476190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788284, 11.785284, 14.682620>,  <19.746092, 11.984906, 15.026670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.788284, 11.785284, 14.682620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772670, 0.585615, -0.245024,
		0.625983, -0.638749, 0.447375,
		0.105481, -0.499054, -0.860127,
		19.819929, 11.635568, 14.424582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.442892, 12.054279, 14.861701>,  <19.746092, 11.984906, 15.026670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.442892, 12.054279, 14.861701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.279144, 11.982565, 14.503869>,  <20.180895, 11.939536, 14.289170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.279144, 11.982565, 14.503869>,  <20.442892, 12.054279, 14.861701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.279144, 11.982565, 14.503869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657025, 0.622380, -0.425395,
		0.633035, -0.761905, -0.136989,
		-0.409370, -0.179285, -0.894580,
		20.156334, 11.928779, 14.235495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.978651, 11.827258, 14.372356>,  <20.442892, 12.054279, 14.861701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.978651, 11.827258, 14.372356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.670198, 11.974090, 14.164276>,  <20.485126, 12.062188, 14.039428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.670198, 11.974090, 14.164276>,  <20.978651, 11.827258, 14.372356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670198, 11.974090, 14.164276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553113, 0.790892, -0.261829,
		0.315311, -0.489634, -0.812919,
		-0.771132, 0.367079, -0.520201,
		20.438858, 12.084213, 14.008216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362360, 12.090879, 13.986089>,  <20.978651, 11.827258, 14.372356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362360, 12.090879, 13.986089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011385, 12.260610, 13.896601>,  <20.800800, 12.362448, 13.842908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011385, 12.260610, 13.896601>,  <21.362360, 12.090879, 13.986089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011385, 12.260610, 13.896601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469882, 0.666468, -0.578819,
		-0.096506, -0.613000, -0.784167,
		-0.877438, 0.424325, -0.223719,
		20.748154, 12.387907, 13.829485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.404688, 12.289484, 13.279113>,  <21.362360, 12.090879, 13.986089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.404688, 12.289484, 13.279113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.102606, 12.504703, 13.428871>,  <20.921356, 12.633834, 13.518726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.102606, 12.504703, 13.428871>,  <21.404688, 12.289484, 13.279113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.102606, 12.504703, 13.428871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266273, 0.773734, -0.574834,
		-0.598970, -0.334426, -0.727595,
		-0.755205, 0.538047, 0.374395,
		20.876045, 12.666117, 13.541189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088160, 12.546438, 12.713843>,  <21.404688, 12.289484, 13.279113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088160, 12.546438, 12.713843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.965143, 12.774631, 13.018466>,  <20.891333, 12.911546, 13.201240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.965143, 12.774631, 13.018466>,  <21.088160, 12.546438, 12.713843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.965143, 12.774631, 13.018466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228930, 0.821198, -0.522709,
		-0.923585, 0.013588, -0.383154,
		-0.307543, 0.570481, 0.761557,
		20.872881, 12.945775, 13.246933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680962, 13.075364, 12.329720>,  <21.088160, 12.546438, 12.713843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680962, 13.075364, 12.329720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791042, 13.212588, 12.688958>,  <20.857092, 13.294923, 12.904501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791042, 13.212588, 12.688958>,  <20.680962, 13.075364, 12.329720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791042, 13.212588, 12.688958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425322, 0.794328, -0.433756,
		-0.862186, 0.501350, 0.072690,
		0.275203, 0.343061, 0.898094,
		20.873604, 13.315507, 12.958386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.555805, 13.824200, 12.323595>,  <20.680962, 13.075364, 12.329720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.555805, 13.824200, 12.323595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.856380, 13.762494, 12.580201>,  <21.036726, 13.725471, 12.734165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.856380, 13.762494, 12.580201>,  <20.555805, 13.824200, 12.323595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.856380, 13.762494, 12.580201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537841, 0.706404, -0.460131,
		-0.382188, 0.690794, 0.613789,
		0.751438, -0.154264, 0.641516,
		21.081812, 13.716215, 12.772656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738808, 14.463435, 12.366837>,  <20.555805, 13.824200, 12.323595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738808, 14.463435, 12.366837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045446, 14.251378, 12.511765>,  <21.229429, 14.124144, 12.598722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045446, 14.251378, 12.511765>,  <20.738808, 14.463435, 12.366837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045446, 14.251378, 12.511765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639474, 0.579053, -0.505737,
		0.058310, 0.619392, 0.782914,
		0.766598, -0.530142, 0.362320,
		21.275425, 14.092336, 12.620461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.224239, 14.947968, 12.310896>,  <20.738808, 14.463435, 12.366837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.224239, 14.947968, 12.310896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.434572, 14.613564, 12.373618>,  <21.560772, 14.412921, 12.411251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.434572, 14.613564, 12.373618>,  <21.224239, 14.947968, 12.310896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.434572, 14.613564, 12.373618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779461, 0.399805, -0.482283,
		0.340502, 0.375823, 0.861867,
		0.525832, -0.836010, 0.156805,
		21.592321, 14.362761, 12.420659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.834948, 15.176001, 12.661233>,  <21.224239, 14.947968, 12.310896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.834948, 15.176001, 12.661233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.911552, 14.807665, 12.525364>,  <21.957516, 14.586663, 12.443843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.911552, 14.807665, 12.525364>,  <21.834948, 15.176001, 12.661233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.911552, 14.807665, 12.525364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796046, 0.348173, -0.495062,
		0.574138, -0.175584, 0.799710,
		0.191513, -0.920840, -0.339672,
		21.969006, 14.531413, 12.423462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.541895, 15.033607, 12.843699>,  <21.834948, 15.176001, 12.661233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.541895, 15.033607, 12.843699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.455332, 14.793640, 12.535604>,  <22.403393, 14.649660, 12.350746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.455332, 14.793640, 12.535604>,  <22.541895, 15.033607, 12.843699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.455332, 14.793640, 12.535604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834071, 0.296445, -0.465237,
		0.507437, -0.743114, 0.436221,
		-0.216409, -0.599918, -0.770237,
		22.390409, 14.613665, 12.304532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.155224, 14.598274, 12.599317>,  <22.541895, 15.033607, 12.843699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.155224, 14.598274, 12.599317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.922787, 14.664732, 12.280637>,  <22.783325, 14.704606, 12.089429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.922787, 14.664732, 12.280637>,  <23.155224, 14.598274, 12.599317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.922787, 14.664732, 12.280637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793496, 0.333170, -0.509276,
		0.180823, -0.928113, -0.325437,
		-0.581091, 0.166144, -0.796699,
		22.748459, 14.714575, 12.041627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.551113, 14.378736, 12.060023>,  <23.155224, 14.598274, 12.599317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.551113, 14.378736, 12.060023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.273579, 14.578071, 11.852079>,  <23.107058, 14.697672, 11.727313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.273579, 14.578071, 11.852079>,  <23.551113, 14.378736, 12.060023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.273579, 14.578071, 11.852079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695325, 0.275744, -0.663692,
		-0.187395, -0.821963, -0.537828,
		-0.693834, 0.498338, -0.519859,
		23.065428, 14.727572, 11.696121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.737291, 14.257590, 11.399686>,  <23.551113, 14.378736, 12.060023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.737291, 14.257590, 11.399686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.506012, 14.583398, 11.380715>,  <23.367245, 14.778882, 11.369333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.506012, 14.583398, 11.380715>,  <23.737291, 14.257590, 11.399686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.506012, 14.583398, 11.380715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583431, 0.372124, -0.721895,
		-0.570349, -0.445067, -0.690375,
		-0.578197, 0.814518, -0.047426,
		23.332554, 14.827753, 11.366488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.472977, 14.363736, 10.866042>,  <23.737291, 14.257590, 11.399686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.472977, 14.363736, 10.866042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.471294, 14.748697, 10.974680>,  <23.470285, 14.979673, 11.039863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.471294, 14.748697, 10.974680>,  <23.472977, 14.363736, 10.866042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.471294, 14.748697, 10.974680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562551, 0.226822, -0.795040,
		-0.826752, 0.149444, -0.542354,
		-0.004204, 0.962402, 0.271595,
		23.470034, 15.037418, 11.056159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.422760, 14.712611, 10.237926>,  <23.472977, 14.363736, 10.866042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.422760, 14.712611, 10.237926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.563175, 14.980429, 10.499761>,  <23.647425, 15.141119, 10.656862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.563175, 14.980429, 10.499761>,  <23.422760, 14.712611, 10.237926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.563175, 14.980429, 10.499761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539273, 0.426936, -0.725886,
		-0.765479, 0.607814, -0.211196,
		0.351036, 0.669543, 0.654588,
		23.668486, 15.181292, 10.696137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.552633, 15.279772, 9.831440>,  <23.422760, 14.712611, 10.237926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.552633, 15.279772, 9.831440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.734228, 15.399928, 10.166978>,  <23.843185, 15.472022, 10.368300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.734228, 15.399928, 10.166978>,  <23.552633, 15.279772, 9.831440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.734228, 15.399928, 10.166978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596725, 0.596635, -0.536606,
		-0.661676, 0.744172, 0.091614,
		0.453987, 0.300391, 0.838845,
		23.870424, 15.490046, 10.418632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.504236, 16.021873, 9.791372>,  <23.552633, 15.279772, 9.831440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.504236, 16.021873, 9.791372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.804049, 15.909439, 10.031103>,  <23.983936, 15.841979, 10.174942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.804049, 15.909439, 10.031103>,  <23.504236, 16.021873, 9.791372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.804049, 15.909439, 10.031103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627840, 0.588812, -0.509036,
		-0.209809, 0.757821, 0.617809,
		0.749531, -0.281084, 0.599328,
		24.028908, 15.825113, 10.210901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.792805, 16.603867, 9.971004>,  <23.504236, 16.021873, 9.791372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.792805, 16.603867, 9.971004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.064623, 16.321466, 10.050788>,  <24.227713, 16.152027, 10.098658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.064623, 16.321466, 10.050788>,  <23.792805, 16.603867, 9.971004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.064623, 16.321466, 10.050788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693671, 0.529817, -0.487971,
		0.238831, 0.469956, 0.849765,
		0.679544, -0.706000, 0.199458,
		24.268486, 16.109667, 10.110625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.154284, 17.142271, 10.430542>,  <23.792805, 16.603867, 9.971004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.154284, 17.142271, 10.430542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.977568, 17.356825, 10.718184>,  <23.871538, 17.485558, 10.890770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.977568, 17.356825, 10.718184>,  <24.154284, 17.142271, 10.430542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.977568, 17.356825, 10.718184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054579, -0.816158, 0.575246,
		0.895457, 0.214890, 0.389846,
		-0.441790, 0.536385, 0.719105,
		23.845030, 17.517740, 10.933916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.506483, 17.183338, 11.136353>,  <24.154284, 17.142271, 10.430542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.506483, 17.183338, 11.136353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106895, 17.165756, 11.131772>,  <23.867144, 17.155207, 11.129024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106895, 17.165756, 11.131772>,  <24.506483, 17.183338, 11.136353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.106895, 17.165756, 11.131772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032122, -0.861871, 0.506110,
		-0.032115, 0.505220, 0.862393,
		-0.998968, -0.043956, -0.011450,
		23.807205, 17.152569, 11.128337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920704, 17.424618, 10.595874>,  <24.506483, 17.183338, 11.136353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920704, 17.424618, 10.595874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294827, 17.519287, 10.490660>,  <25.519300, 17.576090, 10.427531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294827, 17.519287, 10.490660>,  <24.920704, 17.424618, 10.595874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294827, 17.519287, 10.490660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288744, -0.080834, 0.953988,
		0.204524, -0.968220, -0.143944,
		0.935306, 0.236676, -0.263035,
		25.575418, 17.590290, 10.411749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493683, 17.083113, 11.054102>,  <24.920704, 17.424618, 10.595874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493683, 17.083113, 11.054102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601652, 17.446789, 10.927288>,  <25.666433, 17.664995, 10.851200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601652, 17.446789, 10.927288>,  <25.493683, 17.083113, 11.054102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601652, 17.446789, 10.927288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357222, 0.211204, 0.909827,
		0.894167, -0.358835, -0.267775,
		0.269923, 0.909192, -0.317035,
		25.682629, 17.719547, 10.832177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099411, 17.234703, 11.380594>,  <25.493683, 17.083113, 11.054102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099411, 17.234703, 11.380594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957306, 17.592215, 11.271090>,  <25.872044, 17.806723, 11.205386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957306, 17.592215, 11.271090>,  <26.099411, 17.234703, 11.380594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957306, 17.592215, 11.271090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324427, 0.392555, 0.860609,
		0.876662, 0.216924, -0.429426,
		-0.355260, 0.893781, -0.273762,
		25.850727, 17.860350, 11.188961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615551, 17.819418, 11.488083>,  <26.099411, 17.234703, 11.380594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615551, 17.819418, 11.488083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232805, 17.931974, 11.517003>,  <26.003157, 17.999508, 11.534355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232805, 17.931974, 11.517003>,  <26.615551, 17.819418, 11.488083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232805, 17.931974, 11.517003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164703, 0.320387, 0.932859,
		0.239333, 0.904529, -0.352913,
		-0.956866, 0.281390, 0.072300,
		25.945745, 18.016392, 11.538693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511847, 18.587822, 11.821237>,  <26.615551, 17.819418, 11.488083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511847, 18.587822, 11.821237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189381, 18.354309, 11.859805>,  <25.995901, 18.214201, 11.882946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189381, 18.354309, 11.859805>,  <26.511847, 18.587822, 11.821237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189381, 18.354309, 11.859805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052828, 0.233321, 0.970964,
		-0.589330, 0.777662, -0.218935,
		-0.806163, -0.583784, 0.096421,
		25.947531, 18.179174, 11.888731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223581, 18.320957, 12.433426>,  <26.511847, 18.587822, 11.821237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223581, 18.320957, 12.433426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548180, 18.319901, 12.667168>,  <26.742939, 18.319265, 12.807412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548180, 18.319901, 12.667168>,  <26.223581, 18.320957, 12.433426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548180, 18.319901, 12.667168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533845, -0.410064, 0.739498,
		0.237667, -0.912053, -0.334176,
		0.811495, -0.002644, 0.584353,
		26.791628, 18.319107, 12.842474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559614, 17.610525, 12.622821>,  <26.223581, 18.320957, 12.433426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559614, 17.610525, 12.622821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616985, 17.881659, 12.911256>,  <26.651407, 18.044338, 13.084317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616985, 17.881659, 12.911256>,  <26.559614, 17.610525, 12.622821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616985, 17.881659, 12.911256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384085, -0.633386, 0.671789,
		0.912090, -0.373312, 0.169502,
		0.143427, 0.677835, 0.721088,
		26.660013, 18.085009, 13.127583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086859, 17.360167, 13.159190>,  <26.559614, 17.610525, 12.622821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086859, 17.360167, 13.159190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804626, 17.611389, 13.290462>,  <26.635286, 17.762123, 13.369225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804626, 17.611389, 13.290462>,  <27.086859, 17.360167, 13.159190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804626, 17.611389, 13.290462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412148, -0.740443, 0.530921,
		0.576446, 0.239350, 0.781295,
		-0.705580, 0.628057, 0.328178,
		26.592953, 17.799807, 13.388915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038521, 17.189644, 13.878690>,  <27.086859, 17.360167, 13.159190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038521, 17.189644, 13.878690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697750, 17.352747, 13.747264>,  <26.493288, 17.450609, 13.668408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697750, 17.352747, 13.747264>,  <27.038521, 17.189644, 13.878690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697750, 17.352747, 13.747264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522182, -0.708641, 0.474503,
		-0.039352, 0.575812, 0.816635,
		-0.851926, 0.407760, -0.328565,
		26.442173, 17.475075, 13.648694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568005, 17.317005, 14.531978>,  <27.038521, 17.189644, 13.878690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568005, 17.317005, 14.531978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329056, 17.318323, 14.211195>,  <26.185686, 17.319115, 14.018725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329056, 17.318323, 14.211195>,  <26.568005, 17.317005, 14.531978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329056, 17.318323, 14.211195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531093, -0.750910, 0.392523,
		-0.600902, 0.660396, 0.450325,
		-0.597374, 0.003297, -0.801956,
		26.149843, 17.319313, 13.970608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875021, 17.320887, 14.819203>,  <26.568005, 17.317005, 14.531978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875021, 17.320887, 14.819203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839035, 17.207922, 14.437177>,  <25.817444, 17.140144, 14.207961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839035, 17.207922, 14.437177>,  <25.875021, 17.320887, 14.819203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839035, 17.207922, 14.437177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609388, -0.742884, 0.277073,
		-0.787752, 0.606933, -0.105262,
		-0.089967, -0.282411, -0.955066,
		25.812044, 17.123199, 14.150657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126223, 17.140457, 14.801467>,  <25.875021, 17.320887, 14.819203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126223, 17.140457, 14.801467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314167, 16.946890, 14.506156>,  <25.426933, 16.830750, 14.328970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314167, 16.946890, 14.506156>,  <25.126223, 17.140457, 14.801467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314167, 16.946890, 14.506156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556159, -0.811763, 0.178128,
		-0.685505, 0.326903, -0.650552,
		0.469863, -0.483917, -0.738277,
		25.455126, 16.801714, 14.284673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572256, 16.797810, 14.438610>,  <25.126223, 17.140457, 14.801467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572256, 16.797810, 14.438610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914860, 16.603117, 14.369924>,  <25.120422, 16.486301, 14.328712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914860, 16.603117, 14.369924>,  <24.572256, 16.797810, 14.438610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914860, 16.603117, 14.369924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468295, -0.872736, 0.137951,
		-0.217007, -0.037743, -0.975440,
		0.856509, -0.486731, -0.171715,
		25.171812, 16.457098, 14.318409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475483, 16.234308, 13.823881>,  <24.572256, 16.797810, 14.438610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475483, 16.234308, 13.823881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790405, 16.129868, 14.047299>,  <24.979359, 16.067204, 14.181351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790405, 16.129868, 14.047299>,  <24.475483, 16.234308, 13.823881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790405, 16.129868, 14.047299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418229, -0.891784, 0.172642,
		0.453025, -0.369522, -0.811309,
		0.787307, -0.261101, 0.558545,
		25.026598, 16.051537, 14.214863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582115, 15.520755, 13.655969>,  <24.475483, 16.234308, 13.823881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582115, 15.520755, 13.655969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810129, 15.560061, 13.982259>,  <24.946938, 15.583644, 14.178033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810129, 15.560061, 13.982259>,  <24.582115, 15.520755, 13.655969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810129, 15.560061, 13.982259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311997, -0.892568, 0.325546,
		0.760079, -0.440076, -0.478135,
		0.570033, 0.098265, 0.815724,
		24.981138, 15.589540, 14.226976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861784, 14.879430, 13.799789>,  <24.582115, 15.520755, 13.655969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861784, 14.879430, 13.799789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902185, 15.060645, 14.154090>,  <24.926426, 15.169374, 14.366671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902185, 15.060645, 14.154090>,  <24.861784, 14.879430, 13.799789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902185, 15.060645, 14.154090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404948, -0.794496, 0.452540,
		0.908744, -0.404391, 0.103211,
		0.101002, 0.453038, 0.885751,
		24.932486, 15.196556, 14.419815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940500, 14.362211, 14.277583>,  <24.861784, 14.879430, 13.799789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940500, 14.362211, 14.277583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831099, 14.660586, 14.520490>,  <24.765457, 14.839611, 14.666233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831099, 14.660586, 14.520490>,  <24.940500, 14.362211, 14.277583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.831099, 14.660586, 14.520490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437999, -0.658669, 0.611810,
		0.856359, -0.098648, 0.506870,
		-0.273506, 0.745938, 0.607265,
		24.749046, 14.884368, 14.702669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209574, 14.198094, 14.942942>,  <24.940500, 14.362211, 14.277583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209574, 14.198094, 14.942942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894926, 14.442925, 14.975417>,  <24.706139, 14.589825, 14.994903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894926, 14.442925, 14.975417>,  <25.209574, 14.198094, 14.942942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894926, 14.442925, 14.975417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486288, -0.695178, 0.529388,
		0.380468, 0.376944, 0.844486,
		-0.786618, 0.612079, 0.081190,
		24.658941, 14.626549, 14.999774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076874, 14.285069, 15.603837>,  <25.209574, 14.198094, 14.942942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076874, 14.285069, 15.603837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719700, 14.391932, 15.458898>,  <24.505396, 14.456050, 15.371934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719700, 14.391932, 15.458898>,  <25.076874, 14.285069, 15.603837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719700, 14.391932, 15.458898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447913, -0.608046, 0.655481,
		-0.045207, 0.747601, 0.662608,
		-0.892934, 0.267158, -0.362347,
		24.451820, 14.472079, 15.350193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686432, 14.301727, 16.236885>,  <25.076874, 14.285069, 15.603837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686432, 14.301727, 16.236885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416107, 14.281572, 15.942746>,  <24.253912, 14.269480, 15.766262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416107, 14.281572, 15.942746>,  <24.686432, 14.301727, 16.236885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.416107, 14.281572, 15.942746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537912, -0.648352, 0.538786,
		-0.503913, 0.759672, 0.411060,
		-0.675812, -0.050387, -0.735349,
		24.213364, 14.266457, 15.722141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033741, 14.358433, 16.572477>,  <24.686432, 14.301727, 16.236885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033741, 14.358433, 16.572477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.929396, 14.198487, 16.221010>,  <23.866789, 14.102520, 16.010130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.929396, 14.198487, 16.221010>,  <24.033741, 14.358433, 16.572477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.929396, 14.198487, 16.221010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676445, -0.573658, 0.461885,
		-0.688748, 0.714859, -0.120841,
		-0.260862, -0.399865, -0.878669,
		23.851137, 14.078527, 15.957410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.818634, 13.714489, 16.832607>,  <24.033741, 14.358433, 16.572477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.818634, 13.714489, 16.832607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022326, 13.743824, 17.175608>,  <24.144541, 13.761425, 17.381409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022326, 13.743824, 17.175608>,  <23.818634, 13.714489, 16.832607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.022326, 13.743824, 17.175608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034332, 0.997301, -0.064907,
		-0.859947, 0.003613, 0.510371,
		0.509228, 0.073338, 0.857502,
		24.175095, 13.765825, 17.432858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.407488, 14.143307, 17.310423>,  <23.818634, 13.714489, 16.832607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.407488, 14.143307, 17.310423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.788383, 14.167158, 17.430212>,  <24.016920, 14.181469, 17.502085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.788383, 14.167158, 17.430212>,  <23.407488, 14.143307, 17.310423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.788383, 14.167158, 17.430212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049702, 0.997936, -0.040664,
		-0.301280, 0.023837, 0.953238,
		0.952239, 0.059629, 0.299473,
		24.074055, 14.185047, 17.520054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.497593, 14.589238, 18.020802>,  <23.407488, 14.143307, 17.310423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.497593, 14.589238, 18.020802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.815329, 14.584114, 17.777866>,  <24.005970, 14.581039, 17.632105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.815329, 14.584114, 17.777866>,  <23.497593, 14.589238, 18.020802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.815329, 14.584114, 17.777866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092753, 0.985497, -0.142099,
		0.600349, 0.169208, 0.781632,
		0.794341, -0.012810, -0.607337,
		24.053631, 14.580271, 17.595665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992121, 15.216729, 18.082129>,  <23.497593, 14.589238, 18.020802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992121, 15.216729, 18.082129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964273, 15.103211, 17.699587>,  <23.947565, 15.035101, 17.470062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964273, 15.103211, 17.699587>,  <23.992121, 15.216729, 18.082129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.964273, 15.103211, 17.699587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170109, 0.948016, -0.268937,
		0.982963, 0.143961, -0.114278,
		-0.069620, -0.283795, -0.956354,
		23.943388, 15.018073, 17.412680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.388344, 15.560381, 17.598289>,  <23.992121, 15.216729, 18.082129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.388344, 15.560381, 17.598289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.051191, 15.442978, 17.417889>,  <23.848900, 15.372537, 17.309649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.051191, 15.442978, 17.417889>,  <24.388344, 15.560381, 17.598289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.051191, 15.442978, 17.417889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123001, 0.921044, -0.369525,
		0.523852, -0.255992, -0.812433,
		-0.842882, -0.293506, -0.451003,
		23.798326, 15.354926, 17.282587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118279, 15.293839, 17.359209>,  <24.388344, 15.560381, 17.598289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118279, 15.293839, 17.359209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221212, 14.907319, 17.362009>,  <25.282972, 14.675407, 17.363689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221212, 14.907319, 17.362009>,  <25.118279, 15.293839, 17.359209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.221212, 14.907319, 17.362009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044932, -0.019203, -0.998806,
		0.965278, 0.256711, -0.048359,
		0.257333, -0.966298, 0.007002,
		25.298412, 14.617430, 17.364109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850338, 15.171615, 16.967289>,  <25.118279, 15.293839, 17.359209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850338, 15.171615, 16.967289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520891, 14.946066, 16.991646>,  <25.323223, 14.810737, 17.006260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520891, 14.946066, 16.991646>,  <25.850338, 15.171615, 16.967289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520891, 14.946066, 16.991646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108646, 0.051490, -0.992746,
		0.556647, -0.824255, -0.103670,
		-0.823614, -0.563872, 0.060890,
		25.273808, 14.776904, 17.009912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956055, 14.708257, 16.445179>,  <25.850338, 15.171615, 16.967289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956055, 14.708257, 16.445179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566715, 14.703424, 16.536783>,  <25.333111, 14.700523, 16.591745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566715, 14.703424, 16.536783>,  <25.956055, 14.708257, 16.445179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566715, 14.703424, 16.536783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228965, -0.004894, -0.973422,
		0.012883, -0.999915, 0.001997,
		-0.973349, -0.012084, 0.229009,
		25.274710, 14.699799, 16.605486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926529, 14.570187, 15.781362>,  <25.956055, 14.708257, 16.445179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926529, 14.570187, 15.781362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901186, 14.751786, 15.425863>,  <25.885981, 14.860746, 15.212564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901186, 14.751786, 15.425863>,  <25.926529, 14.570187, 15.781362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901186, 14.751786, 15.425863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990119, 0.140225, 0.001047,
		0.125100, -0.879899, -0.458397,
		-0.063357, 0.453999, -0.888747,
		25.882179, 14.887986, 15.159239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366652, 14.310575, 15.301025>,  <25.926529, 14.570187, 15.781362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366652, 14.310575, 15.301025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314198, 14.696867, 15.211434>,  <26.282724, 14.928642, 15.157680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314198, 14.696867, 15.211434>,  <26.366652, 14.310575, 15.301025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314198, 14.696867, 15.211434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990783, 0.119936, -0.062962,
		-0.033941, -0.230170, -0.972558,
		-0.131136, 0.965732, -0.223978,
		26.274857, 14.986587, 15.144241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843687, 14.657758, 14.822742>,  <26.366652, 14.310575, 15.301025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843687, 14.657758, 14.822742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742413, 14.939196, 15.088329>,  <26.681648, 15.108058, 15.247682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742413, 14.939196, 15.088329>,  <26.843687, 14.657758, 14.822742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742413, 14.939196, 15.088329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959104, 0.272343, 0.077129,
		-0.126559, 0.656342, -0.743773,
		-0.253184, 0.703594, 0.663968,
		26.666458, 15.150274, 15.287519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.431292, 22.970453, 20.214582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.124001, 22.883554, 20.455458>,  <13.939626, 22.831415, 20.599983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.124001, 22.883554, 20.455458>,  <14.431292, 22.970453, 20.214582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124001, 22.883554, 20.455458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134655, -0.864779, -0.483762,
		0.625856, -0.452727, 0.635092,
		-0.768226, -0.217247, 0.602189,
		13.893533, 22.818380, 20.636114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553494, 22.310658, 20.371378>,  <14.431292, 22.970453, 20.214582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.553494, 22.310658, 20.371378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.160677, 22.364737, 20.424011>,  <13.924987, 22.397184, 20.455591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.160677, 22.364737, 20.424011>,  <14.553494, 22.310658, 20.371378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.160677, 22.364737, 20.424011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185578, -0.817795, -0.544769,
		0.033955, -0.559405, 0.828199,
		-0.982043, 0.135198, 0.131582,
		13.866064, 22.405296, 20.463486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.345850, 21.664167, 20.393911>,  <14.553494, 22.310658, 20.371378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.345850, 21.664167, 20.393911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.001954, 21.855749, 20.322975>,  <13.795616, 21.970699, 20.280415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.001954, 21.855749, 20.322975>,  <14.345850, 21.664167, 20.393911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001954, 21.855749, 20.322975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323112, -0.778973, -0.537401,
		-0.395533, -0.404724, 0.824470,
		-0.859740, 0.478956, -0.177338,
		13.744032, 21.999435, 20.269773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.834855, 21.168259, 20.516912>,  <14.345850, 21.664167, 20.393911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.834855, 21.168259, 20.516912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.671057, 21.450956, 20.286148>,  <13.572778, 21.620575, 20.147690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.671057, 21.450956, 20.286148>,  <13.834855, 21.168259, 20.516912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671057, 21.450956, 20.286148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279697, -0.699167, -0.657978,
		-0.868379, -0.108079, 0.483980,
		-0.409497, 0.706742, -0.576913,
		13.548207, 21.662979, 20.113075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.142808, 20.931099, 20.425844>,  <13.834855, 21.168259, 20.516912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.142808, 20.931099, 20.425844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.211279, 21.193478, 20.131788>,  <13.252361, 21.350904, 19.955355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.211279, 21.193478, 20.131788>,  <13.142808, 20.931099, 20.425844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211279, 21.193478, 20.131788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263504, -0.688491, -0.675681,
		-0.949349, 0.309373, 0.054991,
		0.171177, 0.655948, -0.735140,
		13.262632, 21.390263, 19.911245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.538528, 20.964056, 19.952688>,  <13.142808, 20.931099, 20.425844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.538528, 20.964056, 19.952688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.841030, 21.093155, 19.725035>,  <13.022532, 21.170614, 19.588442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.841030, 21.093155, 19.725035>,  <12.538528, 20.964056, 19.952688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.841030, 21.093155, 19.725035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264412, -0.644909, -0.717063,
		-0.598469, 0.692767, -0.402377,
		0.756254, 0.322747, -0.569134,
		13.067906, 21.189980, 19.554295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.326048, 20.838579, 19.352793>,  <12.538528, 20.964056, 19.952688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.326048, 20.838579, 19.352793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.715385, 20.889971, 19.276800>,  <12.948988, 20.920807, 19.231205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.715385, 20.889971, 19.276800>,  <12.326048, 20.838579, 19.352793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715385, 20.889971, 19.276800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055546, -0.671638, -0.738794,
		-0.222520, 0.729654, -0.646599,
		0.973344, 0.128481, -0.189982,
		13.007389, 20.928514, 19.219805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.463487, 21.037561, 18.702656>,  <12.326048, 20.838579, 19.352793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.463487, 21.037561, 18.702656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.801869, 20.857323, 18.816723>,  <13.004899, 20.749180, 18.885162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.801869, 20.857323, 18.816723>,  <12.463487, 21.037561, 18.702656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.801869, 20.857323, 18.816723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099543, -0.658808, -0.745696,
		0.523878, 0.602441, -0.602177,
		0.845957, -0.450597, 0.285167,
		13.055656, 20.722143, 18.902273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.852897, 20.899891, 18.062786>,  <12.463487, 21.037561, 18.702656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.852897, 20.899891, 18.062786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.023913, 20.657276, 18.330912>,  <13.126524, 20.511707, 18.491787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.023913, 20.657276, 18.330912>,  <12.852897, 20.899891, 18.062786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.023913, 20.657276, 18.330912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080099, -0.713167, -0.696403,
		0.900439, 0.351433, -0.256326,
		0.427543, -0.606537, 0.670313,
		13.152176, 20.475315, 18.532005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.355159, 20.445240, 17.706501>,  <12.852897, 20.899891, 18.062786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.355159, 20.445240, 17.706501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.297428, 20.239836, 18.044844>,  <13.262790, 20.116592, 18.247850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.297428, 20.239836, 18.044844>,  <13.355159, 20.445240, 17.706501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.297428, 20.239836, 18.044844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299866, -0.837311, -0.457156,
		0.943001, 0.187664, 0.274831,
		-0.144327, -0.513510, 0.845859,
		13.254130, 20.085783, 18.298601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.053000, 20.114378, 17.901525>,  <13.355159, 20.445240, 17.706501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.053000, 20.114378, 17.901525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.741271, 19.929028, 18.070257>,  <13.554234, 19.817818, 18.171495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.741271, 19.929028, 18.070257>,  <14.053000, 20.114378, 17.901525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.741271, 19.929028, 18.070257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410746, -0.886141, -0.214573,
		0.473226, 0.006042, 0.880920,
		-0.779323, -0.463376, 0.421827,
		13.507474, 19.790014, 18.196806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.382409, 19.485371, 17.962503>,  <14.053000, 20.114378, 17.901525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.382409, 19.485371, 17.962503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.994821, 19.419792, 18.036491>,  <13.762267, 19.380445, 18.080885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.994821, 19.419792, 18.036491>,  <14.382409, 19.485371, 17.962503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.994821, 19.419792, 18.036491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091144, -0.932620, -0.349160,
		0.229751, -0.321467, 0.918626,
		-0.968973, -0.163947, 0.184971,
		13.704129, 19.370607, 18.091982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.329653, 18.837555, 18.215006>,  <14.382409, 19.485371, 17.962503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.329653, 18.837555, 18.215006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.958091, 18.909225, 18.085373>,  <13.735153, 18.952227, 18.007593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.958091, 18.909225, 18.085373>,  <14.329653, 18.837555, 18.215006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958091, 18.909225, 18.085373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008268, -0.864901, -0.501875,
		-0.370223, -0.468874, 0.801930,
		-0.928906, 0.179175, -0.324083,
		13.679419, 18.962978, 17.988148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.987429, 18.247499, 18.435598>,  <14.329653, 18.837555, 18.215006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.987429, 18.247499, 18.435598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.732008, 18.402967, 18.169910>,  <13.578755, 18.496248, 18.010498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.732008, 18.402967, 18.169910>,  <13.987429, 18.247499, 18.435598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.732008, 18.402967, 18.169910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034527, -0.847756, -0.529262,
		-0.768803, -0.360895, 0.527917,
		-0.638553, 0.388671, -0.664218,
		13.540442, 18.519569, 17.970644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.425883, 17.756210, 18.286289>,  <13.987429, 18.247499, 18.435598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.425883, 17.756210, 18.286289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.443027, 17.985735, 17.959145>,  <13.453313, 18.123451, 17.762857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.443027, 17.985735, 17.959145>,  <13.425883, 17.756210, 18.286289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.443027, 17.985735, 17.959145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001247, -0.818646, -0.574297,
		-0.999080, 0.023594, -0.035801,
		0.042858, 0.573814, -0.817864,
		13.455884, 18.157879, 17.713785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.884266, 17.531218, 17.911766>,  <13.425883, 17.756210, 18.286289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.884266, 17.531218, 17.911766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.149831, 17.701031, 17.665516>,  <13.309170, 17.802919, 17.517767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.149831, 17.701031, 17.665516>,  <12.884266, 17.531218, 17.911766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.149831, 17.701031, 17.665516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090151, -0.771794, -0.629450,
		-0.742356, 0.473399, -0.474131,
		0.663912, 0.424533, -0.615623,
		13.349005, 17.828390, 17.480829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.705967, 17.385653, 17.252991>,  <12.884266, 17.531218, 17.911766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.705967, 17.385653, 17.252991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.091339, 17.480970, 17.203978>,  <13.322562, 17.538162, 17.174570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.091339, 17.480970, 17.203978>,  <12.705967, 17.385653, 17.252991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.091339, 17.480970, 17.203978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102582, -0.750464, -0.652902,
		-0.247542, 0.616457, -0.747465,
		0.963431, 0.238297, -0.122534,
		13.380368, 17.552460, 17.167217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.744638, 17.440388, 16.451117>,  <12.705967, 17.385653, 17.252991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.744638, 17.440388, 16.451117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.107397, 17.404156, 16.615717>,  <13.325052, 17.382418, 16.714478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.107397, 17.404156, 16.615717>,  <12.744638, 17.440388, 16.451117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.107397, 17.404156, 16.615717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324611, -0.472456, -0.819398,
		0.268635, 0.876688, -0.399066,
		0.906897, -0.090578, 0.411501,
		13.379466, 17.376982, 16.739166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.198960, 17.462704, 15.898018>,  <12.744638, 17.440388, 16.451117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.198960, 17.462704, 15.898018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.411411, 17.287689, 16.188250>,  <13.538881, 17.182680, 16.362389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.411411, 17.287689, 16.188250>,  <13.198960, 17.462704, 15.898018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.411411, 17.287689, 16.188250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322379, -0.687590, -0.650609,
		0.783566, 0.579468, -0.224145,
		0.531127, -0.437535, 0.725580,
		13.570749, 17.156429, 16.405924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928082, 17.399359, 15.629976>,  <13.198960, 17.462704, 15.898018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928082, 17.399359, 15.629976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.857545, 17.144867, 15.930407>,  <13.815223, 16.992172, 16.110664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.857545, 17.144867, 15.930407>,  <13.928082, 17.399359, 15.629976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.857545, 17.144867, 15.930407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528978, -0.704739, -0.472785,
		0.830112, 0.313931, 0.460827,
		-0.176341, -0.636231, 0.751075,
		13.804643, 16.953997, 16.155729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631397, 17.032349, 15.782055>,  <13.928082, 17.399359, 15.629976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631397, 17.032349, 15.782055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.312547, 16.814114, 15.885533>,  <14.121237, 16.683172, 15.947620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.312547, 16.814114, 15.885533>,  <14.631397, 17.032349, 15.782055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.312547, 16.814114, 15.885533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432546, -0.814899, -0.385802,
		0.421299, -0.195635, 0.885570,
		-0.797127, -0.545588, 0.258695,
		14.073409, 16.650436, 15.963141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.873609, 16.388905, 16.151670>,  <14.631397, 17.032349, 15.782055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.873609, 16.388905, 16.151670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.504520, 16.308859, 16.019886>,  <14.283068, 16.260832, 15.940816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.504520, 16.308859, 16.019886>,  <14.873609, 16.388905, 16.151670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504520, 16.308859, 16.019886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351104, -0.789091, -0.504046,
		-0.159107, -0.580767, 0.798370,
		-0.922719, -0.200113, -0.329459,
		14.227705, 16.248825, 15.921048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237645, 16.172194, 16.742748>,  <14.873609, 16.388905, 16.151670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237645, 16.172194, 16.742748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.513566, 15.892453, 16.667831>,  <15.679119, 15.724608, 16.622881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.513566, 15.892453, 16.667831>,  <15.237645, 16.172194, 16.742748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.513566, 15.892453, 16.667831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662892, 0.506069, 0.551786,
		-0.291111, -0.504777, 0.812683,
		0.689803, -0.699352, -0.187290,
		15.720507, 15.682648, 16.611645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.484221, 15.890891, 17.433807>,  <15.237645, 16.172194, 16.742748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.484221, 15.890891, 17.433807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.759375, 15.845682, 17.147020>,  <15.924467, 15.818557, 16.974949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.759375, 15.845682, 17.147020>,  <15.484221, 15.890891, 17.433807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759375, 15.845682, 17.147020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605976, 0.633141, 0.481588,
		0.399510, -0.765741, 0.504016,
		0.687884, -0.113023, -0.716966,
		15.965740, 15.811775, 16.931931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134005, 15.794131, 17.872463>,  <15.484221, 15.890891, 17.433807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134005, 15.794131, 17.872463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.209278, 15.919547, 17.500166>,  <16.254442, 15.994797, 17.276789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.209278, 15.919547, 17.500166>,  <16.134005, 15.794131, 17.872463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209278, 15.919547, 17.500166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556924, 0.746512, 0.364081,
		0.808964, -0.586867, -0.034135,
		0.188185, 0.313539, -0.930741,
		16.265734, 16.013609, 17.220943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812136, 16.022491, 17.960173>,  <16.134005, 15.794131, 17.872463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812136, 16.022491, 17.960173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.738827, 16.179068, 17.599466>,  <16.694841, 16.273014, 17.383041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.738827, 16.179068, 17.599466>,  <16.812136, 16.022491, 17.960173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738827, 16.179068, 17.599466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436097, 0.854480, 0.282284,
		0.881039, -0.341522, -0.327312,
		-0.183275, 0.391443, -0.901767,
		16.683844, 16.296501, 17.328936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.430372, 16.338762, 17.819323>,  <16.812136, 16.022491, 17.960173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.430372, 16.338762, 17.819323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.168989, 16.574818, 17.629700>,  <17.012159, 16.716452, 17.515926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.168989, 16.574818, 17.629700>,  <17.430372, 16.338762, 17.819323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.168989, 16.574818, 17.629700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479543, 0.807298, 0.343961,
		0.585688, -0.002565, -0.810532,
		-0.653458, 0.590139, -0.474055,
		16.972952, 16.751860, 17.487484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783594, 16.893496, 17.705212>,  <17.430372, 16.338762, 17.819323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783594, 16.893496, 17.705212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.423742, 17.033709, 17.601061>,  <17.207832, 17.117836, 17.538570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.423742, 17.033709, 17.601061>,  <17.783594, 16.893496, 17.705212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423742, 17.033709, 17.601061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201648, 0.862414, 0.464307,
		0.387308, 0.365199, -0.846536,
		-0.899628, 0.350532, -0.260378,
		17.153854, 17.138868, 17.522947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951426, 17.546772, 17.411659>,  <17.783594, 16.893496, 17.705212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.951426, 17.546772, 17.411659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.573284, 17.518860, 17.539055>,  <17.346399, 17.502113, 17.615492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.573284, 17.518860, 17.539055>,  <17.951426, 17.546772, 17.411659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573284, 17.518860, 17.539055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125506, 0.823679, 0.552992,
		-0.300921, 0.562746, -0.769911,
		-0.945354, -0.069778, 0.318491,
		17.289679, 17.497927, 17.634602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621893, 18.159019, 17.195274>,  <17.951426, 17.546772, 17.411659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621893, 18.159019, 17.195274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.401554, 18.027250, 17.502012>,  <17.269350, 17.948189, 17.686054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.401554, 18.027250, 17.502012>,  <17.621893, 18.159019, 17.195274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.401554, 18.027250, 17.502012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112874, 0.880963, 0.459525,
		-0.826938, 0.339685, -0.448093,
		-0.550847, -0.329421, 0.766843,
		17.236300, 17.928425, 17.732065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.228081, 18.713512, 17.406120>,  <17.621893, 18.159019, 17.195274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.228081, 18.713512, 17.406120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.209742, 18.471704, 17.724228>,  <17.198738, 18.326620, 17.915092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.209742, 18.471704, 17.724228>,  <17.228081, 18.713512, 17.406120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.209742, 18.471704, 17.724228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122709, 0.786671, 0.605054,
		-0.991383, 0.125327, 0.038114,
		-0.045847, -0.604518, 0.795271,
		17.195988, 18.290350, 17.962809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574303, 18.906584, 17.777399>,  <17.228081, 18.713512, 17.406120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.574303, 18.906584, 17.777399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.768597, 18.715588, 18.070265>,  <16.885174, 18.600990, 18.245985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.768597, 18.715588, 18.070265>,  <16.574303, 18.906584, 17.777399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.768597, 18.715588, 18.070265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004403, 0.836267, 0.548305,
		-0.874096, -0.269554, 0.404101,
		0.485734, -0.477492, 0.732164,
		16.914316, 18.572340, 18.289913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.219976, 19.077480, 18.387972>,  <16.574303, 18.906584, 17.777399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.219976, 19.077480, 18.387972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.594660, 18.971060, 18.479004>,  <16.819469, 18.907207, 18.533623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.594660, 18.971060, 18.479004>,  <16.219976, 19.077480, 18.387972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.594660, 18.971060, 18.479004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044856, 0.735868, 0.675638,
		-0.347223, -0.622668, 0.701228,
		0.936709, -0.266051, 0.227580,
		16.875673, 18.891245, 18.547277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274908, 19.010763, 19.163763>,  <16.219976, 19.077480, 18.387972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274908, 19.010763, 19.163763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.635538, 19.076925, 19.003860>,  <16.851915, 19.116623, 18.907919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.635538, 19.076925, 19.003860>,  <16.274908, 19.010763, 19.163763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635538, 19.076925, 19.003860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118280, 0.794580, 0.595527,
		0.416141, -0.584195, 0.696809,
		0.901574, 0.165405, -0.399756,
		16.906010, 19.126547, 18.883934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848547, 19.145096, 19.682184>,  <16.274908, 19.010763, 19.163763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.848547, 19.145096, 19.682184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.932594, 19.329828, 19.337496>,  <16.983023, 19.440668, 19.130682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.932594, 19.329828, 19.337496>,  <16.848547, 19.145096, 19.682184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932594, 19.329828, 19.337496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052476, 0.874799, 0.481635,
		0.976267, -0.146419, 0.159575,
		0.210117, 0.461831, -0.861721,
		16.995628, 19.468378, 19.078979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548672, 19.432737, 19.598652>,  <16.848547, 19.145096, 19.682184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548672, 19.432737, 19.598652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.309521, 19.646074, 19.359291>,  <17.166029, 19.774076, 19.215673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.309521, 19.646074, 19.359291>,  <17.548672, 19.432737, 19.598652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.309521, 19.646074, 19.359291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019995, 0.736368, 0.676286,
		0.801337, 0.416302, -0.429594,
		-0.597879, 0.533343, -0.598403,
		17.130157, 19.806078, 19.179770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750841, 20.064917, 19.662685>,  <17.548672, 19.432737, 19.598652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750841, 20.064917, 19.662685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.394396, 20.130781, 19.493542>,  <17.180529, 20.170300, 19.392056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.394396, 20.130781, 19.493542>,  <17.750841, 20.064917, 19.662685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394396, 20.130781, 19.493542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161440, 0.755845, 0.634536,
		0.424096, 0.633708, -0.646959,
		-0.891111, 0.164659, -0.422857,
		17.127062, 20.180180, 19.366684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.732634, 20.777452, 19.609060>,  <17.750841, 20.064917, 19.662685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.732634, 20.777452, 19.609060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.350174, 20.663582, 19.581535>,  <17.120697, 20.595259, 19.565022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.350174, 20.663582, 19.581535>,  <17.732634, 20.777452, 19.609060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.350174, 20.663582, 19.581535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282960, 0.837299, 0.467830,
		-0.075566, 0.466786, -0.881136,
		-0.956150, -0.284678, -0.068811,
		17.063330, 20.578178, 19.560892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309740, 21.227108, 19.157124>,  <17.732634, 20.777452, 19.609060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309740, 21.227108, 19.157124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.040119, 21.066057, 19.404848>,  <16.878347, 20.969427, 19.553482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.040119, 21.066057, 19.404848>,  <17.309740, 21.227108, 19.157124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.040119, 21.066057, 19.404848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308342, 0.915222, 0.259411,
		-0.671251, -0.016102, -0.741055,
		-0.674053, -0.402628, 0.619309,
		16.837904, 20.945269, 19.590641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.874599, 21.739937, 19.270050>,  <17.309740, 21.227108, 19.157124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.874599, 21.739937, 19.270050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.730677, 21.500511, 19.556339>,  <16.644323, 21.356855, 19.728113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.730677, 21.500511, 19.556339>,  <16.874599, 21.739937, 19.270050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.730677, 21.500511, 19.556339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381929, 0.794373, 0.472336,
		-0.851276, -0.103407, -0.514429,
		-0.359806, -0.598563, 0.715725,
		16.622734, 21.320942, 19.771057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.150755, 22.021791, 19.497446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.285139, 21.780209, 19.786547>,  <16.365770, 21.635260, 19.960007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.285139, 21.780209, 19.786547>,  <16.150755, 22.021791, 19.497446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285139, 21.780209, 19.786547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167464, 0.716824, 0.676845,
		-0.926869, -0.348428, 0.139684,
		0.335961, -0.603955, 0.722751,
		16.385927, 21.599022, 20.003372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682482, 22.130823, 19.915400>,  <16.150755, 22.021791, 19.497446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.682482, 22.130823, 19.915400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.984242, 21.974051, 20.126026>,  <16.165298, 21.879988, 20.252401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.984242, 21.974051, 20.126026>,  <15.682482, 22.130823, 19.915400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.984242, 21.974051, 20.126026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155462, 0.672681, 0.723416,
		-0.637739, -0.627607, 0.446541,
		0.754401, -0.391930, 0.526564,
		16.210564, 21.856472, 20.283995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.369259, 21.983490, 20.577095>,  <15.682482, 22.130823, 19.915400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.369259, 21.983490, 20.577095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.767281, 22.014402, 20.602053>,  <16.006094, 22.032949, 20.617027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.767281, 22.014402, 20.602053>,  <15.369259, 21.983490, 20.577095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767281, 22.014402, 20.602053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099068, 0.726940, 0.679517,
		0.007158, -0.682338, 0.731002,
		0.995055, 0.077283, 0.062394,
		16.065798, 22.037588, 20.620771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.387959, 22.410915, 21.111860>,  <15.369259, 21.983490, 20.577095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.387959, 22.410915, 21.111860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.772283, 22.379896, 21.005400>,  <16.002876, 22.361284, 20.941525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.772283, 22.379896, 21.005400>,  <15.387959, 22.410915, 21.111860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.772283, 22.379896, 21.005400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259018, 0.593270, 0.762195,
		0.098791, -0.801260, 0.590104,
		0.960807, -0.077550, -0.266151,
		16.060524, 22.356630, 20.925554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.737766, 22.288067, 21.684181>,  <15.387959, 22.410915, 21.111860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.737766, 22.288067, 21.684181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.985277, 22.457836, 21.419764>,  <16.133783, 22.559698, 21.261114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.985277, 22.457836, 21.419764>,  <15.737766, 22.288067, 21.684181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985277, 22.457836, 21.419764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181460, 0.741505, 0.645944,
		0.764325, -0.519646, 0.381806,
		0.618773, 0.424428, -0.661045,
		16.170910, 22.585163, 21.221451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.313955, 22.445871, 21.994316>,  <15.737766, 22.288067, 21.684181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.313955, 22.445871, 21.994316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.326685, 22.690088, 21.677778>,  <16.334322, 22.836618, 21.487856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.326685, 22.690088, 21.677778>,  <16.313955, 22.445871, 21.994316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.326685, 22.690088, 21.677778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295501, 0.750602, 0.590996,
		0.954812, -0.252650, -0.156530,
		0.031824, 0.610545, -0.791342,
		16.336231, 22.873251, 21.440376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921564, 22.886204, 22.168226>,  <16.313955, 22.445871, 21.994316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.921564, 22.886204, 22.168226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.730398, 23.084484, 21.878157>,  <16.615700, 23.203453, 21.704115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.730398, 23.084484, 21.878157>,  <16.921564, 22.886204, 22.168226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.730398, 23.084484, 21.878157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262676, 0.868430, 0.420512,
		0.838212, 0.010481, -0.545243,
		-0.477913, 0.495701, -0.725176,
		16.587025, 23.233194, 21.660604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348141, 23.414028, 21.934475>,  <16.921564, 22.886204, 22.168226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.348141, 23.414028, 21.934475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.971575, 23.522861, 21.854767>,  <16.745636, 23.588161, 21.806942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.971575, 23.522861, 21.854767>,  <17.348141, 23.414028, 21.934475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.971575, 23.522861, 21.854767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175759, 0.900102, 0.398655,
		0.287829, 0.340276, -0.895191,
		-0.941415, 0.272082, -0.199269,
		16.689150, 23.604486, 21.794987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386492, 24.143518, 21.593340>,  <17.348141, 23.414028, 21.934475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386492, 24.143518, 21.593340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.020487, 24.096165, 21.747604>,  <16.800884, 24.067753, 21.840164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.020487, 24.096165, 21.747604>,  <17.386492, 24.143518, 21.593340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020487, 24.096165, 21.747604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060895, 0.904491, 0.422124,
		-0.398801, 0.409734, -0.820412,
		-0.915013, -0.118384, 0.385663,
		16.745983, 24.060650, 21.863302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.883327, 24.665121, 21.242393>,  <17.386492, 24.143518, 21.593340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.883327, 24.665121, 21.242393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.779919, 24.552111, 21.611900>,  <16.717873, 24.484304, 21.833605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.779919, 24.552111, 21.611900>,  <16.883327, 24.665121, 21.242393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.779919, 24.552111, 21.611900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023339, 0.957823, 0.286408,
		-0.965723, 0.052484, -0.254214,
		-0.258524, -0.282524, 0.923767,
		16.702362, 24.467354, 21.889030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.567686, 25.302338, 21.522169>,  <16.883327, 24.665121, 21.242393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.567686, 25.302338, 21.522169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.627840, 25.069271, 21.841639>,  <16.663933, 24.929430, 22.033321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.627840, 25.069271, 21.841639>,  <16.567686, 25.302338, 21.522169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.627840, 25.069271, 21.841639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059135, 0.811717, 0.581049,
		-0.986857, -0.040153, 0.156527,
		0.150387, -0.582669, 0.798675,
		16.672956, 24.894470, 22.081242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456318, 25.777012, 22.135986>,  <16.567686, 25.302338, 21.522169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456318, 25.777012, 22.135986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.625433, 25.451504, 22.295500>,  <16.726902, 25.256199, 22.391207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.625433, 25.451504, 22.295500>,  <16.456318, 25.777012, 22.135986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.625433, 25.451504, 22.295500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212741, 0.516874, 0.829206,
		-0.880904, -0.265741, 0.391650,
		0.422788, -0.813771, 0.398782,
		16.752270, 25.207373, 22.415134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.078096, 25.499586, 22.700775>,  <16.456318, 25.777012, 22.135986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.078096, 25.499586, 22.700775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.457388, 25.388435, 22.762280>,  <16.684963, 25.321745, 22.799183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.457388, 25.388435, 22.762280>,  <16.078096, 25.499586, 22.700775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457388, 25.388435, 22.762280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002360, 0.477986, 0.878364,
		-0.317574, -0.833255, 0.452585,
		0.948231, -0.277878, 0.153762,
		16.741858, 25.305073, 22.808409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.182505, 25.455221, 23.533606>,  <16.078096, 25.499586, 22.700775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.182505, 25.455221, 23.533606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.560919, 25.459215, 23.404043>,  <16.787968, 25.461611, 23.326305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.560919, 25.459215, 23.404043>,  <16.182505, 25.455221, 23.533606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.560919, 25.459215, 23.404043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299170, 0.357230, 0.884807,
		0.124542, -0.933963, 0.334966,
		0.946038, 0.009984, -0.323904,
		16.844730, 25.462210, 23.306871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627031, 25.160925, 24.058233>,  <16.182505, 25.455221, 23.533606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.627031, 25.160925, 24.058233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.845770, 25.402452, 23.826246>,  <16.977013, 25.547369, 23.687054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.845770, 25.402452, 23.826246>,  <16.627031, 25.160925, 24.058233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845770, 25.402452, 23.826246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203167, 0.576307, 0.791576,
		0.812209, -0.550699, 0.192474,
		0.546844, 0.603821, -0.579966,
		17.009823, 25.583599, 23.652256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.310392, 25.234098, 24.458208>,  <16.627031, 25.160925, 24.058233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.310392, 25.234098, 24.458208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.355242, 25.532921, 24.196114>,  <17.382151, 25.712214, 24.038857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.355242, 25.532921, 24.196114>,  <17.310392, 25.234098, 24.458208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355242, 25.532921, 24.196114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301609, 0.602703, 0.738770,
		0.946816, -0.280459, -0.157742,
		0.112123, 0.747056, -0.655238,
		17.388878, 25.757038, 23.999542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.918463, 25.562454, 24.579521>,  <17.310392, 25.234098, 24.458208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.918463, 25.562454, 24.579521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.702860, 25.845213, 24.396318>,  <17.573498, 26.014868, 24.286396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.702860, 25.845213, 24.396318>,  <17.918463, 25.562454, 24.579521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702860, 25.845213, 24.396318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338239, 0.679638, 0.650911,
		0.771406, 0.195929, -0.605429,
		-0.539006, 0.706897, -0.458006,
		17.541159, 26.057281, 24.258917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361366, 26.063850, 24.570642>,  <17.918463, 25.562454, 24.579521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361366, 26.063850, 24.570642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.990772, 26.214264, 24.564676>,  <17.768415, 26.304512, 24.561096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.990772, 26.214264, 24.564676>,  <18.361366, 26.063850, 24.570642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990772, 26.214264, 24.564676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237556, 0.615120, 0.751794,
		0.291872, 0.692984, -0.659229,
		-0.926487, 0.376032, -0.014914,
		17.712826, 26.327074, 24.560202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375710, 26.854683, 24.663857>,  <18.361366, 26.063850, 24.570642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375710, 26.854683, 24.663857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.002827, 26.735159, 24.745544>,  <17.779097, 26.663445, 24.794558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.002827, 26.735159, 24.745544>,  <18.375710, 26.854683, 24.663857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002827, 26.735159, 24.745544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035494, 0.637015, 0.770034,
		-0.360185, 0.710581, -0.604435,
		-0.932205, -0.298809, 0.204222,
		17.723166, 26.645515, 24.806810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.090189, 27.469666, 24.706451>,  <18.375710, 26.854683, 24.663857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.090189, 27.469666, 24.706451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.816372, 27.241005, 24.887388>,  <17.652081, 27.103807, 24.995951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.816372, 27.241005, 24.887388>,  <18.090189, 27.469666, 24.706451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816372, 27.241005, 24.887388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042798, 0.650965, 0.757900,
		-0.727714, 0.499457, -0.470080,
		-0.684544, -0.571653, 0.452341,
		17.611010, 27.069510, 25.023090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628681, 27.953882, 24.803598>,  <18.090189, 27.469666, 24.706451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.628681, 27.953882, 24.803598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.560476, 27.664963, 25.071692>,  <17.519554, 27.491611, 25.232548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.560476, 27.664963, 25.071692>,  <17.628681, 27.953882, 24.803598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560476, 27.664963, 25.071692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021594, 0.682770, 0.730315,
		-0.985119, 0.110053, -0.132017,
		-0.170511, -0.722298, 0.670233,
		17.509323, 27.448273, 25.272762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083105, 28.209747, 25.142437>,  <17.628681, 27.953882, 24.803598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083105, 28.209747, 25.142437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.245626, 27.944401, 25.393789>,  <17.343140, 27.785192, 25.544600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.245626, 27.944401, 25.393789>,  <17.083105, 28.209747, 25.142437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245626, 27.944401, 25.393789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091776, 0.713851, 0.694258,
		-0.909118, -0.224409, 0.350921,
		0.406303, -0.663369, 0.628379,
		17.367517, 27.745390, 25.582302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712257, 28.183275, 25.829374>,  <17.083105, 28.209747, 25.142437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.712257, 28.183275, 25.829374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.103123, 28.100704, 25.849537>,  <17.337643, 28.051161, 25.861635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.103123, 28.100704, 25.849537>,  <16.712257, 28.183275, 25.829374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103123, 28.100704, 25.849537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110312, 0.695547, 0.709962,
		-0.181616, -0.688188, 0.702434,
		0.977163, -0.206428, 0.050407,
		17.396271, 28.038776, 25.864658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193779, 28.262421, 26.287344>,  <16.712257, 28.183275, 25.829374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193779, 28.262421, 26.287344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.118567, 28.011133, 26.589333>,  <16.073439, 27.860361, 26.770527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.118567, 28.011133, 26.589333>,  <16.193779, 28.262421, 26.287344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118567, 28.011133, 26.589333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599568, -0.535416, -0.594851,
		0.777922, -0.564508, -0.275985,
		-0.188031, -0.628219, 0.754973,
		16.062157, 27.822668, 26.815825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417799, 27.617191, 26.157713>,  <16.193779, 28.262421, 26.287344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.417799, 27.617191, 26.157713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.102640, 27.600731, 26.403486>,  <15.913545, 27.590855, 26.550949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.102640, 27.600731, 26.403486>,  <16.417799, 27.617191, 26.157713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102640, 27.600731, 26.403486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427979, -0.680824, -0.594401,
		0.442779, -0.731291, 0.518807,
		-0.787896, -0.041150, 0.614432,
		15.866271, 27.588387, 26.587816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210238, 26.865459, 26.495049>,  <16.417799, 27.617191, 26.157713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.210238, 26.865459, 26.495049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.873528, 27.081169, 26.485281>,  <15.671501, 27.210594, 26.479420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.873528, 27.081169, 26.485281>,  <16.210238, 26.865459, 26.495049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873528, 27.081169, 26.485281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331816, -0.552567, -0.764570,
		-0.425803, -0.635496, 0.644078,
		-0.841778, 0.539271, -0.024417,
		15.620995, 27.242950, 26.477955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613812, 26.357536, 26.497385>,  <16.210238, 26.865459, 26.495049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613812, 26.357536, 26.497385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.460558, 26.706461, 26.375877>,  <15.368605, 26.915815, 26.302973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.460558, 26.706461, 26.375877>,  <15.613812, 26.357536, 26.497385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460558, 26.706461, 26.375877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663116, -0.488692, -0.566972,
		-0.643026, -0.015794, 0.765681,
		-0.383137, 0.872313, -0.303769,
		15.345616, 26.968155, 26.284746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840763, 26.506214, 26.574181>,  <15.613812, 26.357536, 26.497385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840763, 26.506214, 26.574181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.910570, 26.786346, 26.297319>,  <14.952455, 26.954426, 26.131203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.910570, 26.786346, 26.297319>,  <14.840763, 26.506214, 26.574181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910570, 26.786346, 26.297319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821976, -0.283403, -0.494003,
		-0.542125, 0.655146, 0.526198,
		0.174518, 0.700333, -0.692154,
		14.962925, 26.996447, 26.089674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126333, 26.623112, 26.160343>,  <14.840763, 26.506214, 26.574181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126333, 26.623112, 26.160343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.393776, 26.820211, 25.937574>,  <14.554241, 26.938471, 25.803913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.393776, 26.820211, 25.937574>,  <14.126333, 26.623112, 26.160343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.393776, 26.820211, 25.937574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517212, -0.229953, -0.824387,
		-0.534283, 0.839237, 0.101109,
		0.668606, 0.492751, -0.556923,
		14.594357, 26.968037, 25.770498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.738497, 27.058987, 25.692942>,  <14.126333, 26.623112, 26.160343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.738497, 27.058987, 25.692942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.103650, 26.998102, 25.541430>,  <14.322742, 26.961571, 25.450521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.103650, 26.998102, 25.541430>,  <13.738497, 27.058987, 25.692942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.103650, 26.998102, 25.541430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406253, -0.247773, -0.879527,
		0.040022, 0.956786, -0.288025,
		0.912884, -0.152211, -0.378781,
		14.377515, 26.952438, 25.427795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.636033, 27.119492, 24.964218>,  <13.738497, 27.058987, 25.692942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.636033, 27.119492, 24.964218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.990477, 26.937048, 24.997137>,  <14.203143, 26.827581, 25.016888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.990477, 26.937048, 24.997137>,  <13.636033, 27.119492, 24.964218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.990477, 26.937048, 24.997137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094418, -0.351487, -0.931420,
		0.453756, 0.817570, -0.354521,
		0.886110, -0.456110, 0.082296,
		14.256310, 26.800215, 25.021826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787488, 27.097097, 24.191364>,  <13.636033, 27.119492, 24.964218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787488, 27.097097, 24.191364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.029086, 26.833284, 24.370340>,  <14.174045, 26.674995, 24.477726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.029086, 26.833284, 24.370340>,  <13.787488, 27.097097, 24.191364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.029086, 26.833284, 24.370340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117241, -0.628836, -0.768648,
		0.788317, 0.411801, -0.457138,
		0.603995, -0.659534, 0.447442,
		14.210285, 26.635424, 24.504574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213948, 26.784430, 23.645670>,  <13.787488, 27.097097, 24.191364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.213948, 26.784430, 23.645670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.258003, 26.524464, 23.946463>,  <14.284436, 26.368484, 24.126938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.258003, 26.524464, 23.946463>,  <14.213948, 26.784430, 23.645670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.258003, 26.524464, 23.946463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166463, -0.733838, -0.658613,
		0.979877, 0.197716, 0.027363,
		0.110139, -0.649915, 0.751984,
		14.291045, 26.329489, 24.172058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950559, 26.506907, 23.646420>,  <14.213948, 26.784430, 23.645670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.950559, 26.506907, 23.646420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.700298, 26.246958, 23.819035>,  <14.550142, 26.090988, 23.922604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.700298, 26.246958, 23.819035>,  <14.950559, 26.506907, 23.646420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.700298, 26.246958, 23.819035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114111, -0.623469, -0.773476,
		0.771711, -0.434683, 0.464233,
		-0.625652, -0.649874, 0.431536,
		14.512603, 26.051996, 23.948496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.258636, 25.748678, 23.571224>,  <14.950559, 26.506907, 23.646420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.258636, 25.748678, 23.571224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.874594, 25.675667, 23.655968>,  <14.644169, 25.631861, 23.706814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.874594, 25.675667, 23.655968>,  <15.258636, 25.748678, 23.571224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874594, 25.675667, 23.655968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059669, -0.606436, -0.792890,
		0.273202, -0.773899, 0.571351,
		-0.960104, -0.182527, 0.211857,
		14.586562, 25.620909, 23.719524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.168914, 25.048843, 23.675068>,  <15.258636, 25.748678, 23.571224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.168914, 25.048843, 23.675068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.796358, 25.158787, 23.579597>,  <14.572824, 25.224752, 23.522316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.796358, 25.158787, 23.579597>,  <15.168914, 25.048843, 23.675068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.796358, 25.158787, 23.579597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034876, -0.720016, -0.693080,
		-0.362349, -0.637204, 0.680202,
		-0.931390, 0.274859, -0.238674,
		14.516941, 25.241245, 23.507996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.773070, 24.449650, 23.707724>,  <15.168914, 25.048843, 23.675068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.773070, 24.449650, 23.707724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.534647, 24.685953, 23.490204>,  <14.391593, 24.827736, 23.359692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.534647, 24.685953, 23.490204>,  <14.773070, 24.449650, 23.707724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534647, 24.685953, 23.490204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094051, -0.723964, -0.683396,
		-0.797414, -0.356199, 0.487087,
		-0.596058, 0.590761, -0.543798,
		14.355829, 24.863182, 23.327065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221025, 24.049543, 23.481728>,  <14.773070, 24.449650, 23.707724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221025, 24.049543, 23.481728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.200134, 24.344084, 23.211897>,  <14.187600, 24.520809, 23.049997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.200134, 24.344084, 23.211897>,  <14.221025, 24.049543, 23.481728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.200134, 24.344084, 23.211897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272940, -0.660306, -0.699642,
		-0.960613, 0.147580, 0.235465,
		-0.052226, 0.736353, -0.674579,
		14.184466, 24.564989, 23.009523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.614622, 23.845901, 23.120831>,  <14.221025, 24.049543, 23.481728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.614622, 23.845901, 23.120831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.801166, 24.106831, 22.881838>,  <13.913092, 24.263388, 22.738441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.801166, 24.106831, 22.881838>,  <13.614622, 23.845901, 23.120831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801166, 24.106831, 22.881838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303869, -0.516194, -0.800754,
		-0.830766, 0.554996, -0.042512,
		0.466360, 0.652321, -0.597483,
		13.941073, 24.302526, 22.702593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208043, 23.782408, 22.596560>,  <13.614622, 23.845901, 23.120831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208043, 23.782408, 22.596560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.526208, 23.969038, 22.441832>,  <13.717107, 24.081017, 22.348995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.526208, 23.969038, 22.441832>,  <13.208043, 23.782408, 22.596560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.526208, 23.969038, 22.441832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216319, -0.377646, -0.900328,
		-0.566152, 0.799807, -0.199454,
		0.795411, 0.466576, -0.386818,
		13.764832, 24.109011, 22.325787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.011903, 24.100346, 21.865602>,  <13.208043, 23.782408, 22.596560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.011903, 24.100346, 21.865602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.405968, 24.035984, 21.889488>,  <13.642406, 23.997368, 21.903820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.405968, 24.035984, 21.889488>,  <13.011903, 24.100346, 21.865602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.405968, 24.035984, 21.889488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030182, -0.504941, -0.862626,
		0.168952, 0.848024, -0.502305,
		0.985162, -0.160903, 0.059715,
		13.701516, 23.987713, 21.907402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199411, 24.120935, 21.198166>,  <13.011903, 24.100346, 21.865602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199411, 24.120935, 21.198166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.498221, 23.912836, 21.363718>,  <13.677507, 23.787977, 21.463049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.498221, 23.912836, 21.363718>,  <13.199411, 24.120935, 21.198166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498221, 23.912836, 21.363718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023613, -0.642938, -0.765554,
		0.664377, 0.562114, -0.492575,
		0.747024, -0.520248, 0.413880,
		13.722329, 23.756762, 21.487883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.775036, 24.109026, 20.672400>,  <13.199411, 24.120935, 21.198166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.775036, 24.109026, 20.672400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.842444, 23.800091, 20.917381>,  <13.882890, 23.614731, 21.064369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.842444, 23.800091, 20.917381>,  <13.775036, 24.109026, 20.672400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842444, 23.800091, 20.917381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080035, -0.608566, -0.789457,
		0.982443, 0.182058, -0.040742,
		0.168521, -0.772336, 0.612453,
		13.893001, 23.568390, 21.101116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.195893, 23.655973, 20.256344>,  <13.775036, 24.109026, 20.672400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.195893, 23.655973, 20.256344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.059029, 23.413273, 20.543337>,  <13.976910, 23.267653, 20.715532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.059029, 23.413273, 20.543337>,  <14.195893, 23.655973, 20.256344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.059029, 23.413273, 20.543337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038005, -0.771881, -0.634630,
		0.938872, -0.189878, 0.287168,
		-0.342162, -0.606750, 0.717481,
		13.956380, 23.231247, 20.758581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.918987, 16.140120, 7.396201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.529720, 16.218916, 7.348636>,  <25.296160, 16.266193, 7.320096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.529720, 16.218916, 7.348636>,  <25.918987, 16.140120, 7.396201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529720, 16.218916, 7.348636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125099, 0.886695, 0.445109,
		0.193122, 0.418290, -0.887546,
		-0.973167, 0.196992, -0.118913,
		25.237770, 16.278013, 7.312962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805126, 16.924665, 7.157710>,  <25.918987, 16.140120, 7.396201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805126, 16.924665, 7.157710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.495159, 16.770090, 7.357777>,  <25.309179, 16.677345, 7.477817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.495159, 16.770090, 7.357777>,  <25.805126, 16.924665, 7.157710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495159, 16.770090, 7.357777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105111, 0.701519, 0.704856,
		-0.623260, 0.598779, -0.503001,
		-0.774918, -0.386438, 0.500167,
		25.262684, 16.654160, 7.507827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429110, 17.371317, 7.626311>,  <25.805126, 16.924665, 7.157710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429110, 17.371317, 7.626311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.208580, 17.068745, 7.767084>,  <25.076262, 16.887201, 7.851547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.208580, 17.068745, 7.767084>,  <25.429110, 17.371317, 7.626311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208580, 17.068745, 7.767084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243453, 0.549340, 0.799347,
		-0.797981, 0.355020, -0.487019,
		-0.551323, -0.756430, 0.351932,
		25.043182, 16.841816, 7.872663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779245, 17.554022, 7.961024>,  <25.429110, 17.371317, 7.626311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779245, 17.554022, 7.961024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.893639, 17.216709, 8.143052>,  <24.962275, 17.014322, 8.252269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.893639, 17.216709, 8.143052>,  <24.779245, 17.554022, 7.961024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893639, 17.216709, 8.143052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243415, 0.395395, 0.885670,
		-0.926802, -0.364059, -0.092190,
		0.285985, -0.843282, 0.455071,
		24.979433, 16.963724, 8.279573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.351830, 17.241684, 8.509567>,  <24.779245, 17.554022, 7.961024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.351830, 17.241684, 8.509567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.685091, 17.046461, 8.613610>,  <24.885048, 16.929327, 8.676036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.685091, 17.046461, 8.613610>,  <24.351830, 17.241684, 8.509567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685091, 17.046461, 8.613610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145180, 0.260813, 0.954410,
		-0.533648, -0.832931, 0.146440,
		0.833152, -0.488059, 0.260108,
		24.935036, 16.900043, 8.691643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247227, 16.780272, 9.156873>,  <24.351830, 17.241684, 8.509567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247227, 16.780272, 9.156873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.626516, 16.899176, 9.112140>,  <24.854090, 16.970518, 9.085299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.626516, 16.899176, 9.112140>,  <24.247227, 16.780272, 9.156873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.626516, 16.899176, 9.112140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005423, 0.367218, 0.930119,
		0.317553, -0.881356, 0.349817,
		0.948225, 0.297259, -0.111831,
		24.910984, 16.988354, 9.078590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770449, 16.449074, 9.580642>,  <24.247227, 16.780272, 9.156873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770449, 16.449074, 9.580642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.893745, 16.821428, 9.502223>,  <24.967724, 17.044842, 9.455172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.893745, 16.821428, 9.502223>,  <24.770449, 16.449074, 9.580642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893745, 16.821428, 9.502223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020296, 0.212469, 0.976957,
		0.951091, -0.297162, 0.084385,
		0.308244, 0.930888, -0.196046,
		24.986219, 17.100695, 9.443409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634119, 15.735482, 9.212584>,  <24.770449, 16.449074, 9.580642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634119, 15.735482, 9.212584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.894178, 15.872593, 9.483823>,  <25.050213, 15.954860, 9.646565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.894178, 15.872593, 9.483823>,  <24.634119, 15.735482, 9.212584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894178, 15.872593, 9.483823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647698, -0.216559, 0.730472,
		0.397237, -0.914115, 0.081222,
		0.650146, 0.342778, 0.678095,
		25.089222, 15.975427, 9.687251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.904890, 15.207799, 9.654581>,  <24.634119, 15.735482, 9.212584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.904890, 15.207799, 9.654581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.897167, 15.564108, 9.836198>,  <24.892532, 15.777893, 9.945168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.897167, 15.564108, 9.836198>,  <24.904890, 15.207799, 9.654581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897167, 15.564108, 9.836198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713468, -0.330415, 0.617891,
		0.700422, -0.312012, 0.641917,
		-0.019309, 0.890771, 0.454041,
		24.891375, 15.831340, 9.972410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110880, 15.082088, 10.362357>,  <24.904890, 15.207799, 9.654581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110880, 15.082088, 10.362357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.879011, 15.404997, 10.318009>,  <24.739891, 15.598742, 10.291401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.879011, 15.404997, 10.318009>,  <25.110880, 15.082088, 10.362357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879011, 15.404997, 10.318009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569320, -0.303896, 0.763886,
		0.582972, 0.505922, 0.635757,
		-0.579671, 0.807274, -0.110868,
		24.705111, 15.647179, 10.284749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924805, 15.414058, 11.039612>,  <25.110880, 15.082088, 10.362357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924805, 15.414058, 11.039612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.653320, 15.553179, 10.780880>,  <24.490431, 15.636651, 10.625641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.653320, 15.553179, 10.780880>,  <24.924805, 15.414058, 11.039612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.653320, 15.553179, 10.780880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727835, -0.200991, 0.655636,
		0.098024, 0.915771, 0.389557,
		-0.678710, 0.347801, -0.646829,
		24.449707, 15.657519, 10.586831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491167, 15.855036, 11.470209>,  <24.924805, 15.414058, 11.039612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491167, 15.855036, 11.470209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.299044, 15.741675, 11.138187>,  <24.183769, 15.673659, 10.938974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.299044, 15.741675, 11.138187>,  <24.491167, 15.855036, 11.470209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299044, 15.741675, 11.138187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819787, -0.191429, 0.539726,
		-0.311855, 0.939701, -0.140384,
		-0.480307, -0.283401, -0.830053,
		24.154951, 15.656655, 10.889172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.910706, 16.200768, 11.478257>,  <24.491167, 15.855036, 11.470209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.910706, 16.200768, 11.478257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.837479, 15.888779, 11.238881>,  <23.793543, 15.701586, 11.095256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.837479, 15.888779, 11.238881>,  <23.910706, 16.200768, 11.478257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.837479, 15.888779, 11.238881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818264, -0.216517, 0.532508,
		-0.544914, 0.587166, -0.598586,
		-0.183067, -0.779972, -0.598440,
		23.782558, 15.654787, 11.059349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.205315, 16.124889, 11.577960>,  <23.910706, 16.200768, 11.478257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.205315, 16.124889, 11.577960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.296946, 15.790166, 11.379052>,  <23.351923, 15.589332, 11.259707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.296946, 15.790166, 11.379052>,  <23.205315, 16.124889, 11.577960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.296946, 15.790166, 11.379052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781766, -0.462532, 0.418218,
		-0.579971, 0.292944, -0.760143,
		0.229075, -0.836809, -0.497269,
		23.365667, 15.539124, 11.229872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.691908, 15.908909, 11.247436>,  <23.205315, 16.124889, 11.577960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.691908, 15.908909, 11.247436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.892832, 15.566880, 11.298878>,  <23.013386, 15.361663, 11.329743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.892832, 15.566880, 11.298878>,  <22.691908, 15.908909, 11.247436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.892832, 15.566880, 11.298878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819414, -0.423220, 0.386582,
		-0.276126, -0.299567, -0.913244,
		0.502310, -0.855070, 0.128607,
		23.043524, 15.310359, 11.337460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.195024, 15.393648, 11.043883>,  <22.691908, 15.908909, 11.247436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.195024, 15.393648, 11.043883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.470259, 15.180946, 11.241379>,  <22.635399, 15.053325, 11.359876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.470259, 15.180946, 11.241379>,  <22.195024, 15.393648, 11.043883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.470259, 15.180946, 11.241379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720890, -0.578598, 0.381500,
		0.082811, -0.618435, -0.781461,
		0.688084, -0.531755, 0.493738,
		22.676683, 15.021420, 11.389500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.987915, 14.623064, 11.051594>,  <22.195024, 15.393648, 11.043883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.987915, 14.623064, 11.051594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.232956, 14.650950, 11.366518>,  <22.379980, 14.667683, 11.555472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.232956, 14.650950, 11.366518>,  <21.987915, 14.623064, 11.051594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.232956, 14.650950, 11.366518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572540, -0.647578, 0.502833,
		0.544901, -0.758803, -0.356792,
		0.612602, 0.069716, 0.787311,
		22.416737, 14.671865, 11.602712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916756, 13.872945, 11.383018>,  <21.987915, 14.623064, 11.051594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916756, 13.872945, 11.383018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.096451, 14.077765, 11.675863>,  <22.204268, 14.200658, 11.851570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.096451, 14.077765, 11.675863>,  <21.916756, 13.872945, 11.383018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.096451, 14.077765, 11.675863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393129, -0.622558, 0.676662,
		0.802268, -0.591797, -0.078375,
		0.449240, 0.512053, 0.732111,
		22.231222, 14.231381, 11.895496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.115623, 13.376597, 11.850767>,  <21.916756, 13.872945, 11.383018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.115623, 13.376597, 11.850767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.071901, 13.740726, 12.010452>,  <22.045668, 13.959202, 12.106263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.071901, 13.740726, 12.010452>,  <22.115623, 13.376597, 11.850767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.071901, 13.740726, 12.010452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518812, -0.394822, 0.758254,
		0.847872, -0.124234, 0.515441,
		-0.109307, 0.910320, 0.399212,
		22.039110, 14.013822, 12.130216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.331860, 13.317018, 12.496152>,  <22.115623, 13.376597, 11.850767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.331860, 13.317018, 12.496152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.106358, 13.647262, 12.505550>,  <21.971056, 13.845407, 12.511189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.106358, 13.647262, 12.505550>,  <22.331860, 13.317018, 12.496152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.106358, 13.647262, 12.505550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456933, -0.335454, 0.823822,
		0.688037, 0.453696, 0.566362,
		-0.563753, 0.825609, 0.023496,
		21.937231, 13.894944, 12.512599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.303238, 13.473645, 13.193749>,  <22.331860, 13.317018, 12.496152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.303238, 13.473645, 13.193749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.994604, 13.656537, 13.016844>,  <21.809423, 13.766273, 12.910701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.994604, 13.656537, 13.016844>,  <22.303238, 13.473645, 13.193749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.994604, 13.656537, 13.016844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603412, -0.305983, 0.736389,
		0.201374, 0.835054, 0.511990,
		-0.771585, 0.457231, -0.442264,
		21.763128, 13.793706, 12.884165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891994, 13.800527, 13.735097>,  <22.303238, 13.473645, 13.193749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891994, 13.800527, 13.735097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.637917, 13.759060, 13.428951>,  <21.485470, 13.734180, 13.245264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.637917, 13.759060, 13.428951>,  <21.891994, 13.800527, 13.735097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.637917, 13.759060, 13.428951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686407, -0.378528, 0.620936,
		-0.354082, 0.919766, 0.169282,
		-0.635194, -0.103666, -0.765364,
		21.447359, 13.727960, 13.199342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.187605, 13.935153, 14.076051>,  <21.891994, 13.800527, 13.735097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.187605, 13.935153, 14.076051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.109406, 13.735374, 13.738451>,  <21.062487, 13.615507, 13.535892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.109406, 13.735374, 13.738451>,  <21.187605, 13.935153, 14.076051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.109406, 13.735374, 13.738451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659593, -0.569914, 0.490035,
		-0.725753, 0.652497, -0.218015,
		-0.195497, -0.499446, -0.843999,
		21.050756, 13.585541, 13.485251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479254, 13.806663, 14.118578>,  <21.187605, 13.935153, 14.076051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479254, 13.806663, 14.118578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.598881, 13.538757, 13.846703>,  <20.670656, 13.378014, 13.683578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.598881, 13.538757, 13.846703>,  <20.479254, 13.806663, 14.118578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.598881, 13.538757, 13.846703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465112, -0.724261, 0.509034,
		-0.833205, 0.163896, -0.528117,
		0.299066, -0.669764, -0.679688,
		20.688601, 13.337829, 13.642797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.969242, 13.395465, 14.063479>,  <20.479254, 13.806663, 14.118578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.969242, 13.395465, 14.063479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.248020, 13.178046, 13.876366>,  <20.415287, 13.047595, 13.764097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.248020, 13.178046, 13.876366>,  <19.969242, 13.395465, 14.063479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.248020, 13.178046, 13.876366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536740, -0.827974, 0.162389,
		-0.475579, 0.137902, -0.868797,
		0.696947, -0.543546, -0.467784,
		20.457104, 13.014982, 13.736031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620667, 13.028427, 13.702745>,  <19.969242, 13.395465, 14.063479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620667, 13.028427, 13.702745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.970636, 12.835059, 13.714140>,  <20.180618, 12.719038, 13.720977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.970636, 12.835059, 13.714140>,  <19.620667, 13.028427, 13.702745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970636, 12.835059, 13.714140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484047, -0.874767, 0.021955,
		0.014305, -0.032997, -0.999353,
		0.874925, -0.483420, 0.028486,
		20.233114, 12.690033, 13.722686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.460457, 12.472325, 13.267462>,  <19.620667, 13.028427, 13.702745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.460457, 12.472325, 13.267462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.763636, 12.354752, 13.500399>,  <19.945543, 12.284207, 13.640161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.763636, 12.354752, 13.500399>,  <19.460457, 12.472325, 13.267462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.763636, 12.354752, 13.500399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449371, -0.882386, 0.139497,
		0.472847, -0.367419, -0.800887,
		0.757946, -0.293935, 0.582341,
		19.991020, 12.266571, 13.675101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.636091, 11.803300, 13.070302>,  <19.460457, 12.472325, 13.267462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.636091, 11.803300, 13.070302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.813761, 11.823464, 13.428110>,  <19.920362, 11.835563, 13.642795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.813761, 11.823464, 13.428110>,  <19.636091, 11.803300, 13.070302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813761, 11.823464, 13.428110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481074, -0.828859, 0.285588,
		0.755828, -0.557182, -0.343908,
		0.444176, 0.050411, 0.894521,
		19.947014, 11.838588, 13.696466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002722, 11.142989, 13.181720>,  <19.636091, 11.803300, 13.070302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002722, 11.142989, 13.181720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.931875, 11.323716, 13.531461>,  <19.889368, 11.432153, 13.741305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.931875, 11.323716, 13.531461>,  <20.002722, 11.142989, 13.181720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931875, 11.323716, 13.531461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272464, -0.876185, 0.397573,
		0.945724, -0.167812, 0.278291,
		-0.177117, 0.451818, 0.874351,
		19.878740, 11.459262, 13.793766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193783, 10.666606, 13.574155>,  <20.002722, 11.142989, 13.181720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193783, 10.666606, 13.574155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.989714, 10.887193, 13.838158>,  <19.867271, 11.019545, 13.996559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.989714, 10.887193, 13.838158>,  <20.193783, 10.666606, 13.574155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989714, 10.887193, 13.838158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182576, -0.819336, 0.543466,
		0.840470, 0.156760, 0.518687,
		-0.510173, 0.551467, 0.660006,
		19.836662, 11.052632, 14.036160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347937, 10.299249, 14.111834>,  <20.193783, 10.666606, 13.574155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347937, 10.299249, 14.111834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.033308, 10.525763, 14.210324>,  <19.844532, 10.661671, 14.269419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.033308, 10.525763, 14.210324>,  <20.347937, 10.299249, 14.111834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.033308, 10.525763, 14.210324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331966, -0.724011, 0.604654,
		0.520679, 0.393864, 0.757473,
		-0.786570, 0.566286, 0.246228,
		19.797337, 10.695648, 14.284193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.319042, 10.592135, 14.811504>,  <20.347937, 10.299249, 14.111834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.319042, 10.592135, 14.811504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.956318, 10.486985, 14.679690>,  <19.738684, 10.423895, 14.600602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.956318, 10.486985, 14.679690>,  <20.319042, 10.592135, 14.811504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956318, 10.486985, 14.679690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088358, -0.645843, 0.758340,
		-0.412176, 0.716787, 0.562429,
		-0.906809, -0.262875, -0.329536,
		19.684275, 10.408123, 14.580830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834780, 11.137767, 14.809063>,  <20.319042, 10.592135, 14.811504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834780, 11.137767, 14.809063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157841, 10.981613, 14.632293>,  <21.351677, 10.887921, 14.526231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157841, 10.981613, 14.632293>,  <20.834780, 11.137767, 14.809063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157841, 10.981613, 14.632293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589047, 0.500019, 0.634826,
		-0.026855, -0.773033, 0.633797,
		0.807652, -0.390384, -0.441925,
		21.400137, 10.864498, 14.499715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.239740, 11.871522, 15.125360>,  <20.834780, 11.137767, 14.809063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.239740, 11.871522, 15.125360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.946112, 12.072264, 15.308349>,  <20.769936, 12.192709, 15.418142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.946112, 12.072264, 15.308349>,  <21.239740, 11.871522, 15.125360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946112, 12.072264, 15.308349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598311, 0.796618, 0.086161,
		-0.321192, 0.336960, -0.885039,
		-0.734071, 0.501854, 0.457474,
		20.725891, 12.222820, 15.445591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.412865, 12.474585, 14.907601>,  <21.239740, 11.871522, 15.125360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.412865, 12.474585, 14.907601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.159447, 12.508786, 15.215189>,  <21.007397, 12.529307, 15.399741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.159447, 12.508786, 15.215189>,  <21.412865, 12.474585, 14.907601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.159447, 12.508786, 15.215189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332348, 0.927585, 0.170677,
		-0.698690, 0.363696, -0.616082,
		-0.633543, 0.085504, 0.768968,
		20.969383, 12.534437, 15.445879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.100401, 12.624441, 14.543530>,  <21.412865, 12.474585, 14.907601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.100401, 12.624441, 14.543530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.413033, 12.803418, 14.369665>,  <22.600611, 12.910805, 14.265346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.413033, 12.803418, 14.369665>,  <22.100401, 12.624441, 14.543530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.413033, 12.803418, 14.369665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069079, 0.630425, 0.773170,
		0.619967, -0.634321, 0.461820,
		0.781581, 0.447438, -0.434661,
		22.647505, 12.937651, 14.239265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.721674, 12.521894, 14.988040>,  <22.100401, 12.624441, 14.543530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.721674, 12.521894, 14.988040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.714973, 12.856133, 14.768405>,  <22.710953, 13.056676, 14.636624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.714973, 12.856133, 14.768405>,  <22.721674, 12.521894, 14.988040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.714973, 12.856133, 14.768405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050630, 0.547751, 0.835108,
		0.998577, 0.041790, 0.033131,
		-0.016751, 0.835597, -0.549087,
		22.709948, 13.106812, 14.603679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.259516, 12.922180, 15.155127>,  <22.721674, 12.521894, 14.988040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.259516, 12.922180, 15.155127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.994993, 13.178308, 14.998837>,  <22.836279, 13.331984, 14.905063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.994993, 13.178308, 14.998837>,  <23.259516, 12.922180, 15.155127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.994993, 13.178308, 14.998837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010675, 0.528868, 0.848637,
		0.750040, 0.557038, -0.356580,
		-0.661307, 0.640318, -0.390726,
		22.796600, 13.370403, 14.881618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.510345, 13.556418, 14.789581>,  <23.259516, 12.922180, 15.155127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.510345, 13.556418, 14.789581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.586809, 13.730481, 15.141512>,  <23.632687, 13.834919, 15.352671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.586809, 13.730481, 15.141512>,  <23.510345, 13.556418, 14.789581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.586809, 13.730481, 15.141512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449514, 0.758027, -0.472581,
		-0.872580, 0.485832, -0.050706,
		0.191159, 0.435158, 0.879827,
		23.644157, 13.861029, 15.405460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.406378, 14.229243, 14.639725>,  <23.510345, 13.556418, 14.789581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.406378, 14.229243, 14.639725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.620750, 14.226371, 14.977417>,  <23.749374, 14.224648, 15.180032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.620750, 14.226371, 14.977417>,  <23.406378, 14.229243, 14.639725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.620750, 14.226371, 14.977417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441545, 0.854688, -0.273030,
		-0.719593, 0.519092, 0.461227,
		0.535933, -0.007182, 0.844230,
		23.781530, 14.224216, 15.230686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.340401, 14.886061, 14.975606>,  <23.406378, 14.229243, 14.639725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.340401, 14.886061, 14.975606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.699148, 14.763355, 15.103058>,  <23.914396, 14.689732, 15.179529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.699148, 14.763355, 15.103058>,  <23.340401, 14.886061, 14.975606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.699148, 14.763355, 15.103058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392734, 0.883687, -0.254673,
		-0.203443, 0.353544, 0.913026,
		0.896867, -0.306765, 0.318629,
		23.968208, 14.671326, 15.198647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.719320, 15.464797, 15.289277>,  <23.340401, 14.886061, 14.975606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.719320, 15.464797, 15.289277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.027287, 15.221177, 15.213078>,  <24.212067, 15.075006, 15.167359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.027287, 15.221177, 15.213078>,  <23.719320, 15.464797, 15.289277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.027287, 15.221177, 15.213078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520196, 0.771901, -0.365466,
		0.369631, 0.182282, 0.911124,
		0.769915, -0.609050, -0.190496,
		24.258261, 15.038462, 15.155930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.330999, 15.777925, 15.530338>,  <23.719320, 15.464797, 15.289277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.330999, 15.777925, 15.530338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.479977, 15.507491, 15.276033>,  <24.569363, 15.345230, 15.123450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.479977, 15.507491, 15.276033>,  <24.330999, 15.777925, 15.530338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.479977, 15.507491, 15.276033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619165, 0.691317, -0.372444,
		0.691318, -0.254926, 0.676086,
		0.372444, -0.676086, -0.635761,
		24.591709, 15.304666, 15.085305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005911, 15.830581, 15.581127>,  <24.330999, 15.777925, 15.530338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005911, 15.830581, 15.581127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.961073, 15.657707, 15.223210>,  <24.934170, 15.553983, 15.008460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.961073, 15.657707, 15.223210>,  <25.005911, 15.830581, 15.581127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961073, 15.657707, 15.223210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691847, 0.612425, -0.382470,
		0.713290, -0.661931, 0.230357,
		-0.112093, -0.432184, -0.894792,
		24.927444, 15.528052, 14.954773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675632, 15.867119, 15.249838>,  <25.005911, 15.830581, 15.581127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675632, 15.867119, 15.249838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.432680, 15.775726, 14.945499>,  <25.286909, 15.720891, 14.762897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.432680, 15.775726, 14.945499>,  <25.675632, 15.867119, 15.249838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432680, 15.775726, 14.945499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510868, 0.621105, -0.594342,
		0.608358, -0.749685, -0.260527,
		-0.607384, -0.228477, -0.760843,
		25.250465, 15.707182, 14.717246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150848, 15.616831, 14.739728>,  <25.675632, 15.867119, 15.249838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150848, 15.616831, 14.739728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.801144, 15.753753, 14.602036>,  <25.591320, 15.835906, 14.519422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.801144, 15.753753, 14.602036>,  <26.150848, 15.616831, 14.739728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801144, 15.753753, 14.602036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469558, 0.776254, -0.420649,
		0.123219, -0.529393, -0.839381,
		-0.874261, 0.342306, -0.344230,
		25.538866, 15.856444, 14.498768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267017, 15.805524, 14.074700>,  <26.150848, 15.616831, 14.739728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267017, 15.805524, 14.074700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.933172, 16.009222, 14.158691>,  <25.732864, 16.131441, 14.209086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.933172, 16.009222, 14.158691>,  <26.267017, 15.805524, 14.074700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933172, 16.009222, 14.158691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356747, 0.790170, -0.498361,
		-0.419706, -0.341030, -0.841158,
		-0.834613, 0.509245, 0.209977,
		25.682789, 16.161995, 14.221684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019777, 16.035835, 13.445323>,  <26.267017, 15.805524, 14.074700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019777, 16.035835, 13.445323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.848440, 16.287134, 13.705117>,  <25.745638, 16.437914, 13.860994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.848440, 16.287134, 13.705117>,  <26.019777, 16.035835, 13.445323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848440, 16.287134, 13.705117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222835, 0.770005, -0.597861,
		-0.875710, -0.111360, -0.469819,
		-0.428341, 0.628245, 0.649486,
		25.719938, 16.475607, 13.899963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618443, 16.515587, 13.058525>,  <26.019777, 16.035835, 13.445323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618443, 16.515587, 13.058525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.685730, 16.721918, 13.394531>,  <25.726103, 16.845716, 13.596135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.685730, 16.721918, 13.394531>,  <25.618443, 16.515587, 13.058525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685730, 16.721918, 13.394531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239611, 0.805204, -0.542433,
		-0.956185, 0.292523, 0.011852,
		0.168217, 0.515827, 0.840015,
		25.736195, 16.876667, 13.646536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348911, 17.258045, 12.984833>,  <25.618443, 16.515587, 13.058525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348911, 17.258045, 12.984833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.625715, 17.264450, 13.273516>,  <25.791798, 17.268293, 13.446726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.625715, 17.264450, 13.273516>,  <25.348911, 17.258045, 12.984833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625715, 17.264450, 13.273516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414876, 0.809335, -0.415759,
		-0.590760, 0.587129, 0.553427,
		0.692012, 0.016010, 0.721708,
		25.833319, 17.269253, 13.490028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303925, 18.009474, 13.360817>,  <25.348911, 17.258045, 12.984833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.303925, 18.009474, 13.360817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.655655, 17.830936, 13.427228>,  <25.866693, 17.723814, 13.467074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.655655, 17.830936, 13.427228>,  <25.303925, 18.009474, 13.360817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655655, 17.830936, 13.427228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476222, 0.824269, -0.306257,
		-0.000156, 0.348365, 0.937359,
		0.879325, -0.446343, 0.166027,
		25.919453, 17.697033, 13.477036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.638737, 18.573523, 13.716707>,  <25.303925, 18.009474, 13.360817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.638737, 18.573523, 13.716707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.918440, 18.318871, 13.586636>,  <26.086262, 18.166079, 13.508593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.918440, 18.318871, 13.586636>,  <25.638737, 18.573523, 13.716707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918440, 18.318871, 13.586636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485281, 0.756742, -0.438001,
		0.524921, 0.148473, 0.838102,
		0.699257, -0.636630, -0.325178,
		26.128218, 18.127882, 13.489082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.032413, 19.243824, 18.391800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.682358, 19.206728, 18.581760>,  <17.472324, 19.184471, 18.695736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.682358, 19.206728, 18.581760>,  <18.032413, 19.243824, 18.391800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682358, 19.206728, 18.581760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060137, -0.953005, -0.296926,
		0.480119, -0.288411, 0.828435,
		-0.875140, -0.092740, 0.474899,
		17.419815, 19.178905, 18.724230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.105635, 18.644905, 18.811945>,  <18.032413, 19.243824, 18.391800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.105635, 18.644905, 18.811945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712061, 18.701969, 18.769012>,  <17.475916, 18.736208, 18.743254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712061, 18.701969, 18.769012>,  <18.105635, 18.644905, 18.811945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.712061, 18.701969, 18.769012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104085, -0.946860, -0.304341,
		-0.145044, -0.288280, 0.946497,
		-0.983935, 0.142659, -0.107330,
		17.416880, 18.744766, 18.736813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.877872, 18.027428, 18.983999>,  <18.105635, 18.644905, 18.811945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.877872, 18.027428, 18.983999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.573206, 18.182547, 18.776354>,  <17.390406, 18.275618, 18.651766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.573206, 18.182547, 18.776354>,  <17.877872, 18.027428, 18.983999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573206, 18.182547, 18.776354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211423, -0.906028, -0.366624,
		-0.612508, -0.169492, 0.772079,
		-0.761665, 0.387796, -0.519115,
		17.344706, 18.298885, 18.620619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174822, 17.608387, 19.030544>,  <17.877872, 18.027428, 18.983999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.174822, 17.608387, 19.030544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.157764, 17.836874, 18.702669>,  <17.147530, 17.973967, 18.505943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.157764, 17.836874, 18.702669>,  <17.174822, 17.608387, 19.030544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157764, 17.836874, 18.702669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272587, -0.795960, -0.540503,
		-0.961186, 0.200388, 0.189648,
		-0.042642, 0.571220, -0.819689,
		17.144972, 18.008240, 18.456762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470810, 17.491646, 18.721273>,  <17.174822, 17.608387, 19.030544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.470810, 17.491646, 18.721273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705896, 17.616619, 18.422750>,  <16.846949, 17.691603, 18.243637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705896, 17.616619, 18.422750>,  <16.470810, 17.491646, 18.721273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705896, 17.616619, 18.422750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409257, -0.680912, -0.607344,
		-0.697925, 0.662377, -0.272317,
		0.587715, 0.312433, -0.746309,
		16.882212, 17.710348, 18.198858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.031740, 17.557081, 18.078825>,  <16.470810, 17.491646, 18.721273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.031740, 17.557081, 18.078825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409323, 17.523388, 17.951168>,  <16.635872, 17.503172, 17.874573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409323, 17.523388, 17.951168>,  <16.031740, 17.557081, 18.078825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.409323, 17.523388, 17.951168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299509, -0.624931, -0.720940,
		-0.138716, 0.776122, -0.615136,
		0.943955, -0.084233, -0.319144,
		16.692509, 17.498117, 17.855425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927509, 17.571136, 17.287800>,  <16.031740, 17.557081, 18.078825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.927509, 17.571136, 17.287800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279350, 17.409977, 17.388969>,  <16.490456, 17.313280, 17.449671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279350, 17.409977, 17.388969>,  <15.927509, 17.571136, 17.287800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.279350, 17.409977, 17.388969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108818, -0.687995, -0.717511,
		0.463096, 0.603601, -0.649005,
		0.879602, -0.402900, 0.252926,
		16.543232, 17.289106, 17.464848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409361, 17.425703, 16.645937>,  <15.927509, 17.571136, 17.287800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409361, 17.425703, 16.645937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520386, 17.184233, 16.944880>,  <16.587000, 17.039351, 17.124245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520386, 17.184233, 16.944880>,  <16.409361, 17.425703, 16.645937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520386, 17.184233, 16.944880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189339, -0.797036, -0.573485,
		0.941866, 0.017673, -0.335525,
		0.277561, -0.603674, 0.747354,
		16.603653, 17.003130, 17.169086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380003, 16.939032, 16.258379>,  <16.409361, 17.425703, 16.645937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380003, 16.939032, 16.258379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449121, 16.744896, 16.601212>,  <16.490593, 16.628414, 16.806911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449121, 16.744896, 16.601212>,  <16.380003, 16.939032, 16.258379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449121, 16.744896, 16.601212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215745, -0.867690, -0.447848,
		0.961039, -0.107524, -0.254644,
		0.172798, -0.485337, 0.857081,
		16.500961, 16.599295, 16.858335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688236, 16.339611, 16.089338>,  <16.380003, 16.939032, 16.258379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688236, 16.339611, 16.089338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535131, 16.256590, 16.449430>,  <16.443268, 16.206778, 16.665485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535131, 16.256590, 16.449430>,  <16.688236, 16.339611, 16.089338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535131, 16.256590, 16.449430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414941, -0.831996, -0.368247,
		0.825420, -0.514493, 0.232333,
		-0.382761, -0.207554, 0.900231,
		16.420303, 16.194324, 16.719500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909534, 15.627239, 16.079390>,  <16.688236, 16.339611, 16.089338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909534, 15.627239, 16.079390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610825, 15.705189, 16.333746>,  <16.431599, 15.751959, 16.486359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610825, 15.705189, 16.333746>,  <16.909534, 15.627239, 16.079390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.610825, 15.705189, 16.333746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540107, -0.735610, -0.408854,
		0.388092, -0.648769, 0.654586,
		-0.746773, 0.194873, 0.635889,
		16.386793, 15.763651, 16.524513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620424, 14.933989, 16.140049>,  <16.909534, 15.627239, 16.079390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620424, 14.933989, 16.140049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343443, 15.190475, 16.272322>,  <16.177254, 15.344366, 16.351686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343443, 15.190475, 16.272322>,  <16.620424, 14.933989, 16.140049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343443, 15.190475, 16.272322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710102, -0.686760, -0.155290,
		0.127526, -0.342351, 0.930878,
		-0.692454, 0.641214, 0.330684,
		16.135706, 15.382839, 16.371527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.706810, 14.131234, 15.927493>,  <16.620424, 14.933989, 16.140049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.706810, 14.131234, 15.927493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881962, 13.778644, 15.856770>,  <16.987053, 13.567089, 15.814336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881962, 13.778644, 15.856770>,  <16.706810, 14.131234, 15.927493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.881962, 13.778644, 15.856770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853601, 0.345901, 0.389510,
		-0.282186, -0.321481, 0.903892,
		0.437877, -0.881477, -0.176809,
		17.013325, 13.514200, 15.803727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001526, 13.767704, 16.548130>,  <16.706810, 14.131234, 15.927493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.001526, 13.767704, 16.548130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224443, 13.655343, 16.235588>,  <17.358194, 13.587926, 16.048063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224443, 13.655343, 16.235588>,  <17.001526, 13.767704, 16.548130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.224443, 13.655343, 16.235588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809748, 0.392020, 0.436610,
		0.183662, -0.876021, 0.445931,
		0.557293, -0.280903, -0.781356,
		17.391632, 13.571073, 16.001181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718910, 13.734293, 16.989527>,  <17.001526, 13.767704, 16.548130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718910, 13.734293, 16.989527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951408, 13.607097, 17.289137>,  <18.090906, 13.530779, 17.468903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951408, 13.607097, 17.289137>,  <17.718910, 13.734293, 16.989527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951408, 13.607097, 17.289137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386745, 0.701922, 0.598109,
		-0.715950, -0.637328, 0.285005,
		0.581243, -0.317992, 0.749025,
		18.125782, 13.511699, 17.513844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293236, 13.441661, 17.413250>,  <17.718910, 13.734293, 16.989527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293236, 13.441661, 17.413250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620468, 13.554079, 17.613953>,  <17.816807, 13.621531, 17.734373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620468, 13.554079, 17.613953>,  <17.293236, 13.441661, 17.413250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620468, 13.554079, 17.613953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569466, 0.517742, 0.638476,
		-0.080339, -0.808057, 0.583600,
		0.818080, 0.281046, 0.501756,
		17.865892, 13.638393, 17.764479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202456, 13.366453, 18.196428>,  <17.293236, 13.441661, 17.413250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.202456, 13.366453, 18.196428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512270, 13.612434, 18.137196>,  <17.698158, 13.760023, 18.101656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512270, 13.612434, 18.137196>,  <17.202456, 13.366453, 18.196428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.512270, 13.612434, 18.137196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408324, 0.664897, 0.625446,
		0.483079, -0.423965, 0.766087,
		0.774536, 0.614952, -0.148083,
		17.744631, 13.796920, 18.092770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468952, 13.563313, 18.819351>,  <17.202456, 13.366453, 18.196428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468952, 13.563313, 18.819351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613611, 13.860320, 18.593828>,  <17.700407, 14.038524, 18.458513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613611, 13.860320, 18.593828>,  <17.468952, 13.563313, 18.819351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.613611, 13.860320, 18.593828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268860, 0.662109, 0.699518,
		0.892707, -0.101394, 0.439084,
		0.361648, 0.742517, -0.563809,
		17.722105, 14.083075, 18.424686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713135, 13.962363, 19.277340>,  <17.468952, 13.563313, 18.819351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.713135, 13.962363, 19.277340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689133, 14.208350, 18.962833>,  <17.674732, 14.355943, 18.774130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689133, 14.208350, 18.962833>,  <17.713135, 13.962363, 19.277340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689133, 14.208350, 18.962833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196333, 0.765028, 0.613340,
		0.978699, 0.191174, 0.074832,
		-0.060006, 0.614967, -0.786266,
		17.671131, 14.392840, 18.726954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.910072, 14.557804, 19.585690>,  <17.713135, 13.962363, 19.277340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.910072, 14.557804, 19.585690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.724762, 14.654091, 19.244532>,  <17.613575, 14.711864, 19.039837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.724762, 14.654091, 19.244532>,  <17.910072, 14.557804, 19.585690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.724762, 14.654091, 19.244532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508134, 0.716338, 0.478185,
		0.726068, 0.654916, -0.209546,
		-0.463277, 0.240717, -0.852895,
		17.585779, 14.726306, 18.988663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870352, 15.300549, 19.547697>,  <17.910072, 14.557804, 19.585690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870352, 15.300549, 19.547697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578726, 15.188848, 19.297741>,  <17.403751, 15.121829, 19.147768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578726, 15.188848, 19.297741>,  <17.870352, 15.300549, 19.547697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.578726, 15.188848, 19.297741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619776, 0.656742, 0.429613,
		0.290422, 0.700507, -0.651878,
		-0.729063, -0.279250, -0.624890,
		17.360006, 15.105074, 19.110273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.598595, 15.861844, 19.327564>,  <17.870352, 15.300549, 19.547697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.598595, 15.861844, 19.327564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301830, 15.612123, 19.229738>,  <17.123772, 15.462291, 19.171043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301830, 15.612123, 19.229738>,  <17.598595, 15.861844, 19.327564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.301830, 15.612123, 19.229738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663121, 0.629244, 0.405367,
		-0.099180, 0.462923, -0.880832,
		-0.741912, -0.624302, -0.244565,
		17.079256, 15.424832, 19.156368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121983, 16.221830, 18.954702>,  <17.598595, 15.861844, 19.327564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121983, 16.221830, 18.954702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915283, 15.911570, 19.099665>,  <16.791264, 15.725413, 19.186642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915283, 15.911570, 19.099665>,  <17.121983, 16.221830, 18.954702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915283, 15.911570, 19.099665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674719, 0.629527, 0.385292,
		-0.526996, -0.045424, -0.848653,
		-0.516748, -0.775650, 0.362406,
		16.760260, 15.678875, 19.208387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453207, 16.424395, 18.866570>,  <17.121983, 16.221830, 18.954702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.453207, 16.424395, 18.866570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418413, 16.131393, 19.136644>,  <16.397537, 15.955593, 19.298689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418413, 16.131393, 19.136644>,  <16.453207, 16.424395, 18.866570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.418413, 16.131393, 19.136644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489495, 0.621721, 0.611439,
		-0.867657, -0.277315, -0.412635,
		-0.086983, -0.732502, 0.675185,
		16.392319, 15.911643, 19.339199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799562, 16.415550, 18.931675>,  <16.453207, 16.424395, 18.866570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.799562, 16.415550, 18.931675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947037, 16.250910, 19.265059>,  <16.035521, 16.152126, 19.465090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947037, 16.250910, 19.265059>,  <15.799562, 16.415550, 18.931675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947037, 16.250910, 19.265059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633606, 0.544786, 0.549319,
		-0.680158, -0.730611, -0.059938,
		0.368685, -0.411600, 0.833461,
		16.057642, 16.127430, 19.515097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187714, 16.264547, 19.368792>,  <15.799562, 16.415550, 18.931675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187714, 16.264547, 19.368792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495654, 16.246178, 19.623419>,  <15.680418, 16.235157, 19.776196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495654, 16.246178, 19.623419>,  <15.187714, 16.264547, 19.368792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495654, 16.246178, 19.623419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446561, 0.673832, 0.588671,
		-0.455974, -0.737456, 0.498243,
		0.769851, -0.045923, 0.636569,
		15.726609, 16.232401, 19.814390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878595, 16.133722, 20.086409>,  <15.187714, 16.264547, 19.368792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878595, 16.133722, 20.086409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230936, 16.312717, 20.148190>,  <15.442341, 16.420115, 20.185257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230936, 16.312717, 20.148190>,  <14.878595, 16.133722, 20.086409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.230936, 16.312717, 20.148190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451258, 0.695120, 0.559620,
		0.143060, -0.562640, 0.814230,
		0.880852, 0.447487, 0.154452,
		15.495192, 16.446964, 20.194525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891225, 16.356371, 20.797232>,  <14.878595, 16.133722, 20.086409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891225, 16.356371, 20.797232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184440, 16.571831, 20.631092>,  <15.360369, 16.701107, 20.531408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184440, 16.571831, 20.631092>,  <14.891225, 16.356371, 20.797232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184440, 16.571831, 20.631092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334541, 0.817186, 0.469351,
		0.592233, -0.205100, 0.779227,
		0.733037, 0.538648, -0.415350,
		15.404350, 16.733425, 20.506487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343195, 16.005226, 21.170942>,  <14.891225, 16.356371, 20.797232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.343195, 16.005226, 21.170942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.963195, 16.088409, 21.264111>,  <13.735195, 16.138319, 21.320011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.963195, 16.088409, 21.264111>,  <14.343195, 16.005226, 21.170942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.963195, 16.088409, 21.264111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311399, -0.575966, -0.755840,
		-0.023027, -0.790580, 0.611925,
		-0.950000, 0.207958, 0.232923,
		13.678195, 16.150797, 21.333986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.005786, 15.366498, 21.271517>,  <14.343195, 16.005226, 21.170942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.005786, 15.366498, 21.271517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727500, 15.643512, 21.195223>,  <13.560529, 15.809720, 21.149446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727500, 15.643512, 21.195223>,  <14.005786, 15.366498, 21.271517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.727500, 15.643512, 21.195223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414913, -0.604184, -0.680301,
		-0.586372, -0.394154, 0.707679,
		-0.695712, 0.692535, -0.190737,
		13.518785, 15.851272, 21.138002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.508389, 15.019135, 21.372698>,  <14.005786, 15.366498, 21.271517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.508389, 15.019135, 21.372698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.384429, 15.318749, 21.138466>,  <13.310053, 15.498518, 20.997927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.384429, 15.318749, 21.138466>,  <13.508389, 15.019135, 21.372698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.384429, 15.318749, 21.138466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387490, -0.661934, -0.641635,
		-0.868224, 0.028065, 0.495377,
		-0.309899, 0.749037, -0.585582,
		13.291459, 15.543461, 20.962791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.796949, 14.834529, 21.262035>,  <13.508389, 15.019135, 21.372698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.796949, 14.834529, 21.262035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.884780, 15.092558, 20.969278>,  <12.937478, 15.247375, 20.793623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.884780, 15.092558, 20.969278>,  <12.796949, 14.834529, 21.262035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.884780, 15.092558, 20.969278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489073, -0.576344, -0.654702,
		-0.844153, 0.501707, 0.188934,
		0.219577, 0.645071, -0.731894,
		12.950653, 15.286079, 20.749710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.127988, 14.984668, 21.044800>,  <12.796949, 14.834529, 21.262035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.127988, 14.984668, 21.044800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394084, 15.071650, 20.759096>,  <12.553741, 15.123838, 20.587673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394084, 15.071650, 20.759096>,  <12.127988, 14.984668, 21.044800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.394084, 15.071650, 20.759096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607304, -0.398897, -0.687068,
		-0.434322, 0.890839, -0.133301,
		0.665241, 0.217454, -0.714260,
		12.593657, 15.136886, 20.544819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.648310, 14.998237, 20.424688>,  <12.127988, 14.984668, 21.044800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.648310, 14.998237, 20.424688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034094, 14.983239, 20.320066>,  <12.265564, 14.974240, 20.257294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034094, 14.983239, 20.320066>,  <11.648310, 14.998237, 20.424688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034094, 14.983239, 20.320066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249104, -0.459111, -0.852739,
		-0.088109, 0.887587, -0.452134,
		0.964460, -0.037494, -0.261553,
		12.323432, 14.971991, 20.241600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.614736, 14.991355, 19.755878>,  <11.648310, 14.998237, 20.424688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.614736, 14.991355, 19.755878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.981174, 14.844745, 19.820902>,  <12.201037, 14.756779, 19.859915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.981174, 14.844745, 19.820902>,  <11.614736, 14.991355, 19.755878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.981174, 14.844745, 19.820902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087528, -0.578456, -0.811004,
		0.391286, 0.728730, -0.562003,
		0.916097, -0.366526, 0.162558,
		12.256003, 14.734787, 19.869669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.897385, 15.044853, 19.188206>,  <11.614736, 14.991355, 19.755878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.897385, 15.044853, 19.188206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.096725, 14.750937, 19.372263>,  <12.216329, 14.574588, 19.482697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.096725, 14.750937, 19.372263>,  <11.897385, 15.044853, 19.188206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096725, 14.750937, 19.372263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152854, -0.596897, -0.787623,
		0.853396, 0.322176, -0.409778,
		0.498349, -0.734790, 0.460143,
		12.246229, 14.530500, 19.510305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293387, 14.720459, 18.722473>,  <11.897385, 15.044853, 19.188206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293387, 14.720459, 18.722473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.283649, 14.433799, 19.001276>,  <12.277806, 14.261803, 19.168558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.283649, 14.433799, 19.001276>,  <12.293387, 14.720459, 18.722473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.283649, 14.433799, 19.001276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140231, -0.687871, -0.712157,
		0.989819, -0.115080, -0.083750,
		-0.024345, -0.716652, 0.697006,
		12.276346, 14.218803, 19.210379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.544471, 14.187162, 18.336624>,  <12.293387, 14.720459, 18.722473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.544471, 14.187162, 18.336624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.336303, 14.053515, 18.650955>,  <12.211402, 13.973327, 18.839554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.336303, 14.053515, 18.650955>,  <12.544471, 14.187162, 18.336624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.336303, 14.053515, 18.650955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312230, -0.782089, -0.539304,
		0.794780, -0.526024, 0.302693,
		-0.520420, -0.334118, 0.785830,
		12.180177, 13.953279, 18.886703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721020, 13.437930, 18.366982>,  <12.544471, 14.187162, 18.336624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721020, 13.437930, 18.366982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.372453, 13.455479, 18.562412>,  <12.163313, 13.466007, 18.679670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.372453, 13.455479, 18.562412>,  <12.721020, 13.437930, 18.366982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.372453, 13.455479, 18.562412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271135, -0.873100, -0.405194,
		0.408802, -0.485563, 0.772729,
		-0.871416, 0.043870, 0.488578,
		12.111028, 13.468639, 18.708986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.745102, 13.001723, 18.851635>,  <12.721020, 13.437930, 18.366982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.745102, 13.001723, 18.851635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358040, 12.987651, 18.751711>,  <12.125802, 12.979207, 18.691757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358040, 12.987651, 18.751711>,  <12.745102, 13.001723, 18.851635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.358040, 12.987651, 18.751711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072269, -0.987385, -0.140885,
		-0.241702, -0.154382, 0.957991,
		-0.967656, -0.035181, -0.249810,
		12.067743, 12.977097, 18.676767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.228252, 20.896122, 24.708025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.349591, 20.603376, 24.952110>,  <14.422395, 20.427729, 25.098560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.349591, 20.603376, 24.952110>,  <14.228252, 20.896122, 24.708025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.349591, 20.603376, 24.952110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020597, -0.635201, -0.772072,
		0.952658, 0.246774, -0.177612,
		0.303347, -0.731862, 0.610212,
		14.440596, 20.383818, 25.135174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.849666, 20.604956, 24.467955>,  <14.228252, 20.896122, 24.708025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.849666, 20.604956, 24.467955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.687882, 20.315407, 24.691534>,  <14.590813, 20.141678, 24.825682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.687882, 20.315407, 24.691534>,  <14.849666, 20.604956, 24.467955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687882, 20.315407, 24.691534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097168, -0.641723, -0.760756,
		0.909381, -0.253381, 0.329886,
		-0.404457, -0.723871, 0.558950,
		14.566545, 20.098246, 24.859219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022313, 19.982189, 24.068871>,  <14.849666, 20.604956, 24.467955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022313, 19.982189, 24.068871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.753087, 19.835375, 24.325703>,  <14.591552, 19.747286, 24.479803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.753087, 19.835375, 24.325703>,  <15.022313, 19.982189, 24.068871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.753087, 19.835375, 24.325703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276683, -0.680166, -0.678838,
		0.685880, -0.634555, 0.356243,
		-0.673064, -0.367035, 0.642083,
		14.551167, 19.725264, 24.518328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.177281, 19.216208, 24.170631>,  <15.022313, 19.982189, 24.068871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.177281, 19.216208, 24.170631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.797669, 19.245214, 24.293324>,  <14.569902, 19.262619, 24.366940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.797669, 19.245214, 24.293324>,  <15.177281, 19.216208, 24.170631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.797669, 19.245214, 24.293324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238467, -0.801553, -0.548311,
		0.206098, -0.593509, 0.777991,
		-0.949029, 0.072519, 0.306731,
		14.512960, 19.266970, 24.385344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.003191, 18.468151, 24.493105>,  <15.177281, 19.216208, 24.170631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.003191, 18.468151, 24.493105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.683893, 18.673441, 24.366991>,  <14.492314, 18.796616, 24.291323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.683893, 18.673441, 24.366991>,  <15.003191, 18.468151, 24.493105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.683893, 18.673441, 24.366991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270011, -0.772798, -0.574350,
		-0.538423, -0.373341, 0.755458,
		-0.798245, 0.513225, -0.315286,
		14.444420, 18.827408, 24.272406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.511517, 17.883295, 24.532671>,  <15.003191, 18.468151, 24.493105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.511517, 17.883295, 24.532671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.333725, 18.175148, 24.324797>,  <14.227050, 18.350260, 24.200071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.333725, 18.175148, 24.324797>,  <14.511517, 17.883295, 24.532671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333725, 18.175148, 24.324797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380902, -0.679026, -0.627564,
		-0.810774, -0.080987, 0.579730,
		-0.444477, 0.729633, -0.519689,
		14.200381, 18.394037, 24.168890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863312, 17.694975, 24.356844>,  <14.511517, 17.883295, 24.532671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863312, 17.694975, 24.356844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.961720, 17.969637, 24.083208>,  <14.020765, 18.134434, 23.919025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.961720, 17.969637, 24.083208>,  <13.863312, 17.694975, 24.356844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.961720, 17.969637, 24.083208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362444, -0.589409, -0.721963,
		-0.898948, 0.425563, 0.103866,
		0.246022, 0.686653, -0.684091,
		14.035527, 18.175632, 23.877981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347462, 17.713665, 23.926018>,  <13.863312, 17.694975, 24.356844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347462, 17.713665, 23.926018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.643827, 17.869917, 23.707493>,  <13.821647, 17.963667, 23.576378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.643827, 17.869917, 23.707493>,  <13.347462, 17.713665, 23.926018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.643827, 17.869917, 23.707493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332172, -0.493841, -0.803606,
		-0.583701, 0.776873, -0.236139,
		0.740915, 0.390628, -0.546311,
		13.866102, 17.987104, 23.543600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.009987, 17.979881, 23.431700>,  <13.347462, 17.713665, 23.926018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.009987, 17.979881, 23.431700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.381233, 17.941870, 23.287716>,  <13.603981, 17.919064, 23.201324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.381233, 17.941870, 23.287716>,  <13.009987, 17.979881, 23.431700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.381233, 17.941870, 23.287716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364520, -0.428515, -0.826741,
		-0.075684, 0.898524, -0.432351,
		0.928115, -0.095029, -0.359961,
		13.659668, 17.913361, 23.179728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.918115, 17.988733, 22.801886>,  <13.009987, 17.979881, 23.431700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.918115, 17.988733, 22.801886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.279181, 17.816938, 22.812704>,  <13.495822, 17.713861, 22.819195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.279181, 17.816938, 22.812704>,  <12.918115, 17.988733, 22.801886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.279181, 17.816938, 22.812704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271832, -0.617790, -0.737864,
		0.333613, 0.658694, -0.674407,
		0.902668, -0.429486, 0.027048,
		13.549982, 17.688093, 22.820818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.992887, 17.733057, 22.110554>,  <12.918115, 17.988733, 22.801886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.992887, 17.733057, 22.110554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.260255, 17.520714, 22.318939>,  <13.420675, 17.393307, 22.443972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.260255, 17.520714, 22.318939>,  <12.992887, 17.733057, 22.110554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260255, 17.520714, 22.318939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020099, -0.713061, -0.700814,
		0.743513, 0.457966, -0.487293,
		0.668419, -0.530859, 0.520965,
		13.460780, 17.361456, 22.475229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558250, 17.622862, 21.651281>,  <12.992887, 17.733057, 22.110554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558250, 17.622862, 21.651281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.521854, 17.329573, 21.920832>,  <13.500017, 17.153599, 22.082561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.521854, 17.329573, 21.920832>,  <13.558250, 17.622862, 21.651281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.521854, 17.329573, 21.920832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122668, -0.679781, -0.723084,
		0.988268, 0.016869, 0.151796,
		-0.090990, -0.733221, 0.673875,
		13.494557, 17.109606, 22.122993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095517, 17.163773, 21.429190>,  <13.558250, 17.622862, 21.651281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095517, 17.163773, 21.429190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.839278, 16.980215, 21.675459>,  <13.685535, 16.870081, 21.823221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.839278, 16.980215, 21.675459>,  <14.095517, 17.163773, 21.429190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.839278, 16.980215, 21.675459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040173, -0.780659, -0.623664,
		0.766826, -0.424251, 0.481653,
		-0.640597, -0.458893, 0.615673,
		13.647099, 16.842546, 21.860161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401284, 16.616404, 21.672325>,  <14.095517, 17.163773, 21.429190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.401284, 16.616404, 21.672325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.007045, 16.550632, 21.656534>,  <13.770501, 16.511169, 21.647060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.007045, 16.550632, 21.656534>,  <14.401284, 16.616404, 21.672325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007045, 16.550632, 21.656534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154255, -0.778581, -0.608290,
		0.069285, -0.605619, 0.792732,
		-0.985599, -0.164428, -0.039476,
		13.711365, 16.501305, 21.644691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075930, 16.710787, 21.378788>,  <14.401284, 16.616404, 21.672325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075930, 16.710787, 21.378788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.263387, 16.909527, 21.086620>,  <15.375861, 17.028770, 20.911320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.263387, 16.909527, 21.086620>,  <15.075930, 16.710787, 21.378788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.263387, 16.909527, 21.086620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066631, 0.804603, 0.590063,
		0.880871, -0.325198, 0.343965,
		0.468643, 0.496851, -0.730420,
		15.403979, 17.058582, 20.867495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.683301, 17.078127, 21.665771>,  <15.075930, 16.710787, 21.378788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.683301, 17.078127, 21.665771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.629554, 17.275003, 21.321751>,  <15.597305, 17.393129, 21.115337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.629554, 17.275003, 21.321751>,  <15.683301, 17.078127, 21.665771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629554, 17.275003, 21.321751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322882, 0.842304, 0.431591,
		0.936853, -0.219704, -0.272099,
		-0.134368, 0.492193, -0.860053,
		15.589244, 17.422661, 21.063734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385714, 17.353500, 21.514305>,  <15.683301, 17.078127, 21.665771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385714, 17.353500, 21.514305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.102905, 17.569494, 21.331640>,  <15.933221, 17.699091, 21.222042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.102905, 17.569494, 21.331640>,  <16.385714, 17.353500, 21.514305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102905, 17.569494, 21.331640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490303, 0.839629, 0.233724,
		0.509633, -0.058655, -0.858391,
		-0.707020, 0.539985, -0.456661,
		15.890800, 17.731489, 21.194641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725784, 17.968281, 21.217495>,  <16.385714, 17.353500, 21.514305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725784, 17.968281, 21.217495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.339764, 18.068216, 21.185860>,  <16.108150, 18.128178, 21.166878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.339764, 18.068216, 21.185860>,  <16.725784, 17.968281, 21.217495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339764, 18.068216, 21.185860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227717, 0.948847, 0.218711,
		0.129684, 0.193059, -0.972579,
		-0.965053, 0.249836, -0.079088,
		16.050247, 18.143167, 21.162134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725908, 18.490383, 20.769403>,  <16.725784, 17.968281, 21.217495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725908, 18.490383, 20.769403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.406401, 18.510729, 21.009197>,  <16.214697, 18.522936, 21.153074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.406401, 18.510729, 21.009197>,  <16.725908, 18.490383, 20.769403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.406401, 18.510729, 21.009197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258883, 0.928514, 0.266161,
		-0.543094, 0.367798, -0.754834,
		-0.798767, 0.050863, 0.599486,
		16.166771, 18.525988, 21.189043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398106, 19.171616, 20.615267>,  <16.725908, 18.490383, 20.769403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398106, 19.171616, 20.615267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.229504, 19.069649, 20.963371>,  <16.128344, 19.008469, 21.172234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.229504, 19.069649, 20.963371>,  <16.398106, 19.171616, 20.615267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229504, 19.069649, 20.963371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201015, 0.909536, 0.363782,
		-0.884267, 0.328271, -0.332131,
		-0.421504, -0.254918, 0.870260,
		16.103052, 18.993174, 21.224449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827636, 19.642410, 20.773535>,  <16.398106, 19.171616, 20.615267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827636, 19.642410, 20.773535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.944495, 19.465590, 21.112766>,  <16.014610, 19.359497, 21.316305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.944495, 19.465590, 21.112766>,  <15.827636, 19.642410, 20.773535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.944495, 19.465590, 21.112766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197156, 0.895557, 0.398883,
		-0.935831, 0.050672, 0.348788,
		0.292148, -0.442052, 0.848080,
		16.032139, 19.332973, 21.367189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621887, 20.123369, 21.318960>,  <15.827636, 19.642410, 20.773535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621887, 20.123369, 21.318960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.864527, 19.895905, 21.541189>,  <16.010111, 19.759426, 21.674526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.864527, 19.895905, 21.541189>,  <15.621887, 20.123369, 21.318960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.864527, 19.895905, 21.541189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086222, 0.741765, 0.665094,
		-0.790318, -0.355543, 0.498986,
		0.606600, -0.568660, 0.555574,
		16.046507, 19.725307, 21.707861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356995, 20.065170, 22.051519>,  <15.621887, 20.123369, 21.318960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356995, 20.065170, 22.051519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.747875, 19.994057, 22.097946>,  <15.982404, 19.951387, 22.125803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.747875, 19.994057, 22.097946>,  <15.356995, 20.065170, 22.051519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747875, 19.994057, 22.097946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075586, 0.802154, 0.592313,
		-0.198409, -0.570036, 0.797304,
		0.977201, -0.177785, 0.116068,
		16.041035, 19.940722, 22.132767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468098, 20.150484, 22.725376>,  <15.356995, 20.065170, 22.051519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468098, 20.150484, 22.725376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.836535, 20.172855, 22.571255>,  <16.057598, 20.186277, 22.478783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.836535, 20.172855, 22.571255>,  <15.468098, 20.150484, 22.725376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.836535, 20.172855, 22.571255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271731, 0.616398, 0.739064,
		0.278833, -0.785446, 0.552563,
		0.921094, 0.055928, -0.385302,
		16.112864, 20.189634, 22.455664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887198, 20.014046, 23.319151>,  <15.468098, 20.150484, 22.725376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887198, 20.014046, 23.319151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.091204, 20.207455, 23.034590>,  <16.213606, 20.323500, 22.863853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.091204, 20.207455, 23.034590>,  <15.887198, 20.014046, 23.319151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091204, 20.207455, 23.034590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359433, 0.631589, 0.686952,
		0.781471, -0.606055, 0.148324,
		0.510011, 0.483521, -0.711404,
		16.244207, 20.352510, 22.821169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553329, 20.116209, 23.567616>,  <15.887198, 20.014046, 23.319151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553329, 20.116209, 23.567616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.536860, 20.407856, 23.294355>,  <16.526978, 20.582844, 23.130400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.536860, 20.407856, 23.294355>,  <16.553329, 20.116209, 23.567616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536860, 20.407856, 23.294355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489139, 0.610904, 0.622526,
		0.871233, -0.308523, -0.381794,
		-0.041176, 0.729116, -0.683151,
		16.524508, 20.626591, 23.089411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180096, 20.279091, 23.526232>,  <16.553329, 20.116209, 23.567616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180096, 20.279091, 23.526232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.981081, 20.592838, 23.378056>,  <16.861671, 20.781086, 23.289150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.981081, 20.592838, 23.378056>,  <17.180096, 20.279091, 23.526232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981081, 20.592838, 23.378056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310788, 0.559885, 0.768075,
		0.809857, 0.267017, -0.522335,
		-0.497537, 0.784366, -0.370441,
		16.831820, 20.828148, 23.266924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698059, 20.771261, 23.515938>,  <17.180096, 20.279091, 23.526232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698059, 20.771261, 23.515938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.351702, 20.971279, 23.521353>,  <17.143887, 21.091290, 23.524603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.351702, 20.971279, 23.521353>,  <17.698059, 20.771261, 23.515938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351702, 20.971279, 23.521353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317732, 0.528889, 0.786971,
		0.386360, 0.685735, -0.616842,
		-0.865894, 0.500044, 0.013538,
		17.091934, 21.121292, 23.525414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<11.950040, 22.853418, 23.548916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.309229, 22.772377, 23.705170>,  <12.524742, 22.723753, 23.798922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.309229, 22.772377, 23.705170>,  <11.950040, 22.853418, 23.548916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.309229, 22.772377, 23.705170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182940, -0.635486, -0.750127,
		0.400222, 0.745057, -0.533585,
		0.897973, -0.202603, 0.390636,
		12.578621, 22.711596, 23.822361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435070, 23.107838, 23.047543>,  <11.950040, 22.853418, 23.548916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.435070, 23.107838, 23.047543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.566669, 22.800282, 23.266838>,  <12.645629, 22.615747, 23.398415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.566669, 22.800282, 23.266838>,  <12.435070, 23.107838, 23.047543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.566669, 22.800282, 23.266838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106416, -0.546673, -0.830557,
		0.938315, 0.331594, -0.098033,
		0.328999, -0.768891, 0.548238,
		12.665369, 22.569614, 23.431309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.901883, 22.718098, 22.562483>,  <12.435070, 23.107838, 23.047543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.901883, 22.718098, 22.562483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.834207, 22.448385, 22.850016>,  <12.793600, 22.286558, 23.022535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.834207, 22.448385, 22.850016>,  <12.901883, 22.718098, 22.562483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834207, 22.448385, 22.850016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117806, -0.737953, -0.664491,
		0.978517, -0.027744, 0.204290,
		-0.169192, -0.674282, 0.718831,
		12.783449, 22.246101, 23.065664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.390221, 22.166742, 22.504753>,  <12.901883, 22.718098, 22.562483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.390221, 22.166742, 22.504753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.073498, 21.990879, 22.674337>,  <12.883464, 21.885361, 22.776087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.073498, 21.990879, 22.674337>,  <13.390221, 22.166742, 22.504753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.073498, 21.990879, 22.674337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112304, -0.787104, -0.606510,
		0.600358, -0.432627, 0.672610,
		-0.791807, -0.439660, 0.423958,
		12.835956, 21.858980, 22.801525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559850, 21.403326, 22.819569>,  <13.390221, 22.166742, 22.504753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559850, 21.403326, 22.819569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.173856, 21.440987, 22.721638>,  <12.942260, 21.463583, 22.662878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.173856, 21.440987, 22.721638>,  <13.559850, 21.403326, 22.819569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.173856, 21.440987, 22.721638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015830, -0.910757, -0.412639,
		-0.261830, -0.402066, 0.877376,
		-0.964984, 0.094152, -0.244828,
		12.884360, 21.469233, 22.648190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.417942, 20.665974, 22.854088>,  <13.559850, 21.403326, 22.819569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.417942, 20.665974, 22.854088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.111708, 20.830795, 22.656467>,  <12.927967, 20.929689, 22.537895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.111708, 20.830795, 22.656467>,  <13.417942, 20.665974, 22.854088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.111708, 20.830795, 22.656467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084006, -0.825413, -0.558244,
		-0.637825, -0.385881, 0.666540,
		-0.765586, 0.412056, -0.494052,
		12.882031, 20.954412, 22.508251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.011751, 20.119822, 22.777752>,  <13.417942, 20.665974, 22.854088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.011751, 20.119822, 22.777752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.810727, 20.359324, 22.528296>,  <12.690113, 20.503025, 22.378622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.810727, 20.359324, 22.528296>,  <13.011751, 20.119822, 22.777752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.810727, 20.359324, 22.528296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378373, -0.800929, -0.464055,
		-0.777346, 0.002754, 0.629067,
		-0.502560, 0.598753, -0.623641,
		12.659959, 20.538950, 22.341204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.346688, 19.746031, 22.685579>,  <13.011751, 20.119822, 22.777752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.346688, 19.746031, 22.685579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.391845, 20.017694, 22.395475>,  <12.418939, 20.180693, 22.221413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.391845, 20.017694, 22.395475>,  <12.346688, 19.746031, 22.685579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.391845, 20.017694, 22.395475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474399, -0.604513, -0.639929,
		-0.873041, 0.416304, 0.253948,
		0.112891, 0.679157, -0.725260,
		12.425712, 20.221441, 22.177898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.693969, 19.986511, 22.293934>,  <12.346688, 19.746031, 22.685579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.693969, 19.986511, 22.293934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.988255, 20.059931, 22.033155>,  <12.164826, 20.103983, 21.876688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.988255, 20.059931, 22.033155>,  <11.693969, 19.986511, 22.293934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.988255, 20.059931, 22.033155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429199, -0.618284, -0.658417,
		-0.523938, 0.764222, -0.376103,
		0.735715, 0.183547, -0.651946,
		12.208969, 20.114994, 21.837572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.462867, 20.275000, 21.657499>,  <11.693969, 19.986511, 22.293934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.462867, 20.275000, 21.657499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.819004, 20.119892, 21.562063>,  <12.032686, 20.026827, 21.504801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.819004, 20.119892, 21.562063>,  <11.462867, 20.275000, 21.657499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.819004, 20.119892, 21.562063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410485, -0.456973, -0.789099,
		0.196958, 0.800506, -0.566036,
		0.890342, -0.387769, -0.238591,
		12.086107, 20.003561, 21.490486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.428844, 20.406406, 20.918226>,  <11.462867, 20.275000, 21.657499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.428844, 20.406406, 20.918226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.725102, 20.146688, 20.987347>,  <11.902858, 19.990858, 21.028818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.725102, 20.146688, 20.987347>,  <11.428844, 20.406406, 20.918226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.725102, 20.146688, 20.987347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280590, -0.532580, -0.798516,
		0.610503, 0.542931, -0.576639,
		0.740645, -0.649295, 0.172800,
		11.947296, 19.951900, 21.039186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.680281, 20.421917, 20.286568>,  <11.428844, 20.406406, 20.918226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.680281, 20.421917, 20.286568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.822900, 20.085062, 20.448397>,  <11.908471, 19.882950, 20.545494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.822900, 20.085062, 20.448397>,  <11.680281, 20.421917, 20.286568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.822900, 20.085062, 20.448397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114131, -0.469052, -0.875765,
		0.927279, 0.266079, -0.263353,
		0.356549, -0.842136, 0.404574,
		11.929865, 19.832420, 20.569769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.934865, 20.074207, 19.737959>,  <11.680281, 20.421917, 20.286568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.934865, 20.074207, 19.737959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.934474, 19.789125, 20.018545>,  <11.934239, 19.618076, 20.186897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.934474, 19.789125, 20.018545>,  <11.934865, 20.074207, 19.737959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.934474, 19.789125, 20.018545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153021, -0.693097, -0.704415,
		0.988222, -0.108027, -0.108382,
		-0.000977, -0.712704, 0.701464,
		11.934181, 19.575314, 20.228985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.463055, 19.580250, 19.570797>,  <11.934865, 20.074207, 19.737959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.463055, 19.580250, 19.570797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.179213, 19.408726, 19.794434>,  <12.008907, 19.305811, 19.928616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.179213, 19.408726, 19.794434>,  <12.463055, 19.580250, 19.570797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.179213, 19.408726, 19.794434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190138, -0.647514, -0.737952,
		0.678460, -0.629959, 0.377946,
		-0.709605, -0.428809, 0.559092,
		11.966331, 19.280083, 19.962162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.115651, 19.505634, 19.460695>,  <12.463055, 19.580250, 19.570797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.115651, 19.505634, 19.460695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.196809, 19.682434, 19.111189>,  <13.245503, 19.788513, 18.901485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.196809, 19.682434, 19.111189>,  <13.115651, 19.505634, 19.460695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.196809, 19.682434, 19.111189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141850, 0.869648, 0.472854,
		0.968872, -0.219884, 0.113749,
		0.202895, 0.441999, -0.873768,
		13.257677, 19.815033, 18.849058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.756142, 19.856152, 19.459169>,  <13.115651, 19.505634, 19.460695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.756142, 19.856152, 19.459169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.547756, 20.033653, 19.167505>,  <13.422725, 20.140154, 18.992506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.547756, 20.033653, 19.167505>,  <13.756142, 19.856152, 19.459169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.547756, 20.033653, 19.167505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213120, 0.894808, 0.392298,
		0.826544, 0.048974, -0.560737,
		-0.520965, 0.443756, -0.729161,
		13.391467, 20.166780, 18.948757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221081, 20.306137, 19.175371>,  <13.756142, 19.856152, 19.459169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221081, 20.306137, 19.175371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.858229, 20.435421, 19.067556>,  <13.640517, 20.512991, 19.002869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.858229, 20.435421, 19.067556>,  <14.221081, 20.306137, 19.175371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858229, 20.435421, 19.067556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216824, 0.907842, 0.358901,
		0.360696, 0.267128, -0.893611,
		-0.907131, 0.323210, -0.269535,
		13.586089, 20.532385, 18.986696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254276, 21.029709, 19.175455>,  <14.221081, 20.306137, 19.175371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254276, 21.029709, 19.175455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.856246, 21.007748, 19.142441>,  <13.617428, 20.994572, 19.122631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.856246, 21.007748, 19.142441>,  <14.254276, 21.029709, 19.175455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856246, 21.007748, 19.142441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094058, 0.785803, 0.611283,
		0.031297, 0.616035, -0.787097,
		-0.995075, -0.054902, -0.082537,
		13.557724, 20.991278, 19.117680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.016810, 21.637165, 18.888111>,  <14.254276, 21.029709, 19.175455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.016810, 21.637165, 18.888111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.753809, 21.471550, 19.139908>,  <13.596008, 21.372181, 19.290987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.753809, 21.471550, 19.139908>,  <14.016810, 21.637165, 18.888111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753809, 21.471550, 19.139908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035301, 0.851489, 0.523182,
		-0.752625, 0.321772, -0.574473,
		-0.657502, -0.414040, 0.629493,
		13.556559, 21.347338, 19.328756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.627317, 22.244699, 19.013275>,  <14.016810, 21.637165, 18.888111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.627317, 22.244699, 19.013275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.505929, 21.982592, 19.289978>,  <13.433096, 21.825327, 19.455999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.505929, 21.982592, 19.289978>,  <13.627317, 22.244699, 19.013275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.505929, 21.982592, 19.289978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213222, 0.754285, 0.620960,
		-0.928678, 0.040945, -0.368621,
		-0.303470, -0.655270, 0.691757,
		13.414888, 21.786011, 19.497505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.025227, 22.529510, 19.250622>,  <13.627317, 22.244699, 19.013275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.025227, 22.529510, 19.250622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.184350, 22.281521, 19.521143>,  <13.279824, 22.132727, 19.683455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.184350, 22.281521, 19.521143>,  <13.025227, 22.529510, 19.250622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.184350, 22.281521, 19.521143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069840, 0.714537, 0.696103,
		-0.914807, -0.324148, 0.240949,
		0.397807, -0.619972, 0.676302,
		13.303692, 22.095530, 19.724033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.731539, 22.724848, 19.912376>,  <13.025227, 22.529510, 19.250622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.731539, 22.724848, 19.912376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.044060, 22.502863, 20.026627>,  <13.231572, 22.369671, 20.095177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.044060, 22.502863, 20.026627>,  <12.731539, 22.724848, 19.912376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.044060, 22.502863, 20.026627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130762, 0.593005, 0.794510,
		-0.610300, -0.583405, 0.535885,
		0.781303, -0.554963, 0.285624,
		13.278451, 22.336374, 20.112314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649741, 22.695524, 20.630419>,  <12.731539, 22.724848, 19.912376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649741, 22.695524, 20.630419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.035268, 22.592335, 20.603567>,  <13.266583, 22.530420, 20.587456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.035268, 22.592335, 20.603567>,  <12.649741, 22.695524, 20.630419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.035268, 22.592335, 20.603567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221229, 0.633626, 0.741334,
		-0.148713, -0.729360, 0.667771,
		0.963816, -0.257976, -0.067127,
		13.324413, 22.514942, 20.583429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.865910, 22.576019, 21.372614>,  <12.649741, 22.695524, 20.630419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.865910, 22.576019, 21.372614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.192020, 22.634806, 21.148569>,  <13.387687, 22.670078, 21.014143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.192020, 22.634806, 21.148569>,  <12.865910, 22.576019, 21.372614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.192020, 22.634806, 21.148569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352035, 0.642203, 0.680916,
		0.459777, -0.752313, 0.471836,
		0.815277, 0.146967, -0.560111,
		13.436604, 22.678896, 20.980536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.549025, 22.400705, 21.730330>,  <12.865910, 22.576019, 21.372614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.549025, 22.400705, 21.730330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.671152, 22.642860, 21.436312>,  <13.744429, 22.788153, 21.259901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.671152, 22.642860, 21.436312>,  <13.549025, 22.400705, 21.730330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671152, 22.642860, 21.436312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384855, 0.627603, 0.676758,
		0.871015, -0.489512, -0.041367,
		0.305319, 0.605387, -0.735042,
		13.762748, 22.824476, 21.215799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.182845, 22.609600, 21.859213>,  <13.549025, 22.400705, 21.730330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.182845, 22.609600, 21.859213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.075093, 22.906311, 21.613546>,  <14.010443, 23.084337, 21.466146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.075093, 22.906311, 21.613546>,  <14.182845, 22.609600, 21.859213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075093, 22.906311, 21.613546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314134, 0.670539, 0.672084,
		0.910360, -0.011885, -0.413647,
		-0.269379, 0.741779, -0.614165,
		13.994280, 23.128845, 21.429296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.650302, 23.064896, 22.004492>,  <14.182845, 22.609600, 21.859213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.650302, 23.064896, 22.004492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.366379, 23.280535, 21.823143>,  <14.196025, 23.409918, 21.714334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.366379, 23.280535, 21.823143>,  <14.650302, 23.064896, 22.004492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366379, 23.280535, 21.823143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088298, 0.706653, 0.702029,
		0.698840, 0.458274, -0.549189,
		-0.709807, 0.539098, -0.453373,
		14.153437, 23.442265, 21.687132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969879, 23.662884, 22.064053>,  <14.650302, 23.064896, 22.004492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969879, 23.662884, 22.064053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.585408, 23.758024, 22.008106>,  <14.354726, 23.815109, 21.974539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.585408, 23.758024, 22.008106>,  <14.969879, 23.662884, 22.064053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585408, 23.758024, 22.008106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100750, 0.774424, 0.624594,
		0.256877, 0.586254, -0.768323,
		-0.961178, 0.237852, -0.139867,
		14.297054, 23.829380, 21.966146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493693, 23.959040, 21.536125>,  <14.969879, 23.662884, 22.064053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.493693, 23.959040, 21.536125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.882753, 23.883451, 21.590151>,  <16.116190, 23.838099, 21.622566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.882753, 23.883451, 21.590151>,  <15.493693, 23.959040, 21.536125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.882753, 23.883451, 21.590151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035622, -0.695958, -0.717198,
		0.229530, 0.692771, -0.683655,
		0.972649, -0.188972, 0.135065,
		16.174549, 23.826759, 21.630671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743031, 23.845419, 20.867498>,  <15.493693, 23.959040, 21.536125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743031, 23.845419, 20.867498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.025616, 23.678099, 21.095860>,  <16.195168, 23.577705, 21.232876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.025616, 23.678099, 21.095860>,  <15.743031, 23.845419, 20.867498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025616, 23.678099, 21.095860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006113, -0.810225, -0.586088,
		0.707723, 0.410560, -0.574951,
		0.706463, -0.418302, 0.570905,
		16.237555, 23.552608, 21.267132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.327904, 23.774660, 20.469437>,  <15.743031, 23.845419, 20.867498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.327904, 23.774660, 20.469437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.332624, 23.493843, 20.754251>,  <16.335457, 23.325354, 20.925140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.332624, 23.493843, 20.754251>,  <16.327904, 23.774660, 20.469437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.332624, 23.493843, 20.754251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043074, -0.711785, -0.701076,
		0.999002, -0.022396, -0.038640,
		0.011802, -0.702040, 0.712039,
		16.336164, 23.283232, 20.967863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.828617, 23.249496, 20.296627>,  <16.327904, 23.774660, 20.469437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.828617, 23.249496, 20.296627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.620708, 23.062407, 20.582584>,  <16.495962, 22.950153, 20.754158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.620708, 23.062407, 20.582584>,  <16.828617, 23.249496, 20.296627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.620708, 23.062407, 20.582584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075716, -0.808297, -0.583886,
		0.850943, -0.357616, 0.384717,
		-0.519772, -0.467724, 0.714892,
		16.464777, 22.922089, 20.797052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.260529, 22.705009, 20.399618>,  <16.828617, 23.249496, 20.296627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.260529, 22.705009, 20.399618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.916977, 22.572809, 20.556128>,  <16.710846, 22.493488, 20.650034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.916977, 22.572809, 20.556128>,  <17.260529, 22.705009, 20.399618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916977, 22.572809, 20.556128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150779, -0.893245, -0.423533,
		0.489483, -0.304767, 0.817021,
		-0.858879, -0.330501, 0.391276,
		16.659313, 22.473660, 20.673510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364372, 22.111481, 20.782299>,  <17.260529, 22.705009, 20.399618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364372, 22.111481, 20.782299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.969418, 22.076122, 20.729763>,  <16.732445, 22.054907, 20.698242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.969418, 22.076122, 20.729763>,  <17.364372, 22.111481, 20.782299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.969418, 22.076122, 20.729763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135638, -0.900181, -0.413855,
		-0.081647, -0.426451, 0.900818,
		-0.987388, -0.088395, -0.131340,
		16.673201, 22.049604, 20.690361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221945, 21.482714, 21.035276>,  <17.364372, 22.111481, 20.782299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221945, 21.482714, 21.035276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.920795, 21.598078, 20.798634>,  <16.740107, 21.667297, 20.656647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.920795, 21.598078, 20.798634>,  <17.221945, 21.482714, 21.035276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.920795, 21.598078, 20.798634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015903, -0.890641, -0.454429,
		-0.657973, -0.351536, 0.665954,
		-0.752874, 0.288411, -0.591608,
		16.694933, 21.684601, 20.621151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847467, 20.896248, 21.069832>,  <17.221945, 21.482714, 21.035276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847467, 20.896248, 21.069832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.736654, 21.087856, 20.736656>,  <16.670166, 21.202822, 20.536751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.736654, 21.087856, 20.736656>,  <16.847467, 20.896248, 21.069832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736654, 21.087856, 20.736656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142069, -0.877762, -0.457548,
		-0.950300, -0.008420, 0.311221,
		-0.277031, 0.479023, -0.832941,
		16.653545, 21.231564, 20.486774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.362673, 20.498171, 20.781895>,  <16.847467, 20.896248, 21.069832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.362673, 20.498171, 20.781895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.444897, 20.721550, 20.460428>,  <16.494232, 20.855577, 20.267548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.444897, 20.721550, 20.460428>,  <16.362673, 20.498171, 20.781895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444897, 20.721550, 20.460428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207702, -0.777602, -0.593459,
		-0.956349, 0.288916, -0.043855,
		0.205562, 0.558446, -0.803668,
		16.506565, 20.889084, 20.219328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899378, 20.288301, 20.243006>,  <16.362673, 20.498171, 20.781895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899378, 20.288301, 20.243006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.180040, 20.492317, 20.043993>,  <16.348438, 20.614727, 19.924585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.180040, 20.492317, 20.043993>,  <15.899378, 20.288301, 20.243006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180040, 20.492317, 20.043993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065748, -0.741643, -0.667565,
		-0.709475, 0.435689, -0.553913,
		0.701657, 0.510039, -0.497532,
		16.390537, 20.645329, 19.894733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799590, 20.213688, 19.443460>,  <15.899378, 20.288301, 20.243006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.799590, 20.213688, 19.443460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.173214, 20.356527, 19.444925>,  <16.397388, 20.442230, 19.445805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.173214, 20.356527, 19.444925>,  <15.799590, 20.213688, 19.443460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.173214, 20.356527, 19.444925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253325, -0.655328, -0.711598,
		-0.251710, 0.665603, -0.702577,
		0.934060, 0.357096, 0.003661,
		16.453432, 20.463655, 19.446024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919576, 20.248589, 18.805611>,  <15.799590, 20.213688, 19.443460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919576, 20.248589, 18.805611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.289337, 20.239655, 18.957914>,  <16.511194, 20.234293, 19.049297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.289337, 20.239655, 18.957914>,  <15.919576, 20.248589, 18.805611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.289337, 20.239655, 18.957914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310871, -0.534272, -0.786074,
		0.220987, 0.845017, -0.486940,
		0.924405, -0.022336, 0.380759,
		16.566658, 20.232954, 19.072142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.419735, 20.316622, 18.182732>,  <15.919576, 20.248589, 18.805611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.419735, 20.316622, 18.182732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.628666, 20.158115, 18.484764>,  <16.754025, 20.063011, 18.665983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.628666, 20.158115, 18.484764>,  <16.419735, 20.316622, 18.182732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628666, 20.158115, 18.484764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379445, -0.684978, -0.621955,
		0.763673, 0.611376, -0.207422,
		0.522327, -0.396264, 0.755082,
		16.785364, 20.039236, 18.711288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181923, 20.074368, 17.984537>,  <16.419735, 20.316622, 18.182732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181923, 20.074368, 17.984537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.079052, 19.874388, 18.315332>,  <17.017330, 19.754400, 18.513809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.079052, 19.874388, 18.315332>,  <17.181923, 20.074368, 17.984537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079052, 19.874388, 18.315332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153773, -0.866042, -0.475737,
		0.954051, 0.004820, 0.299604,
		-0.257177, -0.499949, 0.826989,
		17.001900, 19.724403, 18.563429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<8.199965, 3.431339, 19.440039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.498393, 3.344151, 19.188366>,  <8.677449, 3.291838, 19.037363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.498393, 3.344151, 19.188366>,  <8.199965, 3.431339, 19.440039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.498393, 3.344151, 19.188366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105505, 0.971664, -0.211513,
		0.657457, 0.091422, 0.747925,
		0.746069, -0.217970, -0.629182,
		8.722214, 3.278760, 18.999611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.876636, 3.960300, 19.542871>,  <8.199965, 3.431339, 19.440039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.876636, 3.960300, 19.542871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.854010, 3.792823, 19.180326>,  <8.840434, 3.692337, 18.962799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.854010, 3.792823, 19.180326>,  <8.876636, 3.960300, 19.542871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.854010, 3.792823, 19.180326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463546, 0.793026, -0.395267,
		0.884266, -0.442500, 0.149226,
		-0.056565, -0.418694, -0.906364,
		8.837040, 3.667215, 18.908417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.350739, 4.296236, 19.236111>,  <8.876636, 3.960300, 19.542871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.350739, 4.296236, 19.236111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.185822, 4.101076, 18.928352>,  <9.086871, 3.983980, 18.743698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.185822, 4.101076, 18.928352>,  <9.350739, 4.296236, 19.236111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.185822, 4.101076, 18.928352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180998, 0.783813, -0.594034,
		0.892891, -0.384174, -0.234851,
		-0.412292, -0.487900, -0.769395,
		9.062134, 3.954706, 18.697535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.516794, 4.637286, 18.617826>,  <9.350739, 4.296236, 19.236111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.516794, 4.637286, 18.617826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.205638, 4.420466, 18.490664>,  <9.018944, 4.290374, 18.414366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.205638, 4.420466, 18.490664>,  <9.516794, 4.637286, 18.617826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.205638, 4.420466, 18.490664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009811, 0.516317, -0.856341,
		0.628323, -0.663021, -0.406956,
		-0.777891, -0.542052, -0.317909,
		8.972270, 4.257851, 18.395290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.627410, 4.332082, 17.899466>,  <9.516794, 4.637286, 18.617826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.627410, 4.332082, 17.899466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.235263, 4.378337, 17.963348>,  <8.999974, 4.406090, 18.001678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.235263, 4.378337, 17.963348>,  <9.627410, 4.332082, 17.899466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.235263, 4.378337, 17.963348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068911, 0.557962, -0.827000,
		-0.184743, -0.821770, -0.539040,
		-0.980368, 0.115637, 0.159709,
		8.941153, 4.413028, 18.011261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.532943, 4.145061, 17.183413>,  <9.627410, 4.332082, 17.899466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.532943, 4.145061, 17.183413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.304228, 4.427774, 17.350033>,  <9.166999, 4.597403, 17.450005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.304228, 4.427774, 17.350033>,  <9.532943, 4.145061, 17.183413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.304228, 4.427774, 17.350033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139946, 0.584327, -0.799360,
		-0.808377, -0.398770, -0.433023,
		-0.571788, 0.706785, 0.416551,
		9.132691, 4.639810, 17.474998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.910667, 4.488694, 16.694098>,  <9.532943, 4.145061, 17.183413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.910667, 4.488694, 16.694098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.079462, 4.714650, 16.977739>,  <9.180738, 4.850224, 17.147924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.079462, 4.714650, 16.977739>,  <8.910667, 4.488694, 16.694098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.079462, 4.714650, 16.977739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172385, 0.717889, -0.674477,
		-0.890062, 0.406859, 0.205560,
		0.421986, 0.564891, 0.709102,
		9.206058, 4.884117, 17.190470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.623276, 5.115549, 17.006538>,  <8.910667, 4.488694, 16.694098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.623276, 5.115549, 17.006538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.011934, 5.209466, 16.995411>,  <9.245130, 5.265816, 16.988735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.011934, 5.209466, 16.995411>,  <8.623276, 5.115549, 17.006538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.011934, 5.209466, 16.995411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209461, 0.800241, -0.561909,
		-0.109670, 0.551804, 0.826732,
		0.971648, 0.234792, -0.027819,
		9.303429, 5.279903, 16.987064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.686901, 5.896667, 17.214663>,  <8.623276, 5.115549, 17.006538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.686901, 5.896667, 17.214663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.963963, 5.804457, 16.941288>,  <9.130199, 5.749131, 16.777264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.963963, 5.804457, 16.941288>,  <8.686901, 5.896667, 17.214663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.963963, 5.804457, 16.941288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159622, 0.875062, -0.456933,
		0.703385, 0.425589, 0.569319,
		0.692655, -0.230524, -0.683439,
		9.171759, 5.735300, 16.736256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.347311, 6.435878, 17.290028>,  <8.686901, 5.896667, 17.214663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.347311, 6.435878, 17.290028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.267993, 6.275263, 16.932381>,  <9.220403, 6.178895, 16.717793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.267993, 6.275263, 16.932381>,  <9.347311, 6.435878, 17.290028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.267993, 6.275263, 16.932381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160495, 0.913222, -0.374521,
		0.966913, 0.069237, -0.245531,
		-0.198294, -0.401536, -0.894119,
		9.208505, 6.154803, 16.664145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.732137, 6.667779, 16.727842>,  <9.347311, 6.435878, 17.290028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.732137, 6.667779, 16.727842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.380227, 6.545686, 16.582060>,  <9.169081, 6.472430, 16.494591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.380227, 6.545686, 16.582060>,  <9.732137, 6.667779, 16.727842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.380227, 6.545686, 16.582060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290686, 0.952028, -0.095626,
		0.376162, 0.021814, -0.926297,
		-0.879775, -0.305233, -0.364457,
		9.116295, 6.454116, 16.472723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.519525, 7.187766, 16.378645>,  <9.732137, 6.667779, 16.727842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.519525, 7.187766, 16.378645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.176686, 6.981723, 16.375778>,  <8.970984, 6.858097, 16.374058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.176686, 6.981723, 16.375778>,  <9.519525, 7.187766, 16.378645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.176686, 6.981723, 16.375778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510072, 0.850505, -0.128326,
		0.072196, -0.106333, -0.991706,
		-0.857097, -0.515106, -0.007166,
		8.919558, 6.827191, 16.373629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.241550, 7.384912, 15.801306>,  <9.519525, 7.187766, 16.378645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.241550, 7.384912, 15.801306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.958961, 7.271233, 16.060574>,  <8.789407, 7.203025, 16.216135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.958961, 7.271233, 16.060574>,  <9.241550, 7.384912, 15.801306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.958961, 7.271233, 16.060574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486316, 0.860311, -0.152847,
		-0.514188, -0.423197, -0.745999,
		-0.706475, -0.284199, 0.648169,
		8.747018, 7.185973, 16.255024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.451009, 7.373549, 15.423422>,  <9.241550, 7.384912, 15.801306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.451009, 7.373549, 15.423422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.418153, 7.424839, 15.818757>,  <8.398439, 7.455613, 16.055958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.418153, 7.424839, 15.818757>,  <8.451009, 7.373549, 15.423422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.418153, 7.424839, 15.818757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726609, 0.671043, -0.147448,
		-0.682124, -0.730246, 0.038051,
		-0.082139, 0.128226, 0.988338,
		8.393511, 7.463307, 16.115259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.667715, 7.205219, 15.647798>,  <8.451009, 7.373549, 15.423422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.667715, 7.205219, 15.647798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.807734, 7.432756, 15.945491>,  <7.891747, 7.569279, 16.124107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.807734, 7.432756, 15.945491>,  <7.667715, 7.205219, 15.647798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.807734, 7.432756, 15.945491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718452, 0.672848, -0.176359,
		-0.601076, -0.472961, 0.644217,
		0.350050, 0.568844, 0.744233,
		7.912749, 7.603410, 16.168760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.098581, 7.534933, 15.980526>,  <7.667715, 7.205219, 15.647798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.098581, 7.534933, 15.980526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.410241, 7.752388, 16.105350>,  <7.597237, 7.882862, 16.180244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.410241, 7.752388, 16.105350>,  <7.098581, 7.534933, 15.980526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.410241, 7.752388, 16.105350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606646, 0.779307, 0.157041,
		-0.157818, -0.311669, 0.936993,
		0.779150, 0.543639, 0.312062,
		7.643986, 7.915480, 16.198969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.833965, 8.045604, 16.450964>,  <7.098581, 7.534933, 15.980526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.833965, 8.045604, 16.450964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.165884, 8.208117, 16.297930>,  <7.365035, 8.305626, 16.206110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.165884, 8.208117, 16.297930>,  <6.833965, 8.045604, 16.450964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.165884, 8.208117, 16.297930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409123, 0.909131, 0.078090,
		0.379546, 0.091725, 0.920615,
		0.829797, 0.406283, -0.382584,
		7.414823, 8.330003, 16.183155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.923478, 8.634612, 16.810946>,  <6.833965, 8.045604, 16.450964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.923478, 8.634612, 16.810946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.154664, 8.705413, 16.492292>,  <7.293375, 8.747893, 16.301100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.154664, 8.705413, 16.492292>,  <6.923478, 8.634612, 16.810946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.154664, 8.705413, 16.492292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433637, 0.893582, -0.116064,
		0.691314, 0.412531, 0.593214,
		0.577965, 0.177003, -0.796634,
		7.328053, 8.758513, 16.253302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.221628, 9.321105, 16.835918>,  <6.923478, 8.634612, 16.810946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.221628, 9.321105, 16.835918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.248400, 9.238901, 16.445374>,  <7.264463, 9.189579, 16.211046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.248400, 9.238901, 16.445374>,  <7.221628, 9.321105, 16.835918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.248400, 9.238901, 16.445374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321835, 0.921807, -0.216088,
		0.944427, 0.328690, -0.004443,
		0.066930, -0.205510, -0.976364,
		7.268479, 9.177248, 16.152464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.591646, 9.910192, 16.510664>,  <7.221628, 9.321105, 16.835918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.591646, 9.910192, 16.510664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.403769, 9.720011, 16.213120>,  <7.291043, 9.605902, 16.034592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.403769, 9.720011, 16.213120>,  <7.591646, 9.910192, 16.510664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.403769, 9.720011, 16.213120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235355, 0.879531, -0.413562,
		0.850881, -0.019174, -0.525009,
		-0.469691, -0.475455, -0.743863,
		7.262862, 9.577374, 15.989961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.848413, 10.207614, 15.918481>,  <7.591646, 9.910192, 16.510664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.848413, 10.207614, 15.918481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.490080, 10.055096, 15.827181>,  <7.275081, 9.963585, 15.772401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.490080, 10.055096, 15.827181>,  <7.848413, 10.207614, 15.918481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.490080, 10.055096, 15.827181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333921, 0.916469, -0.220413,
		0.293225, -0.121236, -0.948325,
		-0.895832, -0.381296, -0.228249,
		7.221331, 9.940706, 15.758706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.757576, 10.434611, 15.200850>,  <7.848413, 10.207614, 15.918481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.757576, 10.434611, 15.200850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.401307, 10.325722, 15.346503>,  <7.187545, 10.260387, 15.433895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.401307, 10.325722, 15.346503>,  <7.757576, 10.434611, 15.200850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.401307, 10.325722, 15.346503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411622, 0.822925, -0.391615,
		-0.193048, -0.498687, -0.845011,
		-0.890674, -0.272225, 0.364134,
		7.134104, 10.244054, 15.455744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.335846, 10.697395, 14.735158>,  <7.757576, 10.434611, 15.200850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.335846, 10.697395, 14.735158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.059626, 10.597826, 15.006798>,  <6.893893, 10.538084, 15.169782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.059626, 10.597826, 15.006798>,  <7.335846, 10.697395, 14.735158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.059626, 10.597826, 15.006798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556853, 0.782157, -0.279545,
		-0.461577, -0.571198, -0.678734,
		-0.690552, -0.248923, 0.679099,
		6.852460, 10.523149, 15.210527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.630093, 10.582026, 14.470849>,  <7.335846, 10.697395, 14.735158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.630093, 10.582026, 14.470849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.556847, 10.705330, 14.844254>,  <6.512900, 10.779312, 15.068296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.556847, 10.705330, 14.844254>,  <6.630093, 10.582026, 14.470849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.556847, 10.705330, 14.844254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561309, 0.746789, -0.356705,
		-0.807094, -0.589307, 0.036282,
		-0.183114, 0.308260, 0.933512,
		6.501913, 10.797808, 15.124308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.018594, 10.803179, 14.442190>,  <6.630093, 10.582026, 14.470849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.018594, 10.803179, 14.442190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.090497, 10.979495, 14.793961>,  <6.133640, 11.085285, 15.005023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.090497, 10.979495, 14.793961>,  <6.018594, 10.803179, 14.442190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.090497, 10.979495, 14.793961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580580, 0.769222, -0.266881,
		-0.794112, -0.462602, 0.394189,
		0.179759, 0.440791, 0.879426,
		6.144425, 11.111732, 15.057788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.431201, 11.012115, 14.695126>,  <6.018594, 10.803179, 14.442190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.431201, 11.012115, 14.695126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.694656, 11.252318, 14.876492>,  <5.852730, 11.396440, 14.985312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.694656, 11.252318, 14.876492>,  <5.431201, 11.012115, 14.695126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.694656, 11.252318, 14.876492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642328, 0.762563, -0.076886,
		-0.391929, -0.240601, 0.887977,
		0.658640, 0.600506, 0.453416,
		5.892248, 11.432470, 15.012516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.150780, 11.251768, 15.307330>,  <5.431201, 11.012115, 14.695126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.150780, 11.251768, 15.307330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.419168, 11.534512, 15.217753>,  <5.580202, 11.704158, 15.164007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.419168, 11.534512, 15.217753>,  <5.150780, 11.251768, 15.307330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.419168, 11.534512, 15.217753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702053, 0.702800, 0.114860,
		0.238576, 0.080151, 0.967811,
		0.670972, 0.706858, -0.223941,
		5.620460, 11.746569, 15.150571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.901583, 11.727319, 15.713183>,  <5.150780, 11.251768, 15.307330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.901583, 11.727319, 15.713183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.161642, 11.930493, 15.487154>,  <5.317678, 12.052398, 15.351537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.161642, 11.930493, 15.487154>,  <4.901583, 11.727319, 15.713183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.161642, 11.930493, 15.487154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565099, 0.820395, 0.087264,
		0.507907, 0.262587, 0.820414,
		0.650149, 0.507937, -0.565072,
		5.356687, 12.082874, 15.317633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.877157, 12.372167, 16.154345>,  <4.901583, 11.727319, 15.713183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.877157, 12.372167, 16.154345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.005069, 12.423000, 15.778772>,  <5.081817, 12.453501, 15.553429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.005069, 12.423000, 15.778772>,  <4.877157, 12.372167, 16.154345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.005069, 12.423000, 15.778772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418601, 0.907957, -0.019675,
		0.850008, 0.399329, 0.343544,
		0.319780, 0.127084, -0.938930,
		5.101003, 12.461125, 15.497093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.840893, 12.950067, 16.157503>,  <4.877157, 12.372167, 16.154345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.840893, 12.950067, 16.157503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.926419, 12.966137, 15.767083>,  <4.977734, 12.975780, 15.532832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.926419, 12.966137, 15.767083>,  <4.840893, 12.950067, 16.157503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.926419, 12.966137, 15.767083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484616, 0.871900, -0.070271,
		0.848192, 0.488033, 0.205895,
		0.213814, 0.040177, -0.976048,
		4.990563, 12.978190, 15.474269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.046957, 13.625997, 16.004240>,  <4.840893, 12.950067, 16.157503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.046957, 13.625997, 16.004240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.949644, 13.490223, 15.640790>,  <4.891256, 13.408759, 15.422720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.949644, 13.490223, 15.640790>,  <5.046957, 13.625997, 16.004240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.949644, 13.490223, 15.640790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435811, 0.875139, -0.210237,
		0.866535, 0.344843, -0.360834,
		-0.243281, -0.339433, -0.908625,
		4.876659, 13.388393, 15.368202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.152049, 13.737339, 16.797928>,  <5.046957, 13.625997, 16.004240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.152049, 13.737339, 16.797928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.461405, 13.931857, 16.960598>,  <5.647018, 14.048568, 17.058201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.461405, 13.931857, 16.960598>,  <5.152049, 13.737339, 16.797928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.461405, 13.931857, 16.960598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425773, -0.873752, 0.235106,
		0.469666, -0.008676, -0.882801,
		0.773390, 0.486294, 0.406678,
		5.693422, 14.077745, 17.082602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.750896, 13.380947, 16.674391>,  <5.152049, 13.737339, 16.797928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.750896, 13.380947, 16.674391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.907702, 13.601948, 16.968620>,  <6.001786, 13.734548, 17.145157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.907702, 13.601948, 16.968620>,  <5.750896, 13.380947, 16.674391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.907702, 13.601948, 16.968620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699460, -0.698367, 0.151785,
		0.597561, 0.455001, -0.660223,
		0.392016, 0.552501, 0.735572,
		6.025307, 13.767698, 17.189293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.437336, 13.318199, 16.652819>,  <5.750896, 13.380947, 16.674391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.437336, 13.318199, 16.652819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.397863, 13.441762, 17.031202>,  <6.374179, 13.515900, 17.258232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.397863, 13.441762, 17.031202>,  <6.437336, 13.318199, 16.652819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.397863, 13.441762, 17.031202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649826, -0.699928, 0.296356,
		0.753650, 0.643954, -0.131664,
		-0.098684, 0.308907, 0.945959,
		6.368258, 13.534434, 17.314989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.103627, 13.333650, 16.822023>,  <6.437336, 13.318199, 16.652819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.103627, 13.333650, 16.822023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.872939, 13.316272, 17.148336>,  <6.734526, 13.305845, 17.344124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.872939, 13.316272, 17.148336>,  <7.103627, 13.333650, 16.822023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.872939, 13.316272, 17.148336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597850, -0.702983, 0.385214,
		0.556747, 0.709878, 0.431399,
		-0.576721, -0.043445, 0.815785,
		6.699922, 13.303238, 17.393072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.557139, 13.386773, 17.412888>,  <7.103627, 13.333650, 16.822023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.557139, 13.386773, 17.412888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.229641, 13.220963, 17.571796>,  <7.033142, 13.121476, 17.667141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.229641, 13.220963, 17.571796>,  <7.557139, 13.386773, 17.412888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.229641, 13.220963, 17.571796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551247, -0.761033, 0.341988,
		0.160574, 0.498995, 0.851598,
		-0.818745, -0.414526, 0.397272,
		6.984017, 13.096604, 17.690977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.680075, 13.377941, 18.090696>,  <7.557139, 13.386773, 17.412888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.680075, 13.377941, 18.090696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.396552, 13.104819, 18.019850>,  <7.226439, 12.940946, 17.977343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.396552, 13.104819, 18.019850>,  <7.680075, 13.377941, 18.090696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.396552, 13.104819, 18.019850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606682, -0.718186, 0.340800,
		-0.359903, 0.134108, 0.923301,
		-0.708806, -0.682806, -0.177117,
		7.183910, 12.899978, 17.966715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.674619, 13.018375, 18.724506>,  <7.680075, 13.377941, 18.090696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.674619, 13.018375, 18.724506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.498060, 12.786654, 18.450405>,  <7.392125, 12.647620, 18.285944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.498060, 12.786654, 18.450405>,  <7.674619, 13.018375, 18.724506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.498060, 12.786654, 18.450405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580624, -0.766643, 0.274108,
		-0.684138, -0.276885, 0.674752,
		-0.441397, -0.579305, -0.685255,
		7.365641, 12.612863, 18.244829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.670957, 12.396838, 19.086046>,  <7.674619, 13.018375, 18.724506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.670957, 12.396838, 19.086046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.601927, 12.290744, 18.706600>,  <7.560509, 12.227087, 18.478933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.601927, 12.290744, 18.706600>,  <7.670957, 12.396838, 19.086046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.601927, 12.290744, 18.706600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337971, -0.920542, 0.195902,
		-0.925199, -0.286796, 0.248505,
		-0.172576, -0.265236, -0.948613,
		7.550154, 12.211173, 18.422016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.175975, 11.851854, 19.089874>,  <7.670957, 12.396838, 19.086046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.175975, 11.851854, 19.089874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.400770, 11.826971, 18.759953>,  <7.535647, 11.812041, 18.562000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.400770, 11.826971, 18.759953>,  <7.175975, 11.851854, 19.089874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.400770, 11.826971, 18.759953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195287, -0.958999, 0.205390,
		-0.803762, -0.276500, -0.526796,
		0.561987, -0.062209, -0.824803,
		7.569366, 11.808309, 18.512512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.105121, 11.124815, 18.953588>,  <7.175975, 11.851854, 19.089874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.105121, 11.124815, 18.953588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.414149, 11.220039, 18.718143>,  <7.599566, 11.277174, 18.576878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.414149, 11.220039, 18.718143>,  <7.105121, 11.124815, 18.953588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.414149, 11.220039, 18.718143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251816, -0.965905, -0.060140,
		-0.582859, -0.101759, -0.806177,
		0.772570, 0.238062, -0.588611,
		7.645920, 11.291458, 18.541561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.285931, 10.517689, 18.736605>,  <7.105121, 11.124815, 18.953588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.285931, 10.517689, 18.736605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.603635, 10.728682, 18.615995>,  <7.794257, 10.855277, 18.543631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.603635, 10.728682, 18.615995>,  <7.285931, 10.517689, 18.736605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.603635, 10.728682, 18.615995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545899, -0.837417, -0.026985,
		-0.266733, -0.143167, -0.953078,
		0.794260, 0.527481, -0.301521,
		7.841913, 10.886926, 18.525539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.544443, 10.180312, 18.086170>,  <7.285931, 10.517689, 18.736605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.544443, 10.180312, 18.086170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.848317, 10.364026, 18.270315>,  <8.030642, 10.474255, 18.380802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.848317, 10.364026, 18.270315>,  <7.544443, 10.180312, 18.086170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.848317, 10.364026, 18.270315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549843, -0.831652, -0.077642,
		0.347204, 0.312112, -0.884328,
		0.759686, 0.459284, 0.460365,
		8.076222, 10.501811, 18.408424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.148131, 9.894284, 17.747761>,  <7.544443, 10.180312, 18.086170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.148131, 9.894284, 17.747761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.301034, 10.074595, 18.070419>,  <8.392776, 10.182782, 18.264015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.301034, 10.074595, 18.070419>,  <8.148131, 9.894284, 17.747761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.301034, 10.074595, 18.070419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600534, -0.784649, 0.153901,
		0.702310, 0.425590, -0.570644,
		0.382257, 0.450778, 0.806647,
		8.415711, 10.209828, 18.312414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.828699, 9.839655, 17.567568>,  <8.148131, 9.894284, 17.747761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.828699, 9.839655, 17.567568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.809533, 9.907669, 17.961277>,  <8.798034, 9.948478, 18.197502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.809533, 9.907669, 17.961277>,  <8.828699, 9.839655, 17.567568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.809533, 9.907669, 17.961277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621959, -0.765982, 0.162603,
		0.781583, 0.619968, -0.069053,
		-0.047915, 0.170036, 0.984272,
		8.795158, 9.958680, 18.256559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.465191, 9.935614, 17.841547>,  <8.828699, 9.839655, 17.567568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.465191, 9.935614, 17.841547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.326447, 9.844815, 18.205561>,  <9.243200, 9.790336, 18.423969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.326447, 9.844815, 18.205561>,  <9.465191, 9.935614, 17.841547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.326447, 9.844815, 18.205561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746206, -0.654601, 0.121136,
		0.568211, 0.721090, 0.396441,
		-0.346860, -0.226997, 0.910033,
		9.222388, 9.776716, 18.478571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.115396, 9.842316, 18.341665>,  <9.465191, 9.935614, 17.841547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.115396, 9.842316, 18.341665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.822961, 9.643121, 18.528221>,  <9.647500, 9.523603, 18.640156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.822961, 9.643121, 18.528221>,  <10.115396, 9.842316, 18.341665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.822961, 9.643121, 18.528221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605564, -0.788531, 0.107292,
		0.314334, 0.360870, 0.878047,
		-0.731086, -0.497988, 0.466392,
		9.603635, 9.493724, 18.668139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.472097, 9.469716, 18.754951>,  <10.115396, 9.842316, 18.341665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.472097, 9.469716, 18.754951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.107645, 9.306670, 18.779255>,  <9.888974, 9.208842, 18.793837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.107645, 9.306670, 18.779255>,  <10.472097, 9.469716, 18.754951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.107645, 9.306670, 18.779255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408194, -0.912890, -0.003127,
		0.056742, 0.021953, 0.998147,
		-0.911130, -0.407615, 0.060760,
		9.834306, 9.184385, 18.797483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.390390, 8.987974, 19.393160>,  <10.472097, 9.469716, 18.754951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.390390, 8.987974, 19.393160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.162723, 8.870122, 19.086113>,  <10.026122, 8.799411, 18.901884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.162723, 8.870122, 19.086113>,  <10.390390, 8.987974, 19.393160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.162723, 8.870122, 19.086113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401168, -0.914439, 0.053527,
		-0.717712, -0.277478, 0.638667,
		-0.569170, -0.294630, -0.767619,
		9.991972, 8.781734, 18.855827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.165963, 8.263754, 19.525875>,  <10.390390, 8.987974, 19.393160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.165963, 8.263754, 19.525875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.134791, 8.321386, 19.131277>,  <10.116089, 8.355966, 18.894518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.134791, 8.321386, 19.131277>,  <10.165963, 8.263754, 19.525875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.134791, 8.321386, 19.131277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512891, -0.842721, -0.163599,
		-0.854909, -0.518712, -0.008226,
		-0.077929, 0.144081, -0.986493,
		10.111413, 8.364611, 18.835329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.072940, 7.613480, 19.260159>,  <10.165963, 8.263754, 19.525875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.072940, 7.613480, 19.260159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.224496, 7.842245, 18.969130>,  <10.315430, 7.979503, 18.794512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.224496, 7.842245, 18.969130>,  <10.072940, 7.613480, 19.260159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.224496, 7.842245, 18.969130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619549, -0.740771, -0.259649,
		-0.687460, -0.352387, -0.634998,
		0.378891, 0.571911, -0.727571,
		10.338163, 8.013818, 18.750858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.069826, 7.250686, 18.686949>,  <10.072940, 7.613480, 19.260159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.069826, 7.250686, 18.686949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.354871, 7.526827, 18.636992>,  <10.525897, 7.692512, 18.607018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.354871, 7.526827, 18.636992>,  <10.069826, 7.250686, 18.686949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.354871, 7.526827, 18.636992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665634, -0.721557, -0.190491,
		-0.221623, 0.052613, -0.973712,
		0.712611, 0.690353, -0.124893,
		10.568654, 7.733932, 18.599524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.903164, 21.578634, 23.465744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.526409, 21.552542, 23.597557>,  <17.300356, 21.536886, 23.676645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.526409, 21.552542, 23.597557>,  <17.903164, 21.578634, 23.465744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.526409, 21.552542, 23.597557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161363, 0.772529, 0.614134,
		-0.294634, 0.631620, -0.717111,
		-0.941888, -0.065229, 0.329533,
		17.243843, 21.532972, 23.696417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.685097, 22.221153, 23.587477>,  <17.903164, 21.578634, 23.465744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.685097, 22.221153, 23.587477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.433023, 22.009188, 23.814478>,  <17.281780, 21.882008, 23.950680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.433023, 22.009188, 23.814478>,  <17.685097, 22.221153, 23.587477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.433023, 22.009188, 23.814478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016538, 0.739894, 0.672520,
		-0.776272, 0.414425, -0.475032,
		-0.630182, -0.529915, 0.567505,
		17.243969, 21.850214, 23.984730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340801, 22.709948, 23.931564>,  <17.685097, 22.221153, 23.587477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340801, 22.709948, 23.931564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.247330, 22.399647, 24.166035>,  <17.191246, 22.213467, 24.306717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.247330, 22.399647, 24.166035>,  <17.340801, 22.709948, 23.931564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247330, 22.399647, 24.166035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133511, 0.622755, 0.770942,
		-0.963104, 0.101892, -0.249096,
		-0.233679, -0.775754, 0.586174,
		17.177227, 22.166920, 24.341887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739946, 22.846174, 24.219929>,  <17.340801, 22.709948, 23.931564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739946, 22.846174, 24.219929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.901318, 22.587181, 24.478544>,  <16.998140, 22.431786, 24.633715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.901318, 22.587181, 24.478544>,  <16.739946, 22.846174, 24.219929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.901318, 22.587181, 24.478544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215472, 0.619496, 0.754849,
		-0.889279, -0.443839, 0.110408,
		0.403428, -0.647481, 0.646540,
		17.022346, 22.392937, 24.672506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377735, 23.025927, 24.841742>,  <16.739946, 22.846174, 24.219929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377735, 23.025927, 24.841742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.680408, 22.800810, 24.974825>,  <16.862013, 22.665739, 25.054676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.680408, 22.800810, 24.974825>,  <16.377735, 23.025927, 24.841742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.680408, 22.800810, 24.974825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036860, 0.544815, 0.837746,
		-0.652741, -0.621645, 0.432998,
		0.756684, -0.562791, 0.332709,
		16.907413, 22.631973, 25.074638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.209455, 22.861536, 25.640924>,  <16.377735, 23.025927, 24.841742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.209455, 22.861536, 25.640924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.596390, 22.828045, 25.545214>,  <16.828550, 22.807951, 25.487787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.596390, 22.828045, 25.545214>,  <16.209455, 22.861536, 25.640924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.596390, 22.828045, 25.545214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244391, 0.558786, 0.792485,
		0.067352, -0.825075, 0.560995,
		0.967335, -0.083727, -0.239276,
		16.886591, 22.802927, 25.473431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508968, 22.873976, 26.263151>,  <16.209455, 22.861536, 25.640924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508968, 22.873976, 26.263151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.819353, 22.987019, 26.037580>,  <17.005585, 23.054844, 25.902239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.819353, 22.987019, 26.037580>,  <16.508968, 22.873976, 26.263151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819353, 22.987019, 26.037580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299298, 0.622008, 0.723552,
		0.555245, -0.730233, 0.398073,
		0.775966, 0.282606, -0.563924,
		17.052143, 23.071802, 25.868402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078896, 22.790024, 26.766134>,  <16.508968, 22.873976, 26.263151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078896, 22.790024, 26.766134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.182049, 23.043865, 26.474716>,  <17.243940, 23.196169, 26.299866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.182049, 23.043865, 26.474716>,  <17.078896, 22.790024, 26.766134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.182049, 23.043865, 26.474716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269771, 0.676765, 0.684992,
		0.927750, -0.373188, 0.003329,
		0.257884, 0.634603, -0.728544,
		17.259415, 23.234245, 26.256153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.741253, 23.118338, 26.988571>,  <17.078896, 22.790024, 26.766134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.741253, 23.118338, 26.988571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.615719, 23.360331, 26.695860>,  <17.540398, 23.505527, 26.520233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.615719, 23.360331, 26.695860>,  <17.741253, 23.118338, 26.988571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615719, 23.360331, 26.695860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452671, 0.772825, 0.444782,
		0.834623, -0.191666, -0.516400,
		-0.313836, 0.604985, -0.731779,
		17.521568, 23.541826, 26.476326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302525, 23.651543, 26.885681>,  <17.741253, 23.118338, 26.988571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.302525, 23.651543, 26.885681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.968735, 23.789087, 26.713444>,  <17.768461, 23.871614, 26.610102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.968735, 23.789087, 26.713444>,  <18.302525, 23.651543, 26.885681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.968735, 23.789087, 26.713444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278412, 0.937434, 0.209055,
		0.475540, 0.054568, -0.878000,
		-0.834475, 0.343860, -0.430595,
		17.718391, 23.892246, 26.584265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467342, 24.267729, 26.649435>,  <18.302525, 23.651543, 26.885681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467342, 24.267729, 26.649435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.068405, 24.272827, 26.678123>,  <17.829042, 24.275887, 26.695337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.068405, 24.272827, 26.678123>,  <18.467342, 24.267729, 26.649435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068405, 24.272827, 26.678123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040559, 0.915003, 0.401404,
		-0.060511, 0.403246, -0.913089,
		-0.997343, 0.012744, 0.071723,
		17.769201, 24.276651, 26.699640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.246532, 24.947647, 26.316965>,  <18.467342, 24.267729, 26.649435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.246532, 24.947647, 26.316965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.984638, 24.814007, 26.588169>,  <17.827501, 24.733822, 26.750891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.984638, 24.814007, 26.588169>,  <18.246532, 24.947647, 26.316965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.984638, 24.814007, 26.588169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098421, 0.851687, 0.514726,
		-0.749424, 0.403739, -0.524746,
		-0.654735, -0.334102, 0.678011,
		17.788218, 24.713776, 26.791573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372713, 25.515314, 26.863184>,  <18.246532, 24.947647, 26.316965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372713, 25.515314, 26.863184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.501381, 25.597548, 26.493479>,  <18.578581, 25.646887, 26.271656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.501381, 25.597548, 26.493479>,  <18.372713, 25.515314, 26.863184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.501381, 25.597548, 26.493479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946839, 0.064644, -0.315145,
		-0.005040, 0.976502, 0.215449,
		0.321667, 0.205584, -0.924265,
		18.597881, 25.659224, 26.216200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015556, 26.211929, 26.520359>,  <18.372713, 25.515314, 26.863184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015556, 26.211929, 26.520359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.133705, 25.921726, 26.271717>,  <18.204596, 25.747604, 26.122532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.133705, 25.921726, 26.271717>,  <18.015556, 26.211929, 26.520359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.133705, 25.921726, 26.271717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946717, -0.134841, -0.292481,
		0.128380, 0.674874, -0.726679,
		0.295374, -0.725508, -0.621604,
		18.222317, 25.704073, 26.085236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776432, 26.913919, 26.449720>,  <18.015556, 26.211929, 26.520359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776432, 26.913919, 26.449720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.655102, 27.170677, 26.168020>,  <17.582304, 27.324732, 25.999001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.655102, 27.170677, 26.168020>,  <17.776432, 26.913919, 26.449720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.655102, 27.170677, 26.168020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132558, -0.760308, -0.635894,
		-0.943622, -0.099528, 0.315708,
		-0.303325, 0.641893, -0.704250,
		17.564104, 27.363245, 25.956745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381048, 26.450277, 26.063934>,  <17.776432, 26.913919, 26.449720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381048, 26.450277, 26.063934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.391356, 26.776190, 25.832256>,  <17.397541, 26.971737, 25.693249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.391356, 26.776190, 25.832256>,  <17.381048, 26.450277, 26.063934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.391356, 26.776190, 25.832256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309226, -0.544474, -0.779697,
		-0.950639, 0.199195, 0.237920,
		0.025770, 0.814782, -0.579194,
		17.399086, 27.020624, 25.658499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774813, 26.339661, 25.724617>,  <17.381048, 26.450277, 26.063934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.774813, 26.339661, 25.724617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.008276, 26.570063, 25.495684>,  <17.148354, 26.708303, 25.358324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.008276, 26.570063, 25.495684>,  <16.774813, 26.339661, 25.724617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008276, 26.570063, 25.495684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194730, -0.584983, -0.787321,
		-0.788305, 0.570975, -0.229264,
		0.583656, 0.576005, -0.572332,
		17.183372, 26.742865, 25.323984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458836, 26.486013, 25.125443>,  <16.774813, 26.339661, 25.724617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458836, 26.486013, 25.125443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.839945, 26.547903, 25.020916>,  <17.068609, 26.585037, 24.958200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.839945, 26.547903, 25.020916>,  <16.458836, 26.486013, 25.125443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.839945, 26.547903, 25.020916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145349, -0.523195, -0.839726,
		-0.266646, 0.838050, -0.475997,
		0.952772, 0.154724, -0.261318,
		17.125776, 26.594320, 24.942520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.490101, 26.713949, 24.439617>,  <16.458836, 26.486013, 25.125443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.490101, 26.713949, 24.439617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.874201, 26.610289, 24.481106>,  <17.104662, 26.548092, 24.505999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.874201, 26.610289, 24.481106>,  <16.490101, 26.713949, 24.439617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.874201, 26.610289, 24.481106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003216, -0.361290, -0.932448,
		0.279118, 0.895718, -0.346096,
		0.960252, -0.259149, 0.103723,
		17.162277, 26.532543, 24.512222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.761963, 26.926357, 23.756256>,  <16.490101, 26.713949, 24.439617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.761963, 26.926357, 23.756256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.991320, 26.632059, 23.900423>,  <17.128933, 26.455481, 23.986923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.991320, 26.632059, 23.900423>,  <16.761963, 26.926357, 23.756256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991320, 26.632059, 23.900423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055431, -0.404072, -0.913046,
		0.817405, 0.543509, -0.190908,
		0.573390, -0.735747, 0.360418,
		17.163336, 26.411335, 24.008549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.229834, 26.834831, 23.201761>,  <16.761963, 26.926357, 23.756256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.229834, 26.834831, 23.201761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.278330, 26.511763, 23.432575>,  <17.307428, 26.317921, 23.571064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.278330, 26.511763, 23.432575>,  <17.229834, 26.834831, 23.201761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.278330, 26.511763, 23.432575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110496, -0.588690, -0.800772,
		0.986454, 0.033327, -0.160618,
		0.121241, -0.807672, 0.577033,
		17.314703, 26.269461, 23.605684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699144, 26.386864, 22.898333>,  <17.229834, 26.834831, 23.201761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699144, 26.386864, 22.898333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.472364, 26.156355, 23.133783>,  <17.336296, 26.018049, 23.275053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.472364, 26.156355, 23.133783>,  <17.699144, 26.386864, 22.898333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.472364, 26.156355, 23.133783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007543, -0.718167, -0.695831,
		0.823719, -0.390059, 0.411510,
		-0.566948, -0.576273, 0.588625,
		17.302280, 25.983473, 23.310371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051926, 25.688917, 23.007048>,  <17.699144, 26.386864, 22.898333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.051926, 25.688917, 23.007048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.657064, 25.649235, 23.057144>,  <17.420147, 25.625425, 23.087202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.657064, 25.649235, 23.057144>,  <18.051926, 25.688917, 23.007048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.657064, 25.649235, 23.057144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008243, -0.814445, -0.580182,
		0.159560, -0.571697, 0.804800,
		-0.987154, -0.099208, 0.125240,
		17.360918, 25.619473, 23.094717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.972637, 24.920725, 22.948481>,  <18.051926, 25.688917, 23.007048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.972637, 24.920725, 22.948481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.592703, 25.045427, 22.938501>,  <17.364742, 25.120249, 22.932514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.592703, 25.045427, 22.938501>,  <17.972637, 24.920725, 22.948481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592703, 25.045427, 22.938501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272210, -0.863348, -0.424890,
		-0.154000, -0.396784, 0.904901,
		-0.949835, 0.311756, -0.024947,
		17.307753, 25.138954, 22.931017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.467644, 24.325863, 22.976767>,  <17.972637, 24.920725, 22.948481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.467644, 24.325863, 22.976767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.202353, 24.594418, 22.844481>,  <17.043179, 24.755550, 22.765110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.202353, 24.594418, 22.844481>,  <17.467644, 24.325863, 22.976767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.202353, 24.594418, 22.844481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426747, -0.702258, -0.569844,
		-0.614830, -0.236805, 0.752268,
		-0.663228, 0.671385, -0.330713,
		17.003384, 24.795834, 22.745266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699696, 24.152748, 23.165380>,  <17.467644, 24.325863, 22.976767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.699696, 24.152748, 23.165380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.687553, 24.383255, 22.838701>,  <16.680267, 24.521559, 22.642694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.687553, 24.383255, 22.838701>,  <16.699696, 24.152748, 23.165380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.687553, 24.383255, 22.838701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429916, -0.745162, -0.509810,
		-0.902359, 0.335636, 0.270365,
		-0.030355, 0.576266, -0.816698,
		16.678448, 24.556135, 22.593691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.016861, 24.036930, 22.923489>,  <16.699696, 24.152748, 23.165380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.016861, 24.036930, 22.923489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.216911, 24.190344, 22.612934>,  <16.336941, 24.282393, 22.426601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.216911, 24.190344, 22.612934>,  <16.016861, 24.036930, 22.923489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216911, 24.190344, 22.612934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287385, -0.772242, -0.566614,
		-0.816875, 0.506500, -0.275995,
		0.500125, 0.383536, -0.776386,
		16.366949, 24.305405, 22.380018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560701, 24.001421, 22.404512>,  <16.016861, 24.036930, 22.923489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560701, 24.001421, 22.404512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.920374, 24.004978, 22.229517>,  <16.136177, 24.007113, 22.124519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.920374, 24.004978, 22.229517>,  <15.560701, 24.001421, 22.404512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920374, 24.004978, 22.229517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301773, -0.711395, -0.634705,
		-0.316872, 0.702736, -0.636988,
		0.899181, 0.008895, -0.437488,
		16.190128, 24.007647, 22.098270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.962095, 24.362732, 22.177402>,  <15.560701, 24.001421, 22.404512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.962095, 24.362732, 22.177402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.566486, 24.303677, 22.179859>,  <14.329121, 24.268244, 22.181334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.566486, 24.303677, 22.179859>,  <14.962095, 24.362732, 22.177402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.566486, 24.303677, 22.179859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109219, 0.758375, 0.642603,
		-0.099533, 0.634878, -0.766175,
		-0.989022, -0.147641, 0.006142,
		14.269780, 24.259384, 22.181702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611379, 25.092379, 21.984484>,  <14.962095, 24.362732, 22.177402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611379, 25.092379, 21.984484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.414213, 24.837341, 22.221300>,  <14.295914, 24.684319, 22.363390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.414213, 24.837341, 22.221300>,  <14.611379, 25.092379, 21.984484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.414213, 24.837341, 22.221300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092222, 0.714896, 0.693122,
		-0.865177, 0.287050, -0.411182,
		-0.492913, -0.637593, 0.592040,
		14.266339, 24.646063, 22.398912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073486, 25.552794, 22.189150>,  <14.611379, 25.092379, 21.984484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073486, 25.552794, 22.189150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.106995, 25.244390, 22.441668>,  <14.127100, 25.059349, 22.593178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.106995, 25.244390, 22.441668>,  <14.073486, 25.552794, 22.189150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.106995, 25.244390, 22.441668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162159, 0.635624, 0.754776,
		-0.983202, 0.039142, 0.178272,
		0.083771, -0.771006, 0.631294,
		14.132126, 25.013088, 22.631056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.523831, 25.629877, 22.677954>,  <14.073486, 25.552794, 22.189150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.523831, 25.629877, 22.677954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.802121, 25.408110, 22.860638>,  <13.969095, 25.275049, 22.970249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.802121, 25.408110, 22.860638>,  <13.523831, 25.629877, 22.677954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.802121, 25.408110, 22.860638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108196, 0.547678, 0.829664,
		-0.710113, -0.626633, 0.321047,
		0.695725, -0.554419, 0.456712,
		14.010839, 25.241783, 22.997652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317369, 25.622635, 23.278112>,  <13.523831, 25.629877, 22.677954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317369, 25.622635, 23.278112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.695814, 25.509502, 23.341202>,  <13.922881, 25.441624, 23.379055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.695814, 25.509502, 23.341202>,  <13.317369, 25.622635, 23.278112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.695814, 25.509502, 23.341202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004130, 0.476469, 0.879181,
		-0.323810, -0.832457, 0.449626,
		0.946113, -0.282830, 0.157723,
		13.979649, 25.424654, 23.388519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358297, 25.399761, 23.983818>,  <13.317369, 25.622635, 23.278112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358297, 25.399761, 23.983818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.739262, 25.481985, 23.893785>,  <13.967840, 25.531319, 23.839766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.739262, 25.481985, 23.893785>,  <13.358297, 25.399761, 23.983818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739262, 25.481985, 23.893785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110539, 0.455235, 0.883483,
		0.284071, -0.866318, 0.410849,
		0.952410, 0.205557, -0.225081,
		14.024984, 25.543652, 23.826262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853938, 25.126724, 24.502625>,  <13.358297, 25.399761, 23.983818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853938, 25.126724, 24.502625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.045909, 25.431904, 24.329382>,  <14.161091, 25.615011, 24.225437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.045909, 25.431904, 24.329382>,  <13.853938, 25.126724, 24.502625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045909, 25.431904, 24.329382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005395, 0.496231, 0.868174,
		0.877292, -0.414323, 0.242271,
		0.479927, 0.762949, -0.433105,
		14.189887, 25.660788, 24.199451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114818, 24.765642, 25.277828>,  <13.853938, 25.126724, 24.502625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.114818, 24.765642, 25.277828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.774042, 24.717901, 25.481771>,  <13.569576, 24.689257, 25.604137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.774042, 24.717901, 25.481771>,  <14.114818, 24.765642, 25.277828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.774042, 24.717901, 25.481771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186706, -0.840449, -0.508711,
		0.489225, -0.528584, 0.693727,
		-0.851939, -0.119351, 0.509858,
		13.518460, 24.682096, 25.634729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167778, 24.188875, 25.512478>,  <14.114818, 24.765642, 25.277828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.167778, 24.188875, 25.512478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.771187, 24.240984, 25.512484>,  <13.533232, 24.272249, 25.512487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.771187, 24.240984, 25.512484>,  <14.167778, 24.188875, 25.512478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771187, 24.240984, 25.512484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116973, -0.890215, -0.440267,
		-0.057340, -0.436517, 0.897867,
		-0.991478, 0.130271, 0.000016,
		13.473743, 24.280066, 25.512489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.944696, 23.488043, 25.529675>,  <14.167778, 24.188875, 25.512478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.944696, 23.488043, 25.529675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.624179, 23.709595, 25.439213>,  <13.431869, 23.842525, 25.384935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.624179, 23.709595, 25.439213>,  <13.944696, 23.488043, 25.529675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.624179, 23.709595, 25.439213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356239, -0.745417, -0.563424,
		-0.480647, -0.370904, 0.794612,
		-0.801294, 0.553880, -0.226152,
		13.383791, 23.875759, 25.371367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.521315, 22.999205, 25.518045>,  <13.944696, 23.488043, 25.529675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.521315, 22.999205, 25.518045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.324134, 23.293760, 25.332691>,  <13.205826, 23.470493, 25.221478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.324134, 23.293760, 25.332691>,  <13.521315, 22.999205, 25.518045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.324134, 23.293760, 25.332691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411472, -0.666584, -0.621576,
		-0.766609, -0.115737, 0.631598,
		-0.492952, 0.736391, -0.463387,
		13.176249, 23.514677, 25.193676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.839078, 23.014650, 25.605560>,  <13.521315, 22.999205, 25.518045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.839078, 23.014650, 25.605560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.909225, 23.174923, 25.245850>,  <12.951314, 23.271086, 25.030024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.909225, 23.174923, 25.245850>,  <12.839078, 23.014650, 25.605560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.909225, 23.174923, 25.245850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403529, -0.803924, -0.436888,
		-0.898004, 0.439501, 0.020703,
		0.175369, 0.400681, -0.899278,
		12.961836, 23.295128, 24.976067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.220133, 22.867001, 25.172453>,  <12.839078, 23.014650, 25.605560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.220133, 22.867001, 25.172453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.531207, 22.942482, 24.932589>,  <12.717852, 22.987772, 24.788670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.531207, 22.942482, 24.932589>,  <12.220133, 22.867001, 25.172453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.531207, 22.942482, 24.932589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306372, -0.719173, -0.623639,
		-0.548945, 0.668716, -0.501477,
		0.777686, 0.188705, -0.599662,
		12.764513, 22.999094, 24.752689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.855836, 22.957867, 24.471598>,  <12.220133, 22.867001, 25.172453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.855836, 22.957867, 24.471598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.236151, 22.879442, 24.375628>,  <12.464339, 22.832388, 24.318045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.236151, 22.879442, 24.375628>,  <11.855836, 22.957867, 24.471598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.236151, 22.879442, 24.375628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309767, -0.583906, -0.750399,
		0.007029, 0.787790, -0.615903,
		0.950787, -0.196061, -0.239927,
		12.521387, 22.820623, 24.303650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<18.040554, 22.009382, 29.041832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.338455, 22.266960, 28.971773>,  <18.517195, 22.421507, 28.929737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.338455, 22.266960, 28.971773>,  <18.040554, 22.009382, 29.041832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.338455, 22.266960, 28.971773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645648, -0.761658, -0.054922,
		-0.168771, -0.072181, -0.983009,
		0.744752, 0.643947, -0.175149,
		18.561880, 22.460144, 28.919228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803230, 22.394354, 28.426922>,  <18.040554, 22.009382, 29.041832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.803230, 22.394354, 28.426922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.624319, 22.750303, 28.462851>,  <17.516972, 22.963873, 28.484407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.624319, 22.750303, 28.462851>,  <17.803230, 22.394354, 28.426922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.624319, 22.750303, 28.462851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499508, -0.165231, -0.850406,
		-0.741912, -0.425235, 0.518403,
		-0.447279, 0.889873, 0.089822,
		17.490135, 23.017265, 28.489798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495518, 21.846689, 28.178070>,  <17.803230, 22.394354, 28.426922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495518, 21.846689, 28.178070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.381079, 21.869501, 27.795469>,  <17.312416, 21.883188, 27.565908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.381079, 21.869501, 27.795469>,  <17.495518, 21.846689, 28.178070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.381079, 21.869501, 27.795469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840116, -0.494997, 0.221772,
		-0.460818, 0.867021, 0.189527,
		-0.286097, 0.057028, -0.956502,
		17.295250, 21.886610, 27.508518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910627, 22.352743, 27.992943>,  <17.495518, 21.846689, 28.178070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910627, 22.352743, 27.992943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.907536, 22.021749, 27.768370>,  <16.905680, 21.823153, 27.633625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.907536, 22.021749, 27.768370>,  <16.910627, 22.352743, 27.992943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907536, 22.021749, 27.768370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946697, -0.174756, 0.270603,
		-0.322034, 0.533599, -0.782027,
		-0.007730, -0.827486, -0.561434,
		16.905216, 21.773504, 27.599939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.180000, 22.266579, 27.657331>,  <16.910627, 22.352743, 27.992943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.180000, 22.266579, 27.657331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.368311, 21.920330, 27.725525>,  <16.481297, 21.712580, 27.766441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.368311, 21.920330, 27.725525>,  <16.180000, 22.266579, 27.657331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.368311, 21.920330, 27.725525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857950, -0.404136, 0.317168,
		-0.205649, -0.295584, -0.932920,
		0.470776, -0.865624, 0.170486,
		16.509544, 21.660643, 27.776670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873336, 21.634882, 27.301579>,  <16.180000, 22.266579, 27.657331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873336, 21.634882, 27.301579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.058882, 21.531439, 27.640507>,  <16.170210, 21.469374, 27.843864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.058882, 21.531439, 27.640507>,  <15.873336, 21.634882, 27.301579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058882, 21.531439, 27.640507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830216, -0.460657, 0.313905,
		0.309146, -0.849069, -0.428382,
		0.463864, -0.258607, 0.847320,
		16.198042, 21.453857, 27.894703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197615, 20.921173, 27.272255>,  <15.873336, 21.634882, 27.301579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.197615, 20.921173, 27.272255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.015993, 21.119633, 27.568274>,  <15.907020, 21.238708, 27.745884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.015993, 21.119633, 27.568274>,  <16.197615, 20.921173, 27.272255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.015993, 21.119633, 27.568274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731983, -0.681280, 0.007644,
		0.507971, -0.538230, 0.672513,
		-0.454055, 0.496151, 0.740046,
		15.879777, 21.268478, 27.790287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714290, 20.396084, 26.813494>,  <16.197615, 20.921173, 27.272255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714290, 20.396084, 26.813494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.460776, 20.704239, 26.841276>,  <15.308668, 20.889132, 26.857946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.460776, 20.704239, 26.841276>,  <15.714290, 20.396084, 26.813494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460776, 20.704239, 26.841276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561846, -0.396776, -0.725877,
		-0.531648, -0.499071, 0.684308,
		-0.633782, 0.770387, 0.069456,
		15.270641, 20.935354, 26.862114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.093686, 20.063459, 26.889326>,  <15.714290, 20.396084, 26.813494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.093686, 20.063459, 26.889326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.059527, 20.437040, 26.750509>,  <15.039032, 20.661190, 26.667219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.059527, 20.437040, 26.750509>,  <15.093686, 20.063459, 26.889326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059527, 20.437040, 26.750509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595854, -0.327034, -0.733489,
		-0.798540, 0.144150, 0.584427,
		-0.085396, 0.933954, -0.347042,
		15.033909, 20.717226, 26.646397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339784, 20.147287, 26.874708>,  <15.093686, 20.063459, 26.889326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339784, 20.147287, 26.874708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.507435, 20.411039, 26.625053>,  <14.608026, 20.569290, 26.475260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.507435, 20.411039, 26.625053>,  <14.339784, 20.147287, 26.874708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507435, 20.411039, 26.625053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639476, -0.273602, -0.718479,
		-0.644516, 0.700257, 0.306983,
		0.419128, 0.659380, -0.624139,
		14.633173, 20.608854, 26.437811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667607, 20.545799, 26.602724>,  <14.339784, 20.147287, 26.874708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667607, 20.545799, 26.602724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.995103, 20.592636, 26.377884>,  <14.191600, 20.620739, 26.242981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.995103, 20.592636, 26.377884>,  <13.667607, 20.545799, 26.602724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.995103, 20.592636, 26.377884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516170, -0.278657, -0.809888,
		-0.251464, 0.953226, -0.167709,
		0.818739, 0.117092, -0.562099,
		14.240725, 20.627764, 26.209253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.415112, 20.745674, 26.062654>,  <13.667607, 20.545799, 26.602724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.415112, 20.745674, 26.062654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.778024, 20.612726, 25.959600>,  <13.995770, 20.532957, 25.897768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.778024, 20.612726, 25.959600>,  <13.415112, 20.745674, 26.062654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778024, 20.612726, 25.959600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398071, -0.481244, -0.780989,
		0.135591, 0.811132, -0.568929,
		0.907279, -0.332369, -0.257635,
		14.050207, 20.513016, 25.882311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060875, 20.833569, 25.555273>,  <13.415112, 20.745674, 26.062654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060875, 20.833569, 25.555273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.731496, 20.679966, 25.722353>,  <12.533869, 20.587805, 25.822601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.731496, 20.679966, 25.722353>,  <13.060875, 20.833569, 25.555273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.731496, 20.679966, 25.722353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005089, 0.731144, 0.682204,
		-0.567370, 0.563885, -0.600104,
		-0.823447, -0.384008, 0.417699,
		12.484462, 20.564764, 25.847662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.550366, 21.389669, 25.633341>,  <13.060875, 20.833569, 25.555273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.550366, 21.389669, 25.633341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.376767, 21.127790, 25.880896>,  <12.272608, 20.970663, 26.029428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.376767, 21.127790, 25.880896>,  <12.550366, 21.389669, 25.633341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.376767, 21.127790, 25.880896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125209, 0.724118, 0.678215,
		-0.892170, 0.216854, -0.396240,
		-0.433998, -0.654696, 0.618885,
		12.246568, 20.931381, 26.066561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.920855, 21.675611, 25.878080>,  <12.550366, 21.389669, 25.633341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.920855, 21.675611, 25.878080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.020881, 21.394100, 26.144062>,  <12.080896, 21.225193, 26.303652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.020881, 21.394100, 26.144062>,  <11.920855, 21.675611, 25.878080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020881, 21.394100, 26.144062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021066, 0.682657, 0.730435,
		-0.968000, -0.196665, 0.155883,
		0.250066, -0.703777, 0.664955,
		12.095901, 21.182966, 26.343548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.504376, 21.821993, 26.432108>,  <11.920855, 21.675611, 25.878080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.504376, 21.821993, 26.432108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.799811, 21.614416, 26.604242>,  <11.977072, 21.489870, 26.707523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.799811, 21.614416, 26.604242>,  <11.504376, 21.821993, 26.432108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.799811, 21.614416, 26.604242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066893, 0.578767, 0.812745,
		-0.670831, -0.629069, 0.392756,
		0.738587, -0.518942, 0.430336,
		12.021387, 21.458735, 26.733343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.305128, 21.775978, 27.073467>,  <11.504376, 21.821993, 26.432108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.305128, 21.775978, 27.073467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.699580, 21.714882, 27.099436>,  <11.936252, 21.678225, 27.115017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.699580, 21.714882, 27.099436>,  <11.305128, 21.775978, 27.073467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.699580, 21.714882, 27.099436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045693, 0.625916, 0.778551,
		-0.159553, -0.764787, 0.624215,
		0.986132, -0.152742, 0.064921,
		11.995420, 21.669060, 27.118912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.371622, 21.689356, 27.798847>,  <11.305128, 21.775978, 27.073467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.371622, 21.689356, 27.798847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.729076, 21.763748, 27.635469>,  <11.943549, 21.808384, 27.537443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.729076, 21.763748, 27.635469>,  <11.371622, 21.689356, 27.798847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.729076, 21.763748, 27.635469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236781, 0.577746, 0.781117,
		0.381249, -0.794746, 0.472258,
		0.893635, 0.185979, -0.408446,
		11.997167, 21.819542, 27.512936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.810598, 21.728542, 28.327852>,  <11.371622, 21.689356, 27.798847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.810598, 21.728542, 28.327852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.043540, 21.888762, 28.044889>,  <12.183305, 21.984892, 27.875111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.043540, 21.888762, 28.044889>,  <11.810598, 21.728542, 28.327852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.043540, 21.888762, 28.044889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503221, 0.505810, 0.700661,
		0.638462, -0.764014, 0.092996,
		0.582353, 0.400548, -0.707409,
		12.218246, 22.008926, 27.832666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.503015, 21.804821, 28.612541>,  <11.810598, 21.728542, 28.327852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.503015, 21.804821, 28.612541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.515104, 22.074295, 28.317181>,  <12.522358, 22.235979, 28.139965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.515104, 22.074295, 28.317181>,  <12.503015, 21.804821, 28.612541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.515104, 22.074295, 28.317181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652595, 0.546257, 0.525093,
		0.757103, -0.497747, -0.423134,
		0.030223, 0.673685, -0.738401,
		12.524172, 22.276400, 28.095661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.215551, 21.977509, 28.498508>,  <12.503015, 21.804821, 28.612541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.215551, 21.977509, 28.498508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.005150, 22.285498, 28.354031>,  <12.878909, 22.470291, 28.267344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.005150, 22.285498, 28.354031>,  <13.215551, 21.977509, 28.498508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005150, 22.285498, 28.354031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655543, 0.637628, 0.404591,
		0.541832, -0.023963, -0.840145,
		-0.526004, 0.769972, -0.361196,
		12.847348, 22.516489, 28.245672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.695260, 22.457672, 28.613949>,  <13.215551, 21.977509, 28.498508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.695260, 22.457672, 28.613949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.374973, 22.665312, 28.494356>,  <13.182801, 22.789896, 28.422600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.374973, 22.665312, 28.494356>,  <13.695260, 22.457672, 28.613949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.374973, 22.665312, 28.494356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388496, 0.829896, 0.400430,
		0.455987, 0.204477, -0.866179,
		-0.800716, 0.519098, -0.298983,
		13.134758, 22.821041, 28.404661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862808, 22.914625, 28.017588>,  <13.695260, 22.457672, 28.613949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862808, 22.914625, 28.017588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.550593, 23.068483, 28.214691>,  <13.363265, 23.160799, 28.332952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.550593, 23.068483, 28.214691>,  <13.862808, 22.914625, 28.017588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.550593, 23.068483, 28.214691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606278, 0.657845, 0.446841,
		-0.152284, 0.647524, -0.746674,
		-0.780536, 0.384645, 0.492759,
		13.316433, 23.183876, 28.362518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974613, 23.701962, 27.999657>,  <13.862808, 22.914625, 28.017588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974613, 23.701962, 27.999657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.739258, 23.617479, 28.311859>,  <13.598044, 23.566790, 28.499180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.739258, 23.617479, 28.311859>,  <13.974613, 23.701962, 27.999657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739258, 23.617479, 28.311859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428548, 0.737100, 0.522523,
		-0.685671, 0.641932, -0.343189,
		-0.588389, -0.211206, 0.780507,
		13.562741, 23.554117, 28.546011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.715469, 24.398060, 28.215057>,  <13.974613, 23.701962, 27.999657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.715469, 24.398060, 28.215057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.674061, 24.151203, 28.527061>,  <13.649216, 24.003088, 28.714264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.674061, 24.151203, 28.527061>,  <13.715469, 24.398060, 28.215057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.674061, 24.151203, 28.527061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334152, 0.717064, 0.611688,
		-0.936817, 0.323965, 0.131988,
		-0.103521, -0.617144, 0.780011,
		13.643004, 23.966061, 28.761065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556602, 24.831120, 28.861971>,  <13.715469, 24.398060, 28.215057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.556602, 24.831120, 28.861971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.699388, 24.488857, 29.011868>,  <13.785059, 24.283501, 29.101807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.699388, 24.488857, 29.011868>,  <13.556602, 24.831120, 28.861971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.699388, 24.488857, 29.011868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601888, 0.517479, 0.608232,
		-0.714359, 0.008437, 0.699729,
		0.356964, -0.855654, 0.374743,
		13.806477, 24.232161, 29.124290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.519891, 25.333000, 28.381020>,  <13.556602, 24.831120, 28.861971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.519891, 25.333000, 28.381020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.496737, 25.695753, 28.214064>,  <13.482843, 25.913404, 28.113890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.496737, 25.695753, 28.214064>,  <13.519891, 25.333000, 28.381020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.496737, 25.695753, 28.214064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296643, -0.414831, -0.860185,
		-0.953232, 0.074023, 0.293033,
		-0.057886, 0.906882, -0.417389,
		13.479371, 25.967817, 28.088846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.856177, 25.459930, 28.120768>,  <13.519891, 25.333000, 28.381020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.856177, 25.459930, 28.120768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.083058, 25.715357, 27.912724>,  <13.219187, 25.868612, 27.787897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.083058, 25.715357, 27.912724>,  <12.856177, 25.459930, 28.120768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.083058, 25.715357, 27.912724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323894, -0.407682, -0.853750,
		-0.757214, 0.652710, -0.024412,
		0.567204, 0.638564, -0.520111,
		13.253220, 25.906925, 27.756691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.569692, 25.374670, 27.543823>,  <12.856177, 25.459930, 28.120768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.569692, 25.374670, 27.543823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.909941, 25.559788, 27.444014>,  <13.114090, 25.670858, 27.384129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.909941, 25.559788, 27.444014>,  <12.569692, 25.374670, 27.543823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.909941, 25.559788, 27.444014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021305, -0.443847, -0.895849,
		-0.525346, 0.767345, -0.367686,
		0.850622, 0.462797, -0.249522,
		13.165128, 25.698627, 27.369158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.473887, 25.661432, 26.871532>,  <12.569692, 25.374670, 27.543823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.473887, 25.661432, 26.871532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.866670, 25.624346, 26.937462>,  <13.102339, 25.602095, 26.977020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.866670, 25.624346, 26.937462>,  <12.473887, 25.661432, 26.871532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.866670, 25.624346, 26.937462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102746, -0.470150, -0.876586,
		0.158766, 0.877703, -0.452140,
		0.981956, -0.092716, 0.164824,
		13.161257, 25.596531, 26.986910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.795794, 25.908598, 26.146950>,  <12.473887, 25.661432, 26.871532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.795794, 25.908598, 26.146950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.075939, 25.703859, 26.345947>,  <13.244027, 25.581017, 26.465345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.075939, 25.703859, 26.345947>,  <12.795794, 25.908598, 26.146950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.075939, 25.703859, 26.345947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118189, -0.604200, -0.788019,
		0.703932, 0.610699, -0.362665,
		0.700365, -0.511849, 0.497494,
		13.286049, 25.550304, 26.495195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336320, 26.018385, 25.768324>,  <12.795794, 25.908598, 26.146950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.336320, 26.018385, 25.768324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.383013, 25.683281, 25.981689>,  <13.411029, 25.482218, 26.109709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.383013, 25.683281, 25.981689>,  <13.336320, 26.018385, 25.768324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.383013, 25.683281, 25.981689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069671, -0.542672, -0.837051,
		0.990717, 0.060548, -0.121715,
		0.116733, -0.837760, 0.533415,
		13.418033, 25.431953, 26.141714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690466, 25.637529, 25.408178>,  <13.336320, 26.018385, 25.768324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.690466, 25.637529, 25.408178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.552917, 25.344297, 25.642902>,  <13.470388, 25.168358, 25.783737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.552917, 25.344297, 25.642902>,  <13.690466, 25.637529, 25.408178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.552917, 25.344297, 25.642902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035518, -0.634627, -0.772002,
		0.938345, -0.244627, 0.244267,
		-0.343871, -0.733080, 0.586810,
		13.449756, 25.124372, 25.818945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.448887, 25.415028, 25.146833>,  <13.690466, 25.637529, 25.408178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.448887, 25.415028, 25.146833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.397419, 25.692116, 24.862980>,  <14.366538, 25.858368, 24.692667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.397419, 25.692116, 24.862980>,  <14.448887, 25.415028, 25.146833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.397419, 25.692116, 24.862980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168775, 0.720440, 0.672667,
		0.977220, -0.033217, -0.209613,
		-0.128670, 0.692721, -0.709635,
		14.358818, 25.899933, 24.650089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009354, 25.754725, 25.122068>,  <14.448887, 25.415028, 25.146833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009354, 25.754725, 25.122068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.773350, 26.014336, 24.929964>,  <14.631747, 26.170103, 24.814701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.773350, 26.014336, 24.929964>,  <15.009354, 25.754725, 25.122068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773350, 26.014336, 24.929964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330220, 0.736779, 0.590010,
		0.736779, 0.189520, -0.649029,
		-0.590010, 0.649029, -0.480260,
		14.596347, 26.209044, 24.785887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435048, 26.298273, 25.063728>,  <15.009354, 25.754725, 25.122068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.435048, 26.298273, 25.063728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.067210, 26.453165, 25.037203>,  <14.846507, 26.546101, 25.021288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.067210, 26.453165, 25.037203>,  <15.435048, 26.298273, 25.063728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.067210, 26.453165, 25.037203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314141, 0.826136, 0.467777,
		0.235922, 0.409333, -0.881355,
		-0.919596, 0.387229, -0.066316,
		14.791331, 26.569334, 25.017307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.483752, 26.977642, 24.820383>,  <15.435048, 26.298273, 25.063728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.483752, 26.977642, 24.820383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.145982, 26.947790, 25.032562>,  <14.943319, 26.929878, 25.159870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.145982, 26.947790, 25.032562>,  <15.483752, 26.977642, 24.820383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145982, 26.947790, 25.032562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281951, 0.780050, 0.558592,
		-0.455464, 0.621250, -0.637653,
		-0.844427, -0.074632, 0.530447,
		14.892653, 26.925400, 25.191696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345606, 27.590172, 24.897137>,  <15.483752, 26.977642, 24.820383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345606, 27.590172, 24.897137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.162197, 27.394018, 25.193592>,  <15.052152, 27.276327, 25.371466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.162197, 27.394018, 25.193592>,  <15.345606, 27.590172, 24.897137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.162197, 27.394018, 25.193592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469390, 0.574510, 0.670531,
		-0.754607, 0.655334, -0.033244,
		-0.458521, -0.490383, 0.741136,
		15.024641, 27.246902, 25.415934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518944, 27.885956, 25.463140>,  <15.345606, 27.590172, 24.897137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518944, 27.885956, 25.463140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.279674, 27.631123, 25.657589>,  <15.136111, 27.478224, 25.774258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.279674, 27.631123, 25.657589>,  <15.518944, 27.885956, 25.463140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279674, 27.631123, 25.657589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214645, 0.457074, 0.863140,
		-0.772084, 0.620652, -0.136664,
		-0.598176, -0.637082, 0.486119,
		15.100221, 27.439999, 25.803425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947281, 28.261824, 25.909853>,  <15.518944, 27.885956, 25.463140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.947281, 28.261824, 25.909853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.067731, 27.901390, 26.034670>,  <15.140001, 27.685129, 26.109560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.067731, 27.901390, 26.034670>,  <14.947281, 28.261824, 25.909853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.067731, 27.901390, 26.034670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288588, 0.397999, 0.870812,
		-0.908868, -0.172173, 0.379890,
		0.301126, -0.901085, 0.312041,
		15.158069, 27.631065, 26.128283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688131, 28.136148, 26.619024>,  <14.947281, 28.261824, 25.909853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688131, 28.136148, 26.619024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.982556, 27.872097, 26.559099>,  <15.159211, 27.713667, 26.523144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.982556, 27.872097, 26.559099>,  <14.688131, 28.136148, 26.619024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.982556, 27.872097, 26.559099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445255, 0.305455, 0.841692,
		-0.509864, -0.686241, 0.518759,
		0.736061, -0.660129, -0.149812,
		15.203375, 27.674059, 26.514156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691339, 27.884165, 27.298599>,  <14.688131, 28.136148, 26.619024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691339, 27.884165, 27.298599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.022627, 27.812811, 27.086098>,  <15.221400, 27.769999, 26.958597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.022627, 27.812811, 27.086098>,  <14.691339, 27.884165, 27.298599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.022627, 27.812811, 27.086098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547780, 0.457753, 0.700285,
		0.118263, -0.871000, 0.476835,
		0.828221, -0.178383, -0.531252,
		15.271093, 27.759296, 26.926722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.941975, 15.920002, 15.783962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.327242, 16.027561, 15.784727>,  <13.558402, 16.092096, 15.785186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.327242, 16.027561, 15.784727>,  <12.941975, 15.920002, 15.783962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.327242, 16.027561, 15.784727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184351, 0.655122, 0.732687,
		0.195765, -0.706052, 0.680563,
		0.963167, 0.268897, 0.001911,
		13.616192, 16.108231, 15.785300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199362, 15.778107, 16.456171>,  <12.941975, 15.920002, 15.783962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199362, 15.778107, 16.456171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417912, 16.074301, 16.299631>,  <13.549042, 16.252018, 16.205708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417912, 16.074301, 16.299631>,  <13.199362, 15.778107, 16.456171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.417912, 16.074301, 16.299631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146058, 0.544344, 0.826049,
		0.824706, -0.394172, 0.405570,
		0.546375, 0.740485, -0.391352,
		13.581824, 16.296446, 16.182226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548812, 16.107407, 17.103155>,  <13.199362, 15.778107, 16.456171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548812, 16.107407, 17.103155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.633210, 16.360199, 16.804873>,  <13.683849, 16.511875, 16.625902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.633210, 16.360199, 16.804873>,  <13.548812, 16.107407, 17.103155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.633210, 16.360199, 16.804873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029258, 0.766624, 0.641429,
		0.977049, -0.113521, 0.180245,
		0.210996, 0.631982, -0.745708,
		13.696509, 16.549793, 16.581160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250298, 16.546631, 17.307674>,  <13.548812, 16.107407, 17.103155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.250298, 16.546631, 17.307674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045189, 16.753242, 17.033373>,  <13.922124, 16.877211, 16.868792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045189, 16.753242, 17.033373>,  <14.250298, 16.546631, 17.307674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045189, 16.753242, 17.033373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061301, 0.818750, 0.570869,
		0.856334, 0.250688, -0.451495,
		-0.512772, 0.516531, -0.685756,
		13.891357, 16.908201, 16.827646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610356, 17.189428, 17.120115>,  <14.250298, 16.546631, 17.307674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.610356, 17.189428, 17.120115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.228207, 17.247496, 17.017210>,  <13.998917, 17.282335, 16.955467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.228207, 17.247496, 17.017210>,  <14.610356, 17.189428, 17.120115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.228207, 17.247496, 17.017210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011036, 0.852768, 0.522174,
		0.295188, 0.501712, -0.813111,
		-0.955375, 0.145166, -0.257264,
		13.941594, 17.291046, 16.940031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598464, 17.929420, 17.007240>,  <14.610356, 17.189428, 17.120115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.598464, 17.929420, 17.007240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.223467, 17.797749, 17.052408>,  <13.998468, 17.718746, 17.079510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.223467, 17.797749, 17.052408>,  <14.598464, 17.929420, 17.007240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.223467, 17.797749, 17.052408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228977, 0.827811, 0.512151,
		-0.262066, 0.454281, -0.851440,
		-0.937492, -0.329178, 0.112922,
		13.942220, 17.698996, 17.086285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.195916, 18.421387, 16.701233>,  <14.598464, 17.929420, 17.007240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.195916, 18.421387, 16.701233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.923326, 18.239992, 16.930994>,  <13.759771, 18.131155, 17.068851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.923326, 18.239992, 16.930994>,  <14.195916, 18.421387, 16.701233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923326, 18.239992, 16.930994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214897, 0.874273, 0.435276,
		-0.699577, 0.173193, -0.693250,
		-0.681477, -0.453487, 0.574403,
		13.718883, 18.103947, 17.103315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.532262, 18.904922, 16.670349>,  <14.195916, 18.421387, 16.701233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.532262, 18.904922, 16.670349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503384, 18.669468, 16.992416>,  <13.486056, 18.528194, 17.185658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503384, 18.669468, 16.992416>,  <13.532262, 18.904922, 16.670349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503384, 18.669468, 16.992416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213612, 0.797668, 0.564000,
		-0.974247, -0.131275, -0.183329,
		-0.072196, -0.588636, 0.805167,
		13.481725, 18.492878, 17.233967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889149, 18.976507, 16.896120>,  <13.532262, 18.904922, 16.670349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889149, 18.976507, 16.896120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107156, 18.858070, 17.209881>,  <13.237960, 18.787008, 17.398136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107156, 18.858070, 17.209881>,  <12.889149, 18.976507, 16.896120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.107156, 18.858070, 17.209881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402580, 0.728240, 0.554614,
		-0.735449, -0.618059, 0.277703,
		0.545018, -0.296092, 0.784401,
		13.270661, 18.769243, 17.445202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.543662, 19.172625, 17.428583>,  <12.889149, 18.976507, 16.896120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.543662, 19.172625, 17.428583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.894549, 19.096724, 17.604982>,  <13.105082, 19.051182, 17.710823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.894549, 19.096724, 17.604982>,  <12.543662, 19.172625, 17.428583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.894549, 19.096724, 17.604982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215386, 0.665394, 0.714745,
		-0.429065, -0.721972, 0.542825,
		0.877219, -0.189755, 0.441000,
		13.157715, 19.039797, 17.737282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446804, 19.251919, 18.066559>,  <12.543662, 19.172625, 17.428583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446804, 19.251919, 18.066559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845351, 19.265247, 18.097906>,  <13.084479, 19.273245, 18.116714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845351, 19.265247, 18.097906>,  <12.446804, 19.251919, 18.066559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.845351, 19.265247, 18.097906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083596, 0.558287, 0.825426,
		-0.016248, -0.828979, 0.559044,
		0.996367, 0.033322, 0.078370,
		13.144261, 19.275244, 18.121418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.655701, 19.168034, 18.886999>,  <12.446804, 19.251919, 18.066559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.655701, 19.168034, 18.886999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943730, 19.358980, 18.685560>,  <13.116549, 19.473549, 18.564697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943730, 19.358980, 18.685560>,  <12.655701, 19.168034, 18.886999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943730, 19.358980, 18.685560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035393, 0.699543, 0.713714,
		0.692958, -0.531775, 0.486852,
		0.720109, 0.477342, -0.503575,
		13.159753, 19.502192, 18.534481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.471931, 18.686222, 19.525322>,  <12.655701, 19.168034, 18.886999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.471931, 18.686222, 19.525322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.111348, 18.776409, 19.673126>,  <11.894999, 18.830521, 19.761808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.111348, 18.776409, 19.673126>,  <12.471931, 18.686222, 19.525322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.111348, 18.776409, 19.673126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418675, -0.670933, -0.612013,
		0.109929, -0.706409, 0.699215,
		-0.901458, 0.225466, 0.369510,
		11.840911, 18.844049, 19.783979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118108, 18.144337, 19.730408>,  <12.471931, 18.686222, 19.525322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.118108, 18.144337, 19.730408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.791707, 18.368216, 19.672611>,  <11.595866, 18.502542, 19.637934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.791707, 18.368216, 19.672611>,  <12.118108, 18.144337, 19.730408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.791707, 18.368216, 19.672611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448721, -0.770904, -0.452059,
		-0.364404, -0.304046, 0.880208,
		-0.816002, 0.559699, -0.144489,
		11.546906, 18.536125, 19.629265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.454474, 17.702398, 19.868151>,  <12.118108, 18.144337, 19.730408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.454474, 17.702398, 19.868151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336217, 18.025665, 19.664402>,  <11.265263, 18.219625, 19.542152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336217, 18.025665, 19.664402>,  <11.454474, 17.702398, 19.868151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.336217, 18.025665, 19.664402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638766, -0.563715, -0.523645,
		-0.710334, 0.170558, 0.682888,
		-0.295642, 0.808168, -0.509372,
		11.247524, 18.268116, 19.511591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.749903, 17.671696, 19.946926>,  <11.454474, 17.702398, 19.868151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.749903, 17.671696, 19.946926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.843416, 17.874523, 19.615088>,  <10.899524, 17.996220, 19.415985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.843416, 17.874523, 19.615088>,  <10.749903, 17.671696, 19.946926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.843416, 17.874523, 19.615088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687907, -0.516723, -0.509687,
		-0.687117, 0.689841, 0.228013,
		0.233783, 0.507066, -0.829596,
		10.913551, 18.026644, 19.366209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.146983, 17.787374, 19.532600>,  <10.749903, 17.671696, 19.946926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.146983, 17.787374, 19.532600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.389612, 17.885859, 19.230223>,  <10.535190, 17.944948, 19.048796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.389612, 17.885859, 19.230223>,  <10.146983, 17.787374, 19.532600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.389612, 17.885859, 19.230223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611910, -0.462472, -0.641628,
		-0.507577, 0.851763, -0.129864,
		0.606573, 0.246210, -0.755943,
		10.571584, 17.959723, 19.003439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.727008, 17.864178, 18.994612>,  <10.146983, 17.787374, 19.532600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.727008, 17.864178, 18.994612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.072712, 17.812555, 18.800129>,  <10.280134, 17.781582, 18.683439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.072712, 17.812555, 18.800129>,  <9.727008, 17.864178, 18.994612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.072712, 17.812555, 18.800129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476245, -0.521177, -0.708213,
		-0.162003, 0.843635, -0.511893,
		0.864260, -0.129054, -0.486209,
		10.331990, 17.773840, 18.654266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.632313, 18.175037, 18.310387>,  <9.727008, 17.864178, 18.994612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.632313, 18.175037, 18.310387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.926412, 17.903978, 18.304670>,  <10.102871, 17.741343, 18.301241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.926412, 17.903978, 18.304670>,  <9.632313, 18.175037, 18.310387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.926412, 17.903978, 18.304670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478138, -0.503603, -0.719561,
		0.480412, 0.535888, -0.694282,
		0.735247, -0.677649, -0.014292,
		10.146986, 17.700684, 18.300383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.037583, 18.094233, 17.572325>,  <9.632313, 18.175037, 18.310387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.037583, 18.094233, 17.572325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.108009, 17.752613, 17.768120>,  <10.150265, 17.547642, 17.885597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.108009, 17.752613, 17.768120>,  <10.037583, 18.094233, 17.572325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.108009, 17.752613, 17.768120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477742, -0.508905, -0.716085,
		0.860676, -0.107772, -0.497616,
		0.176066, -0.854050, 0.489490,
		10.160829, 17.496399, 17.914967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.164735, 17.532135, 17.019821>,  <10.037583, 18.094233, 17.572325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.164735, 17.532135, 17.019821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.074612, 17.328777, 17.352272>,  <10.020538, 17.206762, 17.551743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.074612, 17.328777, 17.352272>,  <10.164735, 17.532135, 17.019821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.074612, 17.328777, 17.352272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382200, -0.738563, -0.555380,
		0.896192, -0.442788, -0.027905,
		-0.225306, -0.508393, 0.831128,
		10.007020, 17.176260, 17.601610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.232144, 16.897287, 16.812433>,  <10.164735, 17.532135, 17.019821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.232144, 16.897287, 16.812433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.023027, 16.842407, 17.148972>,  <9.897557, 16.809479, 17.350895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.023027, 16.842407, 17.148972>,  <10.232144, 16.897287, 16.812433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.023027, 16.842407, 17.148972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502556, -0.747608, -0.434189,
		0.688568, -0.649815, 0.321892,
		-0.522792, -0.137200, 0.841348,
		9.866190, 16.801247, 17.401375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.305666, 16.170401, 17.085676>,  <10.232144, 16.897287, 16.812433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.305666, 16.170401, 17.085676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.962943, 16.327492, 17.219330>,  <9.757309, 16.421745, 17.299522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.962943, 16.327492, 17.219330>,  <10.305666, 16.170401, 17.085676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.962943, 16.327492, 17.219330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489606, -0.822919, -0.288253,
		0.161763, -0.410572, 0.897365,
		-0.856807, 0.392727, 0.334136,
		9.705901, 16.445311, 17.319571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.069000, 15.684938, 17.445192>,  <10.305666, 16.170401, 17.085676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.069000, 15.684938, 17.445192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.745869, 15.911405, 17.379627>,  <9.551990, 16.047285, 17.340288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.745869, 15.911405, 17.379627>,  <10.069000, 15.684938, 17.445192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.745869, 15.911405, 17.379627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477626, -0.791746, -0.380804,
		-0.345377, -0.229335, 0.910011,
		-0.807830, 0.566166, -0.163915,
		9.503520, 16.081255, 17.330452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.527810, 15.269896, 17.537809>,  <10.069000, 15.684938, 17.445192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.527810, 15.269896, 17.537809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334351, 15.556197, 17.336304>,  <9.218275, 15.727979, 17.215401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334351, 15.556197, 17.336304>,  <9.527810, 15.269896, 17.537809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.334351, 15.556197, 17.336304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523898, -0.697803, -0.488468,
		-0.701154, 0.027678, 0.712472,
		-0.483646, 0.715755, -0.503768,
		9.189256, 15.770924, 17.185175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.815862, 15.193290, 17.602610>,  <9.527810, 15.269896, 17.537809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.815862, 15.193290, 17.602610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.888532, 15.398231, 17.266874>,  <8.932134, 15.521195, 17.065434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.888532, 15.398231, 17.266874>,  <8.815862, 15.193290, 17.602610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.888532, 15.398231, 17.266874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666967, -0.563004, -0.488038,
		-0.722598, 0.648475, 0.239439,
		0.181676, 0.512353, -0.839338,
		8.943034, 15.551936, 17.015074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.059496, 14.538103, 17.160965>,  <8.815862, 15.193290, 17.602610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.059496, 14.538103, 17.160965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.144758, 14.152774, 17.095760>,  <9.195915, 13.921576, 17.056637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.144758, 14.152774, 17.095760>,  <9.059496, 14.538103, 17.160965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.144758, 14.152774, 17.095760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385025, -0.236168, 0.892177,
		-0.897953, -0.127408, -0.421245,
		0.213155, -0.963324, -0.163013,
		9.208705, 13.863777, 17.046856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.947407, 14.483475, 17.880651>,  <9.059496, 14.538103, 17.160965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.947407, 14.483475, 17.880651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.268713, 14.245608, 17.867172>,  <9.461497, 14.102888, 17.859085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.268713, 14.245608, 17.867172>,  <8.947407, 14.483475, 17.880651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.268713, 14.245608, 17.867172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066278, 0.033017, 0.997255,
		-0.591922, -0.803294, 0.065935,
		0.803266, -0.594667, -0.033697,
		9.509693, 14.067208, 17.857063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.812957, 13.923437, 18.402220>,  <8.947407, 14.483475, 17.880651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.812957, 13.923437, 18.402220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.199268, 14.018234, 18.360067>,  <9.431055, 14.075112, 18.334776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.199268, 14.018234, 18.360067>,  <8.812957, 13.923437, 18.402220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.199268, 14.018234, 18.360067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083392, 0.100993, 0.991386,
		0.245595, -0.966248, 0.077773,
		0.965779, 0.236994, -0.105380,
		9.489002, 14.089332, 18.328453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.143490, 13.655849, 18.900814>,  <8.812957, 13.923437, 18.402220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.143490, 13.655849, 18.900814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.441849, 13.902188, 18.799330>,  <9.620864, 14.049992, 18.738440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.441849, 13.902188, 18.799330>,  <9.143490, 13.655849, 18.900814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.441849, 13.902188, 18.799330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060804, 0.442279, 0.894814,
		0.663281, -0.652012, 0.367341,
		0.745897, 0.615849, -0.253710,
		9.665618, 14.086943, 18.723217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.736646, 13.648036, 19.578030>,  <9.143490, 13.655849, 18.900814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.736646, 13.648036, 19.578030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.751311, 13.980596, 19.356243>,  <9.760111, 14.180131, 19.223171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.751311, 13.980596, 19.356243>,  <9.736646, 13.648036, 19.578030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.751311, 13.980596, 19.356243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100626, 0.548948, 0.829777,
		0.994249, -0.086216, -0.063534,
		0.036663, 0.831398, -0.554467,
		9.762310, 14.230015, 19.189903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.098528, 14.104100, 19.982719>,  <9.736646, 13.648036, 19.578030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.098528, 14.104100, 19.982719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.929338, 14.349532, 19.716003>,  <9.827824, 14.496792, 19.555973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.929338, 14.349532, 19.716003>,  <10.098528, 14.104100, 19.982719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.929338, 14.349532, 19.716003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052675, 0.751263, 0.657897,
		0.904609, 0.243151, -0.350086,
		-0.422975, 0.613581, -0.666792,
		9.802445, 14.533607, 19.515966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.637374, 14.681038, 19.995134>,  <10.098528, 14.104100, 19.982719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.637374, 14.681038, 19.995134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.284577, 14.796493, 19.846121>,  <10.072900, 14.865766, 19.756712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.284577, 14.796493, 19.846121>,  <10.637374, 14.681038, 19.995134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.284577, 14.796493, 19.846121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024481, 0.817489, 0.575424,
		0.470631, 0.498398, -0.728083,
		-0.881990, 0.288636, -0.372535,
		10.019980, 14.883083, 19.734360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.762782, 15.439944, 19.717672>,  <10.637374, 14.681038, 19.995134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.762782, 15.439944, 19.717672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.367768, 15.407392, 19.771568>,  <10.130760, 15.387860, 19.803905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.367768, 15.407392, 19.771568>,  <10.762782, 15.439944, 19.717672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.367768, 15.407392, 19.771568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005012, 0.871801, 0.489835,
		-0.157328, 0.483053, -0.861341,
		-0.987534, -0.081381, 0.134738,
		10.071508, 15.382977, 19.811989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.519857, 16.084278, 19.549181>,  <10.762782, 15.439944, 19.717672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.519857, 16.084278, 19.549181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.254122, 15.899766, 19.784426>,  <10.094681, 15.789059, 19.925573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.254122, 15.899766, 19.784426>,  <10.519857, 16.084278, 19.549181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.254122, 15.899766, 19.784426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016584, 0.795747, 0.605402,
		-0.747248, 0.392439, -0.536296,
		-0.664339, -0.461279, 0.588112,
		10.054820, 15.761382, 19.960859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.121988, 16.655060, 19.759237>,  <10.519857, 16.084278, 19.549181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.121988, 16.655060, 19.759237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.061070, 16.357315, 20.019310>,  <10.024520, 16.178669, 20.175354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.061070, 16.357315, 20.019310>,  <10.121988, 16.655060, 19.759237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.061070, 16.357315, 20.019310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049678, 0.651257, 0.757230,
		-0.987086, 0.147622, -0.062206,
		-0.152296, -0.744360, 0.650180,
		10.015382, 16.134007, 20.214363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.700003, 16.864447, 20.279881>,  <10.121988, 16.655060, 19.759237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.700003, 16.864447, 20.279881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.852481, 16.545895, 20.467697>,  <9.943968, 16.354763, 20.580387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.852481, 16.545895, 20.467697>,  <9.700003, 16.864447, 20.279881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.852481, 16.545895, 20.467697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019287, 0.514630, 0.857196,
		-0.924294, -0.317703, 0.211534,
		0.381195, -0.796380, 0.469542,
		9.966840, 16.306980, 20.608559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.443901, 16.892977, 20.923027>,  <9.700003, 16.864447, 20.279881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.443901, 16.892977, 20.923027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.763998, 16.664951, 20.997475>,  <9.956056, 16.528135, 21.042143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.763998, 16.664951, 20.997475>,  <9.443901, 16.892977, 20.923027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.763998, 16.664951, 20.997475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220288, 0.568109, 0.792922,
		-0.557752, -0.593530, 0.580203,
		0.800241, -0.570065, 0.186117,
		10.004070, 16.493931, 21.053310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.342170, 16.642654, 21.548500>,  <9.443901, 16.892977, 20.923027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.342170, 16.642654, 21.548500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.736000, 16.609779, 21.486721>,  <9.972299, 16.590054, 21.449654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.736000, 16.609779, 21.486721>,  <9.342170, 16.642654, 21.548500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.736000, 16.609779, 21.486721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173117, 0.585267, 0.792144,
		0.025287, -0.806664, 0.590469,
		0.984577, -0.082189, -0.154447,
		10.031373, 16.585123, 21.440388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.649520, 16.349432, 22.133421>,  <9.342170, 16.642654, 21.548500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.649520, 16.349432, 22.133421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.958574, 16.537727, 21.963037>,  <10.144007, 16.650703, 21.860807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.958574, 16.537727, 21.963037>,  <9.649520, 16.349432, 22.133421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.958574, 16.537727, 21.963037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337266, 0.264087, 0.903609,
		0.537853, -0.841822, 0.045279,
		0.772635, 0.470738, -0.425958,
		10.190365, 16.678949, 21.835251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.206156, 16.211605, 22.440199>,  <9.649520, 16.349432, 22.133421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.206156, 16.211605, 22.440199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.332596, 16.548603, 22.265713>,  <10.408460, 16.750801, 22.161022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.332596, 16.548603, 22.265713>,  <10.206156, 16.211605, 22.440199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.332596, 16.548603, 22.265713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426599, 0.284463, 0.858541,
		0.847404, -0.457474, -0.269489,
		0.316101, 0.842495, -0.436213,
		10.427426, 16.801352, 22.134850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.911683, 16.276911, 22.671690>,  <10.206156, 16.211605, 22.440199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.911683, 16.276911, 22.671690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772749, 16.631134, 22.548307>,  <10.689388, 16.843668, 22.474277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772749, 16.631134, 22.548307>,  <10.911683, 16.276911, 22.671690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.772749, 16.631134, 22.548307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410300, 0.439293, 0.799171,
		0.843215, 0.151022, -0.515927,
		-0.347336, 0.885558, -0.308454,
		10.668549, 16.896801, 22.455770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410176, 16.734200, 22.807030>,  <10.911683, 16.276911, 22.671690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.410176, 16.734200, 22.807030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.118550, 17.005018, 22.766880>,  <10.943575, 17.167509, 22.742790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.118550, 17.005018, 22.766880>,  <11.410176, 16.734200, 22.807030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.118550, 17.005018, 22.766880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416491, 0.555222, 0.719906,
		0.543140, 0.483052, -0.686775,
		-0.729064, 0.677045, -0.100376,
		10.899831, 17.208132, 22.736767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.719886, 17.314476, 22.521624>,  <11.410176, 16.734200, 22.807030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.719886, 17.314476, 22.521624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.383834, 17.435608, 22.701612>,  <11.182202, 17.508287, 22.809607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.383834, 17.435608, 22.701612>,  <11.719886, 17.314476, 22.521624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.383834, 17.435608, 22.701612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521468, 0.679147, 0.516556,
		-0.149170, 0.668622, -0.728487,
		-0.840130, 0.302828, 0.449973,
		11.131795, 17.526457, 22.836605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.780186, 18.016499, 22.678751>,  <11.719886, 17.314476, 22.521624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.780186, 18.016499, 22.678751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.437134, 17.968714, 22.878830>,  <11.231302, 17.940042, 22.998878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.437134, 17.968714, 22.878830>,  <11.780186, 18.016499, 22.678751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.437134, 17.968714, 22.878830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275927, 0.713895, 0.643598,
		-0.433975, 0.689987, -0.579296,
		-0.857631, -0.119462, 0.500198,
		11.179845, 17.932875, 23.028889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.464235, 18.726250, 22.734638>,  <11.780186, 18.016499, 22.678751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.464235, 18.726250, 22.734638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.316991, 18.499065, 23.029099>,  <11.228644, 18.362755, 23.205774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.316991, 18.499065, 23.029099>,  <11.464235, 18.726250, 22.734638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.316991, 18.499065, 23.029099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299835, 0.676933, 0.672206,
		-0.880110, 0.468169, -0.078891,
		-0.368110, -0.567961, 0.736149,
		11.206558, 18.328676, 23.249943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.230886, 19.240200, 23.097301>,  <11.464235, 18.726250, 22.734638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.230886, 19.240200, 23.097301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.265762, 18.922901, 23.338350>,  <11.286688, 18.732521, 23.482981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.265762, 18.922901, 23.338350>,  <11.230886, 19.240200, 23.097301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.265762, 18.922901, 23.338350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139118, 0.608695, 0.781112,
		-0.986430, 0.015730, 0.163428,
		0.087190, -0.793248, 0.602623,
		11.291920, 18.684927, 23.519136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769650, 19.323002, 23.685026>,  <11.230886, 19.240200, 23.097301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769650, 19.323002, 23.685026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.050223, 19.060347, 23.795889>,  <11.218568, 18.902754, 23.862406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.050223, 19.060347, 23.795889>,  <10.769650, 19.323002, 23.685026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.050223, 19.060347, 23.795889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215344, 0.565939, 0.795827,
		-0.679424, -0.498536, 0.538372,
		0.701434, -0.656639, 0.277156,
		11.260653, 18.863356, 23.879036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.826278, 19.390223, 24.422260>,  <10.769650, 19.323002, 23.685026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.826278, 19.390223, 24.422260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.169550, 19.191357, 24.371107>,  <11.375513, 19.072037, 24.340416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.169550, 19.191357, 24.371107>,  <10.826278, 19.390223, 24.422260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.169550, 19.191357, 24.371107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433641, 0.568748, 0.698914,
		-0.274743, -0.655249, 0.703680,
		0.858179, -0.497166, -0.127883,
		11.427004, 19.042208, 24.332743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.959933, 19.175674, 25.082285>,  <10.826278, 19.390223, 24.422260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.959933, 19.175674, 25.082285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.286586, 19.223406, 24.856409>,  <11.482577, 19.252045, 24.720882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.286586, 19.223406, 24.856409>,  <10.959933, 19.175674, 25.082285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.286586, 19.223406, 24.856409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452411, 0.475183, 0.754669,
		0.358382, -0.871758, 0.334065,
		0.816631, 0.119325, -0.564691,
		11.531575, 19.259205, 24.687002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.422566, 19.025824, 25.539095>,  <10.959933, 19.175674, 25.082285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.422566, 19.025824, 25.539095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.640192, 19.200184, 25.252323>,  <11.770767, 19.304800, 25.080261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.640192, 19.200184, 25.252323>,  <11.422566, 19.025824, 25.539095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.640192, 19.200184, 25.252323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617666, 0.370232, 0.693842,
		0.567876, -0.820316, -0.067813,
		0.544063, 0.435902, -0.716927,
		11.803411, 19.330954, 25.037245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.154372, 18.910501, 25.649342>,  <11.422566, 19.025824, 25.539095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.154372, 18.910501, 25.649342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.101985, 19.236046, 25.422899>,  <12.070553, 19.431374, 25.287033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.101985, 19.236046, 25.422899>,  <12.154372, 18.910501, 25.649342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.101985, 19.236046, 25.422899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485961, 0.550419, 0.678882,
		0.864112, -0.186194, -0.467592,
		-0.130968, 0.813862, -0.566106,
		12.062695, 19.480204, 25.253067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.777014, 19.338831, 25.816832>,  <12.154372, 18.910501, 25.649342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.777014, 19.338831, 25.816832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509231, 19.584419, 25.649561>,  <12.348561, 19.731771, 25.549198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509231, 19.584419, 25.649561>,  <12.777014, 19.338831, 25.816832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.509231, 19.584419, 25.649561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247123, 0.714938, 0.654060,
		0.700541, 0.334525, -0.630346,
		-0.669457, 0.613968, -0.418174,
		12.308393, 19.768610, 25.524109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137944, 19.910490, 25.683157>,  <12.777014, 19.338831, 25.816832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137944, 19.910490, 25.683157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755035, 20.026035, 25.677671>,  <12.525290, 20.095364, 25.674379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755035, 20.026035, 25.677671>,  <13.137944, 19.910490, 25.683157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.755035, 20.026035, 25.677671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239744, 0.819225, 0.520953,
		0.161720, 0.495406, -0.853475,
		-0.957272, 0.288864, -0.013714,
		12.467854, 20.112694, 25.673557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
