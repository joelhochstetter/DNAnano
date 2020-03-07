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
	<-0.625957, 3.155929, 5.385460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.292625, 3.257957, 5.581623>,  <-0.092626, 3.319175, 5.699321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.292625, 3.257957, 5.581623>,  <-0.625957, 3.155929, 5.385460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.292625, 3.257957, 5.581623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519933, -0.060439, -0.852066,
		-0.187698, 0.965031, -0.182986,
		0.833330, 0.255072, 0.490407,
		-0.042626, 3.334479, 5.728745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.366107, 3.758729, 5.175156>,  <-0.625957, 3.155929, 5.385460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.366107, 3.758729, 5.175156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.069626, 3.517975, 5.294052>,  <0.108263, 3.373522, 5.365390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.069626, 3.517975, 5.294052>,  <-0.366107, 3.758729, 5.175156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.069626, 3.517975, 5.294052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354014, -0.025737, -0.934886,
		0.570345, 0.798167, 0.194000,
		0.741202, -0.601886, 0.297241,
		0.152735, 3.337409, 5.383224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.274916, 3.954369, 4.833205>,  <-0.366107, 3.758729, 5.175156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.274916, 3.954369, 4.833205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.328724, 3.569462, 4.927814>,  <0.361008, 3.338517, 4.984580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.328724, 3.569462, 4.927814>,  <0.274916, 3.954369, 4.833205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.328724, 3.569462, 4.927814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532028, -0.131235, -0.836495,
		0.835973, 0.238362, 0.494300,
		0.134519, -0.962269, 0.236524,
		0.369080, 3.280781, 4.998772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.913931, 3.712465, 4.510786>,  <0.274916, 3.954369, 4.833205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.913931, 3.712465, 4.510786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.720268, 3.376316, 4.608248>,  <0.604071, 3.174627, 4.666725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.720268, 3.376316, 4.608248>,  <0.913931, 3.712465, 4.510786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.720268, 3.376316, 4.608248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364892, -0.447019, -0.816718,
		0.795265, -0.306511, 0.523072,
		-0.484157, -0.840372, 0.243655,
		0.575021, 3.124205, 4.681345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.312009, 3.206205, 4.311388>,  <0.913931, 3.712465, 4.510786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.312009, 3.206205, 4.311388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.955624, 3.025867, 4.333019>,  <0.741793, 2.917665, 4.345998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.955624, 3.025867, 4.333019>,  <1.312009, 3.206205, 4.311388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.955624, 3.025867, 4.333019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164357, -0.431218, -0.887151,
		0.423287, -0.781531, 0.458299,
		-0.890963, -0.450844, 0.054079,
		0.688335, 2.890614, 4.349243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.386755, 2.527580, 4.091352>,  <1.312009, 3.206205, 4.311388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.386755, 2.527580, 4.091352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.993843, 2.597260, 4.063686>,  <0.758096, 2.639067, 4.047087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.993843, 2.597260, 4.063686>,  <1.386755, 2.527580, 4.091352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.993843, 2.597260, 4.063686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002364, -0.380508, -0.924775,
		-0.187412, -0.908223, 0.374177,
		-0.982278, 0.174199, -0.069165,
		0.699160, 2.649519, 4.042937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.154263, 1.918082, 3.802303>,  <1.386755, 2.527580, 4.091352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.154263, 1.918082, 3.802303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.861355, 2.184105, 3.743683>,  <0.685610, 2.343719, 3.708511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.861355, 2.184105, 3.743683>,  <1.154263, 1.918082, 3.802303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.861355, 2.184105, 3.743683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122317, -0.340136, -0.932388,
		-0.669939, -0.664835, 0.330419,
		-0.732271, 0.665058, -0.146550,
		0.641674, 2.383622, 3.699718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.461327, 1.579717, 3.690446>,  <1.154263, 1.918082, 3.802303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.461327, 1.579717, 3.690446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.450584, 1.934029, 3.505114>,  <0.444139, 2.146616, 3.393914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.450584, 1.934029, 3.505114>,  <0.461327, 1.579717, 3.690446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.450584, 1.934029, 3.505114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252173, -0.454511, -0.854300,
		-0.967309, 0.093897, 0.235576,
		-0.026855, 0.885779, -0.463331,
		0.442528, 2.199762, 3.366114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.669296, 1.711208, 2.160963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.368187, 1.969501, 2.109795>,  <0.187522, 2.124477, 2.079094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.368187, 1.969501, 2.109795>,  <0.669296, 1.711208, 2.160963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.368187, 1.969501, 2.109795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226385, 0.436418, 0.870798,
		0.618129, 0.626553, -0.474708,
		-0.752772, 0.645733, -0.127920,
		0.142355, 2.163221, 2.071419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.918511, 2.362307, 2.272162>,  <0.669296, 1.711208, 2.160963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.918511, 2.362307, 2.272162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.526863, 2.352131, 2.352837>,  <0.291874, 2.346025, 2.401241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.526863, 2.352131, 2.352837>,  <0.918511, 2.362307, 2.272162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.526863, 2.352131, 2.352837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182958, 0.322163, 0.928836,
		-0.088605, 0.946342, -0.310782,
		-0.979120, -0.025439, 0.201686,
		0.233127, 2.344499, 2.413342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.659028, 3.092627, 2.532845>,  <0.918511, 2.362307, 2.272162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.659028, 3.092627, 2.532845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.425438, 2.800335, 2.674271>,  <0.285284, 2.624960, 2.759126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.425438, 2.800335, 2.674271>,  <0.659028, 3.092627, 2.532845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.425438, 2.800335, 2.674271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087847, 0.376103, 0.922404,
		-0.807005, 0.569720, -0.155442,
		-0.583975, -0.730729, 0.353565,
		0.250246, 2.581116, 2.780340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.060150, 3.382682, 2.921821>,  <0.659028, 3.092627, 2.532845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.060150, 3.382682, 2.921821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.182716, 3.018253, 3.032135>,  <0.256256, 2.799596, 3.098324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.182716, 3.018253, 3.032135>,  <0.060150, 3.382682, 2.921821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.182716, 3.018253, 3.032135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069603, 0.267502, 0.961040,
		-0.949350, -0.313673, 0.018553,
		0.306415, -0.911072, 0.275785,
		0.274641, 2.744932, 3.114871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.361376, 3.300312, 3.549884>,  <0.060150, 3.382682, 2.921821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.361376, 3.300312, 3.549884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.072662, 3.025837, 3.586052>,  <0.100566, 2.861152, 3.607753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.072662, 3.025837, 3.586052>,  <-0.361376, 3.300312, 3.549884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.072662, 3.025837, 3.586052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082731, 0.044167, 0.995593,
		-0.687157, -0.726083, -0.024890,
		0.721783, -0.686187, 0.090419,
		0.143873, 2.819981, 3.613178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.576239, 2.865777, 3.949509>,  <-0.361376, 3.300312, 3.549884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.576239, 2.865777, 3.949509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.181389, 2.804440, 3.967693>,  <0.055522, 2.767637, 3.978604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.181389, 2.804440, 3.967693>,  <-0.576239, 2.865777, 3.949509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.181389, 2.804440, 3.967693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012671, 0.208358, 0.977970,
		-0.159439, -0.965956, 0.203733,
		0.987126, -0.153345, 0.045461,
		0.114749, 2.758436, 3.981332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.485821, 2.294563, 4.333930>,  <-0.576239, 2.865777, 3.949509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.485821, 2.294563, 4.333930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.127724, 2.472515, 4.343906>,  <0.087135, 2.579286, 4.349893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.127724, 2.472515, 4.343906>,  <-0.485821, 2.294563, 4.333930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.127724, 2.472515, 4.343906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124195, 0.195380, 0.972832,
		0.427920, -0.874018, 0.230165,
		0.895243, 0.444880, 0.024942,
		0.140849, 2.605979, 4.351389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.186758, 2.117471, 4.911869>,  <-0.485821, 2.294563, 4.333930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.186758, 2.117471, 4.911869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.015228, 2.450405, 4.820454>,  <0.136420, 2.650166, 4.765605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.015228, 2.450405, 4.820454>,  <-0.186758, 2.117471, 4.911869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.015228, 2.450405, 4.820454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131023, 0.335623, 0.932840,
		0.853137, -0.441108, 0.278533,
		0.504965, 0.832335, -0.228537,
		0.166718, 2.700106, 4.751893>
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
