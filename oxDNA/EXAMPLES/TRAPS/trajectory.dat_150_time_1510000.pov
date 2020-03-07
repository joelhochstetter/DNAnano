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
	<36.265514, 52.805584, 49.972359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223213, 53.148285, 49.770454>,  <36.197830, 53.353905, 49.649311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223213, 53.148285, 49.770454>,  <36.265514, 52.805584, 49.972359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223213, 53.148285, 49.770454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578865, 0.359695, 0.731803,
		0.808536, 0.369583, 0.457905,
		-0.105756, 0.856754, -0.504765,
		36.191486, 53.405312, 49.619026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244274, 53.387054, 50.375725>,  <36.265514, 52.805584, 49.972359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244274, 53.387054, 50.375725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051094, 53.508499, 50.047192>,  <35.935188, 53.581364, 49.850071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051094, 53.508499, 50.047192>,  <36.244274, 53.387054, 50.375725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051094, 53.508499, 50.047192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735392, 0.368555, 0.568652,
		0.475354, 0.878629, 0.045280,
		-0.482946, 0.303609, -0.821331,
		35.906212, 53.599583, 49.800793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672855, 53.279987, 50.892544>,  <36.244274, 53.387054, 50.375725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672855, 53.279987, 50.892544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893814, 53.584305, 51.028812>,  <37.026390, 53.766895, 51.110573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893814, 53.584305, 51.028812>,  <36.672855, 53.279987, 50.892544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893814, 53.584305, 51.028812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801613, -0.372720, -0.467436,
		-0.228647, 0.531294, -0.815750,
		0.552392, 0.760793, 0.340670,
		37.059532, 53.812542, 51.131012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161598, 53.329487, 50.412617>,  <36.672855, 53.279987, 50.892544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161598, 53.329487, 50.412617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304348, 53.600327, 50.670044>,  <37.389999, 53.762829, 50.824501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304348, 53.600327, 50.670044>,  <37.161598, 53.329487, 50.412617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304348, 53.600327, 50.670044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914792, -0.113775, -0.387572,
		-0.189203, 0.727044, -0.660007,
		0.356874, 0.677099, 0.643567,
		37.411411, 53.803455, 50.863113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599522, 53.799187, 50.092209>,  <37.161598, 53.329487, 50.412617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599522, 53.799187, 50.092209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714630, 53.834267, 50.473679>,  <37.783695, 53.855312, 50.702560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714630, 53.834267, 50.473679>,  <37.599522, 53.799187, 50.092209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714630, 53.834267, 50.473679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955321, 0.043844, -0.292301,
		-0.067447, 0.995182, -0.071163,
		0.287773, 0.087698, 0.953675,
		37.800961, 53.860577, 50.759781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705910, 54.314804, 49.550915>,  <37.599522, 53.799187, 50.092209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705910, 54.314804, 49.550915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041065, 54.304085, 49.332844>,  <38.242157, 54.297653, 49.202000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041065, 54.304085, 49.332844>,  <37.705910, 54.314804, 49.550915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041065, 54.304085, 49.332844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013596, -0.999509, 0.028237,
		-0.545670, -0.016247, -0.837843,
		0.837890, -0.026799, -0.545181,
		38.292431, 54.296043, 49.169289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743763, 53.754616, 49.036556>,  <37.705910, 54.314804, 49.550915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743763, 53.754616, 49.036556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129665, 53.834637, 49.104950>,  <38.361206, 53.882648, 49.145985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129665, 53.834637, 49.104950>,  <37.743763, 53.754616, 49.036556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129665, 53.834637, 49.104950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219913, -0.969712, -0.106284,
		0.144540, 0.140139, -0.979525,
		0.964752, 0.200048, 0.170981,
		38.419090, 53.894650, 49.156242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050640, 53.395725, 48.393444>,  <37.743763, 53.754616, 49.036556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050640, 53.395725, 48.393444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295605, 53.474590, 48.699665>,  <38.442585, 53.521912, 48.883400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295605, 53.474590, 48.699665>,  <38.050640, 53.395725, 48.393444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295605, 53.474590, 48.699665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343440, -0.938594, -0.033006,
		0.712039, 0.283136, -0.642522,
		0.612413, 0.197166, 0.765556,
		38.479328, 53.533741, 48.929333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694592, 53.169212, 48.472469>,  <38.050640, 53.395725, 48.393444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694592, 53.169212, 48.472469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812057, 53.106361, 48.849632>,  <38.882538, 53.068653, 49.075932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812057, 53.106361, 48.849632>,  <38.694592, 53.169212, 48.472469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812057, 53.106361, 48.849632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590776, -0.745633, -0.308246,
		0.751495, 0.647568, -0.126141,
		0.293665, -0.157124, 0.942907,
		38.900158, 53.059223, 49.132504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340866, 53.001717, 48.420425>,  <38.694592, 53.169212, 48.472469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340866, 53.001717, 48.420425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278950, 52.869053, 48.792671>,  <39.241802, 52.789455, 49.016018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278950, 52.869053, 48.792671>,  <39.340866, 53.001717, 48.420425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278950, 52.869053, 48.792671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710425, -0.691953, -0.128442,
		0.686540, 0.641249, 0.342728,
		-0.154788, -0.331663, 0.930613,
		39.232513, 52.769554, 49.071854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746136, 53.557953, 48.059196>,  <39.340866, 53.001717, 48.420425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746136, 53.557953, 48.059196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695354, 53.325977, 47.737312>,  <39.664886, 53.186790, 47.544182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695354, 53.325977, 47.737312>,  <39.746136, 53.557953, 48.059196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695354, 53.325977, 47.737312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739377, -0.596130, 0.312972,
		-0.661214, -0.555249, 0.504474,
		-0.126954, -0.579938, -0.804708,
		39.657269, 53.151997, 47.495899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779869, 54.272907, 47.983185>,  <39.746136, 53.557953, 48.059196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779869, 54.272907, 47.983185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022812, 54.579384, 48.067165>,  <40.168575, 54.763268, 48.117554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022812, 54.579384, 48.067165>,  <39.779869, 54.272907, 47.983185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022812, 54.579384, 48.067165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471354, -0.134816, -0.871579,
		-0.639489, 0.628317, -0.443026,
		0.607355, 0.766187, 0.209947,
		40.205017, 54.809238, 48.130150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844788, 54.495670, 47.155022>,  <39.779869, 54.272907, 47.983185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844788, 54.495670, 47.155022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120571, 54.211365, 47.210838>,  <40.286041, 54.040783, 47.244328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120571, 54.211365, 47.210838>,  <39.844788, 54.495670, 47.155022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120571, 54.211365, 47.210838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636693, 0.502831, -0.584622,
		0.345360, 0.491916, 0.799215,
		0.689455, -0.710760, 0.139542,
		40.327408, 53.998138, 47.252701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168144, 54.908104, 47.564541>,  <39.844788, 54.495670, 47.155022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168144, 54.908104, 47.564541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370857, 54.627052, 47.364746>,  <40.492485, 54.458420, 47.244869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370857, 54.627052, 47.364746>,  <40.168144, 54.908104, 47.564541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370857, 54.627052, 47.364746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659673, 0.689073, -0.300016,
		0.554980, -0.177453, 0.812716,
		0.506782, -0.702630, -0.499483,
		40.522892, 54.416264, 47.214901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962543, 54.883942, 47.790035>,  <40.168144, 54.908104, 47.564541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962543, 54.883942, 47.790035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939369, 54.722771, 47.424675>,  <40.925465, 54.626068, 47.205460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939369, 54.722771, 47.424675>,  <40.962543, 54.883942, 47.790035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939369, 54.722771, 47.424675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740594, 0.596187, -0.309968,
		0.669450, -0.694416, 0.263862,
		-0.057936, -0.402923, -0.913399,
		40.921989, 54.601894, 47.150654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443901, 54.961037, 47.193245>,  <40.962543, 54.883942, 47.790035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443901, 54.961037, 47.193245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584373, 54.785675, 47.524178>,  <41.668659, 54.680458, 47.722736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584373, 54.785675, 47.524178>,  <41.443901, 54.961037, 47.193245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584373, 54.785675, 47.524178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935213, 0.121567, -0.332562,
		0.045219, 0.890521, 0.452690,
		0.351185, -0.438400, 0.827330,
		41.689728, 54.654156, 47.772377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975456, 55.483807, 47.543045>,  <41.443901, 54.961037, 47.193245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975456, 55.483807, 47.543045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049133, 55.094635, 47.598881>,  <42.093338, 54.861134, 47.632381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049133, 55.094635, 47.598881>,  <41.975456, 55.483807, 47.543045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049133, 55.094635, 47.598881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930181, 0.126662, -0.344558,
		0.317549, 0.193307, 0.928329,
		0.184189, -0.972928, 0.139589,
		42.104389, 54.802757, 47.640759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536388, 55.329311, 47.977036>,  <41.975456, 55.483807, 47.543045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536388, 55.329311, 47.977036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504482, 55.033318, 47.709885>,  <42.485340, 54.855721, 47.549591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504482, 55.033318, 47.709885>,  <42.536388, 55.329311, 47.977036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504482, 55.033318, 47.709885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907010, 0.224051, -0.356559,
		0.413487, -0.634215, 0.653299,
		-0.079762, -0.739981, -0.667882,
		42.480553, 54.811325, 47.509521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038429, 55.409889, 47.412506>,  <42.536388, 55.329311, 47.977036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038429, 55.409889, 47.412506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161644, 55.369709, 47.790928>,  <43.235573, 55.345600, 48.017982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161644, 55.369709, 47.790928>,  <43.038429, 55.409889, 47.412506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161644, 55.369709, 47.790928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752130, 0.634658, -0.177507,
		-0.582592, 0.766236, 0.271050,
		0.308037, -0.100451, 0.946057,
		43.254055, 55.339573, 48.074745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890194, 55.982948, 47.983505>,  <43.038429, 55.409889, 47.412506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890194, 55.982948, 47.983505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229736, 55.771706, 47.992844>,  <43.433460, 55.644958, 47.998447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229736, 55.771706, 47.992844>,  <42.890194, 55.982948, 47.983505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229736, 55.771706, 47.992844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520670, 0.827635, -0.209579,
		0.091360, 0.190057, 0.977513,
		0.848856, -0.528109, 0.023344,
		43.484394, 55.613274, 47.999847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210754, 56.334190, 48.377975>,  <42.890194, 55.982948, 47.983505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210754, 56.334190, 48.377975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454941, 56.147984, 48.121655>,  <43.601452, 56.036259, 47.967861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454941, 56.147984, 48.121655>,  <43.210754, 56.334190, 48.377975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454941, 56.147984, 48.121655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510601, 0.849793, -0.130913,
		0.605490, -0.247276, 0.756463,
		0.610466, -0.465517, -0.640801,
		43.638081, 56.008327, 47.929413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970322, 56.289688, 48.584385>,  <43.210754, 56.334190, 48.377975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970322, 56.289688, 48.584385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926666, 56.312874, 48.187450>,  <43.900475, 56.326786, 47.949291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926666, 56.312874, 48.187450>,  <43.970322, 56.289688, 48.584385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926666, 56.312874, 48.187450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539274, 0.842069, -0.010125,
		0.835028, -0.536246, -0.123157,
		-0.109136, 0.057960, -0.992336,
		43.893925, 56.330261, 47.889751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643574, 56.291260, 48.162037>,  <43.970322, 56.289688, 48.584385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643574, 56.291260, 48.162037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354912, 56.471863, 47.952141>,  <44.181713, 56.580223, 47.826202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354912, 56.471863, 47.952141>,  <44.643574, 56.291260, 48.162037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354912, 56.471863, 47.952141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610787, 0.772060, -0.175679,
		0.325812, -0.447285, -0.832936,
		-0.721655, 0.451508, -0.524743,
		44.138416, 56.607315, 47.794720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979424, 56.859882, 47.726337>,  <44.643574, 56.291260, 48.162037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979424, 56.859882, 47.726337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892021, 57.170639, 47.490135>,  <44.839581, 57.357094, 47.348415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892021, 57.170639, 47.490135>,  <44.979424, 56.859882, 47.726337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892021, 57.170639, 47.490135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260197, 0.629600, 0.732053,
		0.940508, 0.006308, -0.339714,
		-0.218501, 0.776894, -0.590502,
		44.826469, 57.403706, 47.312984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544182, 57.243702, 47.684708>,  <44.979424, 56.859882, 47.726337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544182, 57.243702, 47.684708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208618, 57.454193, 47.629105>,  <45.007282, 57.580486, 47.595741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208618, 57.454193, 47.629105>,  <45.544182, 57.243702, 47.684708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208618, 57.454193, 47.629105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196479, 0.530971, 0.824297,
		0.507577, 0.664195, -0.548827,
		-0.838905, 0.526227, -0.139008,
		44.956947, 57.612061, 47.587402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352741, 57.613029, 48.389000>,  <45.544182, 57.243702, 47.684708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352741, 57.613029, 48.389000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.186531, 57.971489, 48.451286>,  <45.086803, 58.186565, 48.488659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.186531, 57.971489, 48.451286>,  <45.352741, 57.613029, 48.389000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.186531, 57.971489, 48.451286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876138, 0.348346, 0.333223,
		0.244374, 0.274895, -0.929900,
		-0.415528, 0.896152, 0.155720,
		45.061874, 58.240334, 48.498001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617355, 58.136570, 47.888618>,  <45.352741, 57.613029, 48.389000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617355, 58.136570, 47.888618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512501, 58.271080, 48.250439>,  <45.449589, 58.351784, 48.467529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512501, 58.271080, 48.250439>,  <45.617355, 58.136570, 47.888618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512501, 58.271080, 48.250439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946805, 0.270922, 0.173670,
		-0.186661, 0.901955, -0.389404,
		-0.262140, 0.336272, 0.904546,
		45.433857, 58.371964, 48.521801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966938, 58.868141, 48.045769>,  <45.617355, 58.136570, 47.888618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966938, 58.868141, 48.045769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878834, 58.654854, 48.372490>,  <45.825970, 58.526882, 48.568523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878834, 58.654854, 48.372490>,  <45.966938, 58.868141, 48.045769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878834, 58.654854, 48.372490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955431, 0.050803, 0.290812,
		-0.196563, 0.844450, 0.498265,
		-0.220263, -0.533220, 0.816799,
		45.812756, 58.494888, 48.617531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.217052, 59.230347, 48.534676>,  <45.966938, 58.868141, 48.045769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.217052, 59.230347, 48.534676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198849, 58.855762, 48.673794>,  <46.187927, 58.631012, 48.757267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198849, 58.855762, 48.673794>,  <46.217052, 59.230347, 48.534676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.198849, 58.855762, 48.673794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948632, 0.068605, 0.308853,
		-0.313090, 0.343990, 0.885238,
		-0.045510, -0.936464, 0.347799,
		46.185196, 58.574821, 48.778133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326012, 59.239929, 49.251602>,  <46.217052, 59.230347, 48.534676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326012, 59.239929, 49.251602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449684, 58.878067, 49.134296>,  <46.523888, 58.660950, 49.063915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449684, 58.878067, 49.134296>,  <46.326012, 59.239929, 49.251602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449684, 58.878067, 49.134296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854839, 0.129242, 0.502541,
		-0.416726, -0.406066, 0.813296,
		0.309177, -0.904659, -0.293263,
		46.542439, 58.606670, 49.046318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713978, 58.886059, 49.794735>,  <46.326012, 59.239929, 49.251602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713978, 58.886059, 49.794735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.851166, 58.730766, 49.452591>,  <46.933479, 58.637589, 49.247303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.851166, 58.730766, 49.452591>,  <46.713978, 58.886059, 49.794735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.851166, 58.730766, 49.452591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903479, -0.112896, 0.413498,
		-0.257102, -0.914619, 0.312043,
		0.342965, -0.388235, -0.855365,
		46.954056, 58.614296, 49.195980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079708, 58.318275, 50.004143>,  <46.713978, 58.886059, 49.794735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079708, 58.318275, 50.004143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199554, 58.453644, 49.647335>,  <47.271461, 58.534866, 49.433250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199554, 58.453644, 49.647335>,  <47.079708, 58.318275, 50.004143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.199554, 58.453644, 49.647335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932209, 0.095121, 0.349198,
		0.203026, -0.936175, -0.286979,
		0.299613, 0.338421, -0.892022,
		47.289436, 58.555172, 49.379730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.696617, 57.886784, 49.717667>,  <47.079708, 58.318275, 50.004143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.696617, 57.886784, 49.717667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722683, 58.262344, 49.582489>,  <47.738323, 58.487682, 49.501381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722683, 58.262344, 49.582489>,  <47.696617, 57.886784, 49.717667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.722683, 58.262344, 49.582489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892233, 0.096830, 0.441072,
		0.446848, -0.330272, -0.831413,
		0.065168, 0.938906, -0.337948,
		47.742233, 58.544018, 49.481106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.316216, 58.033722, 49.314724>,  <47.696617, 57.886784, 49.717667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.316216, 58.033722, 49.314724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.223679, 58.363838, 49.520782>,  <48.168156, 58.561909, 49.644417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.223679, 58.363838, 49.520782>,  <48.316216, 58.033722, 49.314724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.223679, 58.363838, 49.520782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937541, 0.047722, 0.344585,
		0.259798, 0.562690, -0.784783,
		-0.231346, 0.825289, 0.515147,
		48.154274, 58.611423, 49.675327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.756657, 58.735096, 49.287930>,  <48.316216, 58.033722, 49.314724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.756657, 58.735096, 49.287930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.574215, 58.704815, 49.642609>,  <48.464748, 58.686646, 49.855415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.574215, 58.704815, 49.642609>,  <48.756657, 58.735096, 49.287930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.574215, 58.704815, 49.642609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889199, 0.001532, 0.457518,
		-0.035995, 0.997129, 0.066619,
		-0.456103, -0.075706, 0.886701,
		48.437386, 58.682102, 49.908619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.375980, 59.039253, 49.423237>,  <48.756657, 58.735096, 49.287930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.375980, 59.039253, 49.423237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.206421, 58.831661, 49.720146>,  <49.104687, 58.707108, 49.898293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.206421, 58.831661, 49.720146>,  <49.375980, 59.039253, 49.423237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.206421, 58.831661, 49.720146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880119, -0.042598, 0.472838,
		-0.213775, 0.853724, 0.474823,
		-0.423899, -0.518981, 0.742272,
		49.079250, 58.675968, 49.942829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.751549, 59.324066, 49.962582>,  <49.375980, 59.039253, 49.423237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.751549, 59.324066, 49.962582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.568138, 59.003036, 50.115223>,  <49.458092, 58.810417, 50.206806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.568138, 59.003036, 50.115223>,  <49.751549, 59.324066, 49.962582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.568138, 59.003036, 50.115223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818916, -0.214824, 0.532192,
		-0.345148, 0.556524, 0.755747,
		-0.458530, -0.802578, 0.381600,
		49.430580, 58.762264, 50.229702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.717510, 59.308353, 50.679501>,  <49.751549, 59.324066, 49.962582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.717510, 59.308353, 50.679501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.723988, 58.920471, 50.582001>,  <49.727875, 58.687744, 50.523502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.723988, 58.920471, 50.582001>,  <49.717510, 59.308353, 50.679501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.723988, 58.920471, 50.582001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781584, -0.139765, 0.607941,
		-0.623590, -0.200352, 0.755642,
		0.016190, -0.969704, -0.243747,
		49.728844, 58.629559, 50.508877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.506374, 59.021648, 51.287003>,  <49.717510, 59.308353, 50.679501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.506374, 59.021648, 51.287003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.782093, 58.832573, 51.067390>,  <49.947525, 58.719128, 50.935623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.782093, 58.832573, 51.067390>,  <49.506374, 59.021648, 51.287003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.782093, 58.832573, 51.067390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584259, -0.085414, 0.807060,
		-0.428386, -0.877078, 0.217300,
		0.689294, -0.472693, -0.549031,
		49.988880, 58.690765, 50.902679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.826416, 58.425873, 51.621155>,  <49.506374, 59.021648, 51.287003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.826416, 58.425873, 51.621155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.090336, 58.582146, 51.364395>,  <50.248688, 58.675911, 51.210339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.090336, 58.582146, 51.364395>,  <49.826416, 58.425873, 51.621155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.090336, 58.582146, 51.364395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606942, 0.226564, 0.761768,
		0.443044, -0.892206, -0.087638,
		0.659799, 0.390687, -0.641895,
		50.288277, 58.699352, 51.171825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.505310, 58.199390, 51.864502>,  <49.826416, 58.425873, 51.621155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.505310, 58.199390, 51.864502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.563732, 58.501778, 51.609261>,  <50.598785, 58.683208, 51.456116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.563732, 58.501778, 51.609261>,  <50.505310, 58.199390, 51.864502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.563732, 58.501778, 51.609261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801578, 0.287592, 0.524180,
		0.579777, -0.588050, -0.563964,
		0.146053, 0.755968, -0.638107,
		50.607548, 58.728569, 51.417828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.957512, 57.725433, 52.231075>,  <50.505310, 58.199390, 51.864502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.957512, 57.725433, 52.231075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.237629, 57.859268, 51.978840>,  <51.405701, 57.939571, 51.827499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.237629, 57.859268, 51.978840>,  <50.957512, 57.725433, 52.231075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.237629, 57.859268, 51.978840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699715, -0.496682, 0.513524,
		-0.141380, -0.800847, -0.581941,
		0.700294, 0.334591, -0.630585,
		51.447716, 57.959644, 51.789665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.434547, 57.151924, 52.071201>,  <50.957512, 57.725433, 52.231075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.434547, 57.151924, 52.071201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.599018, 57.515362, 52.100567>,  <51.697701, 57.733425, 52.118187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.599018, 57.515362, 52.100567>,  <51.434547, 57.151924, 52.071201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.599018, 57.515362, 52.100567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666732, -0.354686, 0.655489,
		0.621614, -0.220571, -0.751628,
		0.411174, 0.908596, 0.073416,
		51.722370, 57.787941, 52.122593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.133030, 57.075401, 51.833138>,  <51.434547, 57.151924, 52.071201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.133030, 57.075401, 51.833138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.061707, 57.342041, 52.122646>,  <52.018913, 57.502026, 52.296352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.061707, 57.342041, 52.122646>,  <52.133030, 57.075401, 51.833138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.061707, 57.342041, 52.122646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647392, -0.474457, 0.596469,
		0.741006, 0.574922, -0.346951,
		-0.178310, 0.666600, 0.723775,
		52.008213, 57.542023, 52.339779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.731945, 57.463844, 52.130077>,  <52.133030, 57.075401, 51.833138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.731945, 57.463844, 52.130077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.448959, 57.431450, 52.410915>,  <52.279167, 57.412014, 52.579418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.448959, 57.431450, 52.410915>,  <52.731945, 57.463844, 52.130077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.448959, 57.431450, 52.410915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639491, -0.496309, 0.587136,
		0.300907, 0.864360, 0.402909,
		-0.707465, -0.080983, 0.702094,
		52.236721, 57.407154, 52.621544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.841103, 57.910141, 52.633282>,  <52.731945, 57.463844, 52.130077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.841103, 57.910141, 52.633282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.646130, 57.583683, 52.757420>,  <52.529144, 57.387806, 52.831902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.646130, 57.583683, 52.757420>,  <52.841103, 57.910141, 52.633282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.646130, 57.583683, 52.757420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657853, -0.109555, 0.745135,
		-0.574141, 0.567362, 0.590307,
		-0.487433, -0.816148, 0.310341,
		52.499901, 57.338837, 52.850521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.608757, 57.875443, 53.333134>,  <52.841103, 57.910141, 52.633282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.608757, 57.875443, 53.333134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.684708, 57.501717, 53.212471>,  <52.730278, 57.277481, 53.140076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.684708, 57.501717, 53.212471>,  <52.608757, 57.875443, 53.333134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.684708, 57.501717, 53.212471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607522, -0.129549, 0.783667,
		-0.771274, -0.332063, 0.543020,
		0.189879, -0.934319, -0.301653,
		52.741673, 57.221420, 53.121975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.589558, 57.418388, 53.895374>,  <52.608757, 57.875443, 53.333134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.589558, 57.418388, 53.895374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.820099, 57.240780, 53.620956>,  <52.958424, 57.134216, 53.456306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.820099, 57.240780, 53.620956>,  <52.589558, 57.418388, 53.895374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.820099, 57.240780, 53.620956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669449, -0.224925, 0.707987,
		-0.468671, -0.867325, 0.167614,
		0.576355, -0.444022, -0.686046,
		52.993004, 57.107574, 53.415142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.696888, 56.709293, 54.073078>,  <52.589558, 57.418388, 53.895374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.696888, 56.709293, 54.073078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.022091, 56.839436, 53.879929>,  <53.217213, 56.917519, 53.764038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.022091, 56.839436, 53.879929>,  <52.696888, 56.709293, 54.073078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.022091, 56.839436, 53.879929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569492, -0.271625, 0.775821,
		0.121255, -0.905740, -0.406118,
		0.813004, 0.325353, -0.482876,
		53.265991, 56.937042, 53.735065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.150249, 56.148609, 54.218067>,  <52.696888, 56.709293, 54.073078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.150249, 56.148609, 54.218067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.368599, 56.471336, 54.127670>,  <53.499607, 56.664970, 54.073433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.368599, 56.471336, 54.127670>,  <53.150249, 56.148609, 54.218067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.368599, 56.471336, 54.127670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716595, -0.309790, 0.624918,
		0.434183, -0.503070, -0.747265,
		0.545873, 0.806815, -0.225992,
		53.532360, 56.713383, 54.059872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.909702, 55.960472, 54.019211>,  <53.150249, 56.148609, 54.218067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.909702, 55.960472, 54.019211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.851723, 56.324066, 54.175537>,  <53.816933, 56.542221, 54.269333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.851723, 56.324066, 54.175537>,  <53.909702, 55.960472, 54.019211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.851723, 56.324066, 54.175537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428561, -0.298338, 0.852837,
		0.891810, 0.291110, -0.346310,
		-0.144952, 0.908983, 0.390819,
		53.808239, 56.596760, 54.292782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.512409, 56.103344, 54.377705>,  <53.909702, 55.960472, 54.019211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.512409, 56.103344, 54.377705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.238899, 56.345764, 54.540260>,  <54.074795, 56.491215, 54.637794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.238899, 56.345764, 54.540260>,  <54.512409, 56.103344, 54.377705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.238899, 56.345764, 54.540260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412425, -0.138457, 0.900409,
		0.601961, 0.783283, -0.155277,
		-0.683775, 0.606051, 0.406391,
		54.033768, 56.527580, 54.662178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.049290, 56.459187, 53.930672>,  <54.512409, 56.103344, 54.377705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.049290, 56.459187, 53.930672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.443077, 56.399662, 53.967926>,  <55.679348, 56.363949, 53.990280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.443077, 56.399662, 53.967926>,  <55.049290, 56.459187, 53.930672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.443077, 56.399662, 53.967926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153544, 0.472654, -0.867768,
		0.085109, 0.868593, 0.488163,
		0.984470, -0.148810, 0.093141,
		55.738419, 56.355019, 53.995869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.496498, 57.097111, 54.130135>,  <55.049290, 56.459187, 53.930672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.496498, 57.097111, 54.130135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.695396, 56.830391, 53.908096>,  <55.814735, 56.670361, 53.774872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.695396, 56.830391, 53.908096>,  <55.496498, 57.097111, 54.130135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.695396, 56.830391, 53.908096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204779, 0.711920, -0.671740,
		0.843096, 0.220350, 0.490546,
		0.497248, -0.666795, -0.555094,
		55.844570, 56.630352, 53.741570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.265160, 57.326077, 53.983791>,  <55.496498, 57.097111, 54.130135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.265160, 57.326077, 53.983791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.100632, 57.085159, 53.710133>,  <56.001915, 56.940609, 53.545937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.100632, 57.085159, 53.710133>,  <56.265160, 57.326077, 53.983791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.100632, 57.085159, 53.710133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121967, 0.780202, -0.613522,
		0.903295, -0.168908, -0.394370,
		-0.411317, -0.602291, -0.684152,
		55.977238, 56.904472, 53.504887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.539715, 57.421318, 53.287815>,  <56.265160, 57.326077, 53.983791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.539715, 57.421318, 53.287815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.156258, 57.314766, 53.247738>,  <55.926182, 57.250835, 53.223694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.156258, 57.314766, 53.247738>,  <56.539715, 57.421318, 53.287815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.156258, 57.314766, 53.247738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177301, 0.834375, -0.521903,
		0.222620, -0.482557, -0.847100,
		-0.958647, -0.266379, -0.100191,
		55.868664, 57.234852, 53.217682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.365124, 57.532150, 52.557903>,  <56.539715, 57.421318, 53.287815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.365124, 57.532150, 52.557903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.026810, 57.524178, 52.771164>,  <55.823822, 57.519394, 52.899120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.026810, 57.524178, 52.771164>,  <56.365124, 57.532150, 52.557903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.026810, 57.524178, 52.771164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275156, 0.872442, -0.403899,
		-0.457091, -0.488311, -0.743384,
		-0.845788, -0.019927, 0.533147,
		55.773075, 57.518200, 52.931107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.668705, 57.522003, 51.939369>,  <56.365124, 57.532150, 52.557903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.668705, 57.522003, 51.939369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.641785, 57.278362, 52.255463>,  <56.625633, 57.132179, 52.445118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.641785, 57.278362, 52.255463>,  <56.668705, 57.522003, 51.939369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.641785, 57.278362, 52.255463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987549, 0.072206, 0.139761,
		-0.142188, 0.789801, 0.596655,
		-0.067301, -0.609098, 0.790234,
		56.621593, 57.095634, 52.492535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.075901, 57.751953, 52.503246>,  <56.668705, 57.522003, 51.939369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.075901, 57.751953, 52.503246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.018593, 57.358662, 52.548378>,  <56.984207, 57.122684, 52.575459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.018593, 57.358662, 52.548378>,  <57.075901, 57.751953, 52.503246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.018593, 57.358662, 52.548378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911567, -0.086706, 0.401905,
		-0.385382, 0.160437, 0.908703,
		-0.143270, -0.983230, 0.112834,
		56.975613, 57.063694, 52.582230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.519619, 57.748428, 53.063187>,  <57.075901, 57.751953, 52.503246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.519619, 57.748428, 53.063187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.395897, 57.382504, 52.959297>,  <57.321663, 57.162949, 52.896965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.395897, 57.382504, 52.959297>,  <57.519619, 57.748428, 53.063187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.395897, 57.382504, 52.959297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794555, -0.398669, 0.457980,
		-0.522506, -0.064706, 0.850177,
		-0.309305, -0.914809, -0.259719,
		57.303104, 57.108059, 52.881382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.574379, 58.354370, 53.461433>,  <57.519619, 57.748428, 53.063187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.574379, 58.354370, 53.461433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.278130, 58.151009, 53.285706>,  <57.100380, 58.028992, 53.180267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.278130, 58.151009, 53.285706>,  <57.574379, 58.354370, 53.461433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.278130, 58.151009, 53.285706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420367, -0.159486, 0.893228,
		-0.524188, 0.846220, -0.095598,
		-0.740621, -0.508406, -0.439323,
		57.055943, 57.998486, 53.153908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.067772, 58.675949, 52.988655>,  <57.574379, 58.354370, 53.461433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.067772, 58.675949, 52.988655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.082954, 59.068657, 53.063148>,  <58.092064, 59.304283, 53.107845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.082954, 59.068657, 53.063148>,  <58.067772, 58.675949, 52.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.082954, 59.068657, 53.063148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338260, -0.187990, 0.922085,
		0.940287, 0.028001, -0.339229,
		0.037952, 0.981772, 0.186236,
		58.094341, 59.363190, 53.119019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.713173, 59.047592, 53.133198>,  <58.067772, 58.675949, 52.988655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.713173, 59.047592, 53.133198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.421989, 59.221359, 53.345371>,  <58.247280, 59.325619, 53.472675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.421989, 59.221359, 53.345371>,  <58.713173, 59.047592, 53.133198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.421989, 59.221359, 53.345371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561514, -0.066194, 0.824815,
		0.393424, 0.898277, -0.195744,
		-0.727956, 0.434415, 0.530437,
		58.203602, 59.351685, 53.504501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.022648, 59.344887, 53.725903>,  <58.713173, 59.047592, 53.133198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.022648, 59.344887, 53.725903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.636719, 59.349255, 53.830978>,  <58.405163, 59.351875, 53.894024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.636719, 59.349255, 53.830978>,  <59.022648, 59.344887, 53.725903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.636719, 59.349255, 53.830978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261933, 0.126071, 0.956816,
		-0.022673, 0.991961, -0.124495,
		-0.964820, 0.010915, 0.262686,
		58.347271, 59.352528, 53.909782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.638470, 60.013279, 54.101051>,  <59.022648, 59.344887, 53.725903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.638470, 60.013279, 54.101051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.553047, 59.628891, 54.171402>,  <58.501793, 59.398258, 54.213612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.553047, 59.628891, 54.171402>,  <58.638470, 60.013279, 54.101051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.553047, 59.628891, 54.171402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238080, 0.123406, 0.963374,
		-0.947476, 0.247607, 0.202433,
		-0.213557, -0.960969, 0.175875,
		58.488979, 59.340599, 54.224163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.156067, 60.376518, 54.521343>,  <58.638470, 60.013279, 54.101051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.156067, 60.376518, 54.521343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.005165, 60.232376, 54.862595>,  <58.914623, 60.145889, 55.067345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.005165, 60.232376, 54.862595>,  <59.156067, 60.376518, 54.521343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.005165, 60.232376, 54.862595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660845, -0.750118, -0.024620,
		0.648819, 0.554497, 0.521122,
		-0.377251, -0.360355, 0.853127,
		58.891991, 60.124271, 55.118534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.675671, 60.224560, 55.040642>,  <59.156067, 60.376518, 54.521343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.675671, 60.224560, 55.040642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.358635, 59.980957, 55.052666>,  <59.168411, 59.834793, 55.059879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.358635, 59.980957, 55.052666>,  <59.675671, 60.224560, 55.040642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.358635, 59.980957, 55.052666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605028, -0.791619, -0.085323,
		0.075762, -0.049437, 0.995900,
		-0.792592, -0.609011, 0.030064,
		59.120857, 59.798252, 55.061684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.338261, 60.169067, 54.720226>,  <59.675671, 60.224560, 55.040642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.338261, 60.169067, 54.720226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.352371, 60.014149, 54.351715>,  <60.360836, 59.921196, 54.130608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.352371, 60.014149, 54.351715>,  <60.338261, 60.169067, 54.720226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.352371, 60.014149, 54.351715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620506, -0.714150, 0.323979,
		-0.783408, -0.583088, 0.215130,
		0.035273, -0.387297, -0.921280,
		60.362953, 59.897961, 54.075333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.072323, 59.834549, 54.617989>,  <60.338261, 60.169067, 54.720226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.072323, 59.834549, 54.617989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.218880, 59.545052, 54.851894>,  <61.306816, 59.371353, 54.992237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.218880, 59.545052, 54.851894>,  <61.072323, 59.834549, 54.617989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.218880, 59.545052, 54.851894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078386, -0.650245, -0.755670,
		0.927152, 0.231035, -0.294978,
		0.366394, -0.723743, 0.584766,
		61.328796, 59.327930, 55.027325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.712448, 59.431732, 54.596169>,  <61.072323, 59.834549, 54.617989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.712448, 59.431732, 54.596169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.495865, 59.131714, 54.748093>,  <61.365917, 58.951702, 54.839249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.495865, 59.131714, 54.748093>,  <61.712448, 59.431732, 54.596169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.495865, 59.131714, 54.748093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049798, -0.479586, -0.876080,
		0.839253, -0.455445, 0.297025,
		-0.541456, -0.750044, 0.379814,
		61.333427, 58.906700, 54.862038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.116386, 58.771873, 54.643909>,  <61.712448, 59.431732, 54.596169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.116386, 58.771873, 54.643909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.723129, 58.703773, 54.617249>,  <61.487175, 58.662914, 54.601254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.723129, 58.703773, 54.617249>,  <62.116386, 58.771873, 54.643909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.723129, 58.703773, 54.617249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157875, -0.606680, -0.779111,
		0.092206, -0.776502, 0.623332,
		-0.983145, -0.170247, -0.066651,
		61.428185, 58.652699, 54.597252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.978043, 58.285461, 55.165588>,  <62.116386, 58.771873, 54.643909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.978043, 58.285461, 55.165588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.649216, 58.133209, 54.996201>,  <61.451920, 58.041859, 54.894569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.649216, 58.133209, 54.996201>,  <61.978043, 58.285461, 55.165588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.649216, 58.133209, 54.996201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567529, -0.607836, -0.555379,
		-0.046001, -0.696888, 0.715703,
		-0.822067, -0.380634, -0.423465,
		61.402596, 58.019020, 54.869160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.357182, 57.746719, 55.005135>,  <61.978043, 58.285461, 55.165588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.357182, 57.746719, 55.005135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.339317, 57.368195, 55.133202>,  <62.328598, 57.141079, 55.210041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.339317, 57.368195, 55.133202>,  <62.357182, 57.746719, 55.005135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.339317, 57.368195, 55.133202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739568, 0.184130, 0.647407,
		-0.671598, 0.265699, 0.691635,
		-0.044665, -0.946309, 0.320164,
		62.325916, 57.084301, 55.229252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.311138, 57.717319, 55.719467>,  <62.357182, 57.746719, 55.005135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.311138, 57.717319, 55.719467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.510155, 57.397835, 55.584106>,  <62.629566, 57.206146, 55.502892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.510155, 57.397835, 55.584106>,  <62.311138, 57.717319, 55.719467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.510155, 57.397835, 55.584106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701791, 0.141350, 0.698219,
		-0.509841, -0.584880, 0.630855,
		0.497545, -0.798709, -0.338397,
		62.659420, 57.158222, 55.482586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.480583, 57.182701, 56.269058>,  <62.311138, 57.717319, 55.719467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.480583, 57.182701, 56.269058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.794662, 57.217155, 56.023766>,  <62.983109, 57.237827, 55.876591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.794662, 57.217155, 56.023766>,  <62.480583, 57.182701, 56.269058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.794662, 57.217155, 56.023766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598738, 0.147143, 0.787313,
		0.158061, -0.985356, 0.063953,
		0.785193, 0.086152, -0.613228,
		63.030220, 57.242996, 55.839798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.093971, 56.748142, 56.600914>,  <62.480583, 57.182701, 56.269058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.093971, 56.748142, 56.600914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.217422, 57.049709, 56.368927>,  <63.291492, 57.230648, 56.229736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.217422, 57.049709, 56.368927>,  <63.093971, 56.748142, 56.600914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.217422, 57.049709, 56.368927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742425, 0.190224, 0.642355,
		0.594604, -0.628831, -0.501016,
		0.308627, 0.753914, -0.579968,
		63.310009, 57.275883, 56.194935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.841942, 56.641666, 56.540283>,  <63.093971, 56.748142, 56.600914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.841942, 56.641666, 56.540283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.749138, 57.027000, 56.486389>,  <63.693455, 57.258202, 56.454052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.749138, 57.027000, 56.486389>,  <63.841942, 56.641666, 56.540283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.749138, 57.027000, 56.486389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774669, 0.266765, 0.573346,
		0.588267, 0.028650, -0.808159,
		-0.232014, 0.963336, -0.134735,
		63.679535, 57.316002, 56.445969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.432632, 57.058510, 56.458866>,  <63.841942, 56.641666, 56.540283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.432632, 57.058510, 56.458866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.196037, 57.351349, 56.594025>,  <64.054077, 57.527054, 56.675121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.196037, 57.351349, 56.594025>,  <64.432632, 57.058510, 56.458866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.196037, 57.351349, 56.594025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752434, 0.350535, 0.557646,
		0.289807, 0.584085, -0.758193,
		-0.591486, 0.732100, 0.337898,
		64.018593, 57.570980, 56.695393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.788467, 57.618687, 56.282108>,  <64.432632, 57.058510, 56.458866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.788467, 57.618687, 56.282108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.583740, 57.666882, 56.622353>,  <64.460907, 57.695797, 56.826500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.583740, 57.666882, 56.622353>,  <64.788467, 57.618687, 56.282108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.583740, 57.666882, 56.622353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846891, 0.237086, 0.475990,
		-0.144318, 0.963988, -0.223381,
		-0.511809, 0.120485, 0.850609,
		64.430199, 57.703026, 56.877537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.883743, 58.407887, 56.565617>,  <64.788467, 57.618687, 56.282108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.883743, 58.407887, 56.565617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.788101, 58.144173, 56.850761>,  <64.730713, 57.985943, 57.021847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.788101, 58.144173, 56.850761>,  <64.883743, 58.407887, 56.565617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.788101, 58.144173, 56.850761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774367, 0.313454, 0.549637,
		-0.585817, 0.683440, 0.435578,
		-0.239111, -0.659284, 0.712861,
		64.716370, 57.946388, 57.064621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.869766, 58.761021, 57.203064>,  <64.883743, 58.407887, 56.565617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.869766, 58.761021, 57.203064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.932404, 58.371391, 57.268379>,  <64.969986, 58.137615, 57.307568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.932404, 58.371391, 57.268379>,  <64.869766, 58.761021, 57.203064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.932404, 58.371391, 57.268379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851662, 0.216890, 0.477106,
		-0.500152, 0.064359, 0.863543,
		0.156588, -0.974072, 0.163290,
		64.979378, 58.079170, 57.317368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.031250, 58.729042, 57.921154>,  <64.869766, 58.761021, 57.203064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.031250, 58.729042, 57.921154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.214088, 58.418072, 57.748329>,  <65.323792, 58.231491, 57.644634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.214088, 58.418072, 57.748329>,  <65.031250, 58.729042, 57.921154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.214088, 58.418072, 57.748329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872567, 0.297872, 0.387167,
		-0.172295, -0.553973, 0.814511,
		0.457100, -0.777423, -0.432057,
		65.351219, 58.184845, 57.618713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.263596, 58.297428, 58.340057>,  <65.031250, 58.729042, 57.921154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.263596, 58.297428, 58.340057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.237396, 58.249397, 58.736298>,  <65.221672, 58.220577, 58.974041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.237396, 58.249397, 58.736298>,  <65.263596, 58.297428, 58.340057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.237396, 58.249397, 58.736298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994011, -0.094879, 0.054230,
		0.087476, 0.988220, 0.125575,
		-0.065506, -0.120079, 0.990601,
		65.217743, 58.213375, 59.033478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.754318, 58.793945, 58.536037>,  <65.263596, 58.297428, 58.340057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.754318, 58.793945, 58.536037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.669792, 58.480957, 58.770332>,  <65.619072, 58.293163, 58.910912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.669792, 58.480957, 58.770332>,  <65.754318, 58.793945, 58.536037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.669792, 58.480957, 58.770332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962933, -0.269447, -0.012544,
		0.167641, 0.561377, 0.810402,
		-0.211319, -0.782466, 0.585739,
		65.606400, 58.246216, 58.946053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.198128, 58.837116, 58.993530>,  <65.754318, 58.793945, 58.536037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.198128, 58.837116, 58.993530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.108253, 58.448578, 59.024529>,  <66.054329, 58.215454, 59.043129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.108253, 58.448578, 59.024529>,  <66.198128, 58.837116, 58.993530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.108253, 58.448578, 59.024529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970647, -0.216107, 0.105555,
		-0.085782, 0.098940, 0.991389,
		-0.224690, -0.971344, 0.077497,
		66.040848, 58.157173, 59.047779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.481010, 58.522839, 59.577057>,  <66.198128, 58.837116, 58.993530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.481010, 58.522839, 59.577057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.437515, 58.285469, 59.258049>,  <66.411423, 58.143047, 59.066647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.437515, 58.285469, 59.258049>,  <66.481010, 58.522839, 59.577057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.437515, 58.285469, 59.258049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973313, -0.226649, 0.035950,
		-0.202089, -0.772323, 0.602226,
		-0.108729, -0.593419, -0.797516,
		66.404900, 58.107445, 59.018795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.520782, 57.722900, 59.725296>,  <66.481010, 58.522839, 59.577057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.520782, 57.722900, 59.725296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.665390, 57.838112, 59.370590>,  <66.752151, 57.907238, 59.157768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.665390, 57.838112, 59.370590>,  <66.520782, 57.722900, 59.725296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.665390, 57.838112, 59.370590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883607, -0.409379, 0.227261,
		-0.297563, -0.865706, -0.402504,
		0.361518, 0.288031, -0.886760,
		66.773842, 57.924522, 59.104561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.021233, 57.173904, 59.597073>,  <66.520782, 57.722900, 59.725296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.021233, 57.173904, 59.597073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.120872, 57.521896, 59.426857>,  <67.180656, 57.730694, 59.324730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.120872, 57.521896, 59.426857>,  <67.021233, 57.173904, 59.597073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.120872, 57.521896, 59.426857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963775, -0.179420, 0.197347,
		0.095340, -0.459278, -0.883161,
		0.249094, 0.869984, -0.425535,
		67.195602, 57.782890, 59.299198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.479370, 57.129810, 59.114620>,  <67.021233, 57.173904, 59.597073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.479370, 57.129810, 59.114620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.535583, 57.504372, 59.243248>,  <67.569313, 57.729107, 59.320427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.535583, 57.504372, 59.243248>,  <67.479370, 57.129810, 59.114620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.535583, 57.504372, 59.243248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990071, -0.131814, -0.048825,
		-0.003332, 0.325241, -0.945625,
		0.140526, 0.936399, 0.321573,
		67.577744, 57.785290, 59.339722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.778175, 57.656666, 58.552776>,  <67.479370, 57.129810, 59.114620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.778175, 57.656666, 58.552776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.862724, 57.754219, 58.931374>,  <67.913452, 57.812752, 59.158531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.862724, 57.754219, 58.931374>,  <67.778175, 57.656666, 58.552776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.862724, 57.754219, 58.931374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975988, -0.000545, -0.217822,
		-0.052607, 0.969805, -0.238142,
		0.211374, 0.243882, 0.946489,
		67.926140, 57.827385, 59.215321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.356628, 58.313625, 58.642902>,  <67.778175, 57.656666, 58.552776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.356628, 58.313625, 58.642902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.419647, 58.038025, 58.925873>,  <68.457458, 57.872665, 59.095657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.419647, 58.038025, 58.925873>,  <68.356628, 58.313625, 58.642902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.419647, 58.038025, 58.925873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953328, -0.080730, -0.290945,
		0.257572, 0.720251, 0.644123,
		0.157554, -0.689000, 0.707429,
		68.466911, 57.831326, 59.138103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.040955, 58.197605, 59.125885>,  <68.356628, 58.313625, 58.642902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.040955, 58.197605, 59.125885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.885475, 57.839306, 59.039589>,  <68.792191, 57.624325, 58.987812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.885475, 57.839306, 59.039589>,  <69.040955, 58.197605, 59.125885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.885475, 57.839306, 59.039589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862424, -0.271314, -0.427332,
		0.324248, -0.352165, 0.877976,
		-0.388699, -0.895750, -0.215743,
		68.768867, 57.570580, 58.974865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.754082, 58.273476, 59.330162>,  <69.040955, 58.197605, 59.125885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.754082, 58.273476, 59.330162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797501, 58.417892, 59.700645>,  <69.823547, 58.504543, 59.922935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797501, 58.417892, 59.700645>,  <69.754082, 58.273476, 59.330162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.797501, 58.417892, 59.700645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054844, -0.928122, 0.368214,
		0.992578, -0.090763, -0.080936,
		0.108539, 0.361043, 0.926211,
		69.830063, 58.526207, 59.978508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.897675, 57.548409, 59.450741>,  <69.754082, 58.273476, 59.330162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.897675, 57.548409, 59.450741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.135506, 57.273506, 59.283813>,  <70.278206, 57.108566, 59.183659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.135506, 57.273506, 59.283813>,  <69.897675, 57.548409, 59.450741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.135506, 57.273506, 59.283813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754642, -0.297896, -0.584614,
		0.277462, 0.662526, -0.695754,
		0.594585, -0.687254, -0.417315,
		70.313881, 57.067329, 59.158619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.630478, 57.722752, 59.384327>,  <69.897675, 57.548409, 59.450741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.630478, 57.722752, 59.384327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.632507, 57.328468, 59.451683>,  <70.633728, 57.091900, 59.492096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.632507, 57.328468, 59.451683>,  <70.630478, 57.722752, 59.384327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.632507, 57.328468, 59.451683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764505, 0.112375, 0.634747,
		-0.644598, 0.125515, 0.754148,
		0.005077, -0.985707, 0.168394,
		70.634033, 57.032757, 59.502201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.748192, 57.641235, 60.122650>,  <70.630478, 57.722752, 59.384327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.748192, 57.641235, 60.122650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.577942, 57.280117, 60.147301>,  <70.475792, 57.063446, 60.162090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.577942, 57.280117, 60.147301>,  <70.748192, 57.641235, 60.122650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.577942, 57.280117, 60.147301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180474, 0.017952, -0.983416,
		0.886721, -0.429687, -0.170573,
		-0.425623, -0.902800, 0.061629,
		70.450256, 57.009277, 60.165791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.083122, 56.875641, 59.889355>,  <70.748192, 57.641235, 60.122650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.083122, 56.875641, 59.889355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.693382, 56.960789, 59.860138>,  <70.459541, 57.011879, 59.842606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.693382, 56.960789, 59.860138>,  <71.083122, 56.875641, 59.889355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.693382, 56.960789, 59.860138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088322, 0.063155, -0.994088,
		-0.207000, -0.975037, -0.080336,
		-0.974346, 0.212872, -0.073044,
		70.401077, 57.024651, 59.838226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.716484, 57.241375, 59.747925>,  <71.083122, 56.875641, 59.889355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.716484, 57.241375, 59.747925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.981628, 57.540230, 59.728287>,  <72.140717, 57.719543, 59.716503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.981628, 57.540230, 59.728287>,  <71.716484, 57.241375, 59.747925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.981628, 57.540230, 59.728287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034415, 0.035100, 0.998791,
		0.747954, -0.663746, -0.002447,
		0.662858, 0.747134, -0.049096,
		72.180489, 57.764370, 59.713558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.517647, 57.275639, 60.063385>,  <71.716484, 57.241375, 59.747925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.517647, 57.275639, 60.063385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.332344, 57.629890, 60.076332>,  <72.221161, 57.842442, 60.084099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.332344, 57.629890, 60.076332>,  <72.517647, 57.275639, 60.063385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.332344, 57.629890, 60.076332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334628, 0.140989, 0.931744,
		0.820616, 0.442474, -0.361671,
		-0.463264, 0.885629, 0.032367,
		72.193367, 57.895580, 60.086040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.098312, 57.233936, 60.558498>,  <72.517647, 57.275639, 60.063385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.098312, 57.233936, 60.558498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.995789, 57.547081, 60.785278>,  <72.934273, 57.734966, 60.921345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.995789, 57.547081, 60.785278>,  <73.098312, 57.233936, 60.558498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.995789, 57.547081, 60.785278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815048, 0.140260, -0.562160,
		-0.519615, -0.606178, 0.602120,
		-0.256316, 0.782863, 0.566946,
		72.918892, 57.781940, 60.955360>
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
