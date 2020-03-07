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
	<3.646626, 3.529744, 3.989403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.705811, 3.914284, 3.896526>,  <3.741322, 4.145008, 3.840801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.705811, 3.914284, 3.896526>,  <3.646626, 3.529744, 3.989403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.705811, 3.914284, 3.896526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892056, -0.028361, 0.451034,
		0.427016, -0.273863, -0.861775,
		0.147962, 0.961350, -0.232191,
		3.750199, 4.202689, 3.826869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.384358, 3.647030, 3.736402>,  <3.646626, 3.529744, 3.989403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.384358, 3.647030, 3.736402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.214890, 3.969154, 3.902283>,  <4.113209, 4.162429, 4.001812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.214890, 3.969154, 3.902283>,  <4.384358, 3.647030, 3.736402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.214890, 3.969154, 3.902283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827109, 0.157272, 0.539588,
		0.369315, 0.571612, -0.732711,
		-0.423671, 0.805310, 0.414703,
		4.087789, 4.210747, 4.026694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.962235, 4.003469, 3.990336>,  <4.384358, 3.647030, 3.736402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.962235, 4.003469, 3.990336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.668442, 4.191338, 4.186272>,  <4.492166, 4.304059, 4.303833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.668442, 4.191338, 4.186272>,  <4.962235, 4.003469, 3.990336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.668442, 4.191338, 4.186272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670141, 0.388181, 0.632635,
		0.106986, 0.792920, -0.599859,
		-0.734483, 0.469673, 0.489839,
		4.448097, 4.332240, 4.333223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.057923, 4.774016, 3.989210>,  <4.962235, 4.003469, 3.990336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.057923, 4.774016, 3.989210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.847435, 4.643661, 4.303379>,  <4.721142, 4.565448, 4.491880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.847435, 4.643661, 4.303379>,  <5.057923, 4.774016, 3.989210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.847435, 4.643661, 4.303379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548520, 0.575708, 0.606372,
		-0.649783, 0.749905, -0.124193,
		-0.526220, -0.325888, 0.785423,
		4.689569, 4.545895, 4.539006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.786713, 5.344717, 4.352611>,  <5.057923, 4.774016, 3.989210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.786713, 5.344717, 4.352611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.790684, 5.048332, 4.621201>,  <4.793067, 4.870502, 4.782354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.790684, 5.048332, 4.621201>,  <4.786713, 5.344717, 4.352611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.790684, 5.048332, 4.621201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493898, 0.587514, 0.641009,
		-0.869463, 0.325276, 0.371792,
		0.009928, -0.740961, 0.671475,
		4.793662, 4.826044, 4.822643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.600972, 5.651726, 5.068683>,  <4.786713, 5.344717, 4.352611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.600972, 5.651726, 5.068683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.794804, 5.310089, 5.144272>,  <4.911103, 5.105107, 5.189625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.794804, 5.310089, 5.144272>,  <4.600972, 5.651726, 5.068683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.794804, 5.310089, 5.144272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634847, 0.491999, 0.595740,
		-0.601791, -0.168714, 0.780630,
		0.484579, -0.854092, 0.188973,
		4.940177, 5.053862, 5.200963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.709511, 5.560050, 5.742117>,  <4.600972, 5.651726, 5.068683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.709511, 5.560050, 5.742117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.992817, 5.314819, 5.602119>,  <5.162800, 5.167681, 5.518121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.992817, 5.314819, 5.602119>,  <4.709511, 5.560050, 5.742117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.992817, 5.314819, 5.602119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604651, 0.270944, 0.748991,
		-0.364361, -0.742108, 0.562598,
		0.708264, -0.613078, -0.349995,
		5.205297, 5.130896, 5.497121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.043075, 5.194210, 6.336656>,  <4.709511, 5.560050, 5.742117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.043075, 5.194210, 6.336656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.311024, 5.181793, 6.039925>,  <5.471793, 5.174343, 5.861886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.311024, 5.181793, 6.039925>,  <5.043075, 5.194210, 6.336656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.311024, 5.181793, 6.039925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698808, 0.363955, 0.615795,
		0.250876, -0.930899, 0.265496,
		0.669872, -0.031042, -0.741828,
		5.511985, 5.172481, 5.817376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.256553, 6.540539, 0.918860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.448487, 6.194550, 0.977619>,  <1.563648, 5.986956, 1.012875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.448487, 6.194550, 0.977619>,  <1.256553, 6.540539, 0.918860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.448487, 6.194550, 0.977619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837936, -0.501431, -0.215475,
		0.260039, -0.019699, -0.965397,
		0.479836, -0.864973, 0.146898,
		1.592438, 5.935058, 1.021689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.243685, 6.060083, 0.351762>,  <1.256553, 6.540539, 0.918860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.243685, 6.060083, 0.351762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.358749, 5.794922, 0.628258>,  <1.427788, 5.635825, 0.794155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.358749, 5.794922, 0.628258>,  <1.243685, 6.060083, 0.351762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.358749, 5.794922, 0.628258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647690, -0.666325, -0.369472,
		0.705513, -0.341426, -0.621031,
		0.287661, -0.662903, 0.691239,
		1.445048, 5.596051, 0.835629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.549100, 5.466608, 0.062381>,  <1.243685, 6.060083, 0.351762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.549100, 5.466608, 0.062381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.343868, 5.360519, 0.388916>,  <1.220729, 5.296866, 0.584837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.343868, 5.360519, 0.388916>,  <1.549100, 5.466608, 0.062381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.343868, 5.360519, 0.388916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583917, -0.589230, -0.558435,
		0.629119, -0.763195, 0.147455,
		-0.513080, -0.265221, 0.816338,
		1.189944, 5.280953, 0.633817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.305802, 4.844748, -0.169730>,  <1.549100, 5.466608, 0.062381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.305802, 4.844748, -0.169730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.075212, 4.967857, 0.133045>,  <0.936859, 5.041723, 0.314710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.075212, 4.967857, 0.133045>,  <1.305802, 4.844748, -0.169730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.075212, 4.967857, 0.133045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804476, -0.376084, -0.459760,
		0.143171, -0.873978, 0.464398,
		-0.576473, 0.307772, 0.756938,
		0.902271, 5.060189, 0.360127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.035336, 4.221278, 0.099408>,  <1.305802, 4.844748, -0.169730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.035336, 4.221278, 0.099408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.792915, 4.520592, 0.207314>,  <0.647463, 4.700180, 0.272057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.792915, 4.520592, 0.207314>,  <1.035336, 4.221278, 0.099408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.792915, 4.520592, 0.207314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780960, -0.495380, -0.380394,
		-0.151007, -0.441213, 0.884606,
		-0.606051, 0.748285, 0.269764,
		0.611100, 4.745077, 0.288243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.571098, 3.959537, 0.546364>,  <1.035336, 4.221278, 0.099408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.571098, 3.959537, 0.546364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.382516, 4.281738, 0.402756>,  <0.269367, 4.475059, 0.316591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.382516, 4.281738, 0.402756>,  <0.571098, 3.959537, 0.546364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.382516, 4.281738, 0.402756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694097, -0.590055, -0.412389,
		-0.544021, 0.054770, 0.837282,
		-0.471456, 0.805503, -0.359018,
		0.241079, 4.523389, 0.295050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.104164, 3.777945, 0.621190>,  <0.571098, 3.959537, 0.546364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.104164, 3.777945, 0.621190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.129842, 4.099373, 0.384495>,  <-0.145248, 4.292230, 0.242478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.129842, 4.099373, 0.384495>,  <-0.104164, 3.777945, 0.621190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.129842, 4.099373, 0.384495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893004, -0.310934, -0.325366,
		-0.445446, 0.507538, 0.737552,
		-0.064194, 0.803570, -0.591738,
		-0.149100, 4.340444, 0.206973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.725894, 4.138695, 0.688798>,  <-0.104164, 3.777945, 0.621190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.725894, 4.138695, 0.688798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.601281, 4.234810, 0.321056>,  <-0.526513, 4.292479, 0.100412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.601281, 4.234810, 0.321056>,  <-0.725894, 4.138695, 0.688798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.601281, 4.234810, 0.321056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832740, -0.396982, -0.385940,
		-0.457703, 0.885814, 0.076423,
		0.311532, 0.240287, -0.919353,
		-0.507821, 4.306896, 0.045250>
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
