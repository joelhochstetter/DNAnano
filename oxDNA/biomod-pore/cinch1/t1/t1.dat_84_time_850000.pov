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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.730751, 32.214630, 22.370642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456448, 32.349884, 22.628448>,  <42.291866, 32.431038, 22.783133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456448, 32.349884, 22.628448>,  <42.730751, 32.214630, 22.370642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456448, 32.349884, 22.628448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277653, 0.697028, -0.661106,
		-0.672791, -0.632309, -0.384106,
		-0.685756, 0.338138, 0.644517,
		42.250721, 32.451324, 22.821804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982136, 32.168617, 22.209986>,  <42.730751, 32.214630, 22.370642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982136, 32.168617, 22.209986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058048, 32.491333, 22.433800>,  <42.103596, 32.684963, 22.568089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058048, 32.491333, 22.433800>,  <41.982136, 32.168617, 22.209986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058048, 32.491333, 22.433800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530033, 0.563902, -0.633309,
		-0.826467, -0.176382, 0.534641,
		0.189781, 0.806786, 0.559535,
		42.114983, 32.733368, 22.601660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346741, 32.461838, 22.446987>,  <41.982136, 32.168617, 22.209986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346741, 32.461838, 22.446987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644302, 32.729008, 22.438156>,  <41.822838, 32.889309, 22.432858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644302, 32.729008, 22.438156>,  <41.346741, 32.461838, 22.446987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644302, 32.729008, 22.438156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566341, 0.612538, -0.551412,
		-0.354776, 0.422701, 0.833941,
		0.743903, 0.667923, -0.022079,
		41.867474, 32.929386, 22.431532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147221, 33.098488, 22.882952>,  <41.346741, 32.461838, 22.446987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147221, 33.098488, 22.882952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394176, 33.127548, 22.569633>,  <41.542351, 33.144985, 22.381643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394176, 33.127548, 22.569633>,  <41.147221, 33.098488, 22.882952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394176, 33.127548, 22.569633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716566, 0.462800, -0.521871,
		0.324594, 0.883481, 0.337788,
		0.617391, 0.072651, -0.783294,
		41.579395, 33.149345, 22.334644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362286, 33.845741, 22.578491>,  <41.147221, 33.098488, 22.882952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362286, 33.845741, 22.578491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330566, 33.544273, 22.317513>,  <41.311535, 33.363392, 22.160925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330566, 33.544273, 22.317513>,  <41.362286, 33.845741, 22.578491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330566, 33.544273, 22.317513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777912, 0.456061, -0.432275,
		0.623350, 0.473270, -0.622455,
		-0.079294, -0.753674, -0.652448,
		41.306778, 33.318172, 22.121778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927082, 34.360870, 23.000643>,  <41.362286, 33.845741, 22.578491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927082, 34.360870, 23.000643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582401, 34.535412, 22.897057>,  <40.375591, 34.640137, 22.834904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582401, 34.535412, 22.897057>,  <40.927082, 34.360870, 23.000643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582401, 34.535412, 22.897057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034080, 0.558985, 0.828477,
		0.506266, 0.705076, -0.496551,
		-0.861704, 0.436352, -0.258966,
		40.323891, 34.666317, 22.819366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990395, 35.044113, 23.139072>,  <40.927082, 34.360870, 23.000643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990395, 35.044113, 23.139072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591087, 35.020847, 23.142696>,  <40.351505, 35.006889, 23.144871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591087, 35.020847, 23.142696>,  <40.990395, 35.044113, 23.139072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591087, 35.020847, 23.142696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031592, 0.659212, 0.751293,
		-0.049671, 0.749704, -0.659906,
		-0.998266, -0.058165, 0.009059,
		40.291607, 35.003399, 23.145414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857250, 35.737331, 23.108259>,  <40.990395, 35.044113, 23.139072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857250, 35.737331, 23.108259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547688, 35.522934, 23.243179>,  <40.361950, 35.394295, 23.324131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547688, 35.522934, 23.243179>,  <40.857250, 35.737331, 23.108259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547688, 35.522934, 23.243179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145277, 0.668668, 0.729231,
		-0.616406, 0.515358, -0.595357,
		-0.773911, -0.535994, 0.337302,
		40.315514, 35.362137, 23.344370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376171, 36.288921, 23.339279>,  <40.857250, 35.737331, 23.108259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376171, 36.288921, 23.339279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282753, 35.937145, 23.505192>,  <40.226704, 35.726082, 23.604740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282753, 35.937145, 23.505192>,  <40.376171, 36.288921, 23.339279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282753, 35.937145, 23.505192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154035, 0.454655, 0.877247,
		-0.960068, 0.140986, -0.241647,
		-0.233545, -0.879438, 0.414783,
		40.212688, 35.673313, 23.629627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797562, 36.355358, 23.544346>,  <40.376171, 36.288921, 23.339279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797562, 36.355358, 23.544346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907269, 36.043045, 23.768902>,  <39.973091, 35.855659, 23.903635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907269, 36.043045, 23.768902>,  <39.797562, 36.355358, 23.544346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907269, 36.043045, 23.768902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212576, 0.520110, 0.827223,
		-0.937864, -0.346219, -0.023325,
		0.274268, -0.780780, 0.561390,
		39.989548, 35.808811, 23.937319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243141, 36.150517, 23.964508>,  <39.797562, 36.355358, 23.544346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243141, 36.150517, 23.964508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563793, 36.004433, 24.153828>,  <39.756184, 35.916782, 24.267420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563793, 36.004433, 24.153828>,  <39.243141, 36.150517, 23.964508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563793, 36.004433, 24.153828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329769, 0.390224, 0.859638,
		-0.498638, -0.845192, 0.192382,
		0.801632, -0.365207, 0.473299,
		39.804283, 35.894871, 24.295816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997566, 35.743679, 24.570038>,  <39.243141, 36.150517, 23.964508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997566, 35.743679, 24.570038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380421, 35.798161, 24.672283>,  <39.610134, 35.830849, 24.733631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380421, 35.798161, 24.672283>,  <38.997566, 35.743679, 24.570038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380421, 35.798161, 24.672283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282330, 0.241765, 0.928353,
		0.064642, -0.960729, 0.269855,
		0.957137, 0.136199, 0.255614,
		39.667561, 35.839020, 24.748968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988037, 35.383568, 25.158655>,  <38.997566, 35.743679, 24.570038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988037, 35.383568, 25.158655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309864, 35.619434, 25.186813>,  <39.502960, 35.760956, 25.203709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309864, 35.619434, 25.186813>,  <38.988037, 35.383568, 25.158655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309864, 35.619434, 25.186813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282049, 0.275114, 0.919109,
		0.522605, -0.759342, 0.387665,
		0.804570, 0.589671, 0.070396,
		39.551235, 35.796337, 25.207932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385891, 35.157261, 25.843861>,  <38.988037, 35.383568, 25.158655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385891, 35.157261, 25.843861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497524, 35.522804, 25.725895>,  <39.564507, 35.742130, 25.655115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497524, 35.522804, 25.725895>,  <39.385891, 35.157261, 25.843861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497524, 35.522804, 25.725895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165230, 0.348240, 0.922729,
		0.945944, -0.208793, 0.248186,
		0.279088, 0.913857, -0.294916,
		39.581249, 35.796963, 25.637421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000412, 35.360428, 26.234760>,  <39.385891, 35.157261, 25.843861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000412, 35.360428, 26.234760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828728, 35.709431, 26.141373>,  <39.725716, 35.918831, 26.085340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828728, 35.709431, 26.141373>,  <40.000412, 35.360428, 26.234760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828728, 35.709431, 26.141373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072109, 0.290768, 0.954072,
		0.900321, 0.392663, -0.187717,
		-0.429211, 0.872508, -0.233470,
		39.699963, 35.971184, 26.071331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236523, 35.813156, 26.626963>,  <40.000412, 35.360428, 26.234760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236523, 35.813156, 26.626963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897675, 36.002316, 26.530003>,  <39.694366, 36.115810, 26.471827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897675, 36.002316, 26.530003>,  <40.236523, 35.813156, 26.626963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897675, 36.002316, 26.530003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089182, 0.323165, 0.942131,
		0.523863, 0.819716, -0.231587,
		-0.847121, 0.472894, -0.242398,
		39.643539, 36.144184, 26.457283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244732, 36.290867, 27.022812>,  <40.236523, 35.813156, 26.626963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244732, 36.290867, 27.022812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863327, 36.342720, 26.913986>,  <39.634483, 36.373833, 26.848690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863327, 36.342720, 26.913986>,  <40.244732, 36.290867, 27.022812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863327, 36.342720, 26.913986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225713, 0.291006, 0.929714,
		0.199690, 0.947898, -0.248218,
		-0.953508, 0.129629, -0.272064,
		39.577274, 36.381607, 26.832367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086807, 36.884029, 27.296463>,  <40.244732, 36.290867, 27.022812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086807, 36.884029, 27.296463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717793, 36.737682, 27.247360>,  <39.496384, 36.649876, 27.217897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717793, 36.737682, 27.247360>,  <40.086807, 36.884029, 27.296463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717793, 36.737682, 27.247360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213857, 0.219888, 0.951795,
		-0.321236, 0.904318, -0.281097,
		-0.922536, -0.365865, -0.122759,
		39.441032, 36.627922, 27.210533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610882, 37.374287, 27.596731>,  <40.086807, 36.884029, 27.296463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610882, 37.374287, 27.596731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389980, 37.041222, 27.580334>,  <39.257439, 36.841381, 27.570496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389980, 37.041222, 27.580334>,  <39.610882, 37.374287, 27.596731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389980, 37.041222, 27.580334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382440, 0.209341, 0.899953,
		-0.740779, 0.512682, -0.434054,
		-0.552255, -0.832666, -0.040995,
		39.224304, 36.791420, 27.568035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972660, 37.535728, 27.799063>,  <39.610882, 37.374287, 27.596731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972660, 37.535728, 27.799063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991310, 37.142040, 27.867340>,  <39.002499, 36.905827, 27.908306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991310, 37.142040, 27.867340>,  <38.972660, 37.535728, 27.799063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991310, 37.142040, 27.867340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390628, 0.139307, 0.909947,
		-0.919367, -0.109104, -0.377969,
		0.046625, -0.984220, 0.170693,
		39.005299, 36.846775, 27.918549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428226, 37.484421, 28.095118>,  <38.972660, 37.535728, 27.799063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428226, 37.484421, 28.095118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626831, 37.154469, 28.203228>,  <38.745995, 36.956497, 28.268093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626831, 37.154469, 28.203228>,  <38.428226, 37.484421, 28.095118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626831, 37.154469, 28.203228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540299, -0.049993, 0.839987,
		-0.679376, -0.563093, -0.470504,
		0.496513, -0.824880, 0.270275,
		38.775784, 36.907005, 28.284311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962254, 37.194405, 28.428463>,  <38.428226, 37.484421, 28.095118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962254, 37.194405, 28.428463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306549, 37.041397, 28.562809>,  <38.513126, 36.949593, 28.643417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306549, 37.041397, 28.562809>,  <37.962254, 37.194405, 28.428463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306549, 37.041397, 28.562809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388567, -0.067483, 0.918946,
		-0.328845, -0.921482, -0.206718,
		0.860742, -0.382515, 0.335866,
		38.564774, 36.926643, 28.663568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805080, 36.631516, 28.781593>,  <37.962254, 37.194405, 28.428463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805080, 36.631516, 28.781593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163898, 36.720032, 28.934608>,  <38.379189, 36.773140, 29.026419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163898, 36.720032, 28.934608>,  <37.805080, 36.631516, 28.781593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163898, 36.720032, 28.934608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390372, -0.008989, 0.920613,
		0.207162, -0.975166, 0.078322,
		0.897047, 0.221291, 0.382540,
		38.433014, 36.786419, 29.049370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724640, 36.450596, 29.453304>,  <37.805080, 36.631516, 28.781593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724640, 36.450596, 29.453304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079304, 36.623856, 29.518066>,  <38.292103, 36.727810, 29.556923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079304, 36.623856, 29.518066>,  <37.724640, 36.450596, 29.453304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079304, 36.623856, 29.518066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217358, 0.081356, 0.972696,
		0.408148, -0.897644, 0.166283,
		0.886663, 0.433146, 0.161905,
		38.345303, 36.753799, 29.566637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901287, 36.244179, 30.170731>,  <37.724640, 36.450596, 29.453304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901287, 36.244179, 30.170731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116337, 36.570950, 30.087208>,  <38.245365, 36.767010, 30.037094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116337, 36.570950, 30.087208>,  <37.901287, 36.244179, 30.170731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116337, 36.570950, 30.087208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246647, 0.389171, 0.887531,
		0.806306, -0.425653, 0.410718,
		0.537620, 0.816925, -0.208805,
		38.277622, 36.816029, 30.024567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390980, 36.334618, 30.666971>,  <37.901287, 36.244179, 30.170731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390980, 36.334618, 30.666971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338795, 36.700729, 30.514526>,  <38.307484, 36.920395, 30.423059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338795, 36.700729, 30.514526>,  <38.390980, 36.334618, 30.666971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338795, 36.700729, 30.514526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216816, 0.348757, 0.911790,
		0.967456, 0.201582, 0.152948,
		-0.130458, 0.915278, -0.381113,
		38.299656, 36.975311, 30.400192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878357, 36.883698, 30.878799>,  <38.390980, 36.334618, 30.666971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878357, 36.883698, 30.878799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521847, 37.037357, 30.782421>,  <38.307941, 37.129551, 30.724594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521847, 37.037357, 30.782421>,  <38.878357, 36.883698, 30.878799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521847, 37.037357, 30.782421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056736, 0.432704, 0.899749,
		0.449892, 0.815598, -0.363865,
		-0.891279, 0.384146, -0.240944,
		38.254463, 37.152599, 30.710138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159668, 37.348164, 31.428381>,  <38.878357, 36.883698, 30.878799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159668, 37.348164, 31.428381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526436, 37.200203, 31.488277>,  <39.746498, 37.111427, 31.524216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526436, 37.200203, 31.488277>,  <39.159668, 37.348164, 31.428381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526436, 37.200203, 31.488277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380648, 0.923376, -0.049835,
		-0.119834, 0.102694, 0.987468,
		0.916923, -0.369906, 0.149742,
		39.801514, 37.089230, 31.533199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621067, 36.650883, 31.501184>,  <39.159668, 37.348164, 31.428381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621067, 36.650883, 31.501184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470844, 36.303589, 31.371494>,  <38.380711, 36.095211, 31.293680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470844, 36.303589, 31.371494>,  <38.621067, 36.650883, 31.501184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470844, 36.303589, 31.371494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623163, -0.495512, 0.605092,
		-0.686020, 0.025203, 0.727146,
		-0.375559, -0.868236, -0.324226,
		38.358177, 36.043118, 31.274227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206944, 36.190361, 32.030960>,  <38.621067, 36.650883, 31.501184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206944, 36.190361, 32.030960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458332, 36.057636, 31.749557>,  <38.609165, 35.978001, 31.580715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458332, 36.057636, 31.749557>,  <38.206944, 36.190361, 32.030960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458332, 36.057636, 31.749557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530034, -0.479268, 0.699547,
		-0.569287, -0.812529, -0.125335,
		0.628471, -0.331811, -0.703509,
		38.646873, 35.958092, 31.538506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130020, 35.382137, 31.861406>,  <38.206944, 36.190361, 32.030960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130020, 35.382137, 31.861406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470650, 35.590057, 31.834175>,  <38.675026, 35.714809, 31.817837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470650, 35.590057, 31.834175>,  <38.130020, 35.382137, 31.861406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470650, 35.590057, 31.834175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366205, -0.496901, 0.786755,
		0.375127, -0.694908, -0.613500,
		0.851572, 0.519799, -0.068078,
		38.726120, 35.745998, 31.813751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766487, 34.900711, 31.682281>,  <38.130020, 35.382137, 31.861406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766487, 34.900711, 31.682281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901161, 35.226551, 31.871204>,  <38.981968, 35.422054, 31.984558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901161, 35.226551, 31.871204>,  <38.766487, 34.900711, 31.682281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901161, 35.226551, 31.871204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247620, -0.560535, 0.790244,
		0.908474, -0.149113, -0.390435,
		0.336688, 0.814596, 0.472308,
		39.002167, 35.470928, 32.012897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642479, 34.434608, 31.083929>,  <38.766487, 34.900711, 31.682281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642479, 34.434608, 31.083929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426605, 34.550430, 31.400131>,  <38.297081, 34.619923, 31.589853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426605, 34.550430, 31.400131>,  <38.642479, 34.434608, 31.083929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426605, 34.550430, 31.400131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839032, -0.262020, -0.476835,
		0.069059, -0.920600, 0.384352,
		-0.539682, 0.289554, 0.790508,
		38.264702, 34.637299, 31.637283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152542, 33.946423, 31.350986>,  <38.642479, 34.434608, 31.083929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152542, 33.946423, 31.350986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014088, 34.309875, 31.444435>,  <37.931015, 34.527946, 31.500505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014088, 34.309875, 31.444435>,  <38.152542, 33.946423, 31.350986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014088, 34.309875, 31.444435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794131, -0.151169, -0.588645,
		-0.499545, -0.389279, 0.773897,
		-0.346137, 0.908631, 0.233623,
		37.910248, 34.582466, 31.514523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409950, 34.105225, 31.476036>,  <38.152542, 33.946423, 31.350986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409950, 34.105225, 31.476036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580322, 34.441093, 31.341259>,  <37.682545, 34.642616, 31.260393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580322, 34.441093, 31.341259>,  <37.409950, 34.105225, 31.476036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580322, 34.441093, 31.341259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357566, -0.185874, -0.915203,
		-0.831101, 0.510294, 0.221070,
		0.425931, 0.839673, -0.336944,
		37.708103, 34.692997, 31.240175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857750, 34.068771, 30.973074>,  <37.409950, 34.105225, 31.476036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857750, 34.068771, 30.973074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092316, 34.359779, 30.830624>,  <37.233055, 34.534386, 30.745153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092316, 34.359779, 30.830624>,  <36.857750, 34.068771, 30.973074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092316, 34.359779, 30.830624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375326, -0.145560, -0.915392,
		-0.717805, 0.670467, 0.187699,
		0.586419, 0.727521, -0.356127,
		37.268242, 34.578037, 30.723785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392662, 34.405056, 30.495348>,  <36.857750, 34.068771, 30.973074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392662, 34.405056, 30.495348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771706, 34.502838, 30.413109>,  <36.999134, 34.561508, 30.363766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771706, 34.502838, 30.413109>,  <36.392662, 34.405056, 30.495348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771706, 34.502838, 30.413109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196274, -0.062189, -0.978575,
		-0.252006, 0.967664, -0.010951,
		0.947613, 0.244457, -0.205599,
		37.055988, 34.576176, 30.351429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386456, 34.912498, 29.965027>,  <36.392662, 34.405056, 30.495348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386456, 34.912498, 29.965027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763084, 34.778229, 29.953979>,  <36.989063, 34.697666, 29.947351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763084, 34.778229, 29.953979>,  <36.386456, 34.912498, 29.965027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763084, 34.778229, 29.953979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039548, -0.028750, -0.998804,
		0.334482, 0.941538, -0.040346,
		0.941572, -0.335678, -0.027620,
		37.045555, 34.677525, 29.945694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629330, 35.290176, 29.450842>,  <36.386456, 34.912498, 29.965027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629330, 35.290176, 29.450842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871601, 34.972546, 29.471226>,  <37.016964, 34.781967, 29.483456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871601, 34.972546, 29.471226>,  <36.629330, 35.290176, 29.450842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871601, 34.972546, 29.471226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093861, -0.134893, -0.986405,
		0.790153, 0.592662, -0.156235,
		0.605679, -0.794075, 0.050958,
		37.053307, 34.734322, 29.486513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101341, 35.376305, 28.839197>,  <36.629330, 35.290176, 29.450842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101341, 35.376305, 28.839197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121906, 34.996155, 28.961933>,  <37.134247, 34.768066, 29.035574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121906, 34.996155, 28.961933>,  <37.101341, 35.376305, 28.839197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121906, 34.996155, 28.961933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156010, -0.311118, -0.937479,
		0.986417, 0.000328, -0.164263,
		0.051412, -0.950371, 0.306840,
		37.137329, 34.711044, 29.053986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682980, 35.099991, 28.445738>,  <37.101341, 35.376305, 28.839197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682980, 35.099991, 28.445738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438705, 34.804737, 28.560429>,  <37.292141, 34.627583, 28.629244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438705, 34.804737, 28.560429>,  <37.682980, 35.099991, 28.445738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438705, 34.804737, 28.560429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050001, -0.325421, -0.944246,
		0.790291, -0.590976, 0.161823,
		-0.610687, -0.738138, 0.286727,
		37.255501, 34.583294, 28.646446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004955, 34.458900, 28.273729>,  <37.682980, 35.099991, 28.445738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004955, 34.458900, 28.273729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607773, 34.412403, 28.282955>,  <37.369465, 34.384502, 28.288490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607773, 34.412403, 28.282955>,  <38.004955, 34.458900, 28.273729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607773, 34.412403, 28.282955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033709, -0.463619, -0.885393,
		0.113619, -0.878376, 0.464271,
		-0.992953, -0.116248, 0.023067,
		37.309887, 34.377529, 28.289875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928238, 33.980865, 27.814835>,  <38.004955, 34.458900, 28.273729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928238, 33.980865, 27.814835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553776, 34.112873, 27.863346>,  <37.329098, 34.192078, 27.892454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553776, 34.112873, 27.863346>,  <37.928238, 33.980865, 27.814835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553776, 34.112873, 27.863346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238424, -0.342340, -0.908822,
		-0.258404, -0.879712, 0.399165,
		-0.936153, 0.330014, 0.121282,
		37.272930, 34.211880, 27.899731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546249, 33.436832, 27.549303>,  <37.928238, 33.980865, 27.814835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546249, 33.436832, 27.549303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300911, 33.752708, 27.555054>,  <37.153709, 33.942234, 27.558504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300911, 33.752708, 27.555054>,  <37.546249, 33.436832, 27.549303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300911, 33.752708, 27.555054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186039, -0.126757, -0.974331,
		-0.767594, -0.600273, 0.224658,
		-0.613343, 0.789686, 0.014376,
		37.116909, 33.989613, 27.559366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881802, 33.271740, 27.235350>,  <37.546249, 33.436832, 27.549303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881802, 33.271740, 27.235350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926064, 33.666374, 27.187344>,  <36.952621, 33.903156, 27.158541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926064, 33.666374, 27.187344>,  <36.881802, 33.271740, 27.235350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926064, 33.666374, 27.187344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279566, -0.084983, -0.956358,
		-0.953729, 0.139374, 0.266413,
		0.110651, 0.986586, -0.120015,
		36.959259, 33.962349, 27.151339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392487, 33.465294, 26.822578>,  <36.881802, 33.271740, 27.235350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392487, 33.465294, 26.822578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649609, 33.767673, 26.773045>,  <36.803883, 33.949100, 26.743324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649609, 33.767673, 26.773045>,  <36.392487, 33.465294, 26.822578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649609, 33.767673, 26.773045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115800, -0.063905, -0.991215,
		-0.757226, 0.651499, 0.046461,
		0.642806, 0.755953, -0.123833,
		36.842449, 33.994461, 26.735895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190086, 33.740364, 26.181320>,  <36.392487, 33.465294, 26.822578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190086, 33.740364, 26.181320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531082, 33.944508, 26.226570>,  <36.735680, 34.066994, 26.253719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531082, 33.944508, 26.226570>,  <36.190086, 33.740364, 26.181320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531082, 33.944508, 26.226570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094751, 0.061961, -0.993571,
		-0.514086, 0.857727, 0.004464,
		0.852489, 0.510358, 0.113124,
		36.786827, 34.097614, 26.260508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097153, 34.186348, 25.699364>,  <36.190086, 33.740364, 26.181320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097153, 34.186348, 25.699364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491486, 34.201813, 25.764641>,  <36.728085, 34.211090, 25.803808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491486, 34.201813, 25.764641>,  <36.097153, 34.186348, 25.699364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491486, 34.201813, 25.764641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150910, 0.220025, -0.963751,
		-0.073164, 0.974728, 0.211074,
		0.985836, 0.038658, 0.163194,
		36.787235, 34.213409, 25.813599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297268, 34.733833, 25.216873>,  <36.097153, 34.186348, 25.699364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297268, 34.733833, 25.216873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621193, 34.532070, 25.336723>,  <36.815548, 34.411011, 25.408634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621193, 34.532070, 25.336723>,  <36.297268, 34.733833, 25.216873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621193, 34.532070, 25.336723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257839, -0.152761, -0.954035,
		0.526996, 0.849844, 0.006349,
		0.809811, -0.504410, 0.299627,
		36.864136, 34.380749, 25.426611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801800, 35.114071, 24.820698>,  <36.297268, 34.733833, 25.216873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801800, 35.114071, 24.820698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960724, 34.760651, 24.919884>,  <37.056080, 34.548599, 24.979395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960724, 34.760651, 24.919884>,  <36.801800, 35.114071, 24.820698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960724, 34.760651, 24.919884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385694, -0.084406, -0.918758,
		0.832696, 0.460672, 0.307244,
		0.397313, -0.883548, 0.247963,
		37.079918, 34.495586, 24.994272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590862, 35.159504, 24.715618>,  <36.801800, 35.114071, 24.820698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590862, 35.159504, 24.715618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442947, 34.791016, 24.667255>,  <37.354198, 34.569923, 24.638237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442947, 34.791016, 24.667255>,  <37.590862, 35.159504, 24.715618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442947, 34.791016, 24.667255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307620, 0.001401, -0.951508,
		0.876715, -0.389046, 0.282867,
		-0.369784, -0.921217, -0.120907,
		37.332012, 34.514652, 24.630983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086266, 34.767368, 24.424927>,  <37.590862, 35.159504, 24.715618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086266, 34.767368, 24.424927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773155, 34.531116, 24.346523>,  <37.585289, 34.389366, 24.299480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773155, 34.531116, 24.346523>,  <38.086266, 34.767368, 24.424927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773155, 34.531116, 24.346523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280015, -0.053006, -0.958531,
		0.555744, -0.805202, 0.206877,
		-0.782777, -0.590626, -0.196011,
		37.538322, 34.353928, 24.287720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344315, 34.242512, 23.935953>,  <38.086266, 34.767368, 24.424927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344315, 34.242512, 23.935953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952545, 34.198402, 23.868343>,  <37.717484, 34.171936, 23.827778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952545, 34.198402, 23.868343>,  <38.344315, 34.242512, 23.935953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952545, 34.198402, 23.868343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180300, -0.101831, -0.978326,
		0.090674, -0.988671, 0.119619,
		-0.979423, -0.110276, -0.169024,
		37.658718, 34.165321, 23.817636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343491, 33.669044, 23.516094>,  <38.344315, 34.242512, 23.935953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343491, 33.669044, 23.516094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991676, 33.854321, 23.472519>,  <37.780586, 33.965485, 23.446373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991676, 33.854321, 23.472519>,  <38.343491, 33.669044, 23.516094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991676, 33.854321, 23.472519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087288, -0.068000, -0.993860,
		-0.467752, -0.883647, 0.019378,
		-0.879539, 0.463188, -0.108938,
		37.727814, 33.993279, 23.439837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969837, 33.203362, 23.096275>,  <38.343491, 33.669044, 23.516094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969837, 33.203362, 23.096275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797066, 33.563030, 23.068199>,  <37.693401, 33.778831, 23.051353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797066, 33.563030, 23.068199>,  <37.969837, 33.203362, 23.096275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797066, 33.563030, 23.068199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092355, -0.033321, -0.995168,
		-0.897166, -0.436325, -0.068650,
		-0.431929, 0.899172, -0.070191,
		37.667488, 33.832783, 23.047142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570122, 33.052288, 22.457159>,  <37.969837, 33.203362, 23.096275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570122, 33.052288, 22.457159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614311, 33.446819, 22.506077>,  <37.640823, 33.683537, 22.535427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614311, 33.446819, 22.506077>,  <37.570122, 33.052288, 22.457159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614311, 33.446819, 22.506077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047721, 0.117640, -0.991909,
		-0.992733, 0.115415, -0.034072,
		0.110473, 0.986327, 0.122293,
		37.647453, 33.742718, 22.542765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142780, 33.354427, 21.948259>,  <37.570122, 33.052288, 22.457159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142780, 33.354427, 21.948259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415634, 33.632896, 22.037739>,  <37.579346, 33.799976, 22.091427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415634, 33.632896, 22.037739>,  <37.142780, 33.354427, 21.948259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415634, 33.632896, 22.037739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055666, 0.354470, -0.933409,
		-0.729106, 0.624257, 0.280549,
		0.682133, 0.696171, 0.223696,
		37.620274, 33.841747, 22.104847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944321, 34.069202, 21.868885>,  <37.142780, 33.354427, 21.948259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944321, 34.069202, 21.868885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329811, 34.001293, 21.786518>,  <37.561108, 33.960548, 21.737099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329811, 34.001293, 21.786518>,  <36.944321, 34.069202, 21.868885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329811, 34.001293, 21.786518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151754, 0.286082, -0.946112,
		0.219533, 0.943045, 0.249942,
		0.963730, -0.169773, -0.205916,
		37.618931, 33.950363, 21.724743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312756, 34.080357, 21.329285>,  <36.944321, 34.069202, 21.868885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312756, 34.080357, 21.329285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045986, 34.366638, 21.246357>,  <35.885925, 34.538406, 21.196600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045986, 34.366638, 21.246357>,  <36.312756, 34.080357, 21.329285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045986, 34.366638, 21.246357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638632, -0.405692, 0.653884,
		0.383880, 0.568490, 0.727637,
		-0.666922, 0.715705, -0.207319,
		35.845909, 34.581348, 21.184162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044899, 34.380615, 21.932205>,  <36.312756, 34.080357, 21.329285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044899, 34.380615, 21.932205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773247, 34.450817, 21.647114>,  <35.610256, 34.492939, 21.476059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773247, 34.450817, 21.647114>,  <36.044899, 34.380615, 21.932205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773247, 34.450817, 21.647114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733884, -0.143818, 0.663876,
		0.014009, 0.973917, 0.226470,
		-0.679130, 0.175503, -0.712728,
		35.569508, 34.503468, 21.433296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486126, 34.934296, 22.056772>,  <36.044899, 34.380615, 21.932205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486126, 34.934296, 22.056772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315979, 34.666290, 21.813416>,  <35.213890, 34.505486, 21.667400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315979, 34.666290, 21.813416>,  <35.486126, 34.934296, 22.056772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315979, 34.666290, 21.813416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788170, -0.056145, 0.612891,
		-0.444805, 0.740220, -0.504204,
		-0.425366, -0.670016, -0.608393,
		35.188370, 34.465286, 21.630898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809525, 35.189716, 21.958204>,  <35.486126, 34.934296, 22.056772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809525, 35.189716, 21.958204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838074, 34.793594, 21.910534>,  <34.855202, 34.555920, 21.881931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838074, 34.793594, 21.910534>,  <34.809525, 35.189716, 21.958204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838074, 34.793594, 21.910534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806395, -0.127609, 0.577446,
		-0.587055, 0.054886, -0.807685,
		0.071374, -0.990305, -0.119174,
		34.859486, 34.496502, 21.874783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177238, 34.950150, 21.751966>,  <34.809525, 35.189716, 21.958204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177238, 34.950150, 21.751966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377663, 34.649376, 21.923328>,  <34.497917, 34.468910, 22.026146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377663, 34.649376, 21.923328>,  <34.177238, 34.950150, 21.751966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377663, 34.649376, 21.923328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846319, -0.322337, 0.424079,
		-0.180788, -0.575059, -0.797887,
		0.501059, -0.751935, 0.428408,
		34.527981, 34.423794, 22.051851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798641, 34.461140, 21.569281>,  <34.177238, 34.950150, 21.751966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798641, 34.461140, 21.569281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027100, 34.373840, 21.885803>,  <34.164173, 34.321461, 22.075716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027100, 34.373840, 21.885803>,  <33.798641, 34.461140, 21.569281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027100, 34.373840, 21.885803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803422, -0.346219, 0.484402,
		0.168247, -0.912416, -0.373083,
		0.571144, -0.218244, 0.791306,
		34.198444, 34.308369, 22.123196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281662, 33.981525, 21.953201>,  <33.798641, 34.461140, 21.569281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281662, 33.981525, 21.953201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934711, 33.885475, 22.127556>,  <32.726540, 33.827847, 22.232168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934711, 33.885475, 22.127556>,  <33.281662, 33.981525, 21.953201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934711, 33.885475, 22.127556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255917, -0.966422, -0.023129,
		0.426806, 0.091489, 0.899704,
		-0.867377, -0.240121, 0.435888,
		32.674500, 33.813438, 22.258322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439217, 33.504005, 22.422943>,  <33.281662, 33.981525, 21.953201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439217, 33.504005, 22.422943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049622, 33.440540, 22.358234>,  <32.815865, 33.402462, 22.319410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049622, 33.440540, 22.358234>,  <33.439217, 33.504005, 22.422943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049622, 33.440540, 22.358234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167616, -0.984907, -0.043170,
		-0.152479, -0.069162, 0.985884,
		-0.973989, -0.158667, -0.161770,
		32.757423, 33.392941, 22.309704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384888, 32.969872, 22.883020>,  <33.439217, 33.504005, 22.422943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384888, 32.969872, 22.883020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050106, 32.948463, 22.665161>,  <32.849236, 32.935619, 22.534445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050106, 32.948463, 22.665161>,  <33.384888, 32.969872, 22.883020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050106, 32.948463, 22.665161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027960, -0.998089, 0.055107,
		-0.546559, 0.030894, 0.836851,
		-0.836954, -0.053518, -0.544650,
		32.799019, 32.932407, 22.501766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755878, 32.705368, 23.251251>,  <33.384888, 32.969872, 22.883020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755878, 32.705368, 23.251251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698364, 32.607746, 22.867634>,  <32.663857, 32.549175, 22.637463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698364, 32.607746, 22.867634>,  <32.755878, 32.705368, 23.251251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698364, 32.607746, 22.867634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027469, -0.967756, 0.250388,
		-0.989227, 0.062347, 0.132447,
		-0.143787, -0.244053, -0.959043,
		32.655228, 32.534531, 22.579922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223885, 32.105778, 23.212137>,  <32.755878, 32.705368, 23.251251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223885, 32.105778, 23.212137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409645, 32.094273, 22.858074>,  <32.521103, 32.087368, 22.645636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409645, 32.094273, 22.858074>,  <32.223885, 32.105778, 23.212137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409645, 32.094273, 22.858074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041417, -0.997674, 0.054150,
		-0.884656, -0.061808, -0.462129,
		0.464401, -0.028764, -0.885158,
		32.548965, 32.085644, 22.592527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890188, 31.569286, 22.785639>,  <32.223885, 32.105778, 23.212137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890188, 31.569286, 22.785639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242096, 31.618454, 22.601944>,  <32.453239, 31.647955, 22.491728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242096, 31.618454, 22.601944>,  <31.890188, 31.569286, 22.785639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242096, 31.618454, 22.601944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070646, -0.989073, -0.129394,
		-0.470122, 0.081394, -0.878840,
		0.879769, 0.122918, -0.459235,
		32.506027, 31.655329, 22.464174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751200, 31.364458, 22.065594>,  <31.890188, 31.569286, 22.785639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751200, 31.364458, 22.065594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142330, 31.319618, 22.136353>,  <32.377007, 31.292715, 22.178808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142330, 31.319618, 22.136353>,  <31.751200, 31.364458, 22.065594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142330, 31.319618, 22.136353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049501, -0.944461, -0.324873,
		0.203491, 0.308913, -0.929066,
		0.977825, -0.112099, 0.176897,
		32.435677, 31.285988, 22.189423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935612, 30.768322, 21.836071>,  <31.751200, 31.364458, 22.065594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935612, 30.768322, 21.836071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312241, 30.810234, 21.964111>,  <32.538219, 30.835381, 22.040936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312241, 30.810234, 21.964111>,  <31.935612, 30.768322, 21.836071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312241, 30.810234, 21.964111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131900, -0.989183, -0.064187,
		0.309914, 0.102658, -0.945206,
		0.941571, 0.104780, 0.320103,
		32.594711, 30.841669, 22.060143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418221, 30.469160, 21.342880>,  <31.935612, 30.768322, 21.836071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418221, 30.469160, 21.342880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549526, 30.444614, 21.719917>,  <32.628311, 30.429888, 21.946138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549526, 30.444614, 21.719917>,  <32.418221, 30.469160, 21.342880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549526, 30.444614, 21.719917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119128, -0.992610, -0.023133,
		0.937044, -0.104695, -0.333149,
		0.328265, -0.061364, 0.942590,
		32.648006, 30.426205, 22.002695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674854, 29.785004, 21.497967>,  <32.418221, 30.469160, 21.342880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674854, 29.785004, 21.497967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643055, 29.890514, 21.882488>,  <32.623974, 29.953821, 22.113201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643055, 29.890514, 21.882488>,  <32.674854, 29.785004, 21.497967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643055, 29.890514, 21.882488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048110, -0.964246, 0.260605,
		0.995673, -0.025531, 0.089347,
		-0.079499, 0.263776, 0.961302,
		32.619205, 29.969646, 22.170879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141815, 29.431671, 21.856712>,  <32.674854, 29.785004, 21.497967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141815, 29.431671, 21.856712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864910, 29.533337, 22.126873>,  <32.698765, 29.594336, 22.288969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864910, 29.533337, 22.126873>,  <33.141815, 29.431671, 21.856712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864910, 29.533337, 22.126873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084646, -0.958062, 0.273773,
		0.716661, 0.132354, 0.684748,
		-0.692266, 0.254163, 0.675402,
		32.657230, 29.609585, 22.329494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325653, 29.014860, 22.373411>,  <33.141815, 29.431671, 21.856712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325653, 29.014860, 22.373411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953197, 29.121441, 22.472996>,  <32.729725, 29.185389, 22.532745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953197, 29.121441, 22.472996>,  <33.325653, 29.014860, 22.373411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953197, 29.121441, 22.472996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187969, -0.935731, 0.298453,
		0.312483, 0.231105, 0.921382,
		-0.931140, 0.266452, 0.248960,
		32.673855, 29.201376, 22.547684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215549, 28.679649, 23.099791>,  <33.325653, 29.014860, 22.373411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215549, 28.679649, 23.099791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858505, 28.762749, 22.939743>,  <32.644279, 28.812609, 22.843716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858505, 28.762749, 22.939743>,  <33.215549, 28.679649, 23.099791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858505, 28.762749, 22.939743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367866, -0.848689, 0.380001,
		-0.260630, 0.486381, 0.833969,
		-0.892607, 0.207749, -0.400117,
		32.590725, 28.825073, 22.819708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728386, 28.796040, 23.637520>,  <33.215549, 28.679649, 23.099791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728386, 28.796040, 23.637520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534840, 28.674576, 23.309212>,  <32.418713, 28.601698, 23.112226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534840, 28.674576, 23.309212>,  <32.728386, 28.796040, 23.637520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534840, 28.674576, 23.309212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289576, -0.829487, 0.477595,
		-0.825845, 0.468768, 0.313428,
		-0.483865, -0.303658, -0.820772,
		32.389679, 28.583479, 23.062981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125507, 28.520575, 23.853989>,  <32.728386, 28.796040, 23.637520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125507, 28.520575, 23.853989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167915, 28.340714, 23.499233>,  <32.193359, 28.232798, 23.286381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167915, 28.340714, 23.499233>,  <32.125507, 28.520575, 23.853989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167915, 28.340714, 23.499233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366647, -0.846748, 0.385472,
		-0.924300, 0.284308, -0.254635,
		0.106019, -0.449653, -0.886889,
		32.199722, 28.205818, 23.233166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478516, 28.244560, 23.807455>,  <32.125507, 28.520575, 23.853989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478516, 28.244560, 23.807455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731886, 28.053635, 23.563835>,  <31.883907, 27.939079, 23.417664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731886, 28.053635, 23.563835>,  <31.478516, 28.244560, 23.807455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731886, 28.053635, 23.563835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228517, -0.867370, 0.442096,
		-0.739292, -0.140856, -0.658489,
		0.633425, -0.477313, -0.609052,
		31.921913, 27.910440, 23.381119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178040, 27.745148, 23.319288>,  <31.478516, 28.244560, 23.807455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178040, 27.745148, 23.319288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549799, 27.617382, 23.393257>,  <31.772854, 27.540722, 23.437639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549799, 27.617382, 23.393257>,  <31.178040, 27.745148, 23.319288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549799, 27.617382, 23.393257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365303, -0.867611, 0.337351,
		0.052687, -0.381086, -0.923037,
		0.929397, -0.319414, 0.184923,
		31.828617, 27.521557, 23.448734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093929, 27.066305, 23.212318>,  <31.178040, 27.745148, 23.319288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093929, 27.066305, 23.212318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457161, 27.071316, 23.379765>,  <31.675100, 27.074322, 23.480232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457161, 27.071316, 23.379765>,  <31.093929, 27.066305, 23.212318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457161, 27.071316, 23.379765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097271, -0.965911, 0.239903,
		0.407349, -0.258570, -0.875905,
		0.908078, 0.012524, 0.418614,
		31.729584, 27.075073, 23.505348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378077, 26.487528, 22.939392>,  <31.093929, 27.066305, 23.212318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378077, 26.487528, 22.939392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616205, 26.562313, 23.251965>,  <31.759083, 26.607183, 23.439508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616205, 26.562313, 23.251965>,  <31.378077, 26.487528, 22.939392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616205, 26.562313, 23.251965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044636, -0.978745, 0.200163,
		0.802247, -0.084281, -0.591013,
		0.595321, 0.186961, 0.781434,
		31.794802, 26.618401, 23.486395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008183, 25.966467, 22.881844>,  <31.378077, 26.487528, 22.939392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008183, 25.966467, 22.881844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987902, 26.089638, 23.261868>,  <31.975733, 26.163540, 23.489882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987902, 26.089638, 23.261868>,  <32.008183, 25.966467, 22.881844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987902, 26.089638, 23.261868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308943, -0.899787, 0.308120,
		0.949728, 0.309137, -0.049510,
		-0.050703, 0.307925, 0.950059,
		31.972691, 26.182014, 23.546885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573143, 25.723309, 23.317137>,  <32.008183, 25.966467, 22.881844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573143, 25.723309, 23.317137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305531, 25.804813, 23.603039>,  <32.144962, 25.853716, 23.774580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305531, 25.804813, 23.603039>,  <32.573143, 25.723309, 23.317137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305531, 25.804813, 23.603039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161456, -0.898875, 0.407377,
		0.725484, 0.387951, 0.568478,
		-0.669033, 0.203761, 0.714756,
		32.104820, 25.865942, 23.817465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940147, 25.557257, 23.946411>,  <32.573143, 25.723309, 23.317137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940147, 25.557257, 23.946411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545071, 25.541008, 24.006817>,  <32.308025, 25.531258, 24.043060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545071, 25.541008, 24.006817>,  <32.940147, 25.557257, 23.946411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545071, 25.541008, 24.006817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114571, -0.845235, 0.521969,
		0.106440, 0.532849, 0.839490,
		-0.987696, -0.040623, 0.151016,
		32.248760, 25.528822, 24.052122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909515, 25.281872, 24.574684>,  <32.940147, 25.557257, 23.946411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909515, 25.281872, 24.574684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542721, 25.220516, 24.427380>,  <32.322643, 25.183702, 24.338997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542721, 25.220516, 24.427380>,  <32.909515, 25.281872, 24.574684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542721, 25.220516, 24.427380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060524, -0.965932, 0.251621,
		-0.394311, 0.208443, 0.895026,
		-0.916982, -0.153387, -0.368261,
		32.267628, 25.174500, 24.316902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569309, 24.835413, 25.078514>,  <32.909515, 25.281872, 24.574684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569309, 24.835413, 25.078514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367077, 24.792122, 24.736130>,  <32.245735, 24.766148, 24.530699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367077, 24.792122, 24.736130>,  <32.569309, 24.835413, 25.078514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367077, 24.792122, 24.736130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088149, -0.993389, 0.073540,
		-0.858263, -0.038272, 0.511782,
		-0.505584, -0.108230, -0.855962,
		32.215401, 24.759653, 24.479342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142750, 24.333263, 25.198610>,  <32.569309, 24.835413, 25.078514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142750, 24.333263, 25.198610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112595, 24.348526, 24.800041>,  <32.094501, 24.357683, 24.560900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112595, 24.348526, 24.800041>,  <32.142750, 24.333263, 25.198610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112595, 24.348526, 24.800041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081191, -0.995715, -0.044272,
		-0.993844, -0.084238, 0.071966,
		-0.075387, 0.038156, -0.996424,
		32.089977, 24.359972, 24.501114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637287, 23.685144, 25.021261>,  <32.142750, 24.333263, 25.198610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637287, 23.685144, 25.021261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852304, 23.806274, 24.706467>,  <31.981316, 23.878952, 24.517590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852304, 23.806274, 24.706467>,  <31.637287, 23.685144, 25.021261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852304, 23.806274, 24.706467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250303, -0.948528, -0.194017,
		-0.805230, -0.092692, -0.585673,
		0.537543, 0.302824, -0.786985,
		32.013569, 23.897121, 24.470371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382883, 23.336645, 24.496944>,  <31.637287, 23.685144, 25.021261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382883, 23.336645, 24.496944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760088, 23.430550, 24.402611>,  <31.986410, 23.486893, 24.346010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760088, 23.430550, 24.402611>,  <31.382883, 23.336645, 24.496944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760088, 23.430550, 24.402611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191983, -0.962700, -0.190662,
		-0.271797, 0.134521, -0.952907,
		0.943011, 0.234763, -0.235833,
		32.042992, 23.500978, 24.331861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457819, 22.921856, 23.899872>,  <31.382883, 23.336645, 24.496944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457819, 22.921856, 23.899872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825933, 23.019577, 24.022110>,  <32.046803, 23.078211, 24.095453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825933, 23.019577, 24.022110>,  <31.457819, 22.921856, 23.899872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825933, 23.019577, 24.022110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292910, -0.948041, -0.124182,
		0.259381, 0.203796, -0.944028,
		0.920285, 0.244305, 0.305598,
		32.102020, 23.092869, 24.113789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017918, 22.822874, 23.330402>,  <31.457819, 22.921856, 23.899872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017918, 22.822874, 23.330402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200756, 22.809395, 23.685913>,  <32.310459, 22.801308, 23.899220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200756, 22.809395, 23.685913>,  <32.017918, 22.822874, 23.330402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200756, 22.809395, 23.685913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369422, -0.901814, -0.224184,
		0.809066, 0.430808, -0.399770,
		0.457099, -0.033696, 0.888777,
		32.337887, 22.799286, 23.952547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603996, 22.424648, 23.275955>,  <32.017918, 22.822874, 23.330402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603996, 22.424648, 23.275955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559605, 22.412460, 23.673298>,  <32.532970, 22.405148, 23.911703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559605, 22.412460, 23.673298>,  <32.603996, 22.424648, 23.275955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559605, 22.412460, 23.673298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430334, -0.902439, 0.020393,
		0.895822, 0.429738, 0.113262,
		-0.110976, -0.030472, 0.993356,
		32.526310, 22.403318, 23.971304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196102, 21.986506, 23.544701>,  <32.603996, 22.424648, 23.275955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196102, 21.986506, 23.544701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946728, 21.994030, 23.857361>,  <32.797104, 21.998545, 24.044956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946728, 21.994030, 23.857361>,  <33.196102, 21.986506, 23.544701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946728, 21.994030, 23.857361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227633, -0.952038, 0.204468,
		0.748007, 0.305401, 0.589250,
		-0.623433, 0.018810, 0.781650,
		32.759697, 21.999674, 24.091856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530483, 21.707375, 24.104708>,  <33.196102, 21.986506, 23.544701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530483, 21.707375, 24.104708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144104, 21.667561, 24.200233>,  <32.912277, 21.643673, 24.257549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144104, 21.667561, 24.200233>,  <33.530483, 21.707375, 24.104708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144104, 21.667561, 24.200233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182480, -0.916445, 0.356133,
		0.183412, 0.387586, 0.903403,
		-0.965951, -0.099533, 0.238814,
		32.854321, 21.637701, 24.271877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622055, 21.520781, 24.671055>,  <33.530483, 21.707375, 24.104708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622055, 21.520781, 24.671055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249878, 21.422405, 24.562405>,  <33.026569, 21.363380, 24.497213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249878, 21.422405, 24.562405>,  <33.622055, 21.520781, 24.671055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249878, 21.422405, 24.562405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104157, -0.888227, 0.447442,
		-0.351311, 0.388029, 0.852064,
		-0.930447, -0.245940, -0.271627,
		32.970745, 21.348623, 24.480917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504539, 21.075279, 25.140921>,  <33.622055, 21.520781, 24.671055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504539, 21.075279, 25.140921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212399, 20.982010, 24.884106>,  <33.037113, 20.926048, 24.730017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212399, 20.982010, 24.884106>,  <33.504539, 21.075279, 25.140921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212399, 20.982010, 24.884106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047633, -0.955030, 0.292658,
		-0.681406, 0.183162, 0.708617,
		-0.730354, -0.233173, -0.642038,
		32.993294, 20.912058, 24.691494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938694, 20.791269, 25.537420>,  <33.504539, 21.075279, 25.140921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938694, 20.791269, 25.537420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891960, 20.636234, 25.171661>,  <32.863918, 20.543213, 24.952206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891960, 20.636234, 25.171661>,  <32.938694, 20.791269, 25.537420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891960, 20.636234, 25.171661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133384, -0.906238, 0.401173,
		-0.984153, 0.168838, 0.054183,
		-0.116836, -0.387589, -0.914398,
		32.856911, 20.519958, 24.897343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496552, 20.358267, 25.662014>,  <32.938694, 20.791269, 25.537420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496552, 20.358267, 25.662014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621937, 20.237820, 25.301777>,  <32.697170, 20.165552, 25.085634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621937, 20.237820, 25.301777>,  <32.496552, 20.358267, 25.662014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621937, 20.237820, 25.301777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018721, -0.946248, 0.322899,
		-0.949417, -0.118075, -0.290972,
		0.313459, -0.301119, -0.900595,
		32.715977, 20.147484, 25.031599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106316, 19.828403, 25.399826>,  <32.496552, 20.358267, 25.662014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106316, 19.828403, 25.399826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469906, 19.775879, 25.241577>,  <32.688061, 19.744364, 25.146627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469906, 19.775879, 25.241577>,  <32.106316, 19.828403, 25.399826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469906, 19.775879, 25.241577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012681, -0.957359, 0.288623,
		-0.416654, -0.257334, -0.871882,
		0.908977, -0.131312, -0.395624,
		32.742599, 19.736485, 25.122890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961420, 19.077768, 25.126934>,  <32.106316, 19.828403, 25.399826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961420, 19.077768, 25.126934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352119, 19.163300, 25.133091>,  <32.586540, 19.214619, 25.136786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352119, 19.163300, 25.133091>,  <31.961420, 19.077768, 25.126934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352119, 19.163300, 25.133091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200658, -0.937138, 0.285496,
		0.075471, -0.275770, -0.958256,
		0.976750, 0.213828, 0.015392,
		32.645145, 19.227448, 25.137709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346359, 18.401243, 24.826527>,  <31.961420, 19.077768, 25.126934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346359, 18.401243, 24.826527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599430, 18.631458, 25.033787>,  <32.751274, 18.769587, 25.158142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599430, 18.631458, 25.033787>,  <32.346359, 18.401243, 24.826527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599430, 18.631458, 25.033787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369129, -0.812306, 0.451555,
		0.680782, -0.094425, -0.726375,
		0.632677, 0.575537, 0.518148,
		32.789234, 18.804119, 25.189232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925167, 18.105711, 24.672682>,  <32.346359, 18.401243, 24.826527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925167, 18.105711, 24.672682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967838, 18.320168, 25.007626>,  <32.993443, 18.448841, 25.208591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967838, 18.320168, 25.007626>,  <32.925167, 18.105711, 24.672682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967838, 18.320168, 25.007626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381720, -0.799715, 0.463407,
		0.918101, 0.270201, -0.289969,
		0.106679, 0.536142, 0.837360,
		32.999844, 18.481010, 25.258833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521984, 17.911203, 24.846159>,  <32.925167, 18.105711, 24.672682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521984, 17.911203, 24.846159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349728, 18.062408, 25.173977>,  <33.246376, 18.153131, 25.370668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349728, 18.062408, 25.173977>,  <33.521984, 17.911203, 24.846159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349728, 18.062408, 25.173977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326563, -0.781270, 0.531954,
		0.841373, 0.496712, 0.212998,
		-0.430637, 0.378014, 0.819547,
		33.220535, 18.175812, 25.419842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080864, 18.031635, 25.397488>,  <33.521984, 17.911203, 24.846159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080864, 18.031635, 25.397488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732052, 17.995903, 25.589977>,  <33.522762, 17.974464, 25.705471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732052, 17.995903, 25.589977>,  <34.080864, 18.031635, 25.397488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732052, 17.995903, 25.589977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378388, -0.746681, 0.547075,
		0.310452, 0.659157, 0.684932,
		-0.872034, -0.089329, 0.481225,
		33.470440, 17.969105, 25.734344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209621, 17.921101, 26.150629>,  <34.080864, 18.031635, 25.397488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209621, 17.921101, 26.150629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856937, 17.768642, 26.039406>,  <33.645329, 17.677168, 25.972672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856937, 17.768642, 26.039406>,  <34.209621, 17.921101, 26.150629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856937, 17.768642, 26.039406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166411, -0.802732, 0.572650,
		-0.441469, 0.458640, 0.771204,
		-0.881710, -0.381144, -0.278059,
		33.592422, 17.654299, 25.955988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649364, 17.815580, 26.759718>,  <34.209621, 17.921101, 26.150629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649364, 17.815580, 26.759718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636616, 17.561089, 26.451382>,  <33.628967, 17.408394, 26.266380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636616, 17.561089, 26.451382>,  <33.649364, 17.815580, 26.759718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636616, 17.561089, 26.451382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022162, -0.771494, 0.635851,
		-0.999246, 0.003183, 0.038691,
		-0.031874, -0.636229, -0.770842,
		33.627052, 17.370220, 26.220129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121609, 17.211193, 26.937979>,  <33.649364, 17.815580, 26.759718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121609, 17.211193, 26.937979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435387, 17.130512, 26.703384>,  <33.623653, 17.082104, 26.562628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435387, 17.130512, 26.703384>,  <33.121609, 17.211193, 26.937979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435387, 17.130512, 26.703384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214621, -0.798929, 0.561827,
		-0.581884, -0.566593, -0.583423,
		0.784442, -0.201703, -0.586487,
		33.670719, 17.070002, 26.527439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224857, 16.573229, 26.695698>,  <33.121609, 17.211193, 26.937979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224857, 16.573229, 26.695698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614582, 16.660995, 26.675411>,  <33.848415, 16.713655, 26.663239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614582, 16.660995, 26.675411>,  <33.224857, 16.573229, 26.695698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614582, 16.660995, 26.675411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221017, -0.888425, 0.402310,
		0.043217, -0.403184, -0.914098,
		0.974312, 0.219418, -0.050716,
		33.906876, 16.726820, 26.660196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861717, 16.353464, 27.041924>,  <33.224857, 16.573229, 26.695698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861717, 16.353464, 27.041924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017677, 16.048653, 26.835121>,  <34.111252, 15.865766, 26.711040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017677, 16.048653, 26.835121>,  <33.861717, 16.353464, 27.041924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017677, 16.048653, 26.835121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524646, -0.277581, 0.804795,
		-0.756787, -0.585031, 0.291567,
		0.389897, -0.762028, -0.517004,
		34.134647, 15.820045, 26.680019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544724, 16.822187, 27.566065>,  <33.861717, 16.353464, 27.041924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544724, 16.822187, 27.566065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481972, 17.215679, 27.601086>,  <33.444321, 17.451775, 27.622099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481972, 17.215679, 27.601086>,  <33.544724, 16.822187, 27.566065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481972, 17.215679, 27.601086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596187, 0.023651, 0.802498,
		0.787370, 0.178092, -0.590197,
		-0.156877, 0.983730, 0.087554,
		33.434910, 17.510798, 27.627352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317108, 16.548611, 28.205179>,  <33.544724, 16.822187, 27.566065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317108, 16.548611, 28.205179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025249, 16.433414, 28.453270>,  <32.850136, 16.364298, 28.602123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025249, 16.433414, 28.453270>,  <33.317108, 16.548611, 28.205179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025249, 16.433414, 28.453270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463401, 0.875216, -0.138766,
		-0.502868, -0.388663, -0.772052,
		-0.729646, -0.287989, 0.620226,
		32.806355, 16.347017, 28.639338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672001, 16.554190, 27.828550>,  <33.317108, 16.548611, 28.205179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672001, 16.554190, 27.828550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651806, 16.642975, 28.218048>,  <32.639687, 16.696247, 28.451748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651806, 16.642975, 28.218048>,  <32.672001, 16.554190, 27.828550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651806, 16.642975, 28.218048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354930, 0.907355, -0.225235,
		-0.933528, -0.356984, 0.032969,
		-0.050491, 0.221965, 0.973746,
		32.636658, 16.709564, 28.510172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009811, 16.681828, 27.997160>,  <32.672001, 16.554190, 27.828550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009811, 16.681828, 27.997160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271481, 16.901058, 28.205647>,  <32.428482, 17.032597, 28.330738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271481, 16.901058, 28.205647>,  <32.009811, 16.681828, 27.997160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271481, 16.901058, 28.205647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489810, 0.832090, -0.260215,
		-0.576319, -0.085073, 0.812785,
		0.654173, 0.548077, 0.521219,
		32.467731, 17.065481, 28.362013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661268, 17.199713, 28.517017>,  <32.009811, 16.681828, 27.997160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661268, 17.199713, 28.517017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997282, 17.339916, 28.351376>,  <32.198891, 17.424038, 28.251989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997282, 17.339916, 28.351376>,  <31.661268, 17.199713, 28.517017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997282, 17.339916, 28.351376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448110, 0.878545, -0.165397,
		0.305838, 0.324504, 0.895075,
		0.840036, 0.350507, -0.414106,
		32.249294, 17.445068, 28.227144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071121, 17.756355, 28.874613>,  <31.661268, 17.199713, 28.517017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071121, 17.756355, 28.874613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089577, 17.779064, 28.475685>,  <32.100651, 17.792688, 28.236328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089577, 17.779064, 28.475685>,  <32.071121, 17.756355, 28.874613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089577, 17.779064, 28.475685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394365, 0.918323, 0.034031,
		0.917795, 0.391739, 0.064750,
		0.046130, 0.056768, -0.997321,
		32.103416, 17.796095, 28.176489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483486, 18.337208, 28.673292>,  <32.071121, 17.756355, 28.874613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483486, 18.337208, 28.673292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275021, 18.269463, 28.338699>,  <32.149940, 18.228815, 28.137943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275021, 18.269463, 28.338699>,  <32.483486, 18.337208, 28.673292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275021, 18.269463, 28.338699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180260, 0.979845, -0.086081,
		0.834201, 0.105922, -0.541192,
		-0.521166, -0.169364, -0.836482,
		32.118671, 18.218653, 28.087755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833847, 18.792183, 28.182903>,  <32.483486, 18.337208, 28.673292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833847, 18.792183, 28.182903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473778, 18.707199, 28.030827>,  <32.257736, 18.656210, 27.939581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473778, 18.707199, 28.030827>,  <32.833847, 18.792183, 28.182903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473778, 18.707199, 28.030827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200590, 0.977093, -0.071084,
		0.386587, 0.012275, -0.922171,
		-0.900175, -0.212458, -0.380193,
		32.203724, 18.643461, 27.916769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783405, 19.152945, 27.588615>,  <32.833847, 18.792183, 28.182903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783405, 19.152945, 27.588615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409840, 19.097614, 27.720478>,  <32.185699, 19.064417, 27.799597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409840, 19.097614, 27.720478>,  <32.783405, 19.152945, 27.588615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409840, 19.097614, 27.720478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119047, 0.989814, 0.078075,
		-0.337101, 0.033670, -0.940866,
		-0.933912, -0.138326, 0.329659,
		32.129665, 19.056116, 27.819376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390121, 19.613611, 27.278730>,  <32.783405, 19.152945, 27.588615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390121, 19.613611, 27.278730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151615, 19.490650, 27.575371>,  <32.008511, 19.416874, 27.753355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151615, 19.490650, 27.575371>,  <32.390121, 19.613611, 27.278730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151615, 19.490650, 27.575371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209676, 0.951351, 0.225761,
		-0.774923, -0.020883, -0.631711,
		-0.596264, -0.307402, 0.741602,
		31.972736, 19.398430, 27.797852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673111, 19.945267, 27.171841>,  <32.390121, 19.613611, 27.278730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673111, 19.945267, 27.171841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722502, 19.852985, 27.557903>,  <31.752136, 19.797617, 27.789541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722502, 19.852985, 27.557903>,  <31.673111, 19.945267, 27.171841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722502, 19.852985, 27.557903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168058, 0.953689, 0.249465,
		-0.978013, -0.193006, 0.078989,
		0.123479, -0.230706, 0.965157,
		31.759546, 19.783773, 27.847450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008270, 20.020876, 27.390766>,  <31.673111, 19.945267, 27.171841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008270, 20.020876, 27.390766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249741, 20.047848, 27.708515>,  <31.394623, 20.064032, 27.899164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249741, 20.047848, 27.708515>,  <31.008270, 20.020876, 27.390766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249741, 20.047848, 27.708515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282015, 0.950053, 0.133671,
		-0.745683, -0.304719, 0.592539,
		0.603676, 0.067429, 0.794373,
		31.430843, 20.068077, 27.946827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643427, 20.374620, 27.856697>,  <31.008270, 20.020876, 27.390766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643427, 20.374620, 27.856697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021538, 20.429630, 27.975048>,  <31.248404, 20.462635, 28.046059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021538, 20.429630, 27.975048>,  <30.643427, 20.374620, 27.856697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021538, 20.429630, 27.975048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194277, 0.965788, 0.171786,
		-0.262129, -0.219867, 0.939653,
		0.945275, 0.137522, 0.295876,
		31.305120, 20.470886, 28.063810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565212, 20.874662, 28.348841>,  <30.643427, 20.374620, 27.856697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565212, 20.874662, 28.348841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960857, 20.888313, 28.291576>,  <31.198244, 20.896503, 28.257217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960857, 20.888313, 28.291576>,  <30.565212, 20.874662, 28.348841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960857, 20.888313, 28.291576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007555, 0.983232, 0.182203,
		0.146977, -0.179138, 0.972784,
		0.989111, 0.034129, -0.143159,
		31.257591, 20.898552, 28.248629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834358, 21.372482, 28.783255>,  <30.565212, 20.874662, 28.348841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834358, 21.372482, 28.783255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127722, 21.339520, 28.513344>,  <31.303740, 21.319742, 28.351397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127722, 21.339520, 28.513344>,  <30.834358, 21.372482, 28.783255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127722, 21.339520, 28.513344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119983, 0.992734, 0.009168,
		0.669118, -0.087686, 0.737965,
		0.733407, -0.082408, -0.674777,
		31.347744, 21.314796, 28.310911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388632, 21.828690, 28.997324>,  <30.834358, 21.372482, 28.783255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388632, 21.828690, 28.997324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465273, 21.774162, 28.608540>,  <31.511257, 21.741446, 28.375269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465273, 21.774162, 28.608540>,  <31.388632, 21.828690, 28.997324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465273, 21.774162, 28.608540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201685, 0.974642, -0.096935,
		0.960527, -0.177457, 0.214236,
		0.191602, -0.136317, -0.971960,
		31.522753, 21.733267, 28.316952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904034, 22.195385, 28.902905>,  <31.388632, 21.828690, 28.997324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904034, 22.195385, 28.902905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735489, 22.147152, 28.543369>,  <31.634361, 22.118212, 28.327648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735489, 22.147152, 28.543369>,  <31.904034, 22.195385, 28.902905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735489, 22.147152, 28.543369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036365, 0.988077, -0.149604,
		0.906162, -0.095724, -0.411954,
		-0.421363, -0.120584, -0.898839,
		31.609079, 22.110977, 28.273718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178314, 22.672207, 28.532278>,  <31.904034, 22.195385, 28.902905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178314, 22.672207, 28.532278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884947, 22.589867, 28.273132>,  <31.708927, 22.540462, 28.117645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884947, 22.589867, 28.273132>,  <32.178314, 22.672207, 28.532278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884947, 22.589867, 28.273132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144293, 0.884188, -0.444286,
		0.664289, -0.419329, -0.618776,
		-0.733416, -0.205849, -0.647863,
		31.664923, 22.528112, 28.078773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441074, 22.677191, 27.841528>,  <32.178314, 22.672207, 28.532278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441074, 22.677191, 27.841528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045872, 22.733791, 27.816822>,  <31.808750, 22.767752, 27.801998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045872, 22.733791, 27.816822>,  <32.441074, 22.677191, 27.841528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045872, 22.733791, 27.816822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152945, 0.842299, -0.516857,
		-0.021112, -0.520106, -0.853841,
		-0.988009, 0.141502, -0.061765,
		31.749470, 22.776241, 27.798292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390202, 22.923294, 27.124088>,  <32.441074, 22.677191, 27.841528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390202, 22.923294, 27.124088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040962, 23.038170, 27.281681>,  <31.831419, 23.107096, 27.376238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040962, 23.038170, 27.281681>,  <32.390202, 22.923294, 27.124088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040962, 23.038170, 27.281681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042790, 0.850116, -0.524853,
		-0.485664, -0.441390, -0.754523,
		-0.873098, 0.287188, 0.393984,
		31.779034, 23.124327, 27.399876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018341, 23.160244, 26.499926>,  <32.390202, 22.923294, 27.124088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018341, 23.160244, 26.499926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847906, 23.314209, 26.827412>,  <31.745646, 23.406588, 27.023903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847906, 23.314209, 26.827412>,  <32.018341, 23.160244, 26.499926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847906, 23.314209, 26.827412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079083, 0.885664, -0.457543,
		-0.901221, -0.259698, -0.346927,
		-0.426084, 0.384911, 0.818716,
		31.720081, 23.429682, 27.073027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409534, 23.677084, 26.344028>,  <32.018341, 23.160244, 26.499926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409534, 23.677084, 26.344028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568804, 23.789364, 26.693352>,  <31.664366, 23.856731, 26.902945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568804, 23.789364, 26.693352>,  <31.409534, 23.677084, 26.344028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568804, 23.789364, 26.693352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086555, 0.936286, -0.340407,
		-0.913218, 0.211130, 0.348508,
		0.398174, 0.280700, 0.873307,
		31.688255, 23.873573, 26.955343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170832, 24.292927, 26.535191>,  <31.409534, 23.677084, 26.344028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170832, 24.292927, 26.535191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451769, 24.291740, 26.819923>,  <31.620331, 24.291029, 26.990763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451769, 24.291740, 26.819923>,  <31.170832, 24.292927, 26.535191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451769, 24.291740, 26.819923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100448, 0.990398, -0.094982,
		-0.704717, 0.138212, 0.695897,
		0.702342, -0.002966, 0.711833,
		31.662472, 24.290850, 27.033474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027687, 24.789576, 27.133923>,  <31.170832, 24.292927, 26.535191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027687, 24.789576, 27.133923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422398, 24.726673, 27.118221>,  <31.659224, 24.688931, 27.108801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422398, 24.726673, 27.118221>,  <31.027687, 24.789576, 27.133923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422398, 24.726673, 27.118221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161062, 0.978515, 0.128713,
		0.018168, -0.133333, 0.990905,
		0.986777, -0.157258, -0.039252,
		31.718431, 24.679495, 27.106445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164766, 25.123707, 27.711090>,  <31.027687, 24.789576, 27.133923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164766, 25.123707, 27.711090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511295, 25.093334, 27.513618>,  <31.719213, 25.075111, 27.395136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511295, 25.093334, 27.513618>,  <31.164766, 25.123707, 27.711090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511295, 25.093334, 27.513618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009597, 0.990725, -0.135541,
		0.499394, 0.112684, 0.859016,
		0.866322, -0.075932, -0.493680,
		31.771193, 25.070555, 27.365515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562187, 25.581549, 27.998287>,  <31.164766, 25.123707, 27.711090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562187, 25.581549, 27.998287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715424, 25.499691, 27.637985>,  <31.807365, 25.450577, 27.421804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715424, 25.499691, 27.637985>,  <31.562187, 25.581549, 27.998287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715424, 25.499691, 27.637985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119516, 0.977934, -0.171350,
		0.915947, -0.042012, 0.399095,
		0.383089, -0.204646, -0.900757,
		31.830351, 25.438297, 27.367758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019783, 25.979900, 28.011564>,  <31.562187, 25.581549, 27.998287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019783, 25.979900, 28.011564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986280, 25.902702, 27.620518>,  <31.966181, 25.856384, 27.385889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986280, 25.902702, 27.620518>,  <32.019783, 25.979900, 28.011564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986280, 25.902702, 27.620518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163242, 0.965155, -0.204520,
		0.983025, -0.176718, -0.049330,
		-0.083753, -0.192996, -0.977618,
		31.961155, 25.844803, 27.327232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440479, 26.494356, 27.648935>,  <32.019783, 25.979900, 28.011564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440479, 26.494356, 27.648935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212513, 26.369362, 27.344948>,  <32.075733, 26.294365, 27.162556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212513, 26.369362, 27.344948>,  <32.440479, 26.494356, 27.648935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212513, 26.369362, 27.344948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067317, 0.939515, -0.335827,
		0.818942, -0.140233, -0.556479,
		-0.569914, -0.312483, -0.759969,
		32.041538, 26.275618, 27.116957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657982, 26.833897, 27.004559>,  <32.440479, 26.494356, 27.648935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657982, 26.833897, 27.004559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278881, 26.732319, 26.927322>,  <32.051422, 26.671371, 26.880980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278881, 26.732319, 26.927322>,  <32.657982, 26.833897, 27.004559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278881, 26.732319, 26.927322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170973, 0.915329, -0.364611,
		0.269333, -0.312546, -0.910920,
		-0.947749, -0.253944, -0.193091,
		31.994556, 26.656136, 26.869394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555111, 27.157963, 26.369652>,  <32.657982, 26.833897, 27.004559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555111, 27.157963, 26.369652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179638, 27.068214, 26.474373>,  <31.954355, 27.014364, 26.537205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179638, 27.068214, 26.474373>,  <32.555111, 27.157963, 26.369652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179638, 27.068214, 26.474373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328376, 0.813266, -0.480383,
		-0.105129, -0.536894, -0.837074,
		-0.938678, -0.224373, 0.261801,
		31.898035, 27.000902, 26.552914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105709, 27.056013, 25.774012>,  <32.555111, 27.157963, 26.369652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105709, 27.056013, 25.774012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866575, 27.156036, 26.078659>,  <31.723095, 27.216051, 26.261448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866575, 27.156036, 26.078659>,  <32.105709, 27.056013, 25.774012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866575, 27.156036, 26.078659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339107, 0.782010, -0.522940,
		-0.726359, -0.570903, -0.382718,
		-0.597837, 0.250060, 0.761618,
		31.687223, 27.231054, 26.307144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468987, 27.270693, 25.411339>,  <32.105709, 27.056013, 25.774012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468987, 27.270693, 25.411339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453697, 27.424030, 25.780464>,  <31.444523, 27.516033, 26.001940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453697, 27.424030, 25.780464>,  <31.468987, 27.270693, 25.411339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453697, 27.424030, 25.780464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379662, 0.848667, -0.368269,
		-0.924335, -0.364435, 0.113101,
		-0.038225, 0.383344, 0.922814,
		31.442230, 27.539034, 26.057308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755583, 27.637354, 25.479345>,  <31.468987, 27.270693, 25.411339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755583, 27.637354, 25.479345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015995, 27.799854, 25.735821>,  <31.172243, 27.897354, 25.889706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015995, 27.799854, 25.735821>,  <30.755583, 27.637354, 25.479345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015995, 27.799854, 25.735821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192927, 0.905542, -0.377854,
		-0.734125, 0.122292, 0.667911,
		0.651030, 0.406250, 0.641187,
		31.211304, 27.921730, 25.928177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448948, 28.266258, 25.725550>,  <30.755583, 27.637354, 25.479345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448948, 28.266258, 25.725550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831038, 28.329826, 25.825382>,  <31.060291, 28.367968, 25.885283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831038, 28.329826, 25.825382>,  <30.448948, 28.266258, 25.725550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831038, 28.329826, 25.825382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128990, 0.982806, -0.132114,
		-0.266286, 0.094005, 0.959299,
		0.955224, 0.158920, 0.249582,
		31.117605, 28.377502, 25.900257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360693, 28.862534, 26.023586>,  <30.448948, 28.266258, 25.725550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360693, 28.862534, 26.023586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754602, 28.841511, 25.957302>,  <30.990948, 28.828897, 25.917532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754602, 28.841511, 25.957302>,  <30.360693, 28.862534, 26.023586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754602, 28.841511, 25.957302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028194, 0.988869, -0.146091,
		0.171546, 0.139195, 0.975293,
		0.984773, -0.052559, -0.165712,
		31.050034, 28.825743, 25.907589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743519, 29.369450, 26.512211>,  <30.360693, 28.862534, 26.023586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743519, 29.369450, 26.512211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970562, 29.284374, 26.194069>,  <31.106787, 29.233330, 26.003183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970562, 29.284374, 26.194069>,  <30.743519, 29.369450, 26.512211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970562, 29.284374, 26.194069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105947, 0.976893, -0.185624,
		0.816455, 0.021097, 0.577025,
		0.567607, -0.212688, -0.795353,
		31.140844, 29.220568, 25.955463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249590, 29.884779, 26.523579>,  <30.743519, 29.369450, 26.512211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249590, 29.884779, 26.523579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257540, 29.737385, 26.151810>,  <31.262310, 29.648949, 25.928749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257540, 29.737385, 26.151810>,  <31.249590, 29.884779, 26.523579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257540, 29.737385, 26.151810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245809, 0.902872, -0.352702,
		0.969114, -0.221451, 0.108520,
		0.019873, -0.368484, -0.929422,
		31.263502, 29.626839, 25.872984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819616, 30.186890, 26.196617>,  <31.249590, 29.884779, 26.523579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819616, 30.186890, 26.196617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575064, 30.087082, 25.896229>,  <31.428333, 30.027197, 25.715996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575064, 30.087082, 25.896229>,  <31.819616, 30.186890, 26.196617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575064, 30.087082, 25.896229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149212, 0.895615, -0.419058,
		0.777143, -0.368257, -0.510329,
		-0.611379, -0.249521, -0.750969,
		31.391649, 30.012226, 25.670938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097927, 30.495615, 25.679277>,  <31.819616, 30.186890, 26.196617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097927, 30.495615, 25.679277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733292, 30.422646, 25.531914>,  <31.514511, 30.378864, 25.443495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733292, 30.422646, 25.531914>,  <32.097927, 30.495615, 25.679277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733292, 30.422646, 25.531914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061224, 0.825914, -0.560461,
		0.406518, -0.533466, -0.741726,
		-0.911589, -0.182426, -0.368410,
		31.459814, 30.367918, 25.421391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155018, 30.630651, 25.012375>,  <32.097927, 30.495615, 25.679277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155018, 30.630651, 25.012375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759512, 30.617935, 25.070801>,  <31.522209, 30.610306, 25.105856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759512, 30.617935, 25.070801>,  <32.155018, 30.630651, 25.012375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759512, 30.617935, 25.070801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111878, 0.805411, -0.582061,
		-0.099137, -0.591863, -0.799919,
		-0.988764, -0.031789, 0.146063,
		31.462883, 30.608398, 25.114620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783752, 30.645306, 24.365807>,  <32.155018, 30.630651, 25.012375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783752, 30.645306, 24.365807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533302, 30.785950, 24.644184>,  <31.383032, 30.870337, 24.811211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533302, 30.785950, 24.644184>,  <31.783752, 30.645306, 24.365807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533302, 30.785950, 24.644184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155057, 0.818579, -0.553070,
		-0.764148, -0.454203, -0.458015,
		-0.626127, 0.351609, 0.695942,
		31.345465, 30.891432, 24.852966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286335, 30.954769, 24.018190>,  <31.783752, 30.645306, 24.365807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286335, 30.954769, 24.018190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230015, 31.118507, 24.378769>,  <31.196222, 31.216751, 24.595116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230015, 31.118507, 24.378769>,  <31.286335, 30.954769, 24.018190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230015, 31.118507, 24.378769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302749, 0.849101, -0.432864,
		-0.942612, -0.333860, 0.004375,
		-0.140801, 0.409348, 0.901448,
		31.187775, 31.241312, 24.649204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720613, 31.252251, 23.908066>,  <31.286335, 30.954769, 24.018190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720613, 31.252251, 23.908066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841248, 31.469162, 24.221748>,  <30.913628, 31.599310, 24.409958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841248, 31.469162, 24.221748>,  <30.720613, 31.252251, 23.908066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841248, 31.469162, 24.221748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436650, 0.809733, -0.392007,
		-0.847575, -0.224199, 0.480990,
		0.301586, 0.542279, 0.784206,
		30.931723, 31.631845, 24.457010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129681, 31.672005, 24.000460>,  <30.720613, 31.252251, 23.908066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129681, 31.672005, 24.000460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444588, 31.848080, 24.173176>,  <30.633532, 31.953724, 24.276806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444588, 31.848080, 24.173176>,  <30.129681, 31.672005, 24.000460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444588, 31.848080, 24.173176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338594, 0.893857, -0.293894,
		-0.515329, 0.085171, 0.852749,
		0.787267, 0.440188, 0.431793,
		30.680767, 31.980137, 24.302713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857477, 32.251514, 24.332777>,  <30.129681, 31.672005, 24.000460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857477, 32.251514, 24.332777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243191, 32.354382, 24.307423>,  <30.474619, 32.416103, 24.292210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243191, 32.354382, 24.307423>,  <29.857477, 32.251514, 24.332777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243191, 32.354382, 24.307423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264111, 0.951667, -0.156766,
		0.020008, 0.167908, 0.985600,
		0.964285, 0.257171, -0.063387,
		30.532476, 32.431534, 24.288406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181065, 32.598763, 24.322098>,  <29.857477, 32.251514, 24.332777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181065, 32.598763, 24.322098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798615, 32.512520, 24.242764>,  <28.569143, 32.460773, 24.195164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798615, 32.512520, 24.242764>,  <29.181065, 32.598763, 24.322098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798615, 32.512520, 24.242764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056530, -0.528502, 0.847048,
		-0.287449, 0.821097, 0.493126,
		-0.956126, -0.215606, -0.198334,
		28.511776, 32.447838, 24.183264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921446, 32.695629, 24.963333>,  <29.181065, 32.598763, 24.322098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921446, 32.695629, 24.963333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661167, 32.472515, 24.757236>,  <28.504999, 32.338646, 24.633579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661167, 32.472515, 24.757236>,  <28.921446, 32.695629, 24.963333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661167, 32.472515, 24.757236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119684, -0.594720, 0.794974,
		-0.749846, 0.578953, 0.320225,
		-0.650697, -0.557782, -0.515240,
		28.465958, 32.305180, 24.602665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324749, 32.562428, 25.388689>,  <28.921446, 32.695629, 24.963333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324749, 32.562428, 25.388689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331224, 32.270321, 25.115501>,  <28.335110, 32.095058, 24.951590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331224, 32.270321, 25.115501>,  <28.324749, 32.562428, 25.388689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331224, 32.270321, 25.115501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126015, -0.679102, 0.723146,
		-0.991896, 0.074358, -0.103018,
		0.016188, -0.730268, -0.682969,
		28.336081, 32.051239, 24.910610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923603, 32.079071, 25.667200>,  <28.324749, 32.562428, 25.388689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923603, 32.079071, 25.667200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090107, 31.837990, 25.394882>,  <28.190010, 31.693342, 25.231491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090107, 31.837990, 25.394882>,  <27.923603, 32.079071, 25.667200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090107, 31.837990, 25.394882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052012, -0.763302, 0.643944,
		-0.907757, -0.232638, -0.349080,
		0.416259, -0.602701, -0.680793,
		28.214985, 31.657179, 25.190643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684458, 31.432449, 25.828068>,  <27.923603, 32.079071, 25.667200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684458, 31.432449, 25.828068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981951, 31.316940, 25.586914>,  <28.160446, 31.247635, 25.442221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981951, 31.316940, 25.586914>,  <27.684458, 31.432449, 25.828068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981951, 31.316940, 25.586914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039549, -0.919308, 0.391546,
		-0.667305, -0.267362, -0.695141,
		0.743733, -0.288773, -0.602885,
		28.205070, 31.230309, 25.406048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489254, 30.813873, 25.576757>,  <27.684458, 31.432449, 25.828068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489254, 30.813873, 25.576757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885942, 30.817055, 25.525486>,  <28.123955, 30.818964, 25.494722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885942, 30.817055, 25.525486>,  <27.489254, 30.813873, 25.576757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885942, 30.817055, 25.525486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073272, -0.854736, 0.513866,
		-0.105472, -0.519003, -0.848240,
		0.991719, 0.007954, -0.128179,
		28.183458, 30.819441, 25.487032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685772, 30.211731, 25.292795>,  <27.489254, 30.813873, 25.576757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685772, 30.211731, 25.292795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001474, 30.352993, 25.493736>,  <28.190895, 30.437750, 25.614302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001474, 30.352993, 25.493736>,  <27.685772, 30.211731, 25.292795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001474, 30.352993, 25.493736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199655, -0.921209, 0.333933,
		0.580703, -0.163261, -0.797578,
		0.789254, 0.353157, 0.502353,
		28.238251, 30.458941, 25.644442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243780, 29.764849, 25.068268>,  <27.685772, 30.211731, 25.292795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243780, 29.764849, 25.068268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338085, 29.933834, 25.418339>,  <28.394669, 30.035225, 25.628382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338085, 29.933834, 25.418339>,  <28.243780, 29.764849, 25.068268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338085, 29.933834, 25.418339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198074, -0.902551, 0.382319,
		0.951411, 0.083213, -0.296467,
		0.235763, 0.422465, 0.875180,
		28.408813, 30.060574, 25.680893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754417, 29.366037, 25.219557>,  <28.243780, 29.764849, 25.068268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754417, 29.366037, 25.219557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627546, 29.545109, 25.553978>,  <28.551424, 29.652552, 25.754631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627546, 29.545109, 25.553978>,  <28.754417, 29.366037, 25.219557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627546, 29.545109, 25.553978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017310, -0.878692, 0.477075,
		0.948208, 0.165790, 0.270953,
		-0.317179, 0.447676, 0.836052,
		28.532393, 29.679411, 25.804794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101362, 29.068958, 25.742270>,  <28.754417, 29.366037, 25.219557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101362, 29.068958, 25.742270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798756, 29.233418, 25.945698>,  <28.617191, 29.332092, 26.067755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798756, 29.233418, 25.945698>,  <29.101362, 29.068958, 25.742270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798756, 29.233418, 25.945698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053912, -0.814220, 0.578047,
		0.651751, 0.409883, 0.638136,
		-0.756515, 0.411146, 0.508571,
		28.571802, 29.356762, 26.098269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293177, 28.982561, 26.393419>,  <29.101362, 29.068958, 25.742270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293177, 28.982561, 26.393419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896772, 29.030956, 26.416264>,  <28.658930, 29.059994, 26.429970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896772, 29.030956, 26.416264>,  <29.293177, 28.982561, 26.393419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896772, 29.030956, 26.416264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073473, -0.848885, 0.523446,
		0.111811, 0.514544, 0.850143,
		-0.991009, 0.120990, 0.057110,
		28.599470, 29.067253, 26.433397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126211, 28.894476, 27.045979>,  <29.293177, 28.982561, 26.393419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126211, 28.894476, 27.045979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796219, 28.816757, 26.833694>,  <28.598223, 28.770126, 26.706324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796219, 28.816757, 26.833694>,  <29.126211, 28.894476, 27.045979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796219, 28.816757, 26.833694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140457, -0.839097, 0.525535,
		-0.547429, 0.508098, 0.664949,
		-0.824981, -0.194297, -0.530713,
		28.548725, 28.758469, 26.674480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684919, 28.718868, 27.563038>,  <29.126211, 28.894476, 27.045979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684919, 28.718868, 27.563038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515627, 28.578003, 27.229126>,  <28.414051, 28.493484, 27.028780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515627, 28.578003, 27.229126>,  <28.684919, 28.718868, 27.563038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515627, 28.578003, 27.229126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242963, -0.843506, 0.479027,
		-0.872837, 0.405560, 0.271436,
		-0.423232, -0.352164, -0.834779,
		28.388657, 28.472353, 26.978693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209934, 28.290514, 27.824785>,  <28.684919, 28.718868, 27.563038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209934, 28.290514, 27.824785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238005, 28.190346, 27.438549>,  <28.254847, 28.130245, 27.206808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238005, 28.190346, 27.438549>,  <28.209934, 28.290514, 27.824785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238005, 28.190346, 27.438549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289253, -0.931498, 0.220555,
		-0.954677, 0.263823, -0.137804,
		0.070176, -0.250419, -0.965591,
		28.259058, 28.115221, 27.148872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603994, 27.832685, 27.782440>,  <28.209934, 28.290514, 27.824785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603994, 27.832685, 27.782440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893463, 27.777420, 27.511971>,  <28.067144, 27.744261, 27.349689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893463, 27.777420, 27.511971>,  <27.603994, 27.832685, 27.782440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893463, 27.777420, 27.511971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013922, -0.982479, 0.185851,
		-0.690003, -0.125082, -0.712917,
		0.723673, -0.138163, -0.676172,
		28.110565, 27.735971, 27.309118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410242, 27.248695, 27.371561>,  <27.603994, 27.832685, 27.782440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410242, 27.248695, 27.371561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802303, 27.261993, 27.293385>,  <28.037540, 27.269972, 27.246479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802303, 27.261993, 27.293385>,  <27.410242, 27.248695, 27.371561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802303, 27.261993, 27.293385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034740, -0.999387, 0.004236,
		-0.195183, -0.010941, -0.980706,
		0.980151, 0.033243, -0.195443,
		28.096348, 27.271967, 27.234751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492996, 26.657907, 26.990288>,  <27.410242, 27.248695, 27.371561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492996, 26.657907, 26.990288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860294, 26.749912, 27.119236>,  <28.080673, 26.805115, 27.196604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860294, 26.749912, 27.119236>,  <27.492996, 26.657907, 26.990288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860294, 26.749912, 27.119236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264785, -0.961915, -0.067885,
		0.294477, 0.147693, -0.944177,
		0.918244, 0.230013, 0.322369,
		28.135767, 26.818916, 27.215946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935678, 26.308569, 26.465504>,  <27.492996, 26.657907, 26.990288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935678, 26.308569, 26.465504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117424, 26.361408, 26.817890>,  <28.226471, 26.393112, 27.029322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117424, 26.361408, 26.817890>,  <27.935678, 26.308569, 26.465504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117424, 26.361408, 26.817890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338169, -0.940493, -0.033390,
		0.824132, 0.313087, -0.471999,
		0.454366, 0.132098, 0.880966,
		28.253735, 26.401037, 27.082180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559061, 25.986044, 26.300674>,  <27.935678, 26.308569, 26.465504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559061, 25.986044, 26.300674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517868, 26.002106, 26.698223>,  <28.493153, 26.011742, 26.936752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517868, 26.002106, 26.698223>,  <28.559061, 25.986044, 26.300674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517868, 26.002106, 26.698223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494989, -0.864611, 0.086221,
		0.862774, 0.500835, 0.069167,
		-0.102985, 0.040152, 0.993872,
		28.486973, 26.014151, 26.996386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268028, 26.015373, 26.651186>,  <28.559061, 25.986044, 26.300674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268028, 26.015373, 26.651186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002859, 25.860840, 26.907711>,  <28.843758, 25.768120, 27.061626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002859, 25.860840, 26.907711>,  <29.268028, 26.015373, 26.651186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002859, 25.860840, 26.907711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591717, -0.795158, 0.132645,
		0.458702, 0.467410, 0.755725,
		-0.662920, -0.386331, 0.641315,
		28.803984, 25.744940, 27.100105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619629, 25.772697, 27.371952>,  <29.268028, 26.015373, 26.651186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619629, 25.772697, 27.371952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260679, 25.596375, 27.363884>,  <29.045309, 25.490582, 27.359043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260679, 25.596375, 27.363884>,  <29.619629, 25.772697, 27.371952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260679, 25.596375, 27.363884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424241, -0.874423, 0.235380,
		-0.121393, 0.202668, 0.971694,
		-0.897376, -0.440806, -0.020168,
		28.991467, 25.464132, 27.357834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588751, 25.292629, 27.921009>,  <29.619629, 25.772697, 27.371952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588751, 25.292629, 27.921009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272284, 25.168213, 27.710369>,  <29.082403, 25.093563, 27.583986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272284, 25.168213, 27.710369>,  <29.588751, 25.292629, 27.921009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272284, 25.168213, 27.710369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102017, -0.916073, 0.387818,
		-0.603030, 0.253107, 0.756500,
		-0.791169, -0.311042, -0.526598,
		29.034933, 25.074900, 27.552389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372892, 24.744526, 28.305655>,  <29.588751, 25.292629, 27.921009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372892, 24.744526, 28.305655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176638, 24.702930, 27.959599>,  <29.058886, 24.677973, 27.751965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176638, 24.702930, 27.959599>,  <29.372892, 24.744526, 28.305655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176638, 24.702930, 27.959599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063431, -0.985957, 0.154483,
		-0.869053, 0.130671, 0.477149,
		-0.490635, -0.103988, -0.865138,
		29.029448, 24.671734, 27.700058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807770, 24.278242, 28.470692>,  <29.372892, 24.744526, 28.305655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807770, 24.278242, 28.470692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877943, 24.244820, 28.078316>,  <28.920048, 24.224766, 27.842890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877943, 24.244820, 28.078316>,  <28.807770, 24.278242, 28.470692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877943, 24.244820, 28.078316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047613, -0.995946, 0.076319,
		-0.983339, 0.033317, -0.178703,
		0.175436, -0.083556, -0.980939,
		28.930574, 24.219753, 27.784035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271641, 23.783171, 28.175777>,  <28.807770, 24.278242, 28.470692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271641, 23.783171, 28.175777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575272, 23.790390, 27.915478>,  <28.757450, 23.794722, 27.759298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575272, 23.790390, 27.915478>,  <28.271641, 23.783171, 28.175777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575272, 23.790390, 27.915478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106310, -0.989634, 0.096559,
		-0.642261, -0.142477, -0.753128,
		0.759078, 0.018049, -0.650750,
		28.802996, 23.795805, 27.720253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976908, 23.336559, 27.737711>,  <28.271641, 23.783171, 28.175777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976908, 23.336559, 27.737711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373734, 23.334747, 27.687454>,  <28.611830, 23.333660, 27.657301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373734, 23.334747, 27.687454>,  <27.976908, 23.336559, 27.737711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373734, 23.334747, 27.687454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015440, -0.996174, -0.086014,
		-0.124771, 0.087272, -0.988340,
		0.992065, -0.004528, -0.125641,
		28.671352, 23.333389, 27.649761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090984, 22.883966, 27.133951>,  <27.976908, 23.336559, 27.737711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090984, 22.883966, 27.133951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445559, 22.897938, 27.318565>,  <28.658302, 22.906321, 27.429335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445559, 22.897938, 27.318565>,  <28.090984, 22.883966, 27.133951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445559, 22.897938, 27.318565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112455, -0.983523, -0.141553,
		0.448986, 0.177380, -0.875756,
		0.886434, 0.034928, 0.461535,
		28.711489, 22.908417, 27.457026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461687, 22.518894, 26.650578>,  <28.090984, 22.883966, 27.133951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461687, 22.518894, 26.650578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660624, 22.530823, 26.997395>,  <28.779985, 22.537979, 27.205484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660624, 22.530823, 26.997395>,  <28.461687, 22.518894, 26.650578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660624, 22.530823, 26.997395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203235, -0.975604, -0.083021,
		0.843413, 0.217503, -0.491271,
		0.497343, 0.029822, 0.867041,
		28.809826, 22.539770, 27.257507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077101, 22.219217, 26.539768>,  <28.461687, 22.518894, 26.650578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077101, 22.219217, 26.539768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999496, 22.184334, 26.930614>,  <28.952934, 22.163404, 27.165123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999496, 22.184334, 26.930614>,  <29.077101, 22.219217, 26.539768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999496, 22.184334, 26.930614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094524, -0.993068, -0.069865,
		0.976435, 0.078807, 0.200908,
		-0.194009, -0.087209, 0.977115,
		28.941294, 22.158171, 27.223749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563276, 21.681435, 26.787992>,  <29.077101, 22.219217, 26.539768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563276, 21.681435, 26.787992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290010, 21.697800, 27.079639>,  <29.126051, 21.707619, 27.254627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290010, 21.697800, 27.079639>,  <29.563276, 21.681435, 26.787992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290010, 21.697800, 27.079639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077681, -0.988693, 0.128265,
		0.726120, 0.144265, 0.672263,
		-0.683166, 0.040913, 0.729116,
		29.085060, 21.710073, 27.298374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752304, 21.160093, 27.189503>,  <29.563276, 21.681435, 26.787992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752304, 21.160093, 27.189503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383133, 21.235641, 27.323689>,  <29.161631, 21.280970, 27.404200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383133, 21.235641, 27.323689>,  <29.752304, 21.160093, 27.189503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383133, 21.235641, 27.323689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131908, -0.973780, 0.185347,
		0.361673, 0.126812, 0.923641,
		-0.922927, 0.188870, 0.335462,
		29.106255, 21.292303, 27.424328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667753, 20.794909, 27.820972>,  <29.752304, 21.160093, 27.189503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667753, 20.794909, 27.820972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292919, 20.870064, 27.703281>,  <29.068018, 20.915157, 27.632668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292919, 20.870064, 27.703281>,  <29.667753, 20.794909, 27.820972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292919, 20.870064, 27.703281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259236, -0.938997, 0.226011,
		-0.233814, 0.288066, 0.928627,
		-0.937085, 0.187889, -0.294228,
		29.011793, 20.926430, 27.615013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197783, 20.536226, 28.338642>,  <29.667753, 20.794909, 27.820972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197783, 20.536226, 28.338642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029844, 20.563763, 27.976650>,  <28.929081, 20.580284, 27.759455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029844, 20.563763, 27.976650>,  <29.197783, 20.536226, 28.338642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029844, 20.563763, 27.976650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106037, -0.994011, -0.026418,
		-0.901379, 0.084870, 0.424633,
		-0.419848, 0.068840, -0.904980,
		28.903891, 20.584415, 27.705156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566813, 20.118168, 28.423933>,  <29.197783, 20.536226, 28.338642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566813, 20.118168, 28.423933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600710, 20.153870, 28.026974>,  <28.621048, 20.175291, 27.788799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600710, 20.153870, 28.026974>,  <28.566813, 20.118168, 28.423933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600710, 20.153870, 28.026974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257008, -0.964236, -0.064774,
		-0.962686, -0.249565, -0.104653,
		0.084745, 0.089253, -0.992397,
		28.626133, 20.180645, 27.729254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333771, 19.492760, 28.160137>,  <28.566813, 20.118168, 28.423933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333771, 19.492760, 28.160137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551172, 19.651016, 27.864010>,  <28.681612, 19.745970, 27.686333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551172, 19.651016, 27.864010>,  <28.333771, 19.492760, 28.160137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551172, 19.651016, 27.864010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216576, -0.918188, -0.331702,
		-0.810987, 0.019946, -0.584724,
		0.543502, 0.395643, -0.740319,
		28.714224, 19.769709, 27.641914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253588, 19.065153, 27.704950>,  <28.333771, 19.492760, 28.160137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253588, 19.065153, 27.704950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570841, 19.249947, 27.546200>,  <28.761192, 19.360823, 27.450951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570841, 19.249947, 27.546200>,  <28.253588, 19.065153, 27.704950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570841, 19.249947, 27.546200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239162, -0.835533, -0.494657,
		-0.560127, 0.297411, -0.773178,
		0.793133, 0.461986, -0.396875,
		28.808781, 19.388542, 27.427137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184238, 18.948666, 27.105785>,  <28.253588, 19.065153, 27.704950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184238, 18.948666, 27.105785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570969, 19.048859, 27.125797>,  <28.803007, 19.108974, 27.137804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570969, 19.048859, 27.125797>,  <28.184238, 18.948666, 27.105785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570969, 19.048859, 27.125797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241651, -0.833495, -0.496881,
		-0.082763, 0.492487, -0.866376,
		0.966827, 0.250484, 0.050028,
		28.861017, 19.124004, 27.140806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514633, 18.910501, 26.453461>,  <28.184238, 18.948666, 27.105785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514633, 18.910501, 26.453461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800724, 18.858032, 26.728050>,  <28.972378, 18.826551, 26.892803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800724, 18.858032, 26.728050>,  <28.514633, 18.910501, 26.453461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800724, 18.858032, 26.728050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260747, -0.861227, -0.436233,
		0.648430, 0.491001, -0.581770,
		0.715227, -0.131172, 0.686472,
		29.015293, 18.818680, 26.933992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584824, 18.358917, 25.801580>,  <28.514633, 18.910501, 26.453461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584824, 18.358917, 25.801580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482668, 18.253056, 25.429615>,  <28.421375, 18.189539, 25.206436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482668, 18.253056, 25.429615>,  <28.584824, 18.358917, 25.801580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482668, 18.253056, 25.429615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177311, 0.932674, -0.314135,
		0.950441, -0.245110, -0.191268,
		-0.255388, -0.264653, -0.929912,
		28.406052, 18.173660, 25.150642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144533, 18.574484, 25.358236>,  <28.584824, 18.358917, 25.801580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144533, 18.574484, 25.358236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836119, 18.539227, 25.105972>,  <28.651070, 18.518072, 24.954613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836119, 18.539227, 25.105972>,  <29.144533, 18.574484, 25.358236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836119, 18.539227, 25.105972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191830, 0.912217, -0.362024,
		0.607210, -0.400114, -0.686444,
		-0.771036, -0.088144, -0.630661,
		28.604809, 18.512783, 24.916775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411791, 18.874508, 24.791220>,  <29.144533, 18.574484, 25.358236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411791, 18.874508, 24.791220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012371, 18.884136, 24.771969>,  <28.772718, 18.889914, 24.760418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012371, 18.884136, 24.771969>,  <29.411791, 18.874508, 24.791220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012371, 18.884136, 24.771969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039508, 0.935144, -0.352057,
		0.036530, -0.353448, -0.934740,
		-0.998551, 0.024069, -0.048125,
		28.712805, 18.891357, 24.757532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203926, 19.178619, 24.104254>,  <29.411791, 18.874508, 24.791220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203926, 19.178619, 24.104254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875879, 19.233116, 24.326550>,  <28.679050, 19.265814, 24.459927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875879, 19.233116, 24.326550>,  <29.203926, 19.178619, 24.104254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875879, 19.233116, 24.326550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008938, 0.974172, -0.225629,
		-0.572125, -0.180075, -0.800153,
		-0.820117, 0.136240, 0.555739,
		28.629845, 19.273989, 24.493271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713005, 19.522091, 23.716297>,  <29.203926, 19.178619, 24.104254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713005, 19.522091, 23.716297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574553, 19.597992, 24.083817>,  <28.491480, 19.643532, 24.304327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574553, 19.597992, 24.083817>,  <28.713005, 19.522091, 23.716297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574553, 19.597992, 24.083817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178332, 0.948172, -0.262999,
		-0.921081, -0.254883, -0.294354,
		-0.346132, 0.189750, 0.918797,
		28.470713, 19.654917, 24.359455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147211, 20.035364, 23.574291>,  <28.713005, 19.522091, 23.716297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147211, 20.035364, 23.574291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259291, 20.076321, 23.956078>,  <28.326538, 20.100895, 24.185150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259291, 20.076321, 23.956078>,  <28.147211, 20.035364, 23.574291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259291, 20.076321, 23.956078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130044, 0.989178, -0.067937,
		-0.951092, -0.105086, 0.290484,
		0.280201, 0.102390, 0.954465,
		28.343351, 20.107038, 24.242416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574615, 20.297358, 23.954626>,  <28.147211, 20.035364, 23.574291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574615, 20.297358, 23.954626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894939, 20.372387, 24.182140>,  <28.087133, 20.417404, 24.318649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894939, 20.372387, 24.182140>,  <27.574615, 20.297358, 23.954626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894939, 20.372387, 24.182140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303100, 0.946023, 0.114763,
		-0.516559, -0.264303, 0.814439,
		0.800810, 0.187574, 0.568787,
		28.135183, 20.428659, 24.352776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299356, 20.615564, 24.515854>,  <27.574615, 20.297358, 23.954626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299356, 20.615564, 24.515854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686956, 20.714176, 24.522388>,  <27.919516, 20.773342, 24.526308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686956, 20.714176, 24.522388>,  <27.299356, 20.615564, 24.515854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686956, 20.714176, 24.522388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247041, 0.967752, 0.049263,
		-0.003663, -0.051771, 0.998652,
		0.968998, 0.246527, 0.016335,
		27.977655, 20.788134, 24.527288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452078, 21.174015, 25.023794>,  <27.299356, 20.615564, 24.515854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452078, 21.174015, 25.023794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794971, 21.206657, 24.820427>,  <28.000708, 21.226242, 24.698406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794971, 21.206657, 24.820427>,  <27.452078, 21.174015, 25.023794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794971, 21.206657, 24.820427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067149, 0.996647, 0.046752,
		0.510528, -0.005938, 0.859841,
		0.857235, 0.081605, -0.508417,
		28.052141, 21.231138, 24.667902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841963, 21.718678, 25.341801>,  <27.452078, 21.174015, 25.023794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841963, 21.718678, 25.341801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005398, 21.689468, 24.977882>,  <28.103458, 21.671944, 24.759531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005398, 21.689468, 24.977882>,  <27.841963, 21.718678, 25.341801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005398, 21.689468, 24.977882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007265, 0.996503, -0.083243,
		0.912690, 0.040622, 0.406628,
		0.408588, -0.073021, -0.909793,
		28.127974, 21.667562, 24.704945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403484, 22.129229, 25.430965>,  <27.841963, 21.718678, 25.341801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403484, 22.129229, 25.430965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331461, 22.111580, 25.037899>,  <28.288246, 22.100990, 24.802059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331461, 22.111580, 25.037899>,  <28.403484, 22.129229, 25.430965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331461, 22.111580, 25.037899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081125, 0.994924, -0.059539,
		0.980305, -0.090439, -0.175565,
		-0.180059, -0.044124, -0.982666,
		28.277443, 22.098343, 24.743099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766325, 22.666412, 25.201260>,  <28.403484, 22.129229, 25.430965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766325, 22.666412, 25.201260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501343, 22.583977, 24.913181>,  <28.342354, 22.534515, 24.740335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501343, 22.583977, 24.913181>,  <28.766325, 22.666412, 25.201260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501343, 22.583977, 24.913181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121497, 0.978242, -0.168172,
		0.739182, -0.023906, -0.673082,
		-0.662457, -0.206087, -0.720194,
		28.302607, 22.522150, 24.697123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902409, 23.014816, 24.517210>,  <28.766325, 22.666412, 25.201260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902409, 23.014816, 24.517210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512094, 22.928268, 24.530056>,  <28.277906, 22.876339, 24.537764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512094, 22.928268, 24.530056>,  <28.902409, 23.014816, 24.517210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512094, 22.928268, 24.530056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218602, 0.959384, -0.178314,
		0.007773, -0.181016, -0.983449,
		-0.975783, -0.216370, 0.032114,
		28.219360, 22.863358, 24.539690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579304, 23.458265, 24.004114>,  <28.902409, 23.014816, 24.517210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579304, 23.458265, 24.004114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270657, 23.323532, 24.219948>,  <28.085468, 23.242691, 24.349447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270657, 23.323532, 24.219948>,  <28.579304, 23.458265, 24.004114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270657, 23.323532, 24.219948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436345, 0.897521, -0.063707,
		-0.462830, -0.284602, -0.839518,
		-0.771616, -0.336834, 0.539585,
		28.039171, 23.222483, 24.381823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030048, 23.812208, 23.697117>,  <28.579304, 23.458265, 24.004114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030048, 23.812208, 23.697117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906473, 23.711605, 24.064007>,  <27.832329, 23.651243, 24.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906473, 23.711605, 24.064007>,  <28.030048, 23.812208, 23.697117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906473, 23.711605, 24.064007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372611, 0.919315, 0.126577,
		-0.875053, -0.302664, -0.377726,
		-0.308939, -0.251506, 0.917225,
		27.813791, 23.636152, 24.339174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231359, 23.975033, 23.729376>,  <28.030048, 23.812208, 23.697117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231359, 23.975033, 23.729376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385063, 23.958771, 24.098309>,  <27.477285, 23.949013, 24.319668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385063, 23.958771, 24.098309>,  <27.231359, 23.975033, 23.729376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385063, 23.958771, 24.098309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367661, 0.909655, 0.193270,
		-0.846859, -0.413370, 0.334595,
		0.384259, -0.040655, 0.922330,
		27.500341, 23.946575, 24.375008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661356, 24.303352, 24.152164>,  <27.231359, 23.975033, 23.729376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661356, 24.303352, 24.152164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985615, 24.325294, 24.385349>,  <27.180170, 24.338459, 24.525259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985615, 24.325294, 24.385349>,  <26.661356, 24.303352, 24.152164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985615, 24.325294, 24.385349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337971, 0.856846, 0.389346,
		-0.478149, -0.512646, 0.713139,
		0.810647, 0.054855, 0.582960,
		27.228809, 24.341751, 24.560238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445141, 24.555492, 24.869883>,  <26.661356, 24.303352, 24.152164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445141, 24.555492, 24.869883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836563, 24.611153, 24.809139>,  <27.071417, 24.644548, 24.772694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836563, 24.611153, 24.809139>,  <26.445141, 24.555492, 24.869883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836563, 24.611153, 24.809139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092379, 0.955472, 0.280248,
		0.184094, -0.260210, 0.947840,
		0.978558, 0.139152, -0.151859,
		27.130131, 24.652899, 24.763582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612957, 24.911232, 25.524452>,  <26.445141, 24.555492, 24.869883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612957, 24.911232, 25.524452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861637, 24.986439, 25.220310>,  <27.010845, 25.031563, 25.037825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861637, 24.986439, 25.220310>,  <26.612957, 24.911232, 25.524452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861637, 24.986439, 25.220310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011931, 0.968376, 0.249209,
		0.783164, -0.164005, 0.599796,
		0.621700, 0.188016, -0.760354,
		27.048147, 25.042843, 24.992205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110376, 25.280443, 25.830944>,  <26.612957, 24.911232, 25.524452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110376, 25.280443, 25.830944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139391, 25.347462, 25.437668>,  <27.156799, 25.387672, 25.201702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139391, 25.347462, 25.437668>,  <27.110376, 25.280443, 25.830944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139391, 25.347462, 25.437668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193846, 0.969359, 0.150887,
		0.978347, 0.179643, 0.102791,
		0.072535, 0.167545, -0.983192,
		27.161152, 25.397726, 25.142710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691572, 25.681692, 25.764896>,  <27.110376, 25.280443, 25.830944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691572, 25.681692, 25.764896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464149, 25.739792, 25.441010>,  <27.327696, 25.774652, 25.246677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464149, 25.739792, 25.441010>,  <27.691572, 25.681692, 25.764896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464149, 25.739792, 25.441010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019034, 0.986348, 0.163569,
		0.822423, 0.077586, -0.563561,
		-0.568559, 0.145249, -0.809718,
		27.293581, 25.783367, 25.198093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940895, 26.271288, 25.441578>,  <27.691572, 25.681692, 25.764896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940895, 26.271288, 25.441578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569527, 26.243610, 25.295567>,  <27.346706, 26.227005, 25.207960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569527, 26.243610, 25.295567>,  <27.940895, 26.271288, 25.441578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569527, 26.243610, 25.295567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011422, 0.976725, -0.214192,
		0.371355, -0.203030, -0.906022,
		-0.928421, -0.069193, -0.365030,
		27.291000, 26.222853, 25.186058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950283, 26.682127, 24.852261>,  <27.940895, 26.271288, 25.441578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950283, 26.682127, 24.852261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554535, 26.658428, 24.905380>,  <27.317085, 26.644209, 24.937252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554535, 26.658428, 24.905380>,  <27.950283, 26.682127, 24.852261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554535, 26.658428, 24.905380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101093, 0.936683, -0.335269,
		-0.104527, -0.345131, -0.932716,
		-0.989370, -0.059247, 0.132799,
		27.257723, 26.640654, 24.945219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535603, 27.039644, 24.277136>,  <27.950283, 26.682127, 24.852261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535603, 27.039644, 24.277136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262775, 27.041691, 24.569645>,  <27.099079, 27.042919, 24.745150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262775, 27.041691, 24.569645>,  <27.535603, 27.039644, 24.277136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262775, 27.041691, 24.569645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254119, 0.936001, -0.243568,
		-0.685717, -0.351960, -0.637116,
		-0.682067, 0.005115, 0.731272,
		27.058155, 27.043226, 24.789026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926264, 27.245766, 24.013847>,  <27.535603, 27.039644, 24.277136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926264, 27.245766, 24.013847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871056, 27.288570, 24.407700>,  <26.837931, 27.314253, 24.644011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871056, 27.288570, 24.407700>,  <26.926264, 27.245766, 24.013847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871056, 27.288570, 24.407700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526735, 0.833966, -0.164471,
		-0.838749, -0.541341, -0.058738,
		-0.138020, 0.107011, 0.984631,
		26.829649, 27.320673, 24.703089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254112, 27.315203, 24.214119>,  <26.926264, 27.245766, 24.013847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254112, 27.315203, 24.214119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436541, 27.493450, 24.522255>,  <26.545998, 27.600399, 24.707136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436541, 27.493450, 24.522255>,  <26.254112, 27.315203, 24.214119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436541, 27.493450, 24.522255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506442, 0.841734, -0.187084,
		-0.731789, -0.304808, 0.609572,
		0.456073, 0.445618, 0.770339,
		26.573362, 27.627136, 24.753357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688759, 27.699574, 24.528400>,  <26.254112, 27.315203, 24.214119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688759, 27.699574, 24.528400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026752, 27.845100, 24.685188>,  <26.229549, 27.932417, 24.779261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026752, 27.845100, 24.685188>,  <25.688759, 27.699574, 24.528400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026752, 27.845100, 24.685188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398541, 0.917117, 0.007903,
		-0.356607, -0.162894, 0.919944,
		0.844983, 0.363817, 0.391970,
		26.280247, 27.954245, 24.802780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482721, 28.075043, 25.074429>,  <25.688759, 27.699574, 24.528400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482721, 28.075043, 25.074429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840853, 28.209000, 24.956966>,  <26.055731, 28.289373, 24.886488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840853, 28.209000, 24.956966>,  <25.482721, 28.075043, 25.074429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840853, 28.209000, 24.956966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366811, 0.928383, -0.059627,
		0.252658, 0.161102, 0.954049,
		0.895329, 0.334891, -0.293657,
		26.109451, 28.309467, 24.868870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455935, 28.653753, 25.451227>,  <25.482721, 28.075043, 25.074429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455935, 28.653753, 25.451227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757238, 28.700634, 25.192348>,  <25.938021, 28.728762, 25.037022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757238, 28.700634, 25.192348>,  <25.455935, 28.653753, 25.451227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757238, 28.700634, 25.192348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352477, 0.902699, -0.246768,
		0.555303, 0.414003, 0.721277,
		0.753258, 0.117203, -0.647198,
		25.983215, 28.735794, 24.998188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623468, 29.318857, 25.606829>,  <25.455935, 28.653753, 25.451227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623468, 29.318857, 25.606829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763569, 29.235481, 25.241562>,  <25.847630, 29.185455, 25.022402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763569, 29.235481, 25.241562>,  <25.623468, 29.318857, 25.606829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763569, 29.235481, 25.241562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238309, 0.923011, -0.302093,
		0.905833, 0.323424, 0.273611,
		0.350250, -0.208442, -0.913168,
		25.868645, 29.172949, 24.967611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970518, 29.908237, 25.500351>,  <25.623468, 29.318857, 25.606829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970518, 29.908237, 25.500351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919764, 29.749359, 25.136784>,  <25.889311, 29.654032, 24.918642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919764, 29.749359, 25.136784>,  <25.970518, 29.908237, 25.500351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919764, 29.749359, 25.136784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042195, 0.913335, -0.405016,
		0.991019, -0.089742, -0.099129,
		-0.126885, -0.397196, -0.908920,
		25.881699, 29.630199, 24.864107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411400, 30.225567, 24.996395>,  <25.970518, 29.908237, 25.500351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411400, 30.225567, 24.996395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106861, 30.100842, 24.769020>,  <25.924137, 30.026007, 24.632595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106861, 30.100842, 24.769020>,  <26.411400, 30.225567, 24.996395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106861, 30.100842, 24.769020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028826, 0.859607, -0.510143,
		0.647703, -0.404782, -0.645471,
		-0.761348, -0.311815, -0.568438,
		25.878456, 30.007298, 24.598488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482847, 30.436975, 24.303741>,  <26.411400, 30.225567, 24.996395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482847, 30.436975, 24.303741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090467, 30.359921, 24.313751>,  <25.855040, 30.313688, 24.319757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090467, 30.359921, 24.313751>,  <26.482847, 30.436975, 24.303741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090467, 30.359921, 24.313751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176288, 0.828695, -0.531214,
		0.081593, -0.525506, -0.846868,
		-0.980951, -0.192636, 0.025024,
		25.796183, 30.302130, 24.321259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261999, 30.611296, 23.644464>,  <26.482847, 30.436975, 24.303741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261999, 30.611296, 23.644464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951712, 30.652283, 23.893547>,  <25.765539, 30.676876, 24.042997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951712, 30.652283, 23.893547>,  <26.261999, 30.611296, 23.644464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951712, 30.652283, 23.893547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368447, 0.727562, -0.578706,
		-0.512356, -0.678347, -0.526628,
		-0.775717, 0.102469, 0.622706,
		25.718996, 30.683023, 24.080359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825205, 30.751144, 23.128778>,  <26.261999, 30.611296, 23.644464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825205, 30.751144, 23.128778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621778, 30.844746, 23.460224>,  <25.499722, 30.900908, 23.659092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621778, 30.844746, 23.460224>,  <25.825205, 30.751144, 23.128778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621778, 30.844746, 23.460224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543858, 0.658777, -0.519838,
		-0.667516, -0.715021, -0.207767,
		-0.508567, 0.234004, 0.828614,
		25.469208, 30.914948, 23.708809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060001, 30.763582, 22.973400>,  <25.825205, 30.751144, 23.128778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060001, 30.763582, 22.973400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137878, 30.977840, 23.302078>,  <25.184605, 31.106396, 23.499285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137878, 30.977840, 23.302078>,  <25.060001, 30.763582, 22.973400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137878, 30.977840, 23.302078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606700, 0.724010, -0.328215,
		-0.770721, -0.434620, 0.465934,
		0.194692, 0.535644, 0.821693,
		25.196285, 31.138535, 23.548586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.428415, 30.904318, 23.209475>,  <25.060001, 30.763582, 22.973400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.428415, 30.904318, 23.209475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641188, 31.198341, 23.377636>,  <24.768852, 31.374756, 23.478533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641188, 31.198341, 23.377636>,  <24.428415, 30.904318, 23.209475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641188, 31.198341, 23.377636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479118, 0.670616, -0.566322,
		-0.698208, 0.099823, 0.708902,
		0.531932, 0.735058, 0.420402,
		24.800768, 31.418859, 23.503757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.018787, 31.446323, 23.206913>,  <24.428415, 30.904318, 23.209475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.018787, 31.446323, 23.206913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357008, 31.633343, 23.310020>,  <24.559940, 31.745554, 23.371885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357008, 31.633343, 23.310020>,  <24.018787, 31.446323, 23.206913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357008, 31.633343, 23.310020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201811, 0.726883, -0.656440,
		-0.494286, 0.503032, 0.708971,
		0.845549, 0.467547, 0.257770,
		24.610672, 31.773607, 23.387352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.826044, 32.110165, 23.387096>,  <24.018787, 31.446323, 23.206913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.826044, 32.110165, 23.387096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213352, 32.119190, 23.287540>,  <24.445736, 32.124607, 23.227808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213352, 32.119190, 23.287540>,  <23.826044, 32.110165, 23.387096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213352, 32.119190, 23.287540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191377, 0.707430, -0.680381,
		0.160717, 0.706423, 0.689302,
		0.968269, 0.022567, -0.248889,
		24.503834, 32.125961, 23.212873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.036768, 32.787468, 23.476526>,  <23.826044, 32.110165, 23.387096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.036768, 32.787468, 23.476526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295889, 32.637211, 23.211426>,  <24.451361, 32.547054, 23.052364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295889, 32.637211, 23.211426>,  <24.036768, 32.787468, 23.476526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295889, 32.637211, 23.211426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174371, 0.773763, -0.609003,
		0.741584, 0.510079, 0.435744,
		0.647803, -0.375646, -0.662753,
		24.490231, 32.524517, 23.012600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555374, 33.393127, 23.275625>,  <24.036768, 32.787468, 23.476526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555374, 33.393127, 23.275625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420000, 33.130329, 23.006161>,  <24.338776, 32.972649, 22.844482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420000, 33.130329, 23.006161>,  <24.555374, 33.393127, 23.275625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420000, 33.130329, 23.006161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420037, 0.746102, -0.516625,
		0.842039, 0.108117, -0.528470,
		-0.338436, -0.656995, -0.673660,
		24.318468, 32.933231, 22.804064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951132, 33.724323, 22.692066>,  <24.555374, 33.393127, 23.275625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951132, 33.724323, 22.692066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950663, 33.850830, 23.071533>,  <24.950380, 33.926735, 23.299213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950663, 33.850830, 23.071533>,  <24.951132, 33.724323, 22.692066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.950663, 33.850830, 23.071533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421677, 0.860360, -0.286304,
		-0.906745, 0.399696, -0.134373,
		-0.001174, 0.316267, 0.948669,
		24.950310, 33.945709, 23.356134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061041, 34.410480, 22.752653>,  <24.951132, 33.724323, 22.692066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061041, 34.410480, 22.752653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134396, 34.333340, 23.138229>,  <25.178408, 34.287056, 23.369576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134396, 34.333340, 23.138229>,  <25.061041, 34.410480, 22.752653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134396, 34.333340, 23.138229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537211, 0.840860, 0.066025,
		-0.823270, 0.505730, 0.257804,
		0.183386, -0.192851, 0.963939,
		25.189411, 34.275486, 23.427410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033663, 35.067474, 23.162098>,  <25.061041, 34.410480, 22.752653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033663, 35.067474, 23.162098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259645, 34.816837, 23.376839>,  <25.395235, 34.666454, 23.505682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259645, 34.816837, 23.376839>,  <25.033663, 35.067474, 23.162098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259645, 34.816837, 23.376839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609815, 0.755366, 0.239891,
		-0.555832, 0.191852, 0.808854,
		0.564957, -0.626590, 0.536850,
		25.429132, 34.628860, 23.537893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.805002, 35.539108, 23.632483>,  <25.033663, 35.067474, 23.162098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.805002, 35.539108, 23.632483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451004, 35.419956, 23.489346>,  <24.238605, 35.348465, 23.403463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451004, 35.419956, 23.489346>,  <24.805002, 35.539108, 23.632483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451004, 35.419956, 23.489346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381088, 0.021870, 0.924280,
		-0.267495, 0.954354, -0.132872,
		-0.884996, -0.297877, -0.357842,
		24.185505, 35.330593, 23.381992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220636, 36.048145, 23.935162>,  <24.805002, 35.539108, 23.632483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220636, 36.048145, 23.935162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.093815, 35.681896, 23.836273>,  <24.017721, 35.462147, 23.776941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.093815, 35.681896, 23.836273>,  <24.220636, 36.048145, 23.935162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.093815, 35.681896, 23.836273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478843, -0.070461, 0.875068,
		-0.818649, 0.395824, -0.416098,
		-0.317054, -0.915619, -0.247220,
		23.998699, 35.407211, 23.762108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.833599, 35.905865, 23.324484>,  <24.220636, 36.048145, 23.935162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.833599, 35.905865, 23.324484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213667, 36.008224, 23.253269>,  <24.441708, 36.069641, 23.210541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213667, 36.008224, 23.253269>,  <23.833599, 35.905865, 23.324484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213667, 36.008224, 23.253269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026587, 0.502510, 0.864162,
		0.310603, -0.825833, 0.470666,
		0.950168, 0.255898, -0.178038,
		24.498716, 36.084995, 23.199858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.009342, 36.434566, 22.881931>,  <23.833599, 35.905865, 23.324484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.009342, 36.434566, 22.881931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.672932, 36.596115, 23.025909>,  <23.471085, 36.693043, 23.112297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.672932, 36.596115, 23.025909>,  <24.009342, 36.434566, 22.881931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.672932, 36.596115, 23.025909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154595, 0.817019, -0.555499,
		-0.518432, -0.411545, -0.749573,
		-0.841028, 0.403869, 0.359946,
		23.420624, 36.717278, 23.133894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.557215, 36.642467, 22.249453>,  <24.009342, 36.434566, 22.881931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.557215, 36.642467, 22.249453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442453, 36.833748, 22.581478>,  <23.373596, 36.948517, 22.780693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442453, 36.833748, 22.581478>,  <23.557215, 36.642467, 22.249453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.442453, 36.833748, 22.581478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045596, 0.872327, -0.486793,
		-0.956873, -0.101816, -0.272080,
		-0.286906, 0.478205, 0.830063,
		23.356382, 36.977211, 22.830498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.175211, 37.196945, 21.983892>,  <23.557215, 36.642467, 22.249453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.175211, 37.196945, 21.983892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.296080, 37.296181, 22.352055>,  <23.368601, 37.355721, 22.572952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.296080, 37.296181, 22.352055>,  <23.175211, 37.196945, 21.983892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.296080, 37.296181, 22.352055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174966, 0.934703, -0.309382,
		-0.937059, 0.254526, 0.239033,
		0.302170, 0.248087, 0.920405,
		23.386730, 37.370605, 22.628176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.735865, 37.818241, 22.190897>,  <23.175211, 37.196945, 21.983892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.735865, 37.818241, 22.190897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.067522, 37.800579, 22.413811>,  <23.266518, 37.789982, 22.547560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.067522, 37.800579, 22.413811>,  <22.735865, 37.818241, 22.190897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.067522, 37.800579, 22.413811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241214, 0.927560, -0.285391,
		-0.504315, 0.371056, 0.779733,
		0.829145, -0.044155, 0.557286,
		23.316265, 37.787331, 22.580997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.773413, 38.508492, 22.453039>,  <22.735865, 37.818241, 22.190897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.773413, 38.508492, 22.453039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.131489, 38.352600, 22.539520>,  <23.346334, 38.259064, 22.591410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.131489, 38.352600, 22.539520>,  <22.773413, 38.508492, 22.453039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.131489, 38.352600, 22.539520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421005, 0.898641, -0.123289,
		-0.146240, 0.201390, 0.968533,
		0.895192, -0.389727, 0.216203,
		23.400047, 38.235683, 22.604382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.081999, 38.996937, 22.915525>,  <22.773413, 38.508492, 22.453039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.081999, 38.996937, 22.915525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.376173, 38.777008, 22.757118>,  <23.552677, 38.645050, 22.662075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.376173, 38.777008, 22.757118>,  <23.081999, 38.996937, 22.915525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.376173, 38.777008, 22.757118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474754, 0.835124, -0.277807,
		0.483467, 0.016299, 0.875211,
		0.735437, -0.549820, -0.396017,
		23.596804, 38.612061, 22.638313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.692699, 39.415722, 23.077040>,  <23.081999, 38.996937, 22.915525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.692699, 39.415722, 23.077040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.752508, 39.175766, 22.762646>,  <23.788393, 39.031792, 22.574009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.752508, 39.175766, 22.762646>,  <23.692699, 39.415722, 23.077040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.752508, 39.175766, 22.762646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502133, 0.730855, -0.462292,
		0.851766, -0.325546, 0.410504,
		0.149521, -0.599892, -0.785985,
		23.797365, 38.995800, 22.526850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418152, 39.419365, 22.990751>,  <23.692699, 39.415722, 23.077040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418152, 39.419365, 22.990751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283646, 39.285591, 22.638596>,  <24.202942, 39.205326, 22.427303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283646, 39.285591, 22.638596>,  <24.418152, 39.419365, 22.990751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.283646, 39.285591, 22.638596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594762, 0.649399, -0.473856,
		0.730195, -0.682962, -0.019463,
		-0.336265, -0.334431, -0.880387,
		24.182766, 39.185261, 22.374479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978983, 39.346642, 22.489662>,  <24.418152, 39.419365, 22.990751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978983, 39.346642, 22.489662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660069, 39.347118, 22.248222>,  <24.468719, 39.347404, 22.103359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660069, 39.347118, 22.248222>,  <24.978983, 39.346642, 22.489662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.660069, 39.347118, 22.248222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432854, 0.698079, -0.570371,
		0.420677, -0.716019, -0.557088,
		-0.797288, 0.001196, -0.603597,
		24.420881, 39.347477, 22.067142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250486, 39.309296, 21.818754>,  <24.978983, 39.346642, 22.489662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250486, 39.309296, 21.818754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872742, 39.419060, 21.746220>,  <24.646095, 39.484921, 21.702700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872742, 39.419060, 21.746220>,  <25.250486, 39.309296, 21.818754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872742, 39.419060, 21.746220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320893, 0.647642, -0.691077,
		-0.072200, -0.710815, -0.699664,
		-0.944360, 0.274413, -0.181336,
		24.589434, 39.501385, 21.691818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161053, 39.252277, 21.148115>,  <25.250486, 39.309296, 21.818754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161053, 39.252277, 21.148115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891661, 39.517426, 21.278973>,  <24.730026, 39.676514, 21.357487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891661, 39.517426, 21.278973>,  <25.161053, 39.252277, 21.148115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891661, 39.517426, 21.278973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263667, 0.628870, -0.731439,
		-0.690583, -0.406351, -0.598309,
		-0.673479, 0.662874, 0.327146,
		24.689617, 39.716290, 21.377117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900949, 39.534142, 20.549686>,  <25.161053, 39.252277, 21.148115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900949, 39.534142, 20.549686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825600, 39.803097, 20.836018>,  <24.780390, 39.964470, 21.007816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825600, 39.803097, 20.836018>,  <24.900949, 39.534142, 20.549686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825600, 39.803097, 20.836018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228041, 0.738901, -0.634052,
		-0.955255, 0.043798, -0.292523,
		-0.188375, 0.672389, 0.715827,
		24.769087, 40.004814, 21.050766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524733, 40.008030, 20.272020>,  <24.900949, 39.534142, 20.549686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524733, 40.008030, 20.272020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654388, 40.200718, 20.597691>,  <24.732182, 40.316330, 20.793093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654388, 40.200718, 20.597691>,  <24.524733, 40.008030, 20.272020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.654388, 40.200718, 20.597691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047783, 0.851205, -0.522654,
		-0.944803, 0.208316, 0.252889,
		0.324137, 0.481721, 0.814174,
		24.751629, 40.345234, 20.841944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278336, 40.596695, 20.127474>,  <24.524733, 40.008030, 20.272020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278336, 40.596695, 20.127474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523233, 40.697102, 20.427380>,  <24.670172, 40.757343, 20.607323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523233, 40.697102, 20.427380>,  <24.278336, 40.596695, 20.127474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523233, 40.697102, 20.427380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071205, 0.926911, -0.368463,
		-0.787455, 0.278977, 0.549624,
		0.612246, 0.251013, 0.749765,
		24.706907, 40.772404, 20.652309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.000185, 41.160645, 20.516430>,  <24.278336, 40.596695, 20.127474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.000185, 41.160645, 20.516430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397896, 41.161098, 20.559162>,  <24.636522, 41.161369, 20.584803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397896, 41.161098, 20.559162>,  <24.000185, 41.160645, 20.516430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397896, 41.161098, 20.559162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036476, 0.936259, -0.349412,
		-0.100418, 0.351309, 0.930859,
		0.994277, 0.001134, 0.106832,
		24.696178, 41.161438, 20.591211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.202936, 41.770817, 20.816164>,  <24.000185, 41.160645, 20.516430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.202936, 41.770817, 20.816164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.551041, 41.650204, 20.660358>,  <24.759903, 41.577835, 20.566875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.551041, 41.650204, 20.660358>,  <24.202936, 41.770817, 20.816164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.551041, 41.650204, 20.660358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165586, 0.923808, -0.345196,
		0.463926, 0.235912, 0.853884,
		0.870261, -0.301537, -0.389515,
		24.812119, 41.559742, 20.543505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601334, 42.314743, 20.899998>,  <24.202936, 41.770817, 20.816164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601334, 42.314743, 20.899998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812035, 42.111294, 20.627575>,  <24.938456, 41.989223, 20.464121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812035, 42.111294, 20.627575>,  <24.601334, 42.314743, 20.899998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812035, 42.111294, 20.627575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277308, 0.860214, -0.427939,
		0.803512, 0.036556, 0.594165,
		0.526753, -0.508621, -0.681055,
		24.970060, 41.958706, 20.423258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158487, 42.749020, 20.760124>,  <24.601334, 42.314743, 20.899998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158487, 42.749020, 20.760124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190636, 42.504211, 20.445427>,  <25.209925, 42.357327, 20.256609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190636, 42.504211, 20.445427>,  <25.158487, 42.749020, 20.760124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190636, 42.504211, 20.445427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089831, 0.790534, -0.605794,
		0.992709, -0.021985, 0.118517,
		0.080373, -0.612024, -0.786744,
		25.214748, 42.320602, 20.209404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810909, 42.854259, 20.356453>,  <25.158487, 42.749020, 20.760124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.810909, 42.854259, 20.356453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531683, 42.688015, 20.123226>,  <25.364147, 42.588268, 19.983290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531683, 42.688015, 20.123226>,  <25.810909, 42.854259, 20.356453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531683, 42.688015, 20.123226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156356, 0.706178, -0.690555,
		0.698740, -0.573227, -0.427986,
		-0.698080, -0.415600, -0.583062,
		25.322262, 42.563332, 19.948305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096737, 42.956783, 19.808205>,  <25.810909, 42.854259, 20.356453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096737, 42.956783, 19.808205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720255, 42.873268, 19.701965>,  <25.494366, 42.823158, 19.638222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720255, 42.873268, 19.701965>,  <26.096737, 42.956783, 19.808205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720255, 42.873268, 19.701965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034649, 0.722375, -0.690633,
		0.336054, -0.659230, -0.672669,
		-0.941205, -0.208783, -0.265599,
		25.437893, 42.810635, 19.622286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095562, 42.812508, 19.119545>,  <26.096737, 42.956783, 19.808205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095562, 42.812508, 19.119545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723619, 42.928055, 19.210690>,  <25.500454, 42.997383, 19.265375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723619, 42.928055, 19.210690>,  <26.095562, 42.812508, 19.119545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723619, 42.928055, 19.210690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064112, 0.737061, -0.672778,
		-0.362292, -0.610979, -0.703882,
		-0.929857, 0.288869, 0.227860,
		25.444662, 43.014717, 19.279047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718307, 43.029922, 18.527138>,  <26.095562, 42.812508, 19.119545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718307, 43.029922, 18.527138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551672, 43.226620, 18.832985>,  <25.451691, 43.344639, 19.016493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551672, 43.226620, 18.832985>,  <25.718307, 43.029922, 18.527138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551672, 43.226620, 18.832985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091344, 0.814180, -0.573382,
		-0.904494, -0.308708, -0.294261,
		-0.416589, 0.491742, 0.764620,
		25.426695, 43.374142, 19.062370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124212, 43.223709, 18.259140>,  <25.718307, 43.029922, 18.527138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124212, 43.223709, 18.259140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210941, 43.476467, 18.556782>,  <25.262980, 43.628124, 18.735367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210941, 43.476467, 18.556782>,  <25.124212, 43.223709, 18.259140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210941, 43.476467, 18.556782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284051, 0.770095, -0.571199,
		-0.933972, -0.087515, 0.346465,
		0.216823, 0.631897, 0.744106,
		25.275988, 43.666035, 18.780014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540245, 43.605515, 17.907293>,  <25.124212, 43.223709, 18.259140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540245, 43.605515, 17.907293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.230999, 43.423222, 17.730839>,  <24.045452, 43.313847, 17.624966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.230999, 43.423222, 17.730839>,  <24.540245, 43.605515, 17.907293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.230999, 43.423222, 17.730839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317801, -0.323572, 0.891237,
		-0.548907, 0.829221, 0.105325,
		-0.773113, -0.455733, -0.441138,
		23.999065, 43.286503, 17.598497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914822, 43.697174, 18.332720>,  <24.540245, 43.605515, 17.907293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914822, 43.697174, 18.332720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.881178, 43.368458, 18.107300>,  <23.860991, 43.171230, 17.972048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.881178, 43.368458, 18.107300>,  <23.914822, 43.697174, 18.332720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.881178, 43.368458, 18.107300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533704, -0.440442, 0.721922,
		-0.841478, 0.361491, -0.401545,
		-0.084111, -0.821788, -0.563551,
		23.855944, 43.121922, 17.938234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.842594, 44.449677, 18.369787>,  <23.914822, 43.697174, 18.332720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.842594, 44.449677, 18.369787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.588737, 44.601162, 18.100327>,  <23.436424, 44.692055, 17.938650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.588737, 44.601162, 18.100327>,  <23.842594, 44.449677, 18.369787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.588737, 44.601162, 18.100327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611327, -0.779285, 0.137821,
		-0.472771, 0.499288, 0.726085,
		-0.634640, 0.378717, -0.673651,
		23.398346, 44.714779, 17.898232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.196268, 44.286465, 18.663399>,  <23.842594, 44.449677, 18.369787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.196268, 44.286465, 18.663399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.126795, 44.348408, 18.274380>,  <23.085112, 44.385574, 18.040968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.126795, 44.348408, 18.274380>,  <23.196268, 44.286465, 18.663399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.126795, 44.348408, 18.274380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567660, -0.822730, -0.029630,
		-0.804734, 0.546931, 0.230802,
		-0.173682, 0.154861, -0.972550,
		23.074690, 44.394867, 17.982615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.460680, 44.067253, 18.473190>,  <23.196268, 44.286465, 18.663399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.460680, 44.067253, 18.473190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.775782, 43.910755, 18.663502>,  <22.964844, 43.816856, 18.777689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.775782, 43.910755, 18.663502>,  <22.460680, 44.067253, 18.473190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.775782, 43.910755, 18.663502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233463, -0.904394, -0.357166,
		0.570032, 0.170283, -0.803783,
		0.787756, -0.391250, 0.475779,
		23.012108, 43.793381, 18.806236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.815783, 43.700531, 17.956104>,  <22.460680, 44.067253, 18.473190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.815783, 43.700531, 17.956104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.857607, 43.550549, 18.324554>,  <22.882702, 43.460560, 18.545624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.857607, 43.550549, 18.324554>,  <22.815783, 43.700531, 17.956104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.857607, 43.550549, 18.324554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347294, -0.881661, -0.319470,
		0.931909, -0.286497, -0.222409,
		0.104562, -0.374959, 0.921126,
		22.888975, 43.438061, 18.600893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.330935, 43.637245, 17.309799>,  <22.815783, 43.700531, 17.956104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.330935, 43.637245, 17.309799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.278534, 43.469753, 16.950356>,  <22.247093, 43.369259, 16.734690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.278534, 43.469753, 16.950356>,  <22.330935, 43.637245, 17.309799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.278534, 43.469753, 16.950356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071761, -0.908050, 0.412668,
		-0.988781, -0.010425, 0.149006,
		-0.131003, -0.418731, -0.898611,
		22.239233, 43.344135, 16.680773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.761097, 43.203716, 17.348133>,  <22.330935, 43.637245, 17.309799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.761097, 43.203716, 17.348133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.048660, 43.085392, 17.096523>,  <22.221197, 43.014397, 16.945557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.048660, 43.085392, 17.096523>,  <21.761097, 43.203716, 17.348133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.048660, 43.085392, 17.096523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133590, -0.829266, 0.542652,
		-0.682148, -0.474148, -0.556648,
		0.718907, -0.295806, -0.629024,
		22.264332, 42.996651, 16.907816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520924, 42.552341, 16.983566>,  <21.761097, 43.203716, 17.348133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520924, 42.552341, 16.983566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.914854, 42.586910, 17.043762>,  <22.151213, 42.607651, 17.079880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.914854, 42.586910, 17.043762>,  <21.520924, 42.552341, 16.983566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.914854, 42.586910, 17.043762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044503, -0.712426, 0.700335,
		0.167736, -0.696406, -0.697770,
		0.984827, 0.086418, 0.150492,
		22.210302, 42.612835, 17.088909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.778252, 41.856026, 16.954123>,  <21.520924, 42.552341, 16.983566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.778252, 41.856026, 16.954123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053995, 42.073887, 17.145176>,  <22.219442, 42.204605, 17.259808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053995, 42.073887, 17.145176>,  <21.778252, 41.856026, 16.954123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.053995, 42.073887, 17.145176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102594, -0.726093, 0.679899,
		0.717116, -0.419694, -0.556418,
		0.689361, 0.544652, 0.477635,
		22.260803, 42.237282, 17.288467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.311802, 41.446636, 17.087370>,  <21.778252, 41.856026, 16.954123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.311802, 41.446636, 17.087370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.345995, 41.714012, 17.382904>,  <22.366510, 41.874439, 17.560225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.345995, 41.714012, 17.382904>,  <22.311802, 41.446636, 17.087370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.345995, 41.714012, 17.382904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050043, -0.743492, 0.666869,
		0.995082, -0.020034, -0.097008,
		0.085485, 0.668444, 0.738833,
		22.371641, 41.914547, 17.604553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.803440, 41.131027, 17.490971>,  <22.311802, 41.446636, 17.087370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.803440, 41.131027, 17.490971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655127, 41.422092, 17.721806>,  <22.566139, 41.596733, 17.860306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.655127, 41.422092, 17.721806>,  <22.803440, 41.131027, 17.490971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.655127, 41.422092, 17.721806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030655, -0.611450, 0.790689,
		0.928214, 0.310863, 0.204408,
		-0.370782, 0.727663, 0.577086,
		22.543892, 41.640392, 17.894932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.218884, 41.176384, 18.145836>,  <22.803440, 41.131027, 17.490971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.218884, 41.176384, 18.145836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.865213, 41.337132, 18.241116>,  <22.653011, 41.433578, 18.298283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.865213, 41.337132, 18.241116>,  <23.218884, 41.176384, 18.145836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.865213, 41.337132, 18.241116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107895, -0.671768, 0.732862,
		0.454529, 0.622277, 0.637319,
		-0.884173, 0.401870, 0.238198,
		22.599962, 41.457691, 18.312574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.247286, 41.307133, 18.822069>,  <23.218884, 41.176384, 18.145836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.247286, 41.307133, 18.822069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858725, 41.267090, 18.735947>,  <22.625587, 41.243065, 18.684273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858725, 41.267090, 18.735947>,  <23.247286, 41.307133, 18.822069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.858725, 41.267090, 18.735947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091969, -0.677350, 0.729889,
		-0.218905, 0.728817, 0.648772,
		-0.971402, -0.100110, -0.215304,
		22.567305, 41.237057, 18.671356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.984446, 41.500019, 19.445993>,  <23.247286, 41.307133, 18.822069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.984446, 41.500019, 19.445993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.713614, 41.290100, 19.239635>,  <22.551115, 41.164146, 19.115822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.713614, 41.290100, 19.239635>,  <22.984446, 41.500019, 19.445993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.713614, 41.290100, 19.239635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249939, -0.495366, 0.831951,
		-0.692165, 0.692240, 0.204234,
		-0.677081, -0.524801, -0.515893,
		22.510489, 41.132660, 19.084867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.344225, 41.404167, 19.937771>,  <22.984446, 41.500019, 19.445993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.344225, 41.404167, 19.937771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273102, 41.130085, 19.655247>,  <22.230427, 40.965637, 19.485731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273102, 41.130085, 19.655247>,  <22.344225, 41.404167, 19.937771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.273102, 41.130085, 19.655247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370350, -0.618385, 0.693139,
		-0.911715, 0.384829, -0.143812,
		-0.177809, -0.685206, -0.706312,
		22.219759, 40.924522, 19.443354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.682642, 41.005409, 20.081217>,  <22.344225, 41.404167, 19.937771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.682642, 41.005409, 20.081217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.899687, 40.762741, 19.848831>,  <22.029913, 40.617138, 19.709400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.899687, 40.762741, 19.848831>,  <21.682642, 41.005409, 20.081217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899687, 40.762741, 19.848831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313389, -0.787912, 0.530078,
		-0.779324, -0.105569, -0.617665,
		0.542625, -0.606672, -0.580954,
		22.062469, 40.580738, 19.674541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.226496, 40.426094, 19.956684>,  <21.682642, 41.005409, 20.081217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.226496, 40.426094, 19.956684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.598518, 40.299347, 19.882294>,  <21.821732, 40.223297, 19.837660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.598518, 40.299347, 19.882294>,  <21.226496, 40.426094, 19.956684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598518, 40.299347, 19.882294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103188, -0.711071, 0.695507,
		-0.352630, -0.627670, -0.694034,
		0.930056, -0.316872, -0.185977,
		21.877535, 40.204285, 19.826500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.155308, 39.603760, 19.848122>,  <21.226496, 40.426094, 19.956684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.155308, 39.603760, 19.848122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.542746, 39.676529, 19.915924>,  <21.775208, 39.720188, 19.956606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.542746, 39.676529, 19.915924>,  <21.155308, 39.603760, 19.848122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.542746, 39.676529, 19.915924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014140, -0.720895, 0.692901,
		0.248247, -0.668742, -0.700826,
		0.968594, 0.181920, 0.169504,
		21.833324, 39.731106, 19.966776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.427877, 39.000462, 19.852100>,  <21.155308, 39.603760, 19.848122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.427877, 39.000462, 19.852100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724308, 39.207546, 20.023113>,  <21.902166, 39.331799, 20.125721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724308, 39.207546, 20.023113>,  <21.427877, 39.000462, 19.852100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.724308, 39.207546, 20.023113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144574, -0.744857, 0.651373,
		0.655673, -0.420906, -0.626842,
		0.741074, 0.517713, 0.427530,
		21.946630, 39.362862, 20.151373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.929819, 38.453850, 20.002434>,  <21.427877, 39.000462, 19.852100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.929819, 38.453850, 20.002434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.987505, 38.777336, 20.230534>,  <22.022116, 38.971428, 20.367393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.987505, 38.777336, 20.230534>,  <21.929819, 38.453850, 20.002434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.987505, 38.777336, 20.230534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097422, -0.585078, 0.805105,
		0.984739, -0.060553, -0.163163,
		0.144215, 0.808714, 0.570250,
		22.030769, 39.019951, 20.401608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.558960, 38.327904, 20.516600>,  <21.929819, 38.453850, 20.002434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.558960, 38.327904, 20.516600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.310312, 38.603882, 20.664959>,  <22.161123, 38.769470, 20.753975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.310312, 38.603882, 20.664959>,  <22.558960, 38.327904, 20.516600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.310312, 38.603882, 20.664959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085958, -0.410554, 0.907776,
		0.778588, 0.596174, 0.195903,
		-0.621621, 0.689944, 0.370898,
		22.123825, 38.810863, 20.776228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.778437, 38.562927, 21.177811>,  <22.558960, 38.327904, 20.516600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.778437, 38.562927, 21.177811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399530, 38.688465, 21.203709>,  <22.172186, 38.763786, 21.219248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399530, 38.688465, 21.203709>,  <22.778437, 38.562927, 21.177811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.399530, 38.688465, 21.203709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052896, -0.046129, 0.997534,
		0.316055, 0.948354, 0.027096,
		-0.947265, 0.313842, 0.064744,
		22.115351, 38.782619, 21.223131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.701639, 38.979843, 21.789700>,  <22.778437, 38.562927, 21.177811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.701639, 38.979843, 21.789700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.310585, 38.928291, 21.723221>,  <22.075953, 38.897362, 21.683332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.310585, 38.928291, 21.723221>,  <22.701639, 38.979843, 21.789700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.310585, 38.928291, 21.723221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164772, -0.021724, 0.986092,
		-0.130695, 0.991423, 0.000003,
		-0.977634, -0.128876, -0.166198,
		22.017294, 38.889629, 21.673361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.393223, 39.324394, 22.349768>,  <22.701639, 38.979843, 21.789700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.393223, 39.324394, 22.349768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.110111, 39.105061, 22.171608>,  <21.940245, 38.973461, 22.064713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.110111, 39.105061, 22.171608>,  <22.393223, 39.324394, 22.349768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.110111, 39.105061, 22.171608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410885, -0.193338, 0.890951,
		-0.574651, 0.813603, -0.088462,
		-0.707778, -0.548334, -0.445400,
		21.897778, 38.940559, 22.037989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808327, 39.525375, 22.720163>,  <22.393223, 39.324394, 22.349768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808327, 39.525375, 22.720163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.737366, 39.158260, 22.578072>,  <21.694790, 38.937992, 22.492817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.737366, 39.158260, 22.578072>,  <21.808327, 39.525375, 22.720163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.737366, 39.158260, 22.578072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490959, -0.230295, 0.840193,
		-0.852929, 0.323454, -0.409743,
		-0.177402, -0.917792, -0.355228,
		21.684145, 38.882923, 22.471502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.163876, 39.407841, 22.940796>,  <21.808327, 39.525375, 22.720163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.163876, 39.407841, 22.940796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.284267, 39.037205, 22.850609>,  <21.356503, 38.814823, 22.796495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.284267, 39.037205, 22.850609>,  <21.163876, 39.407841, 22.940796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.284267, 39.037205, 22.850609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461726, -0.348467, 0.815708,
		-0.834399, -0.141405, -0.532713,
		0.300978, -0.926593, -0.225470,
		21.374561, 38.759228, 22.782969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.515545, 39.060493, 22.879696>,  <21.163876, 39.407841, 22.940796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.515545, 39.060493, 22.879696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787817, 38.768581, 22.905277>,  <20.951180, 38.593433, 22.920626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787817, 38.768581, 22.905277>,  <20.515545, 39.060493, 22.879696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787817, 38.768581, 22.905277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525180, -0.425250, 0.737122,
		-0.510743, -0.535332, -0.672727,
		0.680682, -0.729782, 0.063952,
		20.992022, 38.549648, 22.924463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154873, 38.420258, 22.762461>,  <20.515545, 39.060493, 22.879696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154873, 38.420258, 22.762461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.486418, 38.329689, 22.967094>,  <20.685345, 38.275349, 23.089874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.486418, 38.329689, 22.967094>,  <20.154873, 38.420258, 22.762461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.486418, 38.329689, 22.967094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553217, -0.467837, 0.689260,
		0.083278, -0.854320, -0.513032,
		0.828864, -0.226418, 0.511585,
		20.735077, 38.261765, 23.120569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.093124, 37.679981, 23.085125>,  <20.154873, 38.420258, 22.762461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.093124, 37.679981, 23.085125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311752, 37.949787, 23.283638>,  <20.442928, 38.111671, 23.402746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311752, 37.949787, 23.283638>,  <20.093124, 37.679981, 23.085125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311752, 37.949787, 23.283638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545357, -0.163033, 0.822196,
		0.635491, -0.720038, 0.278741,
		0.546569, 0.674511, 0.496284,
		20.475723, 38.152142, 23.432524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352118, 37.323708, 23.685139>,  <20.093124, 37.679981, 23.085125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352118, 37.323708, 23.685139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.274437, 37.705711, 23.774796>,  <20.227829, 37.934914, 23.828590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.274437, 37.705711, 23.774796>,  <20.352118, 37.323708, 23.685139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.274437, 37.705711, 23.774796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553629, -0.295329, 0.778637,
		0.809802, 0.027122, 0.586076,
		-0.194203, 0.955011, 0.224142,
		20.216177, 37.992214, 23.842039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772274, 37.034042, 24.057423>,  <20.352118, 37.323708, 23.685139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772274, 37.034042, 24.057423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.610802, 37.098610, 23.697205>,  <19.513918, 37.137348, 23.481073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.610802, 37.098610, 23.697205>,  <19.772274, 37.034042, 24.057423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610802, 37.098610, 23.697205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910986, 0.020027, 0.411950,
		0.084531, 0.986683, 0.138964,
		-0.403682, 0.161417, -0.900548,
		19.489697, 37.147034, 23.427040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.250284, 37.579704, 24.212229>,  <19.772274, 37.034042, 24.057423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.250284, 37.579704, 24.212229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.151823, 37.415985, 23.860802>,  <19.092747, 37.317753, 23.649946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.151823, 37.415985, 23.860802>,  <19.250284, 37.579704, 24.212229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151823, 37.415985, 23.860802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960520, -0.018237, 0.277611,
		-0.129649, 0.912218, -0.388651,
		-0.246154, -0.409299, -0.878568,
		19.077976, 37.293194, 23.597231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.843338, 38.023571, 23.739021>,  <19.250284, 37.579704, 24.212229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.843338, 38.023571, 23.739021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768873, 37.633339, 23.692406>,  <18.724195, 37.399200, 23.664436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768873, 37.633339, 23.692406>,  <18.843338, 38.023571, 23.739021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768873, 37.633339, 23.692406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924366, 0.133705, 0.357310,
		-0.333004, 0.174241, -0.926687,
		-0.186161, -0.975583, -0.116538,
		18.713024, 37.340664, 23.657444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.099485, 23.696239, 21.847755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.495909, 23.714016, 21.797436>,  <31.733763, 23.724682, 21.767244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.495909, 23.714016, 21.797436>,  <31.099485, 23.696239, 21.847755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495909, 23.714016, 21.797436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040737, 0.998662, 0.031867,
		0.127046, -0.026458, 0.991544,
		0.991060, 0.044441, -0.125799,
		31.793226, 23.727348, 21.759697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347900, 24.189936, 22.388100>,  <31.099485, 23.696239, 21.847755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347900, 24.189936, 22.388100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.661018, 24.158405, 22.141193>,  <31.848888, 24.139486, 21.993050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.661018, 24.158405, 22.141193>,  <31.347900, 24.189936, 22.388100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661018, 24.158405, 22.141193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088814, 0.995942, -0.014554,
		0.615910, -0.043429, 0.786619,
		0.782794, -0.078827, -0.617268,
		31.895857, 24.134758, 21.956013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947828, 24.583849, 22.647005>,  <31.347900, 24.189936, 22.388100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947828, 24.583849, 22.647005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.982035, 24.539093, 22.250992>,  <32.002560, 24.512239, 22.013384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.982035, 24.539093, 22.250992>,  <31.947828, 24.583849, 22.647005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982035, 24.539093, 22.250992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018666, 0.993320, -0.113874,
		0.996162, 0.028218, 0.082856,
		0.085515, -0.111891, -0.990034,
		32.007690, 24.505526, 21.953981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996019, 25.202284, 22.496542>,  <31.947828, 24.583849, 22.647005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996019, 25.202284, 22.496542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.973021, 25.072136, 22.119007>,  <31.959221, 24.994047, 21.892487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.973021, 25.072136, 22.119007>,  <31.996019, 25.202284, 22.496542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973021, 25.072136, 22.119007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203480, 0.929375, -0.307988,
		0.977389, 0.174343, -0.119643,
		-0.057497, -0.325369, -0.943837,
		31.955770, 24.974525, 21.835855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294006, 25.645039, 22.130293>,  <31.996019, 25.202284, 22.496542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294006, 25.645039, 22.130293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.053974, 25.493019, 21.848736>,  <31.909956, 25.401808, 21.679802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.053974, 25.493019, 21.848736>,  <32.294006, 25.645039, 22.130293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053974, 25.493019, 21.848736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125120, 0.913695, -0.386660,
		0.790095, -0.143956, -0.595842,
		-0.600079, -0.380050, -0.703894,
		31.873951, 25.379004, 21.637568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553947, 25.791265, 21.431715>,  <32.294006, 25.645039, 22.130293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553947, 25.791265, 21.431715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.156586, 25.746510, 21.421719>,  <31.918169, 25.719656, 21.415720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.156586, 25.746510, 21.421719>,  <32.553947, 25.791265, 21.431715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156586, 25.746510, 21.421719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100528, 0.954918, -0.279332,
		0.055118, -0.274978, -0.959870,
		-0.993406, -0.111890, -0.024990,
		31.858564, 25.712942, 21.414221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374283, 26.170481, 20.801708>,  <32.553947, 25.791265, 21.431715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374283, 26.170481, 20.801708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.020721, 26.112362, 20.979519>,  <31.808584, 26.077490, 21.086205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.020721, 26.112362, 20.979519>,  <32.374283, 26.170481, 20.801708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020721, 26.112362, 20.979519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277419, 0.928121, -0.248255,
		-0.376503, -0.342753, -0.860677,
		-0.883903, -0.145299, 0.444527,
		31.755550, 26.068771, 21.112877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753628, 26.576302, 20.396492>,  <32.374283, 26.170481, 20.801708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753628, 26.576302, 20.396492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.614771, 26.506237, 20.765015>,  <31.531456, 26.464197, 20.986128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.614771, 26.506237, 20.765015>,  <31.753628, 26.576302, 20.396492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614771, 26.506237, 20.765015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437259, 0.899314, 0.006224,
		-0.829636, -0.400689, -0.388783,
		-0.347144, -0.175163, 0.921308,
		31.510628, 26.453688, 21.041407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049652, 26.647507, 20.345539>,  <31.753628, 26.576302, 20.396492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049652, 26.647507, 20.345539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.128042, 26.676910, 20.736679>,  <31.175077, 26.694553, 20.971363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.128042, 26.676910, 20.736679>,  <31.049652, 26.647507, 20.345539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128042, 26.676910, 20.736679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553147, 0.831680, 0.048338,
		-0.809705, -0.550367, 0.203651,
		0.195977, 0.073509, 0.977850,
		31.186834, 26.698963, 21.030033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415216, 26.781897, 20.640347>,  <31.049652, 26.647507, 20.345539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415216, 26.781897, 20.640347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.685394, 26.917469, 20.902309>,  <30.847500, 26.998814, 21.059486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.685394, 26.917469, 20.902309>,  <30.415216, 26.781897, 20.640347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685394, 26.917469, 20.902309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505254, 0.859597, 0.076232,
		-0.537117, -0.382384, 0.751856,
		0.675443, 0.338933, 0.654905,
		30.888027, 27.019150, 21.098782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958231, 27.019184, 21.232895>,  <30.415216, 26.781897, 20.640347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958231, 27.019184, 21.232895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.316689, 27.196392, 21.243149>,  <30.531763, 27.302717, 21.249302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.316689, 27.196392, 21.243149>,  <29.958231, 27.019184, 21.232895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316689, 27.196392, 21.243149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443314, 0.896340, 0.006884,
		-0.019929, -0.017533, 0.999647,
		0.896145, 0.443021, 0.025636,
		30.585531, 27.329298, 21.250839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888893, 27.543720, 21.752489>,  <29.958231, 27.019184, 21.232895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888893, 27.543720, 21.752489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.211937, 27.660343, 21.547447>,  <30.405764, 27.730316, 21.424421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.211937, 27.660343, 21.547447>,  <29.888893, 27.543720, 21.752489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211937, 27.660343, 21.547447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272882, 0.955336, 0.113443,
		0.522785, 0.048263, 0.851097,
		0.807609, 0.291555, -0.512605,
		30.454220, 27.747810, 21.393665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264938, 28.113884, 22.121305>,  <29.888893, 27.543720, 21.752489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264938, 28.113884, 22.121305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.369286, 28.159927, 21.737911>,  <30.431894, 28.187553, 21.507874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.369286, 28.159927, 21.737911>,  <30.264938, 28.113884, 22.121305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369286, 28.159927, 21.737911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297042, 0.954268, 0.033757,
		0.918540, 0.275905, 0.283128,
		0.260866, 0.115108, -0.958488,
		30.447546, 28.194460, 21.450365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372564, 28.849539, 22.058861>,  <30.264938, 28.113884, 22.121305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372564, 28.849539, 22.058861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.338711, 28.712475, 21.684605>,  <30.318399, 28.630236, 21.460051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.338711, 28.712475, 21.684605>,  <30.372564, 28.849539, 22.058861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338711, 28.712475, 21.684605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407755, 0.868694, -0.281259,
		0.909161, 0.357707, -0.213242,
		-0.084634, -0.342660, -0.935639,
		30.313320, 28.609676, 21.403913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597555, 29.381260, 21.681761>,  <30.372564, 28.849539, 22.058861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597555, 29.381260, 21.681761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.374666, 29.166603, 21.428299>,  <30.240932, 29.037809, 21.276222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.374666, 29.166603, 21.428299>,  <30.597555, 29.381260, 21.681761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374666, 29.166603, 21.428299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345829, 0.843754, -0.410464,
		0.754920, -0.009585, -0.655747,
		-0.557224, -0.536644, -0.633652,
		30.207499, 29.005610, 21.238203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561558, 29.850870, 21.166891>,  <30.597555, 29.381260, 21.681761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561558, 29.850870, 21.166891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.267239, 29.586590, 21.107464>,  <30.090647, 29.428020, 21.071808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.267239, 29.586590, 21.107464>,  <30.561558, 29.850870, 21.166891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267239, 29.586590, 21.107464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616846, 0.744430, -0.255588,
		0.279466, -0.096419, -0.955302,
		-0.735799, -0.660703, -0.148567,
		30.046499, 29.388378, 21.062893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266169, 29.975063, 20.472412>,  <30.561558, 29.850870, 21.166891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266169, 29.975063, 20.472412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.993492, 29.755611, 20.666031>,  <29.829885, 29.623941, 20.782202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.993492, 29.755611, 20.666031>,  <30.266169, 29.975063, 20.472412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993492, 29.755611, 20.666031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681217, 0.717301, -0.146366,
		-0.266908, -0.429519, -0.862713,
		-0.681691, -0.548628, 0.484049,
		29.788984, 29.591022, 20.811245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712778, 29.991238, 20.039429>,  <30.266169, 29.975063, 20.472412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712778, 29.991238, 20.039429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.558090, 29.900707, 20.397026>,  <29.465279, 29.846390, 20.611586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.558090, 29.900707, 20.397026>,  <29.712778, 29.991238, 20.039429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558090, 29.900707, 20.397026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860585, 0.436963, -0.261643,
		-0.331427, -0.870540, -0.363753,
		-0.386717, -0.226325, 0.893995,
		29.442076, 29.832809, 20.665224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079460, 29.743294, 19.859680>,  <29.712778, 29.991238, 20.039429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079460, 29.743294, 19.859680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.062895, 29.869667, 20.238831>,  <29.052956, 29.945492, 20.466322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.062895, 29.869667, 20.238831>,  <29.079460, 29.743294, 19.859680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062895, 29.869667, 20.238831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871013, 0.453379, -0.189168,
		-0.489512, -0.833447, 0.256406,
		-0.041412, 0.315933, 0.947877,
		29.050470, 29.964447, 20.523193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379726, 29.614649, 20.025166>,  <29.079460, 29.743294, 19.859680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379726, 29.614649, 20.025166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.491846, 29.872208, 20.309933>,  <28.559118, 30.026743, 20.480793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.491846, 29.872208, 20.309933>,  <28.379726, 29.614649, 20.025166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491846, 29.872208, 20.309933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869461, 0.484591, -0.095965,
		-0.406782, -0.592088, 0.695672,
		0.280297, 0.643897, 0.711920,
		28.575935, 30.065376, 20.523508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821182, 29.682077, 20.400890>,  <28.379726, 29.614649, 20.025166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821182, 29.682077, 20.400890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.027428, 30.018276, 20.467476>,  <28.151175, 30.219995, 20.507427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.027428, 30.018276, 20.467476>,  <27.821182, 29.682077, 20.400890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027428, 30.018276, 20.467476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855244, 0.516644, 0.040460,
		-0.051996, -0.163229, 0.985217,
		0.515611, 0.840497, 0.166464,
		28.182112, 30.270426, 20.517416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415701, 29.954168, 20.845566>,  <27.821182, 29.682077, 20.400890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415701, 29.954168, 20.845566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.653254, 30.227314, 20.675388>,  <27.795786, 30.391201, 20.573282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.653254, 30.227314, 20.675388>,  <27.415701, 29.954168, 20.845566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653254, 30.227314, 20.675388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799990, 0.557437, -0.221992,
		0.085567, 0.472186, 0.877336,
		0.593881, 0.682865, -0.425442,
		27.831417, 30.432173, 20.547756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113857, 30.493332, 21.080626>,  <27.415701, 29.954168, 20.845566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113857, 30.493332, 21.080626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.318514, 30.564342, 20.744362>,  <27.441307, 30.606949, 20.542604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.318514, 30.564342, 20.744362>,  <27.113857, 30.493332, 21.080626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318514, 30.564342, 20.744362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713411, 0.633037, -0.300513,
		0.478820, 0.753491, 0.450536,
		0.511641, 0.177526, -0.840660,
		27.472006, 30.617599, 20.492165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023350, 30.407997, 21.805346>,  <27.113857, 30.493332, 21.080626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023350, 30.407997, 21.805346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.720373, 30.421349, 21.544525>,  <26.538588, 30.429359, 21.388033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.720373, 30.421349, 21.544525>,  <27.023350, 30.407997, 21.805346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720373, 30.421349, 21.544525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101241, -0.992617, 0.066790,
		-0.645007, 0.116604, 0.755228,
		-0.757441, 0.033380, -0.652050,
		26.493141, 30.431362, 21.348909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576929, 29.990942, 22.029173>,  <27.023350, 30.407997, 21.805346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576929, 29.990942, 22.029173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.479082, 30.011894, 21.641891>,  <26.420374, 30.024466, 21.409523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.479082, 30.011894, 21.641891>,  <26.576929, 29.990942, 22.029173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479082, 30.011894, 21.641891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188803, -0.982000, -0.005425,
		-0.951061, 0.181473, 0.250102,
		-0.244615, 0.052380, -0.968204,
		26.405697, 30.027609, 21.351431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974072, 29.507515, 21.891449>,  <26.576929, 29.990942, 22.029173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974072, 29.507515, 21.891449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.116114, 29.583622, 21.525345>,  <26.201340, 29.629286, 21.305683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.116114, 29.583622, 21.525345>,  <25.974072, 29.507515, 21.891449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116114, 29.583622, 21.525345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008668, -0.978356, -0.206746,
		-0.934786, 0.081350, -0.345770,
		0.355105, 0.190267, -0.915259,
		26.222645, 29.640701, 21.250767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465467, 29.347105, 21.452452>,  <25.974072, 29.507515, 21.891449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465467, 29.347105, 21.452452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.808817, 29.338440, 21.247425>,  <26.014826, 29.333241, 21.124409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.808817, 29.338440, 21.247425>,  <25.465467, 29.347105, 21.452452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808817, 29.338440, 21.247425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127640, -0.976710, -0.172471,
		-0.496894, 0.213468, -0.841147,
		0.858373, -0.021665, -0.512568,
		26.066328, 29.331940, 21.093655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363760, 28.893448, 21.007788>,  <25.465467, 29.347105, 21.452452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363760, 28.893448, 21.007788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.761524, 28.919399, 20.974461>,  <26.000183, 28.934971, 20.954464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.761524, 28.919399, 20.974461>,  <25.363760, 28.893448, 21.007788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761524, 28.919399, 20.974461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039767, -0.960995, -0.273693,
		-0.097822, 0.268849, -0.958202,
		0.994409, 0.064878, -0.083315,
		26.059847, 28.938862, 20.949467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628613, 28.516088, 20.368029>,  <25.363760, 28.893448, 21.007788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628613, 28.516088, 20.368029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.955908, 28.536770, 20.597050>,  <26.152285, 28.549179, 20.734463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.955908, 28.536770, 20.597050>,  <25.628613, 28.516088, 20.368029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955908, 28.536770, 20.597050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114333, -0.990688, -0.073933,
		0.563398, 0.125956, -0.816528,
		0.818236, 0.051702, 0.572553,
		26.201378, 28.552280, 20.768816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053637, 28.045755, 20.124315>,  <25.628613, 28.516088, 20.368029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053637, 28.045755, 20.124315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.212898, 28.099991, 20.487213>,  <26.308455, 28.132532, 20.704952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.212898, 28.099991, 20.487213>,  <26.053637, 28.045755, 20.124315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212898, 28.099991, 20.487213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467702, -0.880815, -0.073618,
		0.789132, 0.453631, -0.414114,
		0.398153, 0.135588, 0.907243,
		26.332344, 28.140667, 20.759386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775154, 27.891270, 20.046415>,  <26.053637, 28.045755, 20.124315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775154, 27.891270, 20.046415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.712589, 27.849934, 20.439323>,  <26.675051, 27.825132, 20.675068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.712589, 27.849934, 20.439323>,  <26.775154, 27.891270, 20.046415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712589, 27.849934, 20.439323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550577, -0.834785, -0.000150,
		0.820000, 0.540792, 0.187466,
		-0.156412, -0.103338, 0.982271,
		26.665665, 27.818932, 20.734005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352448, 27.618303, 20.307600>,  <26.775154, 27.891270, 20.046415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352448, 27.618303, 20.307600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.078754, 27.543308, 20.589500>,  <26.914539, 27.498312, 20.758640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.078754, 27.543308, 20.589500>,  <27.352448, 27.618303, 20.307600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078754, 27.543308, 20.589500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364366, -0.925010, 0.107675,
		0.631714, 0.330462, 0.701236,
		-0.684233, -0.187487, 0.704751,
		26.873484, 27.487062, 20.800926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792244, 27.345774, 20.904589>,  <27.352448, 27.618303, 20.307600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792244, 27.345774, 20.904589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415264, 27.226688, 20.965454>,  <27.189075, 27.155237, 21.001972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415264, 27.226688, 20.965454>,  <27.792244, 27.345774, 20.904589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415264, 27.226688, 20.965454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328446, -0.909493, 0.254847,
		0.062520, 0.290158, 0.954934,
		-0.942452, -0.297711, 0.152162,
		27.132528, 27.137375, 21.011103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825428, 27.176048, 21.522131>,  <27.792244, 27.345774, 20.904589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825428, 27.176048, 21.522131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.518950, 26.992416, 21.342270>,  <27.335062, 26.882238, 21.234352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.518950, 26.992416, 21.342270>,  <27.825428, 27.176048, 21.522131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518950, 26.992416, 21.342270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342298, -0.883772, 0.319029,
		-0.543851, 0.090523, 0.834285,
		-0.766197, -0.459079, -0.449654,
		27.289091, 26.854692, 21.207373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769192, 26.610586, 21.899240>,  <27.825428, 27.176048, 21.522131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769192, 26.610586, 21.899240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.577827, 26.526459, 21.558208>,  <27.463009, 26.475983, 21.353590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.577827, 26.526459, 21.558208>,  <27.769192, 26.610586, 21.899240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577827, 26.526459, 21.558208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322808, -0.945036, 0.051987,
		-0.816652, -0.250348, 0.520006,
		-0.478410, -0.210317, -0.852579,
		27.434305, 26.463364, 21.302435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254534, 26.150801, 22.045296>,  <27.769192, 26.610586, 21.899240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254534, 26.150801, 22.045296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.343348, 26.109062, 21.657520>,  <27.396635, 26.084019, 21.424854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.343348, 26.109062, 21.657520>,  <27.254534, 26.150801, 22.045296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343348, 26.109062, 21.657520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380656, -0.906081, 0.184711,
		-0.897665, -0.410035, -0.161461,
		0.222035, -0.104348, -0.969439,
		27.409958, 26.077757, 21.366688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102791, 25.441416, 21.953938>,  <27.254534, 26.150801, 22.045296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102791, 25.441416, 21.953938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.303743, 25.532280, 21.620228>,  <27.424314, 25.586798, 21.420002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.303743, 25.532280, 21.620228>,  <27.102791, 25.441416, 21.953938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303743, 25.532280, 21.620228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319103, -0.945469, -0.065280,
		-0.803608, -0.233423, -0.547474,
		0.502382, 0.227160, -0.834273,
		27.454458, 25.600428, 21.369946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038050, 24.977909, 21.414444>,  <27.102791, 25.441416, 21.953938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038050, 24.977909, 21.414444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.396328, 25.140362, 21.342022>,  <27.611296, 25.237833, 21.298569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.396328, 25.140362, 21.342022>,  <27.038050, 24.977909, 21.414444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396328, 25.140362, 21.342022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400789, -0.913726, -0.066878,
		-0.192598, -0.012663, -0.981196,
		0.895697, 0.406134, -0.181057,
		27.665037, 25.262201, 21.287704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326265, 24.436222, 21.036222>,  <27.038050, 24.977909, 21.414444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326265, 24.436222, 21.036222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.641365, 24.670773, 21.111710>,  <27.830425, 24.811502, 21.157001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.641365, 24.670773, 21.111710>,  <27.326265, 24.436222, 21.036222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641365, 24.670773, 21.111710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598135, -0.801367, -0.006762,
		0.147267, 0.118205, -0.982008,
		0.787748, 0.586378, 0.188718,
		27.877689, 24.846685, 21.168325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766182, 24.310797, 20.576923>,  <27.326265, 24.436222, 21.036222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766182, 24.310797, 20.576923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.002422, 24.455894, 20.865257>,  <28.144167, 24.542953, 21.038258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.002422, 24.455894, 20.865257>,  <27.766182, 24.310797, 20.576923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002422, 24.455894, 20.865257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563845, -0.824539, -0.047047,
		0.577293, 0.434227, -0.691506,
		0.590603, 0.362742, 0.720837,
		28.179604, 24.564716, 21.081509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.665796, 24.296377, 20.381990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.674503, 24.356060, 20.777416>,  <28.679728, 24.391870, 21.014671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.674503, 24.356060, 20.777416>,  <28.665796, 24.296377, 20.381990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674503, 24.356060, 20.777416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566742, -0.816418, 0.110747,
		0.823608, 0.557851, -0.102334,
		0.021767, 0.149209, 0.988566,
		28.681034, 24.400824, 21.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448137, 24.198488, 20.601051>,  <28.665796, 24.296377, 20.381990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448137, 24.198488, 20.601051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.188862, 24.146820, 20.901230>,  <29.033297, 24.115820, 21.081337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.188862, 24.146820, 20.901230>,  <29.448137, 24.198488, 20.601051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188862, 24.146820, 20.901230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378880, -0.909568, 0.170695,
		0.660533, 0.394971, 0.638509,
		-0.648187, -0.129168, 0.750446,
		28.994406, 24.108070, 21.126364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850725, 23.977358, 21.253325>,  <29.448137, 24.198488, 20.601051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850725, 23.977358, 21.253325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.482607, 23.866890, 21.364162>,  <29.261736, 23.800610, 21.430666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.482607, 23.866890, 21.364162>,  <29.850725, 23.977358, 21.253325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482607, 23.866890, 21.364162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368781, -0.848818, 0.378825,
		0.130585, 0.450820, 0.883011,
		-0.920298, -0.276169, 0.277096,
		29.206518, 23.784039, 21.447290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937941, 23.626133, 21.916973>,  <29.850725, 23.977358, 21.253325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937941, 23.626133, 21.916973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.594719, 23.492958, 21.760567>,  <29.388786, 23.413054, 21.666723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.594719, 23.492958, 21.760567>,  <29.937941, 23.626133, 21.916973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594719, 23.492958, 21.760567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264199, -0.939082, 0.219827,
		-0.440386, 0.085318, 0.893745,
		-0.858055, -0.332935, -0.391018,
		29.337303, 23.393078, 21.643261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638350, 23.141949, 22.392017>,  <29.937941, 23.626133, 21.916973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638350, 23.141949, 22.392017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.464750, 23.061790, 22.040680>,  <29.360590, 23.013695, 21.829878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.464750, 23.061790, 22.040680>,  <29.638350, 23.141949, 22.392017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464750, 23.061790, 22.040680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170135, -0.975635, 0.138528,
		-0.884703, -0.089316, 0.457518,
		-0.433998, -0.200396, -0.878343,
		29.334551, 23.001671, 21.777178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313910, 22.625637, 22.541182>,  <29.638350, 23.141949, 22.392017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313910, 22.625637, 22.541182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.345287, 22.586376, 22.144352>,  <29.364115, 22.562820, 21.906254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.345287, 22.586376, 22.144352>,  <29.313910, 22.625637, 22.541182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345287, 22.586376, 22.144352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273593, -0.954813, 0.116100,
		-0.958641, -0.280532, -0.048047,
		0.078446, -0.098153, -0.992075,
		29.368822, 22.556931, 21.846729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004101, 22.005247, 22.441422>,  <29.313910, 22.625637, 22.541182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004101, 22.005247, 22.441422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.207426, 22.072208, 22.103523>,  <29.329420, 22.112385, 21.900784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.207426, 22.072208, 22.103523>,  <29.004101, 22.005247, 22.441422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207426, 22.072208, 22.103523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213756, -0.974753, -0.064545,
		-0.834223, -0.147761, -0.531262,
		0.508312, 0.167406, -0.844745,
		29.359921, 22.122431, 21.850100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706594, 21.537584, 22.008326>,  <29.004101, 22.005247, 22.441422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706594, 21.537584, 22.008326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.070559, 21.633472, 21.872917>,  <29.288937, 21.691006, 21.791672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.070559, 21.633472, 21.872917>,  <28.706594, 21.537584, 22.008326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070559, 21.633472, 21.872917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186229, -0.965311, -0.183012,
		-0.370651, 0.103481, -0.922989,
		0.909910, 0.239721, -0.338523,
		29.343531, 21.705389, 21.771360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745657, 21.333471, 21.267906>,  <28.706594, 21.537584, 22.008326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745657, 21.333471, 21.267906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.100883, 21.339970, 21.451679>,  <29.314018, 21.343868, 21.561943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.100883, 21.339970, 21.451679>,  <28.745657, 21.333471, 21.267906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100883, 21.339970, 21.451679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131102, -0.966827, -0.219223,
		0.440629, 0.254916, -0.860734,
		0.888065, 0.016248, 0.459432,
		29.367302, 21.344845, 21.589508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954382, 20.753841, 21.017162>,  <28.745657, 21.333471, 21.267906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954382, 20.753841, 21.017162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234335, 20.831936, 21.291985>,  <29.402308, 20.878792, 21.456879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234335, 20.831936, 21.291985>,  <28.954382, 20.753841, 21.017162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234335, 20.831936, 21.291985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122350, -0.980470, 0.153978,
		0.703702, -0.023705, -0.710100,
		0.699882, 0.195235, 0.687058,
		29.444300, 20.890507, 21.498102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533413, 20.373974, 20.750635>,  <28.954382, 20.753841, 21.017162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533413, 20.373974, 20.750635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.559771, 20.422756, 21.146774>,  <29.575584, 20.452026, 21.384457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.559771, 20.422756, 21.146774>,  <29.533413, 20.373974, 20.750635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559771, 20.422756, 21.146774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269023, -0.957922, 0.100064,
		0.960877, 0.259832, -0.095931,
		0.065895, 0.121957, 0.990346,
		29.579538, 20.459343, 21.443878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104256, 19.845535, 20.953268>,  <29.533413, 20.373974, 20.750635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104256, 19.845535, 20.953268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914774, 19.938877, 21.292950>,  <29.801085, 19.994883, 21.496759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914774, 19.938877, 21.292950>,  <30.104256, 19.845535, 20.953268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914774, 19.938877, 21.292950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188133, -0.915184, 0.356432,
		0.860355, 0.328607, 0.389624,
		-0.473704, 0.233357, 0.849205,
		29.772663, 20.008884, 21.547710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483845, 19.461952, 21.370342>,  <30.104256, 19.845535, 20.953268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483845, 19.461952, 21.370342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.160418, 19.566288, 21.581314>,  <29.966362, 19.628889, 21.707897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.160418, 19.566288, 21.581314>,  <30.483845, 19.461952, 21.370342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160418, 19.566288, 21.581314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020707, -0.883204, 0.468531,
		0.588039, 0.389761, 0.708729,
		-0.808567, 0.260839, 0.527430,
		29.917847, 19.644539, 21.739544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687668, 19.393946, 22.019529>,  <30.483845, 19.461952, 21.370342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687668, 19.393946, 22.019529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.290173, 19.361450, 21.988838>,  <30.051676, 19.341953, 21.970425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.290173, 19.361450, 21.988838>,  <30.687668, 19.393946, 22.019529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290173, 19.361450, 21.988838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038313, -0.892705, 0.449010,
		-0.104971, 0.443259, 0.890226,
		-0.993737, -0.081240, -0.076726,
		29.992052, 19.337078, 21.965820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510239, 19.050371, 22.658596>,  <30.687668, 19.393946, 22.019529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510239, 19.050371, 22.658596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.185638, 19.004234, 22.429455>,  <29.990877, 18.976551, 22.291969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.185638, 19.004234, 22.429455>,  <30.510239, 19.050371, 22.658596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185638, 19.004234, 22.429455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124067, -0.923966, 0.361792,
		-0.571027, 0.364667, 0.735490,
		-0.811502, -0.115343, -0.572853,
		29.942188, 18.969631, 22.257599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986235, 18.766932, 23.053701>,  <30.510239, 19.050371, 22.658596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986235, 18.766932, 23.053701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.889219, 18.681107, 22.675255>,  <29.831011, 18.629612, 22.448187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.889219, 18.681107, 22.675255>,  <29.986235, 18.766932, 23.053701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889219, 18.681107, 22.675255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179202, -0.948545, 0.261053,
		-0.953447, 0.232862, 0.191609,
		-0.242539, -0.214564, -0.946117,
		29.816458, 18.616737, 22.391420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289850, 18.494383, 22.988491>,  <29.986235, 18.766932, 23.053701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289850, 18.494383, 22.988491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.526840, 18.372013, 22.690395>,  <29.669035, 18.298592, 22.511538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.526840, 18.372013, 22.690395>,  <29.289850, 18.494383, 22.988491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526840, 18.372013, 22.690395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106549, -0.946719, 0.303926,
		-0.798510, -0.100664, -0.593505,
		0.592477, -0.305925, -0.745239,
		29.704584, 18.280235, 22.466824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962425, 17.794615, 22.815426>,  <29.289850, 18.494383, 22.988491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962425, 17.794615, 22.815426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311911, 17.789906, 22.620907>,  <29.521603, 17.787081, 22.504196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311911, 17.789906, 22.620907>,  <28.962425, 17.794615, 22.815426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311911, 17.789906, 22.620907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032685, -0.998869, -0.034541,
		-0.485339, 0.046073, -0.873111,
		0.873715, -0.011773, -0.486296,
		29.574024, 17.786373, 22.475018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913040, 17.302862, 22.167545>,  <28.962425, 17.794615, 22.815426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913040, 17.302862, 22.167545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294203, 17.350163, 22.279247>,  <29.522902, 17.378542, 22.346268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294203, 17.350163, 22.279247>,  <28.913040, 17.302862, 22.167545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294203, 17.350163, 22.279247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112863, -0.992982, 0.035346,
		0.281475, -0.002164, -0.959566,
		0.952908, 0.118249, 0.279255,
		29.580074, 17.385637, 22.363024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356390, 16.806728, 21.780642>,  <28.913040, 17.302862, 22.167545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356390, 16.806728, 21.780642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.573206, 16.913982, 22.099213>,  <29.703295, 16.978336, 22.290356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.573206, 16.913982, 22.099213>,  <29.356390, 16.806728, 21.780642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573206, 16.913982, 22.099213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223658, -0.959577, 0.170847,
		0.810043, 0.085522, -0.580100,
		0.542040, 0.268137, 0.796427,
		29.735817, 16.994423, 22.338140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905645, 16.318258, 21.810072>,  <29.356390, 16.806728, 21.780642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905645, 16.318258, 21.810072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890324, 16.484383, 22.173622>,  <29.881130, 16.584057, 22.391752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890324, 16.484383, 22.173622>,  <29.905645, 16.318258, 21.810072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890324, 16.484383, 22.173622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084406, -0.904946, 0.417072,
		0.995695, 0.092691, -0.000389,
		-0.038306, 0.415309, 0.908873,
		29.878832, 16.608974, 22.446283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298246, 15.994611, 22.092854>,  <29.905645, 16.318258, 21.810072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298246, 15.994611, 22.092854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083443, 16.125900, 22.403694>,  <29.954559, 16.204674, 22.590199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083443, 16.125900, 22.403694>,  <30.298246, 15.994611, 22.092854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083443, 16.125900, 22.403694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071799, -0.900075, 0.429780,
		0.840514, 0.286592, 0.459784,
		-0.537012, 0.328224, 0.777102,
		29.922338, 16.224367, 22.636826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679174, 15.863785, 22.759214>,  <30.298246, 15.994611, 22.092854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679174, 15.863785, 22.759214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280634, 15.883396, 22.787167>,  <30.041510, 15.895164, 22.803938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280634, 15.883396, 22.787167>,  <30.679174, 15.863785, 22.759214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280634, 15.883396, 22.787167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023719, -0.945379, 0.325109,
		0.082003, 0.322265, 0.943091,
		-0.996350, 0.049029, 0.069880,
		29.981730, 15.898105, 22.808130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520840, 15.686552, 22.692314>,  <30.679174, 15.863785, 22.759214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520840, 15.686552, 22.692314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.815294, 15.573936, 22.938515>,  <31.991966, 15.506367, 23.086235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.815294, 15.573936, 22.938515>,  <31.520840, 15.686552, 22.692314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815294, 15.573936, 22.938515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088689, 0.941663, 0.324661,
		-0.670999, -0.184406, 0.718161,
		0.736135, -0.281540, 0.615500,
		32.036137, 15.489474, 23.123165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489971, 15.762376, 23.495726>,  <31.520840, 15.686552, 22.692314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489971, 15.762376, 23.495726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.882399, 15.783817, 23.421291>,  <32.117855, 15.796682, 23.376631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.882399, 15.783817, 23.421291>,  <31.489971, 15.762376, 23.495726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882399, 15.783817, 23.421291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005384, 0.953004, 0.302909,
		0.193577, -0.298177, 0.934676,
		0.981070, 0.053604, -0.186085,
		32.176720, 15.799898, 23.365465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691734, 16.273317, 23.958916>,  <31.489971, 15.762376, 23.495726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691734, 16.273317, 23.958916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975306, 16.258942, 23.677170>,  <32.145447, 16.250317, 23.508121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975306, 16.258942, 23.677170>,  <31.691734, 16.273317, 23.958916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975306, 16.258942, 23.677170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148277, 0.983975, 0.099033,
		0.689518, -0.174649, 0.702896,
		0.708928, -0.035938, -0.704364,
		32.187984, 16.248159, 23.465860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192772, 16.654232, 24.302626>,  <31.691734, 16.273317, 23.958916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192772, 16.654232, 24.302626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249466, 16.648926, 23.906700>,  <32.283482, 16.645742, 23.669144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249466, 16.648926, 23.906700>,  <32.192772, 16.654232, 24.302626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249466, 16.648926, 23.906700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222748, 0.974694, 0.018831,
		0.964518, -0.223149, 0.141102,
		0.141733, -0.013267, -0.989816,
		32.291985, 16.644945, 23.609755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768295, 17.254971, 24.186705>,  <32.192772, 16.654232, 24.302626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768295, 17.254971, 24.186705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579689, 17.172649, 23.843700>,  <32.466526, 17.123257, 23.637897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579689, 17.172649, 23.843700>,  <32.768295, 17.254971, 24.186705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579689, 17.172649, 23.843700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034494, 0.967338, -0.251131,
		0.881185, -0.147991, -0.449013,
		-0.471513, -0.205804, -0.857508,
		32.438236, 17.110909, 23.586449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040581, 17.776684, 23.787226>,  <32.768295, 17.254971, 24.186705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040581, 17.776684, 23.787226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759003, 17.648426, 23.533722>,  <32.590057, 17.571472, 23.381620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759003, 17.648426, 23.533722>,  <33.040581, 17.776684, 23.787226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759003, 17.648426, 23.533722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062568, 0.916823, -0.394361,
		0.707493, -0.237956, -0.665455,
		-0.703945, -0.320644, -0.633758,
		32.547821, 17.552233, 23.343596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350483, 17.950502, 23.160873>,  <33.040581, 17.776684, 23.787226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350483, 17.950502, 23.160873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.956985, 17.909878, 23.101635>,  <32.720886, 17.885504, 23.066092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.956985, 17.909878, 23.101635>,  <33.350483, 17.950502, 23.160873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956985, 17.909878, 23.101635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012173, 0.860521, -0.509270,
		0.179161, -0.499189, -0.847769,
		-0.983745, -0.101561, -0.148095,
		32.661861, 17.879410, 23.057207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291107, 18.238605, 22.480520>,  <33.350483, 17.950502, 23.160873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291107, 18.238605, 22.480520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951992, 18.262955, 22.691250>,  <32.748524, 18.277565, 22.817688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951992, 18.262955, 22.691250>,  <33.291107, 18.238605, 22.480520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951992, 18.262955, 22.691250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215799, 0.867831, -0.447550,
		-0.484438, -0.493117, -0.722604,
		-0.847792, 0.060873, 0.526824,
		32.697655, 18.281216, 22.849297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741459, 18.423578, 22.022650>,  <33.291107, 18.238605, 22.480520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741459, 18.423578, 22.022650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590473, 18.527725, 22.378117>,  <32.499882, 18.590214, 22.591396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590473, 18.527725, 22.378117>,  <32.741459, 18.423578, 22.022650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590473, 18.527725, 22.378117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193825, 0.916187, -0.350762,
		-0.905511, -0.304647, -0.295365,
		-0.377468, 0.260370, 0.888665,
		32.477234, 18.605837, 22.644716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135284, 18.738838, 21.924049>,  <32.741459, 18.423578, 22.022650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135284, 18.738838, 21.924049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236629, 18.886463, 22.281731>,  <32.297436, 18.975039, 22.496340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236629, 18.886463, 22.281731>,  <32.135284, 18.738838, 21.924049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236629, 18.886463, 22.281731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345454, 0.897933, -0.272725,
		-0.903588, -0.239809, 0.354994,
		0.253359, 0.369065, 0.894204,
		32.312637, 18.997183, 22.549992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629618, 19.235577, 21.977013>,  <32.135284, 18.738838, 21.924049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629618, 19.235577, 21.977013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914034, 19.326038, 22.243328>,  <32.084682, 19.380316, 22.403116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914034, 19.326038, 22.243328>,  <31.629618, 19.235577, 21.977013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914034, 19.326038, 22.243328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202385, 0.972620, -0.114240,
		-0.673394, -0.053516, 0.737345,
		0.711042, 0.226156, 0.665787,
		32.127346, 19.393885, 22.443064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304407, 19.773941, 22.352440>,  <31.629618, 19.235577, 21.977013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304407, 19.773941, 22.352440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699791, 19.807064, 22.403175>,  <31.937021, 19.826939, 22.433617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699791, 19.807064, 22.403175>,  <31.304407, 19.773941, 22.352440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699791, 19.807064, 22.403175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037040, 0.944062, -0.327681,
		-0.146876, 0.319202, 0.936236,
		0.988461, 0.082807, 0.126837,
		31.996330, 19.831905, 22.441227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474667, 20.379141, 22.766638>,  <31.304407, 19.773941, 22.352440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474667, 20.379141, 22.766638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796747, 20.314919, 22.538296>,  <31.989996, 20.276386, 22.401291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796747, 20.314919, 22.538296>,  <31.474667, 20.379141, 22.766638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796747, 20.314919, 22.538296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033064, 0.948998, -0.313544,
		0.592081, 0.271340, 0.758825,
		0.805200, -0.160553, -0.570855,
		32.038307, 20.266752, 22.367039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734385, 20.979916, 22.750273>,  <31.474667, 20.379141, 22.766638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734385, 20.979916, 22.750273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.962744, 20.805111, 22.472252>,  <32.099758, 20.700228, 22.305439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.962744, 20.805111, 22.472252>,  <31.734385, 20.979916, 22.750273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962744, 20.805111, 22.472252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153373, 0.888433, -0.432624,
		0.806568, 0.140382, 0.574231,
		0.570898, -0.437012, -0.695051,
		32.134014, 20.674007, 22.263737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314209, 21.556879, 22.573462>,  <31.734385, 20.979916, 22.750273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314209, 21.556879, 22.573462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320854, 21.290455, 22.275177>,  <32.324841, 21.130600, 22.096207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320854, 21.290455, 22.275177>,  <32.314209, 21.556879, 22.573462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320854, 21.290455, 22.275177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167966, 0.737074, -0.654606,
		0.985653, -0.114381, 0.124119,
		0.016611, -0.666062, -0.745712,
		32.325836, 21.090637, 22.051464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035320, 21.611498, 22.133909>,  <32.314209, 21.556879, 22.573462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035320, 21.611498, 22.133909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.739216, 21.454670, 21.915443>,  <32.561554, 21.360573, 21.784365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.739216, 21.454670, 21.915443>,  <33.035320, 21.611498, 22.133909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739216, 21.454670, 21.915443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110604, 0.730270, -0.674145,
		0.663158, -0.559452, -0.497227,
		-0.740262, -0.392070, -0.546163,
		32.517136, 21.337049, 21.751595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194916, 21.549751, 21.307953>,  <33.035320, 21.611498, 22.133909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194916, 21.549751, 21.307953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801529, 21.587296, 21.369888>,  <32.565495, 21.609821, 21.407049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801529, 21.587296, 21.369888>,  <33.194916, 21.549751, 21.307953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801529, 21.587296, 21.369888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016192, 0.806136, -0.591509,
		-0.180338, -0.584239, -0.791292,
		-0.983472, 0.093859, 0.154837,
		32.506489, 21.615454, 21.416340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985634, 22.119072, 20.866377>,  <33.194916, 21.549751, 21.307953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985634, 22.119072, 20.866377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.620167, 22.099316, 21.027752>,  <32.400887, 22.087461, 21.124577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.620167, 22.099316, 21.027752>,  <32.985634, 22.119072, 20.866377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620167, 22.099316, 21.027752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089555, 0.992659, -0.081285,
		-0.396463, -0.110398, -0.911389,
		-0.913672, -0.049393, 0.403439,
		32.346066, 22.084497, 21.148783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539314, 22.477760, 20.416710>,  <32.985634, 22.119072, 20.866377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539314, 22.477760, 20.416710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359131, 22.469479, 20.773731>,  <32.251019, 22.464510, 20.987944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359131, 22.469479, 20.773731>,  <32.539314, 22.477760, 20.416710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359131, 22.469479, 20.773731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057485, 0.998329, -0.005856,
		-0.890943, -0.053946, -0.450900,
		-0.450462, -0.020702, 0.892555,
		32.223991, 22.463268, 21.041498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144379, 23.090384, 20.442667>,  <32.539314, 22.477760, 20.416710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144379, 23.090384, 20.442667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133205, 22.989105, 20.829472>,  <32.126503, 22.928339, 21.061554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133205, 22.989105, 20.829472>,  <32.144379, 23.090384, 20.442667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133205, 22.989105, 20.829472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196153, 0.949970, 0.243068,
		-0.980175, -0.182892, -0.076201,
		-0.027933, -0.253196, 0.967012,
		32.124825, 22.913147, 21.119576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442287, 23.145023, 20.672018>,  <32.144379, 23.090384, 20.442667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442287, 23.145023, 20.672018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.706619, 23.208496, 20.965446>,  <31.865219, 23.246580, 21.141502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.706619, 23.208496, 20.965446>,  <31.442287, 23.145023, 20.672018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706619, 23.208496, 20.965446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371520, 0.918408, 0.136015,
		-0.652133, -0.362418, 0.665864,
		0.660829, 0.158682, 0.733570,
		31.904869, 23.256102, 21.185518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.219921, 43.168079, 19.597195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.603119, 43.132469, 19.488144>,  <24.833036, 43.111103, 19.422714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.603119, 43.132469, 19.488144>,  <24.219921, 43.168079, 19.597195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.603119, 43.132469, 19.488144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011888, -0.962113, 0.272392,
		-0.286545, -0.257709, -0.922756,
		0.957993, -0.089022, -0.272625,
		24.890516, 43.105762, 19.406357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.299051, 42.548111, 19.167692>,  <24.219921, 43.168079, 19.597195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.299051, 42.548111, 19.167692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.652908, 42.641312, 19.329243>,  <24.865223, 42.697231, 19.426174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.652908, 42.641312, 19.329243>,  <24.299051, 42.548111, 19.167692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652908, 42.641312, 19.329243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064311, -0.918887, 0.389243,
		0.461810, -0.318368, -0.827873,
		0.884644, 0.232997, 0.403877,
		24.918303, 42.711212, 19.450405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.667429, 41.980675, 18.951704>,  <24.299051, 42.548111, 19.167692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.667429, 41.980675, 18.951704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.849339, 42.154518, 19.262650>,  <24.958485, 42.258823, 19.449217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.849339, 42.154518, 19.262650>,  <24.667429, 41.980675, 18.951704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849339, 42.154518, 19.262650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059367, -0.885702, 0.460444,
		0.888625, -0.163248, -0.428597,
		0.454776, 0.434606, 0.777365,
		24.985771, 42.284901, 19.495859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002993, 41.424828, 19.270670>,  <24.667429, 41.980675, 18.951704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002993, 41.424828, 19.270670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.071676, 41.703594, 19.549187>,  <25.112886, 41.870853, 19.716297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.071676, 41.703594, 19.549187>,  <25.002993, 41.424828, 19.270670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071676, 41.703594, 19.549187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189359, -0.716958, 0.670906,
		0.966778, 0.016649, -0.255076,
		0.171709, 0.696918, 0.696292,
		25.123188, 41.912670, 19.758074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605257, 41.246967, 19.579460>,  <25.002993, 41.424828, 19.270670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605257, 41.246967, 19.579460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415136, 41.475876, 19.846771>,  <25.301064, 41.613220, 20.007158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415136, 41.475876, 19.846771>,  <25.605257, 41.246967, 19.579460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415136, 41.475876, 19.846771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111944, -0.714050, 0.691087,
		0.872673, 0.403284, 0.275326,
		-0.475300, 0.572272, 0.668277,
		25.272547, 41.647556, 20.047255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980700, 41.099594, 20.195255>,  <25.605257, 41.246967, 19.579460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980700, 41.099594, 20.195255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.625961, 41.257591, 20.291161>,  <25.413118, 41.352390, 20.348703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.625961, 41.257591, 20.291161>,  <25.980700, 41.099594, 20.195255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625961, 41.257591, 20.291161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164435, -0.754715, 0.635111,
		0.431817, 0.523820, 0.734266,
		-0.886845, 0.394991, 0.239765,
		25.359907, 41.376087, 20.363091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903223, 41.185844, 20.969641>,  <25.980700, 41.099594, 20.195255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903223, 41.185844, 20.969641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.540226, 41.155949, 20.804295>,  <25.322428, 41.138012, 20.705086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.540226, 41.155949, 20.804295>,  <25.903223, 41.185844, 20.969641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540226, 41.155949, 20.804295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204001, -0.781797, 0.589218,
		-0.367209, 0.619037, 0.694227,
		-0.907492, -0.074743, -0.413367,
		25.267979, 41.133526, 20.680285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618818, 41.000637, 21.522408>,  <25.903223, 41.185844, 20.969641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618818, 41.000637, 21.522408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.313221, 40.941360, 21.271217>,  <25.129862, 40.905792, 21.120504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.313221, 40.941360, 21.271217>,  <25.618818, 41.000637, 21.522408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313221, 40.941360, 21.271217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268729, -0.811753, 0.518500,
		-0.586598, 0.564886, 0.580351,
		-0.763994, -0.148194, -0.627974,
		25.084023, 40.896904, 21.082825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151333, 40.789860, 22.003334>,  <25.618818, 41.000637, 21.522408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151333, 40.789860, 22.003334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.006220, 40.692146, 21.643620>,  <24.919151, 40.633518, 21.427792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.006220, 40.692146, 21.643620>,  <25.151333, 40.789860, 22.003334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006220, 40.692146, 21.643620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497735, -0.765046, 0.408613,
		-0.787812, 0.595843, 0.155956,
		-0.362783, -0.244286, -0.899285,
		24.897385, 40.618862, 21.373835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.438126, 40.785480, 22.029469>,  <25.151333, 40.789860, 22.003334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.438126, 40.785480, 22.029469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.524128, 40.557751, 21.712067>,  <24.575729, 40.421112, 21.521626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.524128, 40.557751, 21.712067>,  <24.438126, 40.785480, 22.029469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524128, 40.557751, 21.712067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509373, -0.758608, 0.406268,
		-0.833254, 0.316840, -0.453101,
		0.215004, -0.569321, -0.793503,
		24.588629, 40.386955, 21.474016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.746464, 40.486984, 21.823164>,  <24.438126, 40.785480, 22.029469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.746464, 40.486984, 21.823164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.050640, 40.269382, 21.681293>,  <24.233145, 40.138821, 21.596172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.050640, 40.269382, 21.681293>,  <23.746464, 40.486984, 21.823164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.050640, 40.269382, 21.681293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493192, -0.839084, 0.229563,
		-0.422484, 0.000354, -0.906370,
		0.760440, -0.544001, -0.354674,
		24.278772, 40.106182, 21.574892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.443436, 40.067379, 21.415987>,  <23.746464, 40.486984, 21.823164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.443436, 40.067379, 21.415987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.786592, 39.878952, 21.498074>,  <23.992487, 39.765896, 21.547325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.786592, 39.878952, 21.498074>,  <23.443436, 40.067379, 21.415987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.786592, 39.878952, 21.498074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511895, -0.748921, 0.420810,
		-0.044537, -0.466060, -0.883631,
		0.857893, -0.471068, 0.205219,
		24.043961, 39.737633, 21.559639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.507690, 39.353355, 21.171156>,  <23.443436, 40.067379, 21.415987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.507690, 39.353355, 21.171156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.772636, 39.341648, 21.470600>,  <23.931604, 39.334621, 21.650267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.772636, 39.341648, 21.470600>,  <23.507690, 39.353355, 21.171156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.772636, 39.341648, 21.470600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362419, -0.887056, 0.285978,
		0.655689, -0.460732, -0.598162,
		0.662363, -0.029273, 0.748611,
		23.971346, 39.332867, 21.695183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.684082, 38.683529, 21.260090>,  <23.507690, 39.353355, 21.171156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.684082, 38.683529, 21.260090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.817572, 38.850822, 21.598015>,  <23.897665, 38.951199, 21.800770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.817572, 38.850822, 21.598015>,  <23.684082, 38.683529, 21.260090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.817572, 38.850822, 21.598015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207458, -0.841633, 0.498612,
		0.919560, -0.341661, -0.194106,
		0.333723, 0.418235, 0.844813,
		23.917688, 38.976292, 21.851460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137936, 38.206059, 21.535231>,  <23.684082, 38.683529, 21.260090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137936, 38.206059, 21.535231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.067751, 38.452206, 21.842617>,  <24.025640, 38.599895, 22.027048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.067751, 38.452206, 21.842617>,  <24.137936, 38.206059, 21.535231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.067751, 38.452206, 21.842617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013677, -0.778974, 0.626907,
		0.984391, 0.120509, 0.128264,
		-0.175462, 0.615367, 0.768464,
		24.015112, 38.636814, 22.073156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.564573, 37.898823, 22.126688>,  <24.137936, 38.206059, 21.535231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.564573, 37.898823, 22.126688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.259647, 38.123695, 22.254955>,  <24.076693, 38.258621, 22.331915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.259647, 38.123695, 22.254955>,  <24.564573, 37.898823, 22.126688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259647, 38.123695, 22.254955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248210, -0.711526, 0.657361,
		0.597721, 0.421522, 0.681945,
		-0.762313, 0.562183, 0.320668,
		24.030952, 38.292351, 22.351156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626627, 37.879799, 22.766609>,  <24.564573, 37.898823, 22.126688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626627, 37.879799, 22.766609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.243977, 37.969948, 22.692768>,  <24.014387, 38.024036, 22.648464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.243977, 37.969948, 22.692768>,  <24.626627, 37.879799, 22.766609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.243977, 37.969948, 22.692768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291321, -0.741992, 0.603805,
		-0.000894, 0.631393, 0.775462,
		-0.956625, 0.225369, -0.184601,
		23.956989, 38.037560, 22.637388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284437, 37.835239, 23.434202>,  <24.626627, 37.879799, 22.766609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284437, 37.835239, 23.434202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.985201, 37.807163, 23.170254>,  <23.805658, 37.790318, 23.011885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.985201, 37.807163, 23.170254>,  <24.284437, 37.835239, 23.434202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.985201, 37.807163, 23.170254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418839, -0.721356, 0.551561,
		-0.514715, 0.688999, 0.510245,
		-0.748093, -0.070186, -0.659872,
		23.760773, 37.786106, 22.972292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.619991, 37.800129, 23.805092>,  <24.284437, 37.835239, 23.434202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.619991, 37.800129, 23.805092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.523630, 37.664639, 23.441284>,  <23.465813, 37.583344, 23.223000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.523630, 37.664639, 23.441284>,  <23.619991, 37.800129, 23.805092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.523630, 37.664639, 23.441284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371935, -0.833357, 0.408878,
		-0.896454, 0.436782, 0.074774,
		-0.240904, -0.338729, -0.909521,
		23.451359, 37.563019, 23.168428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.913589, 37.525661, 23.898260>,  <23.619991, 37.800129, 23.805092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.913589, 37.525661, 23.898260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057150, 37.364685, 23.561398>,  <23.143286, 37.268101, 23.359280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057150, 37.364685, 23.561398>,  <22.913589, 37.525661, 23.898260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057150, 37.364685, 23.561398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413522, -0.877447, 0.243076,
		-0.836774, 0.261011, -0.481335,
		0.358900, -0.402442, -0.842159,
		23.164820, 37.243954, 23.308750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.328047, 37.276474, 23.550510>,  <22.913589, 37.525661, 23.898260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.328047, 37.276474, 23.550510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.662960, 37.092117, 23.432838>,  <22.863907, 36.981503, 23.362236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.662960, 37.092117, 23.432838>,  <22.328047, 37.276474, 23.550510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.662960, 37.092117, 23.432838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409171, -0.885036, 0.222015,
		-0.362683, -0.065519, -0.929606,
		0.837281, -0.460890, -0.294179,
		22.914145, 36.953850, 23.344585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.781641, 37.803257, 23.764957>,  <22.328047, 37.276474, 23.550510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.781641, 37.803257, 23.764957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.475468, 37.975430, 23.573608>,  <21.291763, 38.078732, 23.458799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.475468, 37.975430, 23.573608>,  <21.781641, 37.803257, 23.764957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.475468, 37.975430, 23.573608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553269, 0.060541, -0.830800,
		-0.328637, -0.900593, -0.284482,
		-0.765436, 0.430427, -0.478374,
		21.245836, 38.104557, 23.430096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.966583, 37.732868, 23.133589>,  <21.781641, 37.803257, 23.764957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.966583, 37.732868, 23.133589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.641537, 37.950428, 23.049850>,  <21.446508, 38.080963, 22.999607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.641537, 37.950428, 23.049850>,  <21.966583, 37.732868, 23.133589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641537, 37.950428, 23.049850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398409, 0.256271, -0.880679,
		-0.425354, -0.799059, -0.424946,
		-0.812616, 0.543903, -0.209346,
		21.397753, 38.113598, 22.987047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.813610, 37.583858, 22.422291>,  <21.966583, 37.732868, 23.133589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.813610, 37.583858, 22.422291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680935, 37.941566, 22.542469>,  <21.601330, 38.156193, 22.614576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680935, 37.941566, 22.542469>,  <21.813610, 37.583858, 22.422291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680935, 37.941566, 22.542469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349903, 0.412375, -0.841139,
		-0.876100, -0.173869, -0.449687,
		-0.331688, 0.894269, 0.300444,
		21.581429, 38.209846, 22.632603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341677, 37.728302, 21.985384>,  <21.813610, 37.583858, 22.422291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341677, 37.728302, 21.985384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.472115, 38.076660, 22.132465>,  <21.550377, 38.285675, 22.220715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.472115, 38.076660, 22.132465>,  <21.341677, 37.728302, 21.985384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.472115, 38.076660, 22.132465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182061, 0.323827, -0.928434,
		-0.927640, 0.369702, -0.052958,
		0.326095, 0.870894, 0.367703,
		21.569942, 38.337929, 22.242777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.960155, 38.167583, 21.629787>,  <21.341677, 37.728302, 21.985384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.960155, 38.167583, 21.629787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.266602, 38.398048, 21.743702>,  <21.450470, 38.536327, 21.812052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.266602, 38.398048, 21.743702>,  <20.960155, 38.167583, 21.629787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266602, 38.398048, 21.743702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061274, 0.506570, -0.860019,
		-0.639773, 0.641425, 0.423396,
		0.766117, 0.576160, 0.284787,
		21.496437, 38.570896, 21.829138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.740076, 38.780899, 21.476421>,  <20.960155, 38.167583, 21.629787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.740076, 38.780899, 21.476421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.134048, 38.817818, 21.534931>,  <21.370432, 38.839970, 21.570038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.134048, 38.817818, 21.534931>,  <20.740076, 38.780899, 21.476421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.134048, 38.817818, 21.534931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114347, 0.287054, -0.951065,
		-0.129764, 0.953458, 0.272174,
		0.984929, 0.092292, 0.146274,
		21.429527, 38.845505, 21.578814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.941174, 39.364124, 21.224951>,  <20.740076, 38.780899, 21.476421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.941174, 39.364124, 21.224951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.275906, 39.145199, 21.219925>,  <21.476746, 39.013844, 21.216909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.275906, 39.145199, 21.219925>,  <20.941174, 39.364124, 21.224951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.275906, 39.145199, 21.219925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177265, 0.292607, -0.939658,
		0.517967, 0.784109, 0.341883,
		0.836832, -0.547316, -0.012566,
		21.526955, 38.981003, 21.216156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.459246, 39.850361, 21.200932>,  <20.941174, 39.364124, 21.224951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.459246, 39.850361, 21.200932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.650906, 39.519878, 21.082409>,  <21.765902, 39.321587, 21.011295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.650906, 39.519878, 21.082409>,  <21.459246, 39.850361, 21.200932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.650906, 39.519878, 21.082409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279178, 0.463504, -0.840966,
		0.832152, 0.320225, 0.452746,
		0.479148, -0.826208, -0.296306,
		21.794649, 39.272015, 20.993517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.130018, 40.140305, 21.071236>,  <21.459246, 39.850361, 21.200932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.130018, 40.140305, 21.071236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.090916, 39.796516, 20.870533>,  <22.067453, 39.590244, 20.750113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.090916, 39.796516, 20.870533>,  <22.130018, 40.140305, 21.071236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.090916, 39.796516, 20.870533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368941, 0.436949, -0.820340,
		0.924298, -0.265312, 0.274378,
		-0.097757, -0.859468, -0.501755,
		22.061588, 39.538677, 20.720007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.727098, 40.145088, 20.783543>,  <22.130018, 40.140305, 21.071236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.727098, 40.145088, 20.783543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.499830, 39.883255, 20.584064>,  <22.363468, 39.726154, 20.464376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.499830, 39.883255, 20.584064>,  <22.727098, 40.145088, 20.783543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.499830, 39.883255, 20.584064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220468, 0.462779, -0.858620,
		0.792827, -0.597791, -0.118623,
		-0.568172, -0.654585, -0.498698,
		22.329378, 39.686878, 20.434456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.153332, 39.923847, 20.113773>,  <22.727098, 40.145088, 20.783543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.153332, 39.923847, 20.113773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.757910, 39.873005, 20.081264>,  <22.520657, 39.842499, 20.061760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.757910, 39.873005, 20.081264>,  <23.153332, 39.923847, 20.113773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.757910, 39.873005, 20.081264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010308, 0.480515, -0.876926,
		0.150516, -0.867726, -0.473705,
		-0.988554, -0.127108, -0.081270,
		22.461344, 39.834873, 20.056883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.078274, 39.906635, 19.500488>,  <23.153332, 39.923847, 20.113773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.078274, 39.906635, 19.500488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.691582, 39.965748, 19.584003>,  <22.459566, 40.001217, 19.634113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.691582, 39.965748, 19.584003>,  <23.078274, 39.906635, 19.500488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.691582, 39.965748, 19.584003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073426, 0.621561, -0.779917,
		-0.245034, -0.769300, -0.590030,
		-0.966730, 0.147783, 0.208790,
		22.401562, 40.010082, 19.646641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.709747, 39.834915, 18.850790>,  <23.078274, 39.906635, 19.500488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.709747, 39.834915, 18.850790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.515871, 40.060299, 19.118397>,  <22.399546, 40.195530, 19.278961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.515871, 40.060299, 19.118397>,  <22.709747, 39.834915, 18.850790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.515871, 40.060299, 19.118397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056932, 0.742923, -0.666951,
		-0.872830, -0.361355, -0.328011,
		-0.484693, 0.563461, 0.669018,
		22.370462, 40.229336, 19.319101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.164351, 40.167446, 18.406311>,  <22.709747, 39.834915, 18.850790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.164351, 40.167446, 18.406311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.192411, 40.390408, 18.737221>,  <22.209248, 40.524185, 18.935766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.192411, 40.390408, 18.737221>,  <22.164351, 40.167446, 18.406311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.192411, 40.390408, 18.737221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132793, 0.827156, -0.546058,
		-0.988658, -0.071548, 0.132047,
		0.070154, 0.557399, 0.827275,
		22.213457, 40.557629, 18.985403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.606285, 40.582748, 18.429163>,  <22.164351, 40.167446, 18.406311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.606285, 40.582748, 18.429163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.874542, 40.778828, 18.651852>,  <22.035498, 40.896477, 18.785465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.874542, 40.778828, 18.651852>,  <21.606285, 40.582748, 18.429163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874542, 40.778828, 18.651852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040366, 0.773529, -0.632473,
		-0.740679, 0.401692, 0.538551,
		0.670645, 0.490199, 0.556723,
		22.075735, 40.925888, 18.818869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336130, 41.169636, 18.469162>,  <21.606285, 40.582748, 18.429163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336130, 41.169636, 18.469162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.723255, 41.233654, 18.546852>,  <21.955530, 41.272064, 18.593466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.723255, 41.233654, 18.546852>,  <21.336130, 41.169636, 18.469162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.723255, 41.233654, 18.546852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006270, 0.786828, -0.617140,
		-0.251593, 0.596059, 0.762506,
		0.967813, 0.160049, 0.194223,
		22.013599, 41.281670, 18.605120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.420135, 41.884628, 18.571842>,  <21.336130, 41.169636, 18.469162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.420135, 41.884628, 18.571842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.798256, 41.771072, 18.507572>,  <22.025127, 41.702938, 18.469011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.798256, 41.771072, 18.507572>,  <21.420135, 41.884628, 18.571842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.798256, 41.771072, 18.507572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172558, 0.853187, -0.492236,
		0.276823, 0.437585, 0.855505,
		0.945301, -0.283886, -0.160673,
		22.081846, 41.685905, 18.459370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.973022, 42.445210, 18.825558>,  <21.420135, 41.884628, 18.571842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.973022, 42.445210, 18.825558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.117085, 42.206200, 18.538990>,  <22.203522, 42.062794, 18.367050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.117085, 42.206200, 18.538990>,  <21.973022, 42.445210, 18.825558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.117085, 42.206200, 18.538990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072540, 0.783567, -0.617059,
		0.930068, 0.170267, 0.325548,
		0.360153, -0.597522, -0.716419,
		22.225130, 42.026943, 18.324064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.501493, 42.797043, 18.556900>,  <21.973022, 42.445210, 18.825558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.501493, 42.797043, 18.556900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.464041, 42.527306, 18.263916>,  <22.441568, 42.365463, 18.088125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.464041, 42.527306, 18.263916>,  <22.501493, 42.797043, 18.556900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.464041, 42.527306, 18.263916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214230, 0.704814, -0.676271,
		0.972285, -0.220237, 0.078469,
		-0.093634, -0.674339, -0.732462,
		22.435951, 42.325005, 18.044178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.022507, 42.943974, 18.046251>,  <22.501493, 42.797043, 18.556900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.022507, 42.943974, 18.046251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.794838, 42.708900, 17.816235>,  <22.658237, 42.567856, 17.678225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.794838, 42.708900, 17.816235>,  <23.022507, 42.943974, 18.046251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.794838, 42.708900, 17.816235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202930, 0.577340, -0.790884,
		0.796782, -0.566843, -0.209348,
		-0.569172, -0.587680, -0.575044,
		22.624086, 42.532597, 17.643721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.459866, 42.762547, 17.499462>,  <23.022507, 42.943974, 18.046251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.459866, 42.762547, 17.499462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.083179, 42.706394, 17.377174>,  <22.857168, 42.672703, 17.303802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.083179, 42.706394, 17.377174>,  <23.459866, 42.762547, 17.499462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.083179, 42.706394, 17.377174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193364, 0.517774, -0.833379,
		0.275280, -0.843922, -0.460453,
		-0.941717, -0.140377, -0.305717,
		22.800665, 42.664280, 17.285460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.225838, 26.313236, 20.797667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570396, 26.474098, 20.921776>,  <26.777132, 26.570616, 20.996241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570396, 26.474098, 20.921776>,  <26.225838, 26.313236, 20.797667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570396, 26.474098, 20.921776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457172, 0.880034, 0.128580,
		-0.221342, -0.252607, 0.941912,
		0.861395, 0.402156, 0.310273,
		26.828815, 26.594746, 21.014858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971746, 26.647100, 21.291225>,  <26.225838, 26.313236, 20.797667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971746, 26.647100, 21.291225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326300, 26.819584, 21.223831>,  <26.539032, 26.923075, 21.183393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326300, 26.819584, 21.223831>,  <25.971746, 26.647100, 21.291225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326300, 26.819584, 21.223831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443251, 0.895504, -0.040006,
		0.133629, 0.110142, 0.984892,
		0.886381, 0.431208, -0.168486,
		26.592215, 26.948946, 21.173285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025118, 27.144863, 21.751986>,  <25.971746, 26.647100, 21.291225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025118, 27.144863, 21.751986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295725, 27.276653, 21.488541>,  <26.458090, 27.355728, 21.330473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295725, 27.276653, 21.488541>,  <26.025118, 27.144863, 21.751986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295725, 27.276653, 21.488541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327904, 0.935556, 0.131200,
		0.659395, 0.127202, 0.740957,
		0.676518, 0.329475, -0.658612,
		26.498680, 27.375496, 21.290956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420481, 27.766354, 21.982435>,  <26.025118, 27.144863, 21.751986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420481, 27.766354, 21.982435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492483, 27.778664, 21.589161>,  <26.535685, 27.786049, 21.353197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492483, 27.778664, 21.589161>,  <26.420481, 27.766354, 21.982435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492483, 27.778664, 21.589161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099397, 0.994964, 0.012944,
		0.978631, 0.095396, 0.182157,
		0.180005, 0.030773, -0.983184,
		26.546484, 27.787895, 21.294205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719591, 28.397337, 21.972534>,  <26.420481, 27.766354, 21.982435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719591, 28.397337, 21.972534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660812, 28.321178, 21.584274>,  <26.625546, 28.275484, 21.351318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660812, 28.321178, 21.584274>,  <26.719591, 28.397337, 21.972534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660812, 28.321178, 21.584274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041325, 0.979261, -0.198341,
		0.988281, -0.069257, -0.136030,
		-0.146946, -0.190395, -0.970648,
		26.616730, 28.264059, 21.293079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198837, 28.827734, 21.653387>,  <26.719591, 28.397337, 21.972534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198837, 28.827734, 21.653387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927971, 28.716007, 21.381084>,  <26.765451, 28.648972, 21.217703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927971, 28.716007, 21.381084>,  <27.198837, 28.827734, 21.653387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927971, 28.716007, 21.381084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058938, 0.942769, -0.328197,
		0.733467, -0.182121, -0.654873,
		-0.677165, -0.279319, -0.680755,
		26.724821, 28.632212, 21.176857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386145, 29.002779, 21.031532>,  <27.198837, 28.827734, 21.653387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386145, 29.002779, 21.031532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989058, 28.994541, 20.984062>,  <26.750805, 28.989597, 20.955580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989058, 28.994541, 20.984062>,  <27.386145, 29.002779, 21.031532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989058, 28.994541, 20.984062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011902, 0.997224, -0.073504,
		0.119861, -0.071556, -0.990209,
		-0.992719, -0.020596, -0.118676,
		26.691242, 28.988363, 20.948460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157553, 29.365524, 20.437126>,  <27.386145, 29.002779, 21.031532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157553, 29.365524, 20.437126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823408, 29.359543, 20.656925>,  <26.622921, 29.355953, 20.788805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823408, 29.359543, 20.656925>,  <27.157553, 29.365524, 20.437126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823408, 29.359543, 20.656925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154297, 0.965821, -0.208285,
		-0.527600, -0.258779, -0.809118,
		-0.835363, -0.014953, 0.549496,
		26.572800, 29.355057, 20.821774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612474, 29.697449, 20.051701>,  <27.157553, 29.365524, 20.437126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612474, 29.697449, 20.051701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487364, 29.713268, 20.431301>,  <26.412296, 29.722761, 20.659061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487364, 29.713268, 20.431301>,  <26.612474, 29.697449, 20.051701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487364, 29.713268, 20.431301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108380, 0.991121, -0.077027,
		-0.943623, -0.126946, -0.305714,
		-0.312778, 0.039551, 0.949003,
		26.393530, 29.725134, 20.716002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173964, 30.215990, 20.095079>,  <26.612474, 29.697449, 20.051701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173964, 30.215990, 20.095079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229544, 30.154152, 20.486343>,  <26.262892, 30.117048, 20.721102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229544, 30.154152, 20.486343>,  <26.173964, 30.215990, 20.095079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229544, 30.154152, 20.486343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003388, 0.987660, 0.156578,
		-0.990294, -0.025070, 0.136709,
		0.138948, -0.154595, 0.978158,
		26.271229, 30.107773, 20.779791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545542, 30.554232, 20.463264>,  <26.173964, 30.215990, 20.095079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545542, 30.554232, 20.463264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860228, 30.535965, 20.709515>,  <26.049038, 30.525005, 20.857265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860228, 30.535965, 20.709515>,  <25.545542, 30.554232, 20.463264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860228, 30.535965, 20.709515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100716, 0.974404, 0.200982,
		-0.609048, -0.220119, 0.761977,
		0.786713, -0.045664, 0.615628,
		26.096241, 30.522266, 20.894203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393923, 30.894932, 21.052034>,  <25.545542, 30.554232, 20.463264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393923, 30.894932, 21.052034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792564, 30.894176, 21.019115>,  <26.031750, 30.893723, 20.999363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792564, 30.894176, 21.019115>,  <25.393923, 30.894932, 21.052034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792564, 30.894176, 21.019115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002560, 0.998542, -0.053923,
		0.082280, 0.053951, 0.995148,
		0.996606, -0.001889, -0.082299,
		26.091547, 30.893610, 20.994427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631250, 31.241949, 21.630350>,  <25.393923, 30.894932, 21.052034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631250, 31.241949, 21.630350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911402, 31.242081, 21.344841>,  <26.079493, 31.242161, 21.173536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911402, 31.242081, 21.344841>,  <25.631250, 31.241949, 21.630350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911402, 31.242081, 21.344841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037451, 0.998605, 0.037210,
		0.712790, -0.052792, 0.699388,
		0.700377, 0.000330, -0.713773,
		26.121515, 31.242180, 21.130709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899742, 31.876625, 21.696108>,  <25.631250, 31.241949, 21.630350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899742, 31.876625, 21.696108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113419, 31.775940, 21.373299>,  <26.241625, 31.715528, 21.179613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113419, 31.775940, 21.373299>,  <25.899742, 31.876625, 21.696108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113419, 31.775940, 21.373299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193365, 0.965716, -0.173214,
		0.822953, -0.063521, 0.564547,
		0.534190, -0.251710, -0.807021,
		26.273676, 31.700426, 21.131193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355457, 32.089783, 22.169933>,  <25.899742, 31.876625, 21.696108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355457, 32.089783, 22.169933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118523, 32.250118, 22.449493>,  <24.976362, 32.346321, 22.617229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118523, 32.250118, 22.449493>,  <25.355457, 32.089783, 22.169933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118523, 32.250118, 22.449493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333258, -0.667877, 0.665492,
		0.733538, 0.627109, 0.262024,
		-0.592336, 0.400842, 0.698902,
		24.940823, 32.370369, 22.659164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746395, 32.074039, 22.852516>,  <25.355457, 32.089783, 22.169933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746395, 32.074039, 22.852516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363657, 32.104412, 22.964714>,  <25.134014, 32.122635, 23.032032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363657, 32.104412, 22.964714>,  <25.746395, 32.074039, 22.852516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363657, 32.104412, 22.964714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184583, -0.586691, 0.788494,
		0.224438, 0.806242, 0.547358,
		-0.956847, 0.075935, 0.280494,
		25.076603, 32.127193, 23.048862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747959, 32.337212, 23.568254>,  <25.746395, 32.074039, 22.852516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747959, 32.337212, 23.568254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396589, 32.155327, 23.509457>,  <25.185768, 32.046196, 23.474178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396589, 32.155327, 23.509457>,  <25.747959, 32.337212, 23.568254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396589, 32.155327, 23.509457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260486, -0.713485, 0.650452,
		-0.400645, 0.533084, 0.745189,
		-0.878425, -0.454711, -0.146993,
		25.133062, 32.018913, 23.465359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450518, 32.283787, 24.206408>,  <25.747959, 32.337212, 23.568254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450518, 32.283787, 24.206408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273329, 32.002781, 23.983608>,  <25.167015, 31.834177, 23.849928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273329, 32.002781, 23.983608>,  <25.450518, 32.283787, 24.206408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273329, 32.002781, 23.983608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338246, -0.706324, 0.621849,
		-0.830280, 0.087060, 0.550505,
		-0.442973, -0.702515, -0.556999,
		25.140436, 31.792027, 23.816509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269421, 31.828257, 24.683214>,  <25.450518, 32.283787, 24.206408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269421, 31.828257, 24.683214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259943, 31.614052, 24.345535>,  <25.254257, 31.485529, 24.142929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259943, 31.614052, 24.345535>,  <25.269421, 31.828257, 24.683214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259943, 31.614052, 24.345535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228454, -0.824990, 0.516914,
		-0.973266, -0.180612, 0.141888,
		-0.023695, -0.535510, -0.844196,
		25.252834, 31.453400, 24.092276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830818, 31.214844, 24.753218>,  <25.269421, 31.828257, 24.683214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830818, 31.214844, 24.753218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044121, 31.121162, 24.428062>,  <25.172102, 31.064953, 24.232969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044121, 31.121162, 24.428062>,  <24.830818, 31.214844, 24.753218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044121, 31.121162, 24.428062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084066, -0.941486, 0.326402,
		-0.841768, -0.242392, -0.482363,
		0.533255, -0.234204, -0.812889,
		25.204098, 31.050901, 24.184196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510691, 30.642483, 24.472530>,  <24.830818, 31.214844, 24.753218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510691, 30.642483, 24.472530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886160, 30.659794, 24.335697>,  <25.111441, 30.670181, 24.253597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886160, 30.659794, 24.335697>,  <24.510691, 30.642483, 24.472530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.886160, 30.659794, 24.335697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101239, -0.982958, 0.153444,
		-0.329610, -0.178666, -0.927057,
		0.938673, 0.043278, -0.342081,
		25.167763, 30.672777, 24.233072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556120, 30.082680, 24.109301>,  <24.510691, 30.642483, 24.472530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556120, 30.082680, 24.109301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940170, 30.156250, 24.193523>,  <25.170601, 30.200392, 24.244057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940170, 30.156250, 24.193523>,  <24.556120, 30.082680, 24.109301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.940170, 30.156250, 24.193523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144605, -0.971264, 0.189038,
		0.239274, -0.151052, -0.959131,
		0.960124, 0.183926, 0.210555,
		25.228207, 30.211428, 24.256689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.086910, 29.648903, 23.666315>,  <24.556120, 30.082680, 24.109301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.086910, 29.648903, 23.666315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320650, 29.747601, 23.975548>,  <25.460894, 29.806820, 24.161087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320650, 29.747601, 23.975548>,  <25.086910, 29.648903, 23.666315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320650, 29.747601, 23.975548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237478, -0.962944, 0.127840,
		0.775978, 0.108887, -0.621291,
		0.584348, 0.246744, 0.773081,
		25.495955, 29.821623, 24.207472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666258, 29.216848, 23.626286>,  <25.086910, 29.648903, 23.666315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666258, 29.216848, 23.626286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712410, 29.349274, 24.000896>,  <25.740101, 29.428728, 24.225664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712410, 29.349274, 24.000896>,  <25.666258, 29.216848, 23.626286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712410, 29.349274, 24.000896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563204, -0.798431, 0.212860,
		0.818223, 0.502897, -0.278578,
		0.115378, 0.331063, 0.936528,
		25.747023, 29.448593, 24.281855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246662, 28.938957, 23.738834>,  <25.666258, 29.216848, 23.626286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246662, 28.938957, 23.738834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142956, 29.019585, 24.116650>,  <26.080732, 29.067961, 24.343338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142956, 29.019585, 24.116650>,  <26.246662, 28.938957, 23.738834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142956, 29.019585, 24.116650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592584, -0.739055, 0.320376,
		0.762643, 0.642781, 0.072167,
		-0.259267, 0.201568, 0.944537,
		26.065176, 29.080055, 24.400011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941565, 28.885740, 24.139013>,  <26.246662, 28.938957, 23.738834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941565, 28.885740, 24.139013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660276, 28.855194, 24.421757>,  <26.491503, 28.836866, 24.591402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660276, 28.855194, 24.421757>,  <26.941565, 28.885740, 24.139013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660276, 28.855194, 24.421757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434504, -0.833102, 0.342268,
		0.562747, 0.547823, 0.619036,
		-0.703223, -0.076363, 0.706857,
		26.449310, 28.832285, 24.633814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375305, 28.730570, 24.729738>,  <26.941565, 28.885740, 24.139013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375305, 28.730570, 24.729738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996025, 28.611446, 24.773972>,  <26.768457, 28.539972, 24.800512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996025, 28.611446, 24.773972>,  <27.375305, 28.730570, 24.729738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996025, 28.611446, 24.773972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317401, -0.873585, 0.368924,
		-0.013265, 0.384913, 0.922857,
		-0.948198, -0.297810, 0.110584,
		26.711565, 28.522104, 24.807146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344370, 28.427217, 25.330133>,  <27.375305, 28.730570, 24.729738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344370, 28.427217, 25.330133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033390, 28.275459, 25.129482>,  <26.846802, 28.184404, 25.009092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033390, 28.275459, 25.129482>,  <27.344370, 28.427217, 25.330133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033390, 28.275459, 25.129482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263488, -0.920680, 0.287964,
		-0.571091, 0.091705, 0.815748,
		-0.777451, -0.379393, -0.501629,
		26.800156, 28.161642, 24.978994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502943, 28.792690, 25.953999>,  <27.344370, 28.427217, 25.330133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502943, 28.792690, 25.953999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800318, 28.771111, 26.220650>,  <27.978743, 28.758163, 26.380640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800318, 28.771111, 26.220650>,  <27.502943, 28.792690, 25.953999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800318, 28.771111, 26.220650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189923, 0.972737, -0.133084,
		-0.641274, 0.225547, 0.733414,
		0.743436, -0.053949, 0.666627,
		28.023348, 28.754927, 26.420637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375729, 29.285006, 26.465500>,  <27.502943, 28.792690, 25.953999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375729, 29.285006, 26.465500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767389, 29.208244, 26.438862>,  <28.002386, 29.162188, 26.422880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767389, 29.208244, 26.438862>,  <27.375729, 29.285006, 26.465500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767389, 29.208244, 26.438862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163981, 0.940238, -0.298434,
		0.119885, 0.281292, 0.952104,
		0.979152, -0.191905, -0.066594,
		28.061134, 29.150673, 26.418884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602650, 29.868935, 26.885378>,  <27.375729, 29.285006, 26.465500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602650, 29.868935, 26.885378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891977, 29.721264, 26.651962>,  <28.065575, 29.632662, 26.511913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891977, 29.721264, 26.651962>,  <27.602650, 29.868935, 26.885378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891977, 29.721264, 26.651962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271667, 0.929073, -0.251039,
		0.634828, 0.023053, 0.772309,
		0.723319, -0.369178, -0.583539,
		28.108973, 29.610510, 26.476900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190897, 30.358713, 26.916412>,  <27.602650, 29.868935, 26.885378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190897, 30.358713, 26.916412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297184, 30.167545, 26.581512>,  <28.360956, 30.052845, 26.380571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297184, 30.167545, 26.581512>,  <28.190897, 30.358713, 26.916412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297184, 30.167545, 26.581512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362524, 0.854262, -0.372575,
		0.893292, -0.204524, 0.400249,
		0.265717, -0.477918, -0.837251,
		28.376900, 30.024170, 26.330338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781437, 30.736914, 26.699972>,  <28.190897, 30.358713, 26.916412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781437, 30.736914, 26.699972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676058, 30.518501, 26.381866>,  <28.612831, 30.387455, 26.191002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676058, 30.518501, 26.381866>,  <28.781437, 30.736914, 26.699972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676058, 30.518501, 26.381866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285490, 0.743329, -0.604944,
		0.921462, -0.386410, -0.039940,
		-0.263445, -0.546030, -0.795266,
		28.597025, 30.354692, 26.143286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381485, 30.773811, 26.163115>,  <28.781437, 30.736914, 26.699972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381485, 30.773811, 26.163115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035095, 30.671822, 25.991032>,  <28.827261, 30.610628, 25.887781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035095, 30.671822, 25.991032>,  <29.381485, 30.773811, 26.163115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035095, 30.671822, 25.991032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153006, 0.683924, -0.713328,
		0.476109, -0.683548, -0.553248,
		-0.865973, -0.254972, -0.430209,
		28.775303, 30.595329, 25.861969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502901, 30.978231, 25.538507>,  <29.381485, 30.773811, 26.163115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502901, 30.978231, 25.538507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109119, 30.912392, 25.513988>,  <28.872850, 30.872889, 25.499277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109119, 30.912392, 25.513988>,  <29.502901, 30.978231, 25.538507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109119, 30.912392, 25.513988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074916, 0.709145, -0.701072,
		0.158865, -0.685581, -0.710451,
		-0.984454, -0.164600, -0.061298,
		28.813784, 30.863012, 25.495600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293844, 30.823481, 24.741858>,  <29.502901, 30.978231, 25.538507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293844, 30.823481, 24.741858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986578, 30.979679, 24.944809>,  <28.802219, 31.073399, 25.066580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986578, 30.979679, 24.944809>,  <29.293844, 30.823481, 24.741858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986578, 30.979679, 24.944809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048044, 0.755077, -0.653874,
		-0.638447, -0.526659, -0.561262,
		-0.768165, 0.390499, 0.507380,
		28.756128, 31.096828, 25.097023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841085, 30.985302, 24.268551>,  <29.293844, 30.823481, 24.741858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841085, 30.985302, 24.268551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637970, 31.177250, 24.554733>,  <28.516102, 31.292419, 24.726442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637970, 31.177250, 24.554733>,  <28.841085, 30.985302, 24.268551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637970, 31.177250, 24.554733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117417, 0.784190, -0.609310,
		-0.853444, -0.393406, -0.341856,
		-0.507786, 0.479872, 0.715455,
		28.485634, 31.321211, 24.769369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224613, 31.100567, 24.033567>,  <28.841085, 30.985302, 24.268551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224613, 31.100567, 24.033567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277811, 31.394272, 24.299850>,  <28.309731, 31.570496, 24.459620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277811, 31.394272, 24.299850>,  <28.224613, 31.100567, 24.033567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277811, 31.394272, 24.299850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322029, 0.667246, -0.671625,
		-0.937341, -0.125054, 0.325196,
		0.132997, 0.734265, 0.665708,
		28.317711, 31.614552, 24.499563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695829, 31.511557, 23.829746>,  <28.224613, 31.100567, 24.033567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695829, 31.511557, 23.829746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920391, 31.742191, 24.067192>,  <28.055128, 31.880571, 24.209660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920391, 31.742191, 24.067192>,  <27.695829, 31.511557, 23.829746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920391, 31.742191, 24.067192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240573, 0.800052, -0.549583,
		-0.791803, 0.165729, 0.587862,
		0.561402, 0.576585, 0.593614,
		28.088812, 31.915167, 24.245275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311146, 32.055336, 24.154226>,  <27.695829, 31.511557, 23.829746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311146, 32.055336, 24.154226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696569, 32.154091, 24.113045>,  <27.927824, 32.213345, 24.088335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696569, 32.154091, 24.113045>,  <27.311146, 32.055336, 24.154226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696569, 32.154091, 24.113045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257889, 0.755179, -0.602659,
		-0.071039, 0.607249, 0.791329,
		0.963560, 0.246887, -0.102956,
		27.985638, 32.228157, 24.082157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.802391, 24.907461, 27.547144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.157623, 25.071411, 27.463894>,  <28.370762, 25.169781, 27.413944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.157623, 25.071411, 27.463894>,  <27.802391, 24.907461, 27.547144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157623, 25.071411, 27.463894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367296, 0.904939, 0.214894,
		0.276419, -0.114400, 0.954204,
		0.888080, 0.409876, -0.208124,
		28.424047, 25.194374, 27.401457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081621, 25.402861, 28.111017>,  <27.802391, 24.907461, 27.547144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081621, 25.402861, 28.111017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.261427, 25.500645, 27.767349>,  <28.369310, 25.559315, 27.561148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.261427, 25.500645, 27.767349>,  <28.081621, 25.402861, 28.111017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261427, 25.500645, 27.767349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237724, 0.959877, 0.148738,
		0.861060, 0.137387, 0.489592,
		0.449513, 0.244460, -0.859172,
		28.396280, 25.573982, 27.509598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502344, 26.030142, 28.330435>,  <28.081621, 25.402861, 28.111017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502344, 26.030142, 28.330435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.464436, 26.037106, 27.932297>,  <28.441690, 26.041285, 27.693413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.464436, 26.037106, 27.932297>,  <28.502344, 26.030142, 28.330435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464436, 26.037106, 27.932297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267843, 0.962532, 0.042340,
		0.958790, 0.270609, -0.086558,
		-0.094773, 0.017411, -0.995347,
		28.436003, 26.042330, 27.633694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801903, 26.763451, 28.209330>,  <28.502344, 26.030142, 28.330435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801903, 26.763451, 28.209330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.671265, 26.636559, 27.853195>,  <28.592882, 26.560423, 27.639515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.671265, 26.636559, 27.853195>,  <28.801903, 26.763451, 28.209330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671265, 26.636559, 27.853195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090874, 0.948167, -0.304501,
		0.940784, -0.018542, -0.338500,
		-0.326601, -0.317231, -0.890335,
		28.573286, 26.541389, 27.586094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238970, 27.074970, 27.760241>,  <28.801903, 26.763451, 28.209330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238970, 27.074970, 27.760241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.899359, 26.997078, 27.563778>,  <28.695593, 26.950342, 27.445900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.899359, 26.997078, 27.563778>,  <29.238970, 27.074970, 27.760241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899359, 26.997078, 27.563778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027805, 0.911845, -0.409592,
		0.527617, -0.361411, -0.768767,
		-0.849027, -0.194732, -0.491154,
		28.644651, 26.938658, 27.416431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361298, 27.240356, 27.025618>,  <29.238970, 27.074970, 27.760241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361298, 27.240356, 27.025618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.966324, 27.245083, 27.088657>,  <28.729340, 27.247919, 27.126482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.966324, 27.245083, 27.088657>,  <29.361298, 27.240356, 27.025618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966324, 27.245083, 27.088657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068762, 0.865749, -0.495732,
		-0.142301, -0.500339, -0.854056,
		-0.987432, 0.011817, 0.157601,
		28.670094, 27.248629, 27.135937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978024, 27.366293, 26.408222>,  <29.361298, 27.240356, 27.025618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978024, 27.366293, 26.408222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.716885, 27.488892, 26.685307>,  <28.560202, 27.562450, 26.851557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.716885, 27.488892, 26.685307>,  <28.978024, 27.366293, 26.408222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716885, 27.488892, 26.685307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246218, 0.778962, -0.576711,
		-0.716357, -0.547062, -0.433078,
		-0.652848, 0.306499, 0.692711,
		28.521030, 27.580841, 26.893120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454449, 27.652981, 25.988289>,  <28.978024, 27.366293, 26.408222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454449, 27.652981, 25.988289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.337540, 27.801704, 26.340729>,  <28.267395, 27.890938, 26.552193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.337540, 27.801704, 26.340729>,  <28.454449, 27.652981, 25.988289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337540, 27.801704, 26.340729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196488, 0.878326, -0.435816,
		-0.935932, -0.300502, -0.183655,
		-0.292273, 0.371808, 0.881099,
		28.249859, 27.913246, 26.605059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721710, 28.038492, 25.921019>,  <28.454449, 27.652981, 25.988289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721710, 28.038492, 25.921019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.949377, 28.180355, 26.217739>,  <28.085978, 28.265472, 26.395771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.949377, 28.180355, 26.217739>,  <27.721710, 28.038492, 25.921019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949377, 28.180355, 26.217739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105735, 0.926270, -0.361723,
		-0.815395, 0.127446, 0.564702,
		0.569167, 0.354656, 0.741801,
		28.120127, 28.286753, 26.440279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978489, 27.961031, 25.904276>,  <27.721710, 28.038492, 25.921019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978489, 27.961031, 25.904276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.859219, 27.878380, 25.531525>,  <26.787657, 27.828789, 25.307875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.859219, 27.878380, 25.531525>,  <26.978489, 27.961031, 25.904276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859219, 27.878380, 25.531525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307052, -0.945159, 0.111323,
		-0.903775, -0.252940, 0.345270,
		-0.298177, -0.206627, -0.931877,
		26.769766, 27.816391, 25.251961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558073, 27.332851, 26.060410>,  <26.978489, 27.961031, 25.904276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558073, 27.332851, 26.060410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.640179, 27.366413, 25.670368>,  <26.689442, 27.386551, 25.436344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.640179, 27.366413, 25.670368>,  <26.558073, 27.332851, 26.060410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640179, 27.366413, 25.670368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245027, -0.968995, -0.031799,
		-0.947538, -0.232399, -0.219459,
		0.205265, 0.083904, -0.975103,
		26.701757, 27.391584, 25.377838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124392, 26.901609, 25.731613>,  <26.558073, 27.332851, 26.060410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124392, 26.901609, 25.731613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.388760, 26.952850, 25.435837>,  <26.547380, 26.983595, 25.258371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.388760, 26.952850, 25.435837>,  <26.124392, 26.901609, 25.731613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388760, 26.952850, 25.435837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082562, -0.991754, -0.098019,
		-0.745902, 0.003733, -0.666046,
		0.660919, 0.128102, -0.739443,
		26.587036, 26.991282, 25.214005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989603, 26.551729, 25.170685>,  <26.124392, 26.901609, 25.731613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989603, 26.551729, 25.170685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.384184, 26.569637, 25.107555>,  <26.620932, 26.580381, 25.069677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.384184, 26.569637, 25.107555>,  <25.989603, 26.551729, 25.170685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384184, 26.569637, 25.107555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019333, -0.987063, -0.159164,
		-0.162906, 0.153957, -0.974556,
		0.986452, 0.044769, -0.157822,
		26.680119, 26.583069, 25.060209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171152, 25.976768, 24.664156>,  <25.989603, 26.551729, 25.170685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171152, 25.976768, 24.664156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.531994, 26.079159, 24.803116>,  <26.748499, 26.140593, 24.886492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.531994, 26.079159, 24.803116>,  <26.171152, 25.976768, 24.664156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531994, 26.079159, 24.803116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391948, -0.822829, -0.411496,
		0.180520, 0.507375, -0.842605,
		0.902103, 0.255974, 0.347402,
		26.802626, 26.155951, 24.907337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675470, 25.939831, 24.074303>,  <26.171152, 25.976768, 24.664156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675470, 25.939831, 24.074303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.877716, 25.912468, 24.418320>,  <26.999063, 25.896049, 24.624731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.877716, 25.912468, 24.418320>,  <26.675470, 25.939831, 24.074303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877716, 25.912468, 24.418320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299588, -0.920901, -0.249375,
		0.809076, 0.383746, -0.445124,
		0.505612, -0.068409, 0.860045,
		27.029400, 25.891945, 24.676332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305050, 25.655254, 23.894737>,  <26.675470, 25.939831, 24.074303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305050, 25.655254, 23.894737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.229223, 25.556213, 24.274792>,  <27.183727, 25.496788, 24.502825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.229223, 25.556213, 24.274792>,  <27.305050, 25.655254, 23.894737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229223, 25.556213, 24.274792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371793, -0.913726, -0.163937,
		0.908754, 0.322176, 0.265271,
		-0.189568, -0.247605, 0.950135,
		27.172354, 25.481932, 24.559832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931736, 25.281683, 24.077850>,  <27.305050, 25.655254, 23.894737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931736, 25.281683, 24.077850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.661222, 25.194012, 24.359161>,  <27.498915, 25.141409, 24.527948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.661222, 25.194012, 24.359161>,  <27.931736, 25.281683, 24.077850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661222, 25.194012, 24.359161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309735, -0.950822, 0.001517,
		0.668361, 0.218856, 0.710912,
		-0.676282, -0.219180, 0.703279,
		27.458338, 25.128258, 24.570145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325190, 24.973179, 24.607725>,  <27.931736, 25.281683, 24.077850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325190, 24.973179, 24.607725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.953169, 24.860790, 24.702431>,  <27.729956, 24.793358, 24.759254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.953169, 24.860790, 24.702431>,  <28.325190, 24.973179, 24.607725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953169, 24.860790, 24.702431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313979, -0.942444, 0.114962,
		0.190835, 0.181259, 0.964742,
		-0.930053, -0.280970, 0.236763,
		27.674152, 24.776499, 24.773460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306704, 24.478899, 25.238962>,  <28.325190, 24.973179, 24.607725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306704, 24.478899, 25.238962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.969824, 24.412148, 25.033886>,  <27.767696, 24.372097, 24.910841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.969824, 24.412148, 25.033886>,  <28.306704, 24.478899, 25.238962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969824, 24.412148, 25.033886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229956, -0.971249, -0.061614,
		-0.487666, -0.169787, 0.856361,
		-0.842201, -0.166878, -0.512688,
		27.717163, 24.362083, 24.880079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940636, 23.960958, 25.619827>,  <28.306704, 24.478899, 25.238962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940636, 23.960958, 25.619827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.826838, 23.967922, 25.236420>,  <27.758558, 23.972101, 25.006374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.826838, 23.967922, 25.236420>,  <27.940636, 23.960958, 25.619827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826838, 23.967922, 25.236420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141322, -0.988150, -0.059896,
		-0.948203, -0.152500, 0.278665,
		-0.284497, 0.017412, -0.958519,
		27.741488, 23.973146, 24.948864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375998, 23.472355, 25.538349>,  <27.940636, 23.960958, 25.619827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375998, 23.472355, 25.538349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.508417, 23.493004, 25.161469>,  <27.587870, 23.505392, 24.935341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.508417, 23.493004, 25.161469>,  <27.375998, 23.472355, 25.538349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508417, 23.493004, 25.161469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077081, -0.996645, -0.027520,
		-0.940459, -0.063515, -0.333920,
		0.331051, 0.051620, -0.942200,
		27.607733, 23.508490, 24.878809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055546, 22.919151, 25.180416>,  <27.375998, 23.472355, 25.538349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055546, 22.919151, 25.180416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.375164, 23.010967, 24.958122>,  <27.566935, 23.066057, 24.824747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.375164, 23.010967, 24.958122>,  <27.055546, 22.919151, 25.180416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375164, 23.010967, 24.958122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091749, -0.959986, -0.264592,
		-0.594231, 0.160433, -0.788131,
		0.799044, 0.229539, -0.555734,
		27.614878, 23.079828, 24.791403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992853, 22.523951, 24.462896>,  <27.055546, 22.919151, 25.180416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992853, 22.523951, 24.462896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.368551, 22.643131, 24.531067>,  <27.593969, 22.714640, 24.571970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.368551, 22.643131, 24.531067>,  <26.992853, 22.523951, 24.462896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368551, 22.643131, 24.531067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305975, -0.951778, -0.022299,
		0.155564, 0.073091, -0.985118,
		0.939244, 0.297953, 0.170427,
		27.650324, 22.732517, 24.582195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.261391, 23.502296, 24.508799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892891, 23.366993, 24.431988>,  <32.671791, 23.285810, 24.385902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892891, 23.366993, 24.431988>,  <33.261391, 23.502296, 24.508799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892891, 23.366993, 24.431988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288736, 0.925507, -0.245089,
		0.260625, -0.170344, -0.950294,
		-0.921252, -0.338260, -0.192025,
		32.616516, 23.265514, 24.374380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171864, 23.782858, 23.877666>,  <33.261391, 23.502296, 24.508799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171864, 23.782858, 23.877666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.801640, 23.694508, 24.000668>,  <32.579506, 23.641499, 24.074469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.801640, 23.694508, 24.000668>,  <33.171864, 23.782858, 23.877666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801640, 23.694508, 24.000668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226558, 0.973839, 0.017572,
		-0.303339, -0.053404, -0.951385,
		-0.925557, -0.220874, 0.307503,
		32.523972, 23.628244, 24.092918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826092, 24.214861, 23.510706>,  <33.171864, 23.782858, 23.877666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826092, 24.214861, 23.510706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.574322, 24.099655, 23.799393>,  <32.423260, 24.030531, 23.972605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.574322, 24.099655, 23.799393>,  <32.826092, 24.214861, 23.510706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574322, 24.099655, 23.799393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264263, 0.952754, 0.149747,
		-0.730747, -0.096468, -0.675798,
		-0.629424, -0.288016, 0.721715,
		32.385494, 24.013250, 24.015907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221039, 24.351830, 23.267458>,  <32.826092, 24.214861, 23.510706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221039, 24.351830, 23.267458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198349, 24.345432, 23.666763>,  <32.184734, 24.341595, 23.906345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198349, 24.345432, 23.666763>,  <32.221039, 24.351830, 23.267458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198349, 24.345432, 23.666763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447917, 0.894006, -0.011129,
		-0.892274, -0.447770, -0.057872,
		-0.056721, -0.015991, 0.998262,
		32.181332, 24.340635, 23.966242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570225, 24.633875, 23.374256>,  <32.221039, 24.351830, 23.267458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570225, 24.633875, 23.374256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779509, 24.691723, 23.710194>,  <31.905079, 24.726431, 23.911757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779509, 24.691723, 23.710194>,  <31.570225, 24.633875, 23.374256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779509, 24.691723, 23.710194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348699, 0.935552, 0.056135,
		-0.777599, -0.322223, 0.539919,
		0.523211, 0.144619, 0.839843,
		31.936472, 24.735109, 23.962147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087805, 24.960175, 23.842381>,  <31.570225, 24.633875, 23.374256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087805, 24.960175, 23.842381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.459290, 25.030090, 23.973190>,  <31.682180, 25.072039, 24.051676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.459290, 25.030090, 23.973190>,  <31.087805, 24.960175, 23.842381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459290, 25.030090, 23.973190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243986, 0.952168, 0.183978,
		-0.279223, -0.250651, 0.926935,
		0.928712, 0.174788, 0.327023,
		31.737904, 25.082527, 24.071297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018995, 25.450228, 24.398508>,  <31.087805, 24.960175, 23.842381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018995, 25.450228, 24.398508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.395445, 25.478653, 24.266304>,  <31.621315, 25.495708, 24.186981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.395445, 25.478653, 24.266304>,  <31.018995, 25.450228, 24.398508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395445, 25.478653, 24.266304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065503, 0.997461, 0.027945,
		0.331657, -0.004650, 0.943388,
		0.941123, 0.071063, -0.330511,
		31.677782, 25.499971, 24.167150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158867, 26.184517, 24.585655>,  <31.018995, 25.450228, 24.398508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158867, 26.184517, 24.585655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.451540, 26.077293, 24.334965>,  <31.627144, 26.012959, 24.184549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.451540, 26.077293, 24.334965>,  <31.158867, 26.184517, 24.585655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451540, 26.077293, 24.334965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183372, 0.962942, -0.197781,
		0.656518, 0.029788, 0.753722,
		0.731682, -0.268058, -0.626727,
		31.671045, 25.996876, 24.146946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788137, 26.618715, 24.770149>,  <31.158867, 26.184517, 24.585655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788137, 26.618715, 24.770149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.862082, 26.486141, 24.400074>,  <31.906448, 26.406597, 24.178028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.862082, 26.486141, 24.400074>,  <31.788137, 26.618715, 24.770149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862082, 26.486141, 24.400074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249603, 0.926380, -0.281990,
		0.950539, -0.178801, 0.253980,
		0.184862, -0.331436, -0.925190,
		31.917540, 26.386711, 24.122517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512764, 26.865320, 24.534939>,  <31.788137, 26.618715, 24.770149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512764, 26.865320, 24.534939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264591, 26.792908, 24.229706>,  <32.115688, 26.749460, 24.046566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264591, 26.792908, 24.229706>,  <32.512764, 26.865320, 24.534939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264591, 26.792908, 24.229706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345625, 0.810296, -0.473247,
		0.703995, -0.557357, -0.440164,
		-0.620431, -0.181032, -0.763081,
		32.078461, 26.738598, 24.000782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920227, 26.948488, 23.997143>,  <32.512764, 26.865320, 24.534939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920227, 26.948488, 23.997143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550049, 26.997005, 23.853569>,  <32.327942, 27.026115, 23.767424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550049, 26.997005, 23.853569>,  <32.920227, 26.948488, 23.997143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550049, 26.997005, 23.853569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280800, 0.855599, -0.434859,
		0.254360, -0.503228, -0.825871,
		-0.925447, 0.121294, -0.358936,
		32.272415, 27.033394, 23.745888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972553, 27.131130, 23.194225>,  <32.920227, 26.948488, 23.997143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972553, 27.131130, 23.194225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.609913, 27.251926, 23.312130>,  <32.392330, 27.324404, 23.382874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.609913, 27.251926, 23.312130>,  <32.972553, 27.131130, 23.194225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609913, 27.251926, 23.312130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071526, 0.798347, -0.597935,
		-0.415893, -0.521003, -0.745378,
		-0.906596, 0.301991, 0.294761,
		32.337933, 27.342524, 23.400558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574474, 27.244513, 22.494619>,  <32.972553, 27.131130, 23.194225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574474, 27.244513, 22.494619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.388798, 27.457947, 22.777409>,  <32.277390, 27.586008, 22.947083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.388798, 27.457947, 22.777409>,  <32.574474, 27.244513, 22.494619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388798, 27.457947, 22.777409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120290, 0.828760, -0.546523,
		-0.877528, -0.168650, -0.448890,
		-0.464193, 0.533586, 0.706973,
		32.249538, 27.618023, 22.989500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321487, 27.792027, 22.029984>,  <32.574474, 27.244513, 22.494619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321487, 27.792027, 22.029984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252724, 27.928783, 22.399536>,  <32.211464, 28.010838, 22.621267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252724, 27.928783, 22.399536>,  <32.321487, 27.792027, 22.029984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252724, 27.928783, 22.399536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060056, 0.939736, -0.336585,
		-0.983280, -0.002379, -0.182086,
		-0.171913, 0.341892, 0.923881,
		32.201149, 28.031351, 22.676701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684050, 27.476629, 21.968651>,  <32.321487, 27.792027, 22.029984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684050, 27.476629, 21.968651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405687, 27.319820, 21.727974>,  <31.238670, 27.225735, 21.583569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405687, 27.319820, 21.727974>,  <31.684050, 27.476629, 21.968651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405687, 27.319820, 21.727974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301777, -0.919926, 0.250335,
		-0.651649, -0.007367, 0.758485,
		-0.695906, -0.392023, -0.601692,
		31.196917, 27.202213, 21.547466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379814, 26.904831, 22.281496>,  <31.684050, 27.476629, 21.968651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379814, 26.904831, 22.281496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303925, 26.859943, 21.891335>,  <31.258390, 26.833012, 21.657238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303925, 26.859943, 21.891335>,  <31.379814, 26.904831, 22.281496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303925, 26.859943, 21.891335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190494, -0.978777, 0.075554,
		-0.963181, -0.171474, 0.207072,
		-0.189722, -0.112218, -0.975404,
		31.247007, 26.826279, 21.598713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943541, 26.324125, 22.195478>,  <31.379814, 26.904831, 22.281496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943541, 26.324125, 22.195478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.149694, 26.350143, 21.853683>,  <31.273388, 26.365753, 21.648607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.149694, 26.350143, 21.853683>,  <30.943541, 26.324125, 22.195478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149694, 26.350143, 21.853683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138894, -0.990272, 0.008395,
		-0.845627, -0.123010, -0.519407,
		0.515387, 0.065043, -0.854486,
		31.304310, 26.369656, 21.597338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582060, 25.944948, 21.735165>,  <30.943541, 26.324125, 22.195478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582060, 25.944948, 21.735165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944729, 25.963264, 21.567429>,  <31.162331, 25.974255, 21.466787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944729, 25.963264, 21.567429>,  <30.582060, 25.944948, 21.735165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944729, 25.963264, 21.567429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023368, -0.987113, -0.158312,
		-0.421183, 0.153336, -0.893920,
		0.906675, 0.045789, -0.419338,
		31.216732, 25.977001, 21.441628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616087, 25.460758, 21.120272>,  <30.582060, 25.944948, 21.735165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616087, 25.460758, 21.120272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989140, 25.534763, 21.244186>,  <31.212971, 25.579166, 21.318535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989140, 25.534763, 21.244186>,  <30.616087, 25.460758, 21.120272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989140, 25.534763, 21.244186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207488, -0.977381, -0.040938,
		0.295206, 0.102457, -0.949924,
		0.932632, 0.185012, 0.309787,
		31.268929, 25.590267, 21.337122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043646, 24.954779, 20.737419>,  <30.616087, 25.460758, 21.120272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043646, 24.954779, 20.737419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.311020, 25.086193, 21.004330>,  <31.471445, 25.165043, 21.164476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.311020, 25.086193, 21.004330>,  <31.043646, 24.954779, 20.737419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311020, 25.086193, 21.004330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283040, -0.942014, 0.180274,
		0.687809, 0.068364, -0.722665,
		0.668436, 0.328538, 0.667275,
		31.511551, 25.184755, 21.204512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720564, 24.486753, 20.647728>,  <31.043646, 24.954779, 20.737419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720564, 24.486753, 20.647728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.807886, 24.647514, 21.003441>,  <31.860279, 24.743971, 21.216867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.807886, 24.647514, 21.003441>,  <31.720564, 24.486753, 20.647728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807886, 24.647514, 21.003441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421352, -0.860761, 0.285576,
		0.880231, 0.312358, -0.357249,
		0.218304, 0.401900, 0.889281,
		31.873377, 24.768084, 21.270226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375507, 24.312002, 20.734571>,  <31.720564, 24.486753, 20.647728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375507, 24.312002, 20.734571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240013, 24.377857, 21.105118>,  <32.158718, 24.417370, 21.327446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240013, 24.377857, 21.105118>,  <32.375507, 24.312002, 20.734571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240013, 24.377857, 21.105118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365879, -0.884030, 0.290901,
		0.866829, 0.437476, 0.239211,
		-0.338732, 0.164639, 0.926366,
		32.138393, 24.427248, 21.383028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898102, 23.928566, 21.165894>,  <32.375507, 24.312002, 20.734571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898102, 23.928566, 21.165894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602806, 23.992237, 21.428089>,  <32.425629, 24.030439, 21.585407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602806, 23.992237, 21.428089>,  <32.898102, 23.928566, 21.165894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602806, 23.992237, 21.428089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128649, -0.920695, 0.368469,
		0.662157, 0.356346, 0.659215,
		-0.738239, 0.159177, 0.655489,
		32.381336, 24.039989, 21.624735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028553, 23.756310, 21.921804>,  <32.898102, 23.928566, 21.165894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028553, 23.756310, 21.921804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.646187, 23.702816, 21.817238>,  <32.416767, 23.670721, 21.754498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.646187, 23.702816, 21.817238>,  <33.028553, 23.756310, 21.921804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646187, 23.702816, 21.817238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091172, -0.981444, 0.168689,
		-0.279126, 0.137419, 0.950371,
		-0.955917, -0.133732, -0.261417,
		32.359413, 23.662697, 21.738813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683739, 23.247976, 22.300636>,  <33.028553, 23.756310, 21.921804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683739, 23.247976, 22.300636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452579, 23.240692, 21.974274>,  <32.313885, 23.236320, 21.778456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452579, 23.240692, 21.974274>,  <32.683739, 23.247976, 22.300636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452579, 23.240692, 21.974274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016564, -0.999807, 0.010585,
		-0.815942, -0.007398, 0.578087,
		-0.577897, -0.018212, -0.815906,
		32.279209, 23.235228, 21.729502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173374, 22.788370, 22.407230>,  <32.683739, 23.247976, 22.300636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173374, 22.788370, 22.407230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.181061, 22.807209, 22.007748>,  <32.185673, 22.818512, 21.768059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.181061, 22.807209, 22.007748>,  <32.173374, 22.788370, 22.407230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181061, 22.807209, 22.007748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036287, -0.998199, -0.047770,
		-0.999157, 0.037158, -0.017467,
		0.019211, 0.047096, -0.998706,
		32.186825, 22.821339, 21.708136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539930, 22.432291, 22.130716>,  <32.173374, 22.788370, 22.407230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539930, 22.432291, 22.130716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790960, 22.453579, 21.820023>,  <31.941578, 22.466351, 21.633606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790960, 22.453579, 21.820023>,  <31.539930, 22.432291, 22.130716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790960, 22.453579, 21.820023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051879, -0.992585, -0.109924,
		-0.776826, 0.109282, -0.620161,
		0.627575, 0.053218, -0.776735,
		31.979233, 22.469545, 21.587002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168905, 22.051819, 21.705835>,  <31.539930, 22.432291, 22.130716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168905, 22.051819, 21.705835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.528870, 22.072403, 21.532623>,  <31.744848, 22.084753, 21.428696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.528870, 22.072403, 21.532623>,  <31.168905, 22.051819, 21.705835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528870, 22.072403, 21.532623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016678, -0.988225, -0.152096,
		-0.435758, 0.144095, -0.888455,
		0.899909, 0.051459, -0.433030,
		31.798843, 22.087841, 21.402714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547607, 21.919306, 21.265570>,  <31.168905, 22.051819, 21.705835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547607, 21.919306, 21.265570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180620, 21.867542, 21.416039>,  <29.960428, 21.836485, 21.506319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180620, 21.867542, 21.416039>,  <30.547607, 21.919306, 21.265570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180620, 21.867542, 21.416039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185247, 0.975807, -0.116121,
		-0.352044, -0.176222, -0.919245,
		-0.917468, -0.129408, 0.376172,
		29.905380, 21.828720, 21.528891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062506, 22.306759, 20.805319>,  <30.547607, 21.919306, 21.265570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062506, 22.306759, 20.805319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.853271, 22.251621, 21.141743>,  <29.727730, 22.218538, 21.343597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.853271, 22.251621, 21.141743>,  <30.062506, 22.306759, 20.805319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853271, 22.251621, 21.141743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488688, 0.857006, -0.163476,
		-0.698258, -0.496527, -0.515652,
		-0.523087, -0.137845, 0.841058,
		29.696346, 22.210268, 21.394060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454966, 22.551538, 20.548174>,  <30.062506, 22.306759, 20.805319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454966, 22.551538, 20.548174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.417196, 22.525913, 20.945560>,  <29.394535, 22.510538, 21.183992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.417196, 22.525913, 20.945560>,  <29.454966, 22.551538, 20.548174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417196, 22.525913, 20.945560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514218, 0.857635, 0.006432,
		-0.852446, -0.510252, -0.113924,
		-0.094423, -0.064065, 0.993469,
		29.388868, 22.506695, 21.243601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730890, 22.578091, 20.718958>,  <29.454966, 22.551538, 20.548174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730890, 22.578091, 20.718958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.931635, 22.727314, 21.031101>,  <29.052082, 22.816849, 21.218388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.931635, 22.727314, 21.031101>,  <28.730890, 22.578091, 20.718958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931635, 22.727314, 21.031101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435264, 0.888571, -0.144868,
		-0.747450, -0.266959, 0.608318,
		0.501861, 0.373060, 0.780360,
		29.082193, 22.839231, 21.265209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230017, 22.987833, 21.136532>,  <28.730890, 22.578091, 20.718958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230017, 22.987833, 21.136532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.571590, 23.133808, 21.284920>,  <28.776535, 23.221394, 21.373953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.571590, 23.133808, 21.284920>,  <28.230017, 22.987833, 21.136532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571590, 23.133808, 21.284920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347527, 0.930537, -0.115440,
		-0.387329, -0.030344, 0.921442,
		0.853933, 0.364939, 0.370969,
		28.827770, 23.243290, 21.396210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056019, 23.338692, 21.746063>,  <28.230017, 22.987833, 21.136532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056019, 23.338692, 21.746063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.412407, 23.476032, 21.627213>,  <28.626240, 23.558435, 21.555902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.412407, 23.476032, 21.627213>,  <28.056019, 23.338692, 21.746063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412407, 23.476032, 21.627213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348853, 0.936482, 0.036088,
		0.290645, 0.071501, 0.954156,
		0.890970, 0.343349, -0.297127,
		28.679697, 23.579037, 21.538074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209761, 23.962238, 22.200495>,  <28.056019, 23.338692, 21.746063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209761, 23.962238, 22.200495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.438688, 23.998165, 21.874454>,  <28.576044, 24.019722, 21.678831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.438688, 23.998165, 21.874454>,  <28.209761, 23.962238, 22.200495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438688, 23.998165, 21.874454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260524, 0.962402, -0.076875,
		0.777548, 0.256350, 0.574199,
		0.572317, 0.089818, -0.815099,
		28.610384, 24.025110, 21.629925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614439, 24.520657, 22.306225>,  <28.209761, 23.962238, 22.200495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614439, 24.520657, 22.306225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.603918, 24.471546, 21.909389>,  <28.597605, 24.442080, 21.671289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.603918, 24.471546, 21.909389>,  <28.614439, 24.520657, 22.306225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603918, 24.471546, 21.909389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264190, 0.957998, -0.111552,
		0.964112, 0.259165, -0.057634,
		-0.026303, -0.122775, -0.992086,
		28.596027, 24.434713, 21.611763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810122, 25.146271, 21.996279>,  <28.614439, 24.520657, 22.306225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810122, 25.146271, 21.996279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.636923, 24.958607, 21.688408>,  <28.533003, 24.846008, 21.503685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.636923, 24.958607, 21.688408>,  <28.810122, 25.146271, 21.996279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636923, 24.958607, 21.688408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314030, 0.878894, -0.359070,
		0.844924, 0.086225, -0.527890,
		-0.432998, -0.469160, -0.769676,
		28.507023, 24.817860, 21.457504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824261, 25.705341, 21.563459>,  <28.810122, 25.146271, 21.996279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824261, 25.705341, 21.563459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.571348, 25.440727, 21.402168>,  <28.419600, 25.281960, 21.305393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.571348, 25.440727, 21.402168>,  <28.824261, 25.705341, 21.563459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571348, 25.440727, 21.402168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588455, 0.748614, -0.305447,
		0.503925, 0.044152, -0.862618,
		-0.632282, -0.661534, -0.403227,
		28.381664, 25.242268, 21.281200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712126, 25.768286, 20.764170>,  <28.824261, 25.705341, 21.563459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712126, 25.768286, 20.764170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.387007, 25.617619, 20.941925>,  <28.191936, 25.527218, 21.048578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.387007, 25.617619, 20.941925>,  <28.712126, 25.768286, 20.764170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387007, 25.617619, 20.941925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526779, 0.800940, -0.284604,
		-0.248729, -0.465421, -0.849422,
		-0.812796, -0.376668, 0.444391,
		28.143167, 25.504618, 21.075243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232779, 25.910379, 20.314508>,  <28.712126, 25.768286, 20.764170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232779, 25.910379, 20.314508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.999548, 25.820595, 20.626827>,  <27.859610, 25.766724, 20.814219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.999548, 25.820595, 20.626827>,  <28.232779, 25.910379, 20.314508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999548, 25.820595, 20.626827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672136, 0.673134, -0.308421,
		-0.456352, -0.704633, -0.543355,
		-0.583074, -0.224461, 0.780795,
		27.824625, 25.753256, 20.861067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454235, 25.915808, 20.096357>,  <28.232779, 25.910379, 20.314508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454235, 25.915808, 20.096357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.462744, 25.955379, 20.494305>,  <27.467850, 25.979122, 20.733072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.462744, 25.955379, 20.494305>,  <27.454235, 25.915808, 20.096357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462744, 25.955379, 20.494305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583000, 0.809618, -0.068041,
		-0.812194, -0.578560, 0.074899,
		0.021274, 0.098928, 0.994867,
		27.469126, 25.985058, 20.792765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755478, 26.011860, 20.210085>,  <27.454235, 25.915808, 20.096357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755478, 26.011860, 20.210085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.949200, 26.149292, 20.531929>,  <27.065434, 26.231752, 20.725037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.949200, 26.149292, 20.531929>,  <26.755478, 26.011860, 20.210085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949200, 26.149292, 20.531929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691835, 0.713345, 0.111816,
		-0.535548, -0.610812, 0.583179,
		0.484306, 0.343581, 0.804612,
		27.094492, 26.252367, 20.773312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.173225, 38.167343, 29.859970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.257862, 37.814758, 30.028851>,  <38.308643, 37.603207, 30.130178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.257862, 37.814758, 30.028851>,  <38.173225, 38.167343, 29.859970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257862, 37.814758, 30.028851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650349, -0.195481, -0.734053,
		0.729572, 0.429896, 0.531896,
		0.211591, -0.881463, 0.422200,
		38.321339, 37.550320, 30.155510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857304, 38.001396, 29.906937>,  <38.173225, 38.167343, 29.859970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857304, 38.001396, 29.906937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686600, 37.639698, 29.901142>,  <38.584175, 37.422680, 29.897665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686600, 37.639698, 29.901142>,  <38.857304, 38.001396, 29.906937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686600, 37.639698, 29.901142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589068, -0.265788, -0.763122,
		0.686201, -0.334206, 0.646092,
		-0.426763, -0.904247, -0.014485,
		38.558571, 37.368423, 29.896797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390278, 37.481049, 29.710136>,  <38.857304, 38.001396, 29.906937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390278, 37.481049, 29.710136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.052670, 37.274426, 29.652458>,  <38.850105, 37.150452, 29.617851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.052670, 37.274426, 29.652458>,  <39.390278, 37.481049, 29.710136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052670, 37.274426, 29.652458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358273, -0.343003, -0.868326,
		0.399082, -0.784548, 0.474571,
		-0.844022, -0.516559, -0.144196,
		38.799461, 37.119457, 29.609200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685463, 36.899544, 29.373671>,  <39.390278, 37.481049, 29.710136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685463, 36.899544, 29.373671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.292953, 36.882767, 29.298470>,  <39.057449, 36.872700, 29.253349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.292953, 36.882767, 29.298470>,  <39.685463, 36.899544, 29.373671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292953, 36.882767, 29.298470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185231, -0.473259, -0.861229,
		-0.052849, -0.879924, 0.472166,
		-0.981273, -0.041945, -0.188001,
		38.998573, 36.870182, 29.242069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559238, 36.210659, 29.214577>,  <39.685463, 36.899544, 29.373671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559238, 36.210659, 29.214577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.282402, 36.429600, 29.026360>,  <39.116299, 36.560966, 28.913429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.282402, 36.429600, 29.026360>,  <39.559238, 36.210659, 29.214577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282402, 36.429600, 29.026360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232136, -0.448478, -0.863123,
		-0.683464, -0.706590, 0.183326,
		-0.692091, 0.547357, -0.470543,
		39.074776, 36.593807, 28.885197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409939, 35.791744, 28.706903>,  <39.559238, 36.210659, 29.214577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409939, 35.791744, 28.706903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.235374, 36.127586, 28.577530>,  <39.130638, 36.329090, 28.499907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.235374, 36.127586, 28.577530>,  <39.409939, 35.791744, 28.706903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235374, 36.127586, 28.577530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243443, -0.235879, -0.940796,
		-0.866189, -0.489308, -0.101457,
		-0.436407, 0.839606, -0.323435,
		39.104454, 36.379467, 28.480499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145866, 35.563396, 28.157114>,  <39.409939, 35.791744, 28.706903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145866, 35.563396, 28.157114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.093483, 35.956158, 28.102402>,  <39.062054, 36.191814, 28.069574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.093483, 35.956158, 28.102402>,  <39.145866, 35.563396, 28.157114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093483, 35.956158, 28.102402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066148, -0.129007, -0.989435,
		-0.989178, -0.138624, -0.048057,
		-0.130960, 0.981906, -0.136781,
		39.054195, 36.250729, 28.061367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654434, 35.651001, 27.661041>,  <39.145866, 35.563396, 28.157114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654434, 35.651001, 27.661041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.833809, 36.006046, 27.619015>,  <38.941433, 36.219074, 27.593800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.833809, 36.006046, 27.619015>,  <38.654434, 35.651001, 27.661041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833809, 36.006046, 27.619015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073490, -0.153764, -0.985371,
		-0.890786, 0.434160, -0.134185,
		0.448441, 0.887616, -0.105065,
		38.968342, 36.272331, 27.587496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362209, 35.970703, 26.969015>,  <38.654434, 35.651001, 27.661041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362209, 35.970703, 26.969015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691753, 36.183403, 27.047501>,  <38.889481, 36.311024, 27.094591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691753, 36.183403, 27.047501>,  <38.362209, 35.970703, 26.969015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691753, 36.183403, 27.047501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218265, 0.021839, -0.975645,
		-0.523081, 0.846622, -0.098069,
		0.823861, 0.531747, 0.196212,
		38.938911, 36.342926, 27.106363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357006, 36.422466, 26.510593>,  <38.362209, 35.970703, 26.969015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357006, 36.422466, 26.510593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.738171, 36.420475, 26.631882>,  <38.966869, 36.419281, 26.704655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.738171, 36.420475, 26.631882>,  <38.357006, 36.422466, 26.510593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738171, 36.420475, 26.631882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301493, 0.123313, -0.945460,
		-0.032681, 0.992355, 0.119008,
		0.952908, -0.004982, 0.303219,
		39.024044, 36.418980, 26.722847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683582, 36.902893, 26.111803>,  <38.357006, 36.422466, 26.510593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683582, 36.902893, 26.111803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.995995, 36.674393, 26.212730>,  <39.183441, 36.537292, 26.273287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.995995, 36.674393, 26.212730>,  <38.683582, 36.902893, 26.111803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995995, 36.674393, 26.212730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311291, 0.005863, -0.950296,
		0.541377, 0.820756, 0.182404,
		0.781031, -0.571249, 0.252320,
		39.230305, 36.503017, 26.288427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224827, 37.094376, 25.685541>,  <38.683582, 36.902893, 26.111803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224827, 37.094376, 25.685541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.367096, 36.739986, 25.804569>,  <39.452457, 36.527355, 25.875986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.367096, 36.739986, 25.804569>,  <39.224827, 37.094376, 25.685541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367096, 36.739986, 25.804569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276277, -0.204493, -0.939070,
		0.892841, 0.416218, 0.172040,
		0.355677, -0.885971, 0.297571,
		39.473801, 36.474194, 25.893841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889832, 37.023197, 25.419132>,  <39.224827, 37.094376, 25.685541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889832, 37.023197, 25.419132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.798958, 36.641140, 25.495121>,  <39.744434, 36.411907, 25.540714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.798958, 36.641140, 25.495121>,  <39.889832, 37.023197, 25.419132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798958, 36.641140, 25.495121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572085, -0.288762, -0.767682,
		0.788103, -0.065725, 0.612025,
		-0.227185, -0.955142, 0.189974,
		39.730801, 36.354599, 25.552113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544201, 36.612694, 25.256540>,  <39.889832, 37.023197, 25.419132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544201, 36.612694, 25.256540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249500, 36.342304, 25.263042>,  <40.072681, 36.180073, 25.266945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249500, 36.342304, 25.263042>,  <40.544201, 36.612694, 25.256540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249500, 36.342304, 25.263042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320247, -0.370015, -0.872084,
		0.595519, -0.637301, 0.489086,
		-0.736749, -0.675971, 0.016258,
		40.028477, 36.139515, 25.267920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873451, 35.928314, 25.211887>,  <40.544201, 36.612694, 25.256540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873451, 35.928314, 25.211887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506855, 35.908112, 25.053146>,  <40.286896, 35.895992, 24.957901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506855, 35.908112, 25.053146>,  <40.873451, 35.928314, 25.211887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506855, 35.908112, 25.053146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381485, -0.409051, -0.828943,
		-0.120470, -0.911112, 0.394158,
		-0.916491, -0.050503, -0.396855,
		40.231907, 35.892960, 24.934090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769951, 35.253292, 24.976015>,  <40.873451, 35.928314, 25.211887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769951, 35.253292, 24.976015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476864, 35.439610, 24.777557>,  <40.301010, 35.551399, 24.658484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476864, 35.439610, 24.777557>,  <40.769951, 35.253292, 24.976015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476864, 35.439610, 24.777557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244566, -0.500114, -0.830707,
		-0.635071, -0.730012, 0.252523,
		-0.732716, 0.465799, -0.496144,
		40.257050, 35.579350, 24.628714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488728, 34.748417, 24.545155>,  <40.769951, 35.253292, 24.976015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488728, 34.748417, 24.545155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.344154, 35.078831, 24.372162>,  <40.257412, 35.277077, 24.268366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.344154, 35.078831, 24.372162>,  <40.488728, 34.748417, 24.545155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344154, 35.078831, 24.372162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094523, -0.428988, -0.898351,
		-0.927595, -0.365573, 0.076971,
		-0.361432, 0.826030, -0.432482,
		40.235725, 35.326641, 24.242416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948223, 34.562130, 24.210512>,  <40.488728, 34.748417, 24.545155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948223, 34.562130, 24.210512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996452, 34.915520, 24.029434>,  <40.025391, 35.127556, 23.920788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996452, 34.915520, 24.029434>,  <39.948223, 34.562130, 24.210512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996452, 34.915520, 24.029434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256198, -0.412878, -0.874011,
		-0.959075, 0.221362, 0.176562,
		0.120574, 0.883476, -0.452694,
		40.032623, 35.180561, 23.893625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399860, 34.549004, 23.703823>,  <39.948223, 34.562130, 24.210512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399860, 34.549004, 23.703823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.674355, 34.821079, 23.600731>,  <39.839050, 34.984325, 23.538876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.674355, 34.821079, 23.600731>,  <39.399860, 34.549004, 23.703823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674355, 34.821079, 23.600731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102230, -0.260618, -0.960014,
		-0.720157, 0.685146, -0.109311,
		0.686238, 0.680186, -0.257729,
		39.880226, 35.025135, 23.523413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022705, 34.934940, 23.173285>,  <39.399860, 34.549004, 23.703823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022705, 34.934940, 23.173285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.421055, 34.955044, 23.143051>,  <39.660065, 34.967106, 23.124910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.421055, 34.955044, 23.143051>,  <39.022705, 34.934940, 23.173285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421055, 34.955044, 23.143051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064579, -0.192846, -0.979102,
		-0.063782, 0.979941, -0.188805,
		0.995872, 0.050256, -0.075583,
		39.719818, 34.970119, 23.120377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100002, 35.115990, 22.489130>,  <39.022705, 34.934940, 23.173285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100002, 35.115990, 22.489130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457924, 34.971733, 22.594398>,  <39.672676, 34.885181, 22.657558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457924, 34.971733, 22.594398>,  <39.100002, 35.115990, 22.489130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457924, 34.971733, 22.594398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076912, -0.456133, -0.886582,
		0.439777, 0.813561, -0.380414,
		0.894808, -0.360640, 0.263170,
		39.726368, 34.863541, 22.673349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366482, 34.840504, 22.390690>,  <39.100002, 35.115990, 22.489130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366482, 34.840504, 22.390690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116070, 34.540749, 22.304420>,  <37.965824, 34.360897, 22.252659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116070, 34.540749, 22.304420>,  <38.366482, 34.840504, 22.390690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116070, 34.540749, 22.304420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265169, -0.055517, 0.962602,
		-0.733332, 0.659805, -0.163958,
		-0.626027, -0.749383, -0.215672,
		37.928261, 34.315933, 22.239719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614391, 35.025318, 22.534983>,  <38.366482, 34.840504, 22.390690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614391, 35.025318, 22.534983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658302, 34.628895, 22.565308>,  <37.684650, 34.391041, 22.583504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658302, 34.628895, 22.565308>,  <37.614391, 35.025318, 22.534983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658302, 34.628895, 22.565308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417497, 0.023243, 0.908381,
		-0.902022, -0.131374, -0.411213,
		0.109780, -0.991060, 0.075814,
		37.691235, 34.331577, 22.588053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059532, 34.922611, 22.865582>,  <37.614391, 35.025318, 22.534983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059532, 34.922611, 22.865582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.257172, 34.578850, 22.918182>,  <37.375755, 34.372593, 22.949743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.257172, 34.578850, 22.918182>,  <37.059532, 34.922611, 22.865582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257172, 34.578850, 22.918182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443502, -0.119055, 0.888331,
		-0.747779, -0.497244, -0.439972,
		0.494098, -0.859404, 0.131502,
		37.405399, 34.321030, 22.957632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597885, 34.486923, 23.080814>,  <37.059532, 34.922611, 22.865582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597885, 34.486923, 23.080814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.945202, 34.332787, 23.205769>,  <37.153591, 34.240303, 23.280741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.945202, 34.332787, 23.205769>,  <36.597885, 34.486923, 23.080814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945202, 34.332787, 23.205769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394468, -0.154527, 0.905823,
		-0.300782, -0.909742, -0.286180,
		0.868288, -0.385344, 0.312385,
		37.205688, 34.217182, 23.299484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415520, 33.930325, 23.582272>,  <36.597885, 34.486923, 23.080814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415520, 33.930325, 23.582272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.803051, 33.991920, 23.659901>,  <37.035568, 34.028877, 23.706478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.803051, 33.991920, 23.659901>,  <36.415520, 33.930325, 23.582272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803051, 33.991920, 23.659901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174866, -0.129875, 0.975989,
		0.175500, -0.979499, -0.098898,
		0.968825, 0.153992, 0.194074,
		37.093700, 34.038116, 23.718122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587429, 33.453625, 24.093145>,  <36.415520, 33.930325, 23.582272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587429, 33.453625, 24.093145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.877266, 33.725803, 24.136890>,  <37.051170, 33.889111, 24.163137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.877266, 33.725803, 24.136890>,  <36.587429, 33.453625, 24.093145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877266, 33.725803, 24.136890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044194, -0.204233, 0.977924,
		0.687756, -0.703767, -0.178057,
		0.724596, 0.680442, 0.109360,
		37.094646, 33.929935, 24.169699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906872, 33.239761, 24.705111>,  <36.587429, 33.453625, 24.093145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906872, 33.239761, 24.705111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.029694, 33.619801, 24.683079>,  <37.103386, 33.847824, 24.669859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.029694, 33.619801, 24.683079>,  <36.906872, 33.239761, 24.705111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029694, 33.619801, 24.683079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011188, 0.061475, 0.998046,
		0.951626, -0.305838, 0.029506,
		0.307054, 0.950097, -0.055080,
		37.121811, 33.904831, 24.666555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411289, 33.287128, 25.270321>,  <36.906872, 33.239761, 24.705111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411289, 33.287128, 25.270321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301266, 33.663025, 25.189110>,  <37.235252, 33.888565, 25.140383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301266, 33.663025, 25.189110>,  <37.411289, 33.287128, 25.270321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301266, 33.663025, 25.189110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033446, 0.201694, 0.978877,
		0.960844, 0.276043, -0.024048,
		-0.275063, 0.939744, -0.203029,
		37.218746, 33.944950, 25.128201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904362, 33.560829, 25.633127>,  <37.411289, 33.287128, 25.270321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904362, 33.560829, 25.633127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628643, 33.843647, 25.569939>,  <37.463211, 34.013340, 25.532024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628643, 33.843647, 25.569939>,  <37.904362, 33.560829, 25.633127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628643, 33.843647, 25.569939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068584, 0.153388, 0.985783,
		0.721226, 0.690331, -0.057237,
		-0.689296, 0.707047, -0.157973,
		37.421856, 34.055759, 25.522547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075123, 34.101513, 26.087656>,  <37.904362, 33.560829, 25.633127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075123, 34.101513, 26.087656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.693962, 34.173618, 25.990097>,  <37.465267, 34.216881, 25.931562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.693962, 34.173618, 25.990097>,  <38.075123, 34.101513, 26.087656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693962, 34.173618, 25.990097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167716, 0.356825, 0.918993,
		0.252692, 0.916613, -0.309785,
		-0.952900, 0.180266, -0.243898,
		37.408092, 34.227699, 25.916927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953918, 34.607918, 26.372732>,  <38.075123, 34.101513, 26.087656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953918, 34.607918, 26.372732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.574265, 34.487667, 26.335262>,  <37.346474, 34.415516, 26.312780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.574265, 34.487667, 26.335262>,  <37.953918, 34.607918, 26.372732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574265, 34.487667, 26.335262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188012, 0.302421, 0.934448,
		-0.252592, 0.904525, -0.343559,
		-0.949131, -0.300627, -0.093672,
		37.289524, 34.397480, 26.307161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511124, 35.128250, 26.639973>,  <37.953918, 34.607918, 26.372732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511124, 35.128250, 26.639973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.329727, 34.772598, 26.664623>,  <37.220890, 34.559208, 26.679413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.329727, 34.772598, 26.664623>,  <37.511124, 35.128250, 26.639973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329727, 34.772598, 26.664623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112257, 0.125575, 0.985713,
		-0.884163, 0.440093, -0.156758,
		-0.453490, -0.889128, 0.061625,
		37.193680, 34.505859, 26.683111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025700, 35.249672, 27.290998>,  <37.511124, 35.128250, 26.639973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025700, 35.249672, 27.290998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010120, 34.854607, 27.230324>,  <37.000774, 34.617569, 27.193918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010120, 34.854607, 27.230324>,  <37.025700, 35.249672, 27.290998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010120, 34.854607, 27.230324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176335, -0.142626, 0.973942,
		-0.983559, 0.064678, -0.168605,
		-0.038945, -0.987661, -0.151686,
		36.998436, 34.558308, 27.184818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449001, 35.085251, 27.596283>,  <37.025700, 35.249672, 27.290998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449001, 35.085251, 27.596283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.644218, 34.736446, 27.581264>,  <36.761349, 34.527164, 27.572254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.644218, 34.736446, 27.581264>,  <36.449001, 35.085251, 27.596283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644218, 34.736446, 27.581264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152883, -0.127758, 0.979952,
		-0.859325, -0.472521, -0.195667,
		0.488045, -0.872010, -0.037545,
		36.790630, 34.474842, 27.570002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030521, 34.547951, 28.006037>,  <36.449001, 35.085251, 27.596283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030521, 34.547951, 28.006037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.415054, 34.439522, 27.986645>,  <36.645775, 34.374462, 27.975010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.415054, 34.439522, 27.986645>,  <36.030521, 34.547951, 28.006037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415054, 34.439522, 27.986645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006959, -0.152073, 0.988345,
		-0.275290, -0.950469, -0.144307,
		0.961336, -0.271077, -0.048478,
		36.703457, 34.358200, 27.972101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088436, 33.943153, 28.483358>,  <36.030521, 34.547951, 28.006037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088436, 33.943153, 28.483358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.449886, 34.102699, 28.420918>,  <36.666756, 34.198429, 28.383453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.449886, 34.102699, 28.420918>,  <36.088436, 33.943153, 28.483358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449886, 34.102699, 28.420918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141681, 0.065593, 0.987737,
		0.404216, -0.914660, 0.002760,
		0.903624, 0.398868, -0.156104,
		36.720974, 34.222359, 28.374086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508141, 33.611221, 28.953533>,  <36.088436, 33.943153, 28.483358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508141, 33.611221, 28.953533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.747246, 33.918079, 28.860435>,  <36.890709, 34.102196, 28.804577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.747246, 33.918079, 28.860435>,  <36.508141, 33.611221, 28.953533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747246, 33.918079, 28.860435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293359, 0.060869, 0.954063,
		0.746071, -0.638580, -0.188663,
		0.597761, 0.767145, -0.232746,
		36.926575, 34.148224, 28.790611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136913, 33.462509, 29.362627>,  <36.508141, 33.611221, 28.953533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136913, 33.462509, 29.362627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.129189, 33.853931, 29.280590>,  <37.124554, 34.088783, 29.231367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.129189, 33.853931, 29.280590>,  <37.136913, 33.462509, 29.362627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129189, 33.853931, 29.280590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416628, 0.194349, 0.888060,
		0.908872, -0.068301, -0.411444,
		-0.019309, 0.978552, -0.205094,
		37.123398, 34.147495, 29.219061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820946, 33.740635, 29.556063>,  <37.136913, 33.462509, 29.362627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820946, 33.740635, 29.556063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.589199, 34.066452, 29.544365>,  <37.450153, 34.261944, 29.537346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.589199, 34.066452, 29.544365>,  <37.820946, 33.740635, 29.556063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589199, 34.066452, 29.544365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299294, 0.245981, 0.921909,
		0.758130, 0.525366, -0.386301,
		-0.579363, 0.814545, -0.029246,
		37.415390, 34.310814, 29.535591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263847, 34.322872, 29.712482>,  <37.820946, 33.740635, 29.556063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263847, 34.322872, 29.712482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888760, 34.435345, 29.794086>,  <37.663708, 34.502831, 29.843050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888760, 34.435345, 29.794086>,  <38.263847, 34.322872, 29.712482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888760, 34.435345, 29.794086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255675, 0.161012, 0.953261,
		0.235193, 0.946050, -0.222875,
		-0.937718, 0.281184, 0.204012,
		37.607445, 34.519699, 29.855289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372086, 34.863670, 30.113422>,  <38.263847, 34.322872, 29.712482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372086, 34.863670, 30.113422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000256, 34.730762, 30.177280>,  <37.777157, 34.651020, 30.215595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000256, 34.730762, 30.177280>,  <38.372086, 34.863670, 30.113422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000256, 34.730762, 30.177280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163745, 0.015818, 0.986376,
		-0.330265, 0.943053, 0.039702,
		-0.929577, -0.332266, 0.159644,
		37.721382, 34.631084, 30.225174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.437462, 22.246431, 23.792215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.721613, 22.339039, 24.058075>,  <27.892103, 22.394604, 24.217590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.721613, 22.339039, 24.058075>,  <27.437462, 22.246431, 23.792215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721613, 22.339039, 24.058075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399733, -0.909976, -0.110260,
		0.579289, 0.344009, -0.738973,
		0.710379, 0.231519, 0.664651,
		27.934727, 22.408495, 24.257471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066027, 22.027821, 23.441502>,  <27.437462, 22.246431, 23.792215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066027, 22.027821, 23.441502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.104486, 22.047516, 23.839161>,  <28.127562, 22.059334, 24.077757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.104486, 22.047516, 23.839161>,  <28.066027, 22.027821, 23.441502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104486, 22.047516, 23.839161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420686, -0.907196, 0.004246,
		0.902097, 0.417816, -0.107941,
		0.096150, 0.049239, 0.994148,
		28.133331, 22.062288, 24.137405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651270, 21.741112, 23.531933>,  <28.066027, 22.027821, 23.441502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651270, 21.741112, 23.531933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.495907, 21.694885, 23.897617>,  <28.402689, 21.667149, 24.117027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.495907, 21.694885, 23.897617>,  <28.651270, 21.741112, 23.531933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495907, 21.694885, 23.897617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293829, -0.955850, 0.004004,
		0.873386, 0.270177, 0.405218,
		-0.388409, -0.115567, 0.914211,
		28.379385, 21.660215, 24.171881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082775, 21.260988, 23.853458>,  <28.651270, 21.741112, 23.531933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082775, 21.260988, 23.853458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.768728, 21.255409, 24.101135>,  <28.580301, 21.252062, 24.249741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.768728, 21.255409, 24.101135>,  <29.082775, 21.260988, 23.853458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768728, 21.255409, 24.101135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274653, -0.903909, 0.327893,
		0.555121, 0.427497, 0.713503,
		-0.785115, -0.013946, 0.619192,
		28.533194, 21.251225, 24.286894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326540, 20.957581, 24.404707>,  <29.082775, 21.260988, 23.853458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326540, 20.957581, 24.404707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.930464, 20.928883, 24.452663>,  <28.692818, 20.911665, 24.481438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.930464, 20.928883, 24.452663>,  <29.326540, 20.957581, 24.404707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930464, 20.928883, 24.452663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108871, -0.934005, 0.340266,
		0.087565, 0.349981, 0.932655,
		-0.990192, -0.071744, 0.119889,
		28.633406, 20.907360, 24.488630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160997, 20.656507, 25.096422>,  <29.326540, 20.957581, 24.404707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160997, 20.656507, 25.096422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843679, 20.583111, 24.864212>,  <28.653288, 20.539072, 24.724886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843679, 20.583111, 24.864212>,  <29.160997, 20.656507, 25.096422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843679, 20.583111, 24.864212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094686, -0.979085, 0.180077,
		-0.601427, 0.087887, 0.794079,
		-0.793297, -0.183491, -0.580526,
		28.605690, 20.528063, 24.690054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834507, 20.124006, 25.469460>,  <29.160997, 20.656507, 25.096422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834507, 20.124006, 25.469460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.680231, 20.116169, 25.100491>,  <28.587666, 20.111467, 24.879110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.680231, 20.116169, 25.100491>,  <28.834507, 20.124006, 25.469460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680231, 20.116169, 25.100491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176625, -0.979716, 0.094660,
		-0.905565, 0.199432, 0.374404,
		-0.385688, -0.019591, -0.922421,
		28.564526, 20.110292, 24.823765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197021, 19.903717, 25.597290>,  <28.834507, 20.124006, 25.469460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197021, 19.903717, 25.597290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.264698, 19.829975, 25.210014>,  <28.305304, 19.785730, 24.977650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.264698, 19.829975, 25.210014>,  <28.197021, 19.903717, 25.597290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264698, 19.829975, 25.210014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385382, -0.916512, 0.107172,
		-0.907114, 0.354990, -0.226112,
		0.169190, -0.184357, -0.968188,
		28.315454, 19.774668, 24.919558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652084, 19.481138, 25.311216>,  <28.197021, 19.903717, 25.597290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652084, 19.481138, 25.311216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.949030, 19.400295, 25.055702>,  <28.127197, 19.351789, 24.902393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.949030, 19.400295, 25.055702>,  <27.652084, 19.481138, 25.311216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949030, 19.400295, 25.055702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240921, -0.970170, 0.026971,
		-0.625182, 0.133875, -0.768911,
		0.742364, -0.202109, -0.638786,
		28.171740, 19.339663, 24.864067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415762, 18.981888, 24.762379>,  <27.652084, 19.481138, 25.311216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415762, 18.981888, 24.762379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.812935, 18.970169, 24.808380>,  <28.051239, 18.963139, 24.835981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.812935, 18.970169, 24.808380>,  <27.415762, 18.981888, 24.762379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812935, 18.970169, 24.808380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054348, -0.973716, 0.221187,
		0.105499, -0.225874, -0.968427,
		0.992933, -0.029297, 0.115001,
		28.110815, 18.961380, 24.842880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453289, 18.453009, 24.338676>,  <27.415762, 18.981888, 24.762379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453289, 18.453009, 24.338676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.799824, 18.491302, 24.534756>,  <28.007746, 18.514278, 24.652403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.799824, 18.491302, 24.534756>,  <27.453289, 18.453009, 24.338676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799824, 18.491302, 24.534756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143024, -0.892806, 0.427132,
		0.478541, -0.440151, -0.759780,
		0.866339, 0.095733, 0.490197,
		28.059725, 18.520021, 24.681814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886745, 17.839712, 24.012009>,  <27.453289, 18.453009, 24.338676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886745, 17.839712, 24.012009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.010704, 17.962627, 24.371906>,  <28.085079, 18.036377, 24.587845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.010704, 17.962627, 24.371906>,  <27.886745, 17.839712, 24.012009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010704, 17.962627, 24.371906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293747, -0.869088, 0.397993,
		0.904254, -0.387635, -0.179064,
		0.309898, 0.307287, 0.899743,
		28.103674, 18.054813, 24.641829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555058, 17.402319, 24.374920>,  <27.886745, 17.839712, 24.012009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555058, 17.402319, 24.374920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.279177, 17.560776, 24.617367>,  <28.113647, 17.655849, 24.762835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.279177, 17.560776, 24.617367>,  <28.555058, 17.402319, 24.374920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279177, 17.560776, 24.617367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124279, -0.889415, 0.439881,
		0.713348, 0.228059, 0.662664,
		-0.689703, 0.396144, 0.606119,
		28.072266, 17.679619, 24.799202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485661, 16.847469, 23.797970>,  <28.555058, 17.402319, 24.374920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485661, 16.847469, 23.797970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.834631, 16.904743, 23.984890>,  <29.044014, 16.939108, 24.097042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.834631, 16.904743, 23.984890>,  <28.485661, 16.847469, 23.797970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834631, 16.904743, 23.984890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122595, -0.861445, 0.492832,
		0.473122, -0.487248, -0.733993,
		0.872425, 0.143186, 0.467302,
		29.096359, 16.947699, 24.125080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250658, 16.702976, 23.626205>,  <28.485661, 16.847469, 23.797970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250658, 16.702976, 23.626205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501904, 16.564545, 23.347435>,  <29.652651, 16.481485, 23.180174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501904, 16.564545, 23.347435>,  <29.250658, 16.702976, 23.626205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501904, 16.564545, 23.347435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064364, 0.915687, -0.396706,
		0.775456, 0.204319, 0.597429,
		0.628113, -0.346081, -0.696924,
		29.690338, 16.460720, 23.138357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859058, 17.134186, 23.647675>,  <29.250658, 16.702976, 23.626205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859058, 17.134186, 23.647675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.873541, 16.971024, 23.282753>,  <29.882231, 16.873125, 23.063799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.873541, 16.971024, 23.282753>,  <29.859058, 17.134186, 23.647675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873541, 16.971024, 23.282753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122520, 0.907829, -0.401043,
		0.991805, -0.097254, 0.082848,
		0.036208, -0.407908, -0.912305,
		29.884403, 16.848652, 23.009062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601904, 17.313269, 23.239050>,  <29.859058, 17.134186, 23.647675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601904, 17.313269, 23.239050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.319674, 17.237347, 22.965954>,  <30.150335, 17.191793, 22.802095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.319674, 17.237347, 22.965954>,  <30.601904, 17.313269, 23.239050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319674, 17.237347, 22.965954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312399, 0.781472, -0.540100,
		0.636056, -0.594370, -0.492095,
		-0.705578, -0.189804, -0.682740,
		30.108000, 17.180405, 22.761131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836941, 17.481747, 22.485380>,  <30.601904, 17.313269, 23.239050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836941, 17.481747, 22.485380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.441210, 17.440487, 22.444221>,  <30.203772, 17.415731, 22.419525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.441210, 17.440487, 22.444221>,  <30.836941, 17.481747, 22.485380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441210, 17.440487, 22.444221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047942, 0.897382, -0.438643,
		0.137586, -0.429029, -0.892751,
		-0.989329, -0.103152, -0.102898,
		30.144411, 17.409542, 22.413351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696487, 17.858055, 21.930384>,  <30.836941, 17.481747, 22.485380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696487, 17.858055, 21.930384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.332199, 17.833206, 22.093716>,  <30.113626, 17.818296, 22.191715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.332199, 17.833206, 22.093716>,  <30.696487, 17.858055, 21.930384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332199, 17.833206, 22.093716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253432, 0.864685, -0.433697,
		-0.326135, -0.498459, -0.803227,
		-0.910718, -0.062120, 0.408330,
		30.058983, 17.814569, 22.216215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164606, 17.980433, 21.328135>,  <30.696487, 17.858055, 21.930384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164606, 17.980433, 21.328135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.008760, 18.059246, 21.687996>,  <29.915253, 18.106535, 21.903913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.008760, 18.059246, 21.687996>,  <30.164606, 17.980433, 21.328135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008760, 18.059246, 21.687996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266647, 0.910875, -0.314971,
		-0.881532, -0.362608, -0.302353,
		-0.389617, 0.197036, 0.899653,
		29.891876, 18.118357, 21.957891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561687, 18.360067, 21.174654>,  <30.164606, 17.980433, 21.328135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561687, 18.360067, 21.174654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.625008, 18.439285, 21.561584>,  <29.663000, 18.486816, 21.793743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.625008, 18.439285, 21.561584>,  <29.561687, 18.360067, 21.174654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625008, 18.439285, 21.561584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180119, 0.969033, -0.168916,
		-0.970824, -0.147494, 0.189069,
		0.158300, 0.198043, 0.967326,
		29.672497, 18.498697, 21.851782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984180, 18.752670, 21.353956>,  <29.561687, 18.360067, 21.174654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984180, 18.752670, 21.353956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.271902, 18.834381, 21.619549>,  <29.444534, 18.883408, 21.778904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.271902, 18.834381, 21.619549>,  <28.984180, 18.752670, 21.353956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271902, 18.834381, 21.619549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189310, 0.977255, -0.095571,
		-0.668403, -0.056953, 0.741615,
		0.719305, 0.204275, 0.663982,
		29.487694, 18.895664, 21.818743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694134, 19.254770, 21.747765>,  <28.984180, 18.752670, 21.353956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694134, 19.254770, 21.747765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.087011, 19.294857, 21.811329>,  <29.322739, 19.318909, 21.849466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.087011, 19.294857, 21.811329>,  <28.694134, 19.254770, 21.747765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087011, 19.294857, 21.811329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075038, 0.984710, -0.157214,
		-0.172235, 0.142490, 0.974696,
		0.982194, 0.100217, 0.158909,
		29.381670, 19.324923, 21.859001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786346, 19.877821, 22.207508>,  <28.694134, 19.254770, 21.747765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786346, 19.877821, 22.207508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.158087, 19.805096, 22.078976>,  <29.381130, 19.761461, 22.001856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.158087, 19.805096, 22.078976>,  <28.786346, 19.877821, 22.207508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158087, 19.805096, 22.078976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195523, 0.980641, 0.010628,
		0.313180, -0.072705, 0.946907,
		0.929349, -0.181814, -0.321332,
		29.436892, 19.750551, 21.982576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171078, 20.322540, 22.675375>,  <28.786346, 19.877821, 22.207508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171078, 20.322540, 22.675375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.371439, 20.240971, 22.338921>,  <29.491655, 20.192028, 22.137047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.371439, 20.240971, 22.338921>,  <29.171078, 20.322540, 22.675375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371439, 20.240971, 22.338921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092722, 0.978897, -0.182108,
		0.860523, 0.013227, 0.509240,
		0.500902, -0.203925, -0.841137,
		29.521709, 20.179792, 22.086580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827482, 20.655365, 22.705793>,  <29.171078, 20.322540, 22.675375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827482, 20.655365, 22.705793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741035, 20.610992, 22.317776>,  <29.689167, 20.584368, 22.084965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741035, 20.610992, 22.317776>,  <29.827482, 20.655365, 22.705793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741035, 20.610992, 22.317776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192925, 0.969084, -0.153805,
		0.957117, -0.220386, -0.188036,
		-0.216119, -0.110933, -0.970045,
		29.676199, 20.577713, 22.026762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282305, 21.154812, 22.454840>,  <29.827482, 20.655365, 22.705793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282305, 21.154812, 22.454840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.043137, 21.068436, 22.146072>,  <29.899635, 21.016609, 21.960812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.043137, 21.068436, 22.146072>,  <30.282305, 21.154812, 22.454840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043137, 21.068436, 22.146072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001146, 0.962796, -0.270226,
		0.801555, -0.162458, -0.575427,
		-0.597920, -0.215942, -0.771921,
		29.863760, 21.003653, 21.914495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615854, 21.398197, 21.844564>,  <30.282305, 21.154812, 22.454840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615854, 21.398197, 21.844564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219175, 21.400265, 21.793171>,  <29.981169, 21.401505, 21.762335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219175, 21.400265, 21.793171>,  <30.615854, 21.398197, 21.844564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219175, 21.400265, 21.793171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036328, 0.969751, -0.241378,
		0.123351, -0.244042, -0.961888,
		-0.991698, 0.005170, -0.128485,
		29.921665, 21.401815, 21.754625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165897, 21.408623, 21.340401>,  <30.615854, 21.398197, 21.844564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165897, 21.408623, 21.340401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.549360, 21.522224, 21.333309>,  <31.779438, 21.590385, 21.329054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.549360, 21.522224, 21.333309>,  <31.165897, 21.408623, 21.340401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549360, 21.522224, 21.333309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284124, -0.951900, 0.114718,
		0.015706, -0.115013, -0.993240,
		0.958659, 0.284005, -0.017728,
		31.836958, 21.607426, 21.327991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541649, 20.848869, 21.009762>,  <31.165897, 21.408623, 21.340401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541649, 20.848869, 21.009762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828272, 21.006760, 21.239799>,  <32.000244, 21.101494, 21.377823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828272, 21.006760, 21.239799>,  <31.541649, 20.848869, 21.009762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828272, 21.006760, 21.239799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224499, -0.911117, 0.345639,
		0.660413, -0.118562, -0.741484,
		0.716558, 0.394727, 0.575096,
		32.043240, 21.125177, 21.412329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092567, 20.303953, 21.053102>,  <31.541649, 20.848869, 21.009762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092567, 20.303953, 21.053102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156731, 20.545307, 21.365562>,  <32.195229, 20.690119, 21.553040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156731, 20.545307, 21.365562>,  <32.092567, 20.303953, 21.053102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156731, 20.545307, 21.365562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269872, -0.788055, 0.553298,
		0.949441, 0.122058, -0.289247,
		0.160408, 0.603384, 0.781151,
		32.204853, 20.726322, 21.599907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729721, 20.063225, 21.297174>,  <32.092567, 20.303953, 21.053102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729721, 20.063225, 21.297174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542015, 20.262466, 21.588840>,  <32.429390, 20.382011, 21.763840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542015, 20.262466, 21.588840>,  <32.729721, 20.063225, 21.297174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542015, 20.262466, 21.588840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195572, -0.746599, 0.635878,
		0.861128, 0.440999, 0.252938,
		-0.469265, 0.498105, 0.729165,
		32.401237, 20.411898, 21.807590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177113, 19.971691, 21.832848>,  <32.729721, 20.063225, 21.297174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177113, 19.971691, 21.832848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823940, 20.063358, 21.996761>,  <32.612038, 20.118359, 22.095110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823940, 20.063358, 21.996761>,  <33.177113, 19.971691, 21.832848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823940, 20.063358, 21.996761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074264, -0.793634, 0.603846,
		0.463601, 0.563584, 0.683701,
		-0.882927, 0.229169, 0.409783,
		32.559063, 20.132109, 22.119696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293823, 19.884882, 22.553705>,  <33.177113, 19.971691, 21.832848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293823, 19.884882, 22.553705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895477, 19.883190, 22.517426>,  <32.656467, 19.882175, 22.495657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895477, 19.883190, 22.517426>,  <33.293823, 19.884882, 22.553705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895477, 19.883190, 22.517426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054823, -0.768287, 0.637754,
		-0.072382, 0.640092, 0.764881,
		-0.995869, -0.004229, -0.090701,
		32.596718, 19.881922, 22.490215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017754, 19.764750, 23.241892>,  <33.293823, 19.884882, 22.553705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017754, 19.764750, 23.241892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725979, 19.633472, 23.001823>,  <32.550915, 19.554707, 22.857782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725979, 19.633472, 23.001823>,  <33.017754, 19.764750, 23.241892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725979, 19.633472, 23.001823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124183, -0.799275, 0.587995,
		-0.672678, 0.503438, 0.542268,
		-0.729440, -0.328191, -0.600173,
		32.507149, 19.535015, 22.821772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692841, 20.186829, 23.667326>,  <33.017754, 19.764750, 23.241892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692841, 20.186829, 23.667326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744892, 20.273357, 24.054371>,  <32.776123, 20.325274, 24.286598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744892, 20.273357, 24.054371>,  <32.692841, 20.186829, 23.667326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744892, 20.273357, 24.054371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138151, 0.970346, -0.198352,
		-0.981825, -0.107865, 0.156157,
		0.130131, 0.216320, 0.967611,
		32.783932, 20.338253, 24.344654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078903, 20.567778, 23.813433>,  <32.692841, 20.186829, 23.667326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078903, 20.567778, 23.813433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344379, 20.663963, 24.096756>,  <32.503666, 20.721674, 24.266750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344379, 20.663963, 24.096756>,  <32.078903, 20.567778, 23.813433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344379, 20.663963, 24.096756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376739, 0.925506, 0.038806,
		-0.646211, -0.292601, 0.704837,
		0.663686, 0.240463, 0.708307,
		32.543484, 20.736103, 24.309248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741800, 21.068455, 24.184206>,  <32.078903, 20.567778, 23.813433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741800, 21.068455, 24.184206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124386, 21.145458, 24.271954>,  <32.353935, 21.191660, 24.324602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124386, 21.145458, 24.271954>,  <31.741800, 21.068455, 24.184206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124386, 21.145458, 24.271954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199971, 0.979727, 0.012123,
		-0.212586, -0.055462, 0.975567,
		0.956462, 0.192508, 0.219367,
		32.411324, 21.203211, 24.337763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582279, 21.653570, 24.622774>,  <31.741800, 21.068455, 24.184206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582279, 21.653570, 24.622774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967871, 21.656303, 24.516418>,  <32.199226, 21.657944, 24.452604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967871, 21.656303, 24.516418>,  <31.582279, 21.653570, 24.622774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967871, 21.656303, 24.516418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013731, 0.997058, 0.075403,
		0.265623, -0.076338, 0.961050,
		0.963979, 0.006832, -0.265890,
		32.257065, 21.658354, 24.436651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011513, 21.989370, 25.135284>,  <31.582279, 21.653570, 24.622774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011513, 21.989370, 25.135284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207237, 22.004887, 24.786785>,  <32.324673, 22.014196, 24.577686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207237, 22.004887, 24.786785>,  <32.011513, 21.989370, 25.135284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207237, 22.004887, 24.786785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016032, 0.998441, 0.053456,
		0.871964, -0.040125, 0.487923,
		0.489307, 0.038790, -0.871248,
		32.354031, 22.016523, 24.525410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525059, 22.503883, 25.275705>,  <32.011513, 21.989370, 25.135284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525059, 22.503883, 25.275705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540569, 22.450096, 24.879642>,  <32.549873, 22.417824, 24.642004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540569, 22.450096, 24.879642>,  <32.525059, 22.503883, 25.275705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540569, 22.450096, 24.879642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004270, 0.990918, -0.134403,
		0.999239, 0.000983, 0.038995,
		0.038773, -0.134468, -0.990159,
		32.552200, 22.409756, 24.582594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092354, 22.840187, 25.022728>,  <32.525059, 22.503883, 25.275705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092354, 22.840187, 25.022728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841084, 22.825100, 24.711864>,  <32.690323, 22.816048, 24.525347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841084, 22.825100, 24.711864>,  <33.092354, 22.840187, 25.022728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841084, 22.825100, 24.711864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106542, 0.993586, 0.037896,
		0.770744, 0.106606, -0.628164,
		-0.628174, -0.037718, -0.777158,
		32.652630, 22.813786, 24.478718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.002605, 18.725407, 27.680552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.706654, 18.767067, 27.414700>,  <29.529083, 18.792063, 27.255188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.706654, 18.767067, 27.414700>,  <30.002605, 18.725407, 27.680552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706654, 18.767067, 27.414700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167036, 0.928565, 0.331461,
		0.651672, 0.356258, -0.669629,
		-0.739880, 0.104152, -0.664628,
		29.484690, 18.798313, 27.215311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095640, 19.404247, 27.428598>,  <30.002605, 18.725407, 27.680552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095640, 19.404247, 27.428598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.715349, 19.312752, 27.344883>,  <29.487175, 19.257854, 27.294655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.715349, 19.312752, 27.344883>,  <30.095640, 19.404247, 27.428598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715349, 19.312752, 27.344883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252954, 0.962600, 0.097034,
		0.179265, 0.145192, -0.973028,
		-0.950726, -0.228736, -0.209287,
		29.430132, 19.244131, 27.282097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897739, 19.895008, 27.039911>,  <30.095640, 19.404247, 27.428598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897739, 19.895008, 27.039911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.535984, 19.760483, 27.144958>,  <29.318930, 19.679768, 27.207987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.535984, 19.760483, 27.144958>,  <29.897739, 19.895008, 27.039911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535984, 19.760483, 27.144958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334232, 0.940944, 0.053985,
		-0.265267, -0.038952, -0.963388,
		-0.904391, -0.336315, 0.262621,
		29.264668, 19.659588, 27.223745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398417, 20.273289, 26.668621>,  <29.897739, 19.895008, 27.039911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398417, 20.273289, 26.668621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.197231, 20.109657, 26.973167>,  <29.076519, 20.011478, 27.155895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.197231, 20.109657, 26.973167>,  <29.398417, 20.273289, 26.668621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197231, 20.109657, 26.973167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440700, 0.879167, 0.181244,
		-0.743512, -0.244375, -0.622471,
		-0.502964, -0.409080, 0.761367,
		29.046341, 19.986933, 27.201578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646708, 20.217718, 26.429035>,  <29.398417, 20.273289, 26.668621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646708, 20.217718, 26.429035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.674824, 20.212952, 26.828018>,  <28.691692, 20.210091, 27.067408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.674824, 20.212952, 26.828018>,  <28.646708, 20.217718, 26.429035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674824, 20.212952, 26.828018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378982, 0.924634, 0.037753,
		-0.922731, -0.380672, 0.060476,
		0.070289, -0.011917, 0.997456,
		28.695910, 20.209377, 27.127254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109976, 20.670895, 26.642033>,  <28.646708, 20.217718, 26.429035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109976, 20.670895, 26.642033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.335487, 20.647289, 26.971558>,  <28.470795, 20.633125, 27.169273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.335487, 20.647289, 26.971558>,  <28.109976, 20.670895, 26.642033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335487, 20.647289, 26.971558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140255, 0.976116, 0.165909,
		-0.813929, -0.209080, 0.542038,
		0.563780, -0.059015, 0.823814,
		28.504622, 20.629585, 27.218702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826555, 21.089499, 27.129128>,  <28.109976, 20.670895, 26.642033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826555, 21.089499, 27.129128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.188093, 21.034805, 27.291298>,  <28.405016, 21.001989, 27.388601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.188093, 21.034805, 27.291298>,  <27.826555, 21.089499, 27.129128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188093, 21.034805, 27.291298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040774, 0.970777, 0.236496,
		-0.425916, -0.197224, 0.883005,
		0.903843, -0.136731, 0.405428,
		28.459246, 20.993786, 27.412926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851233, 21.517422, 27.748886>,  <27.826555, 21.089499, 27.129128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851233, 21.517422, 27.748886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238234, 21.460430, 27.665329>,  <28.470434, 21.426235, 27.615194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238234, 21.460430, 27.665329>,  <27.851233, 21.517422, 27.748886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238234, 21.460430, 27.665329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172134, 0.976274, 0.131375,
		0.185219, -0.163063, 0.969074,
		0.967504, -0.142478, -0.208894,
		28.528484, 21.417686, 27.602661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290396, 21.835035, 28.332184>,  <27.851233, 21.517422, 27.748886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290396, 21.835035, 28.332184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.525585, 21.806805, 28.009865>,  <28.666698, 21.789865, 27.816473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.525585, 21.806805, 28.009865>,  <28.290396, 21.835035, 28.332184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525585, 21.806805, 28.009865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266230, 0.957567, 0.110392,
		0.763814, -0.279435, 0.581812,
		0.587971, -0.070577, -0.805797,
		28.701977, 21.785631, 27.768126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962603, 22.089281, 28.515068>,  <28.290396, 21.835035, 28.332184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962603, 22.089281, 28.515068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.966993, 22.103191, 28.115334>,  <28.969627, 22.111538, 27.875494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.966993, 22.103191, 28.115334>,  <28.962603, 22.089281, 28.515068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966993, 22.103191, 28.115334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149255, 0.988142, 0.036028,
		0.988738, -0.149552, 0.005656,
		0.010977, 0.034778, -0.999335,
		28.970285, 22.113625, 27.815533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589260, 22.330336, 28.262991>,  <28.962603, 22.089281, 28.515068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589260, 22.330336, 28.262991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.334064, 22.417656, 27.967609>,  <29.180946, 22.470047, 27.790380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.334064, 22.417656, 27.967609>,  <29.589260, 22.330336, 28.262991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334064, 22.417656, 27.967609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163724, 0.975504, 0.146925,
		0.752438, -0.027166, -0.658103,
		-0.637990, 0.218299, -0.738454,
		29.142668, 22.483147, 27.746073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812952, 22.911806, 28.143881>,  <29.589260, 22.330336, 28.262991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812952, 22.911806, 28.143881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.486870, 22.922760, 27.912472>,  <29.291220, 22.929333, 27.773626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.486870, 22.922760, 27.912472>,  <29.812952, 22.911806, 28.143881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486870, 22.922760, 27.912472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067415, 0.996578, -0.047824,
		0.575232, -0.077988, -0.814264,
		-0.815207, 0.027384, -0.578521,
		29.242308, 22.930975, 27.738914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446583, 22.866920, 27.724314>,  <29.812952, 22.911806, 28.143881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446583, 22.866920, 27.724314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846369, 22.862228, 27.736504>,  <31.086241, 22.859413, 27.743818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846369, 22.862228, 27.736504>,  <30.446583, 22.866920, 27.724314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846369, 22.862228, 27.736504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012343, -0.999724, 0.020011,
		0.030232, -0.020376, -0.999335,
		0.999467, -0.011730, 0.030476,
		31.146210, 22.858709, 27.745646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667049, 22.266895, 27.346020>,  <30.446583, 22.866920, 27.724314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667049, 22.266895, 27.346020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.006615, 22.337181, 27.545406>,  <31.210354, 22.379353, 27.665037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.006615, 22.337181, 27.545406>,  <30.667049, 22.266895, 27.346020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006615, 22.337181, 27.545406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160397, -0.984289, 0.073807,
		0.503603, 0.017296, -0.863762,
		0.848915, 0.175715, 0.498465,
		31.261290, 22.389896, 27.694946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119566, 21.915680, 27.038229>,  <30.667049, 22.266895, 27.346020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119566, 21.915680, 27.038229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.280182, 21.983185, 27.398293>,  <31.376551, 22.023687, 27.614330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.280182, 21.983185, 27.398293>,  <31.119566, 21.915680, 27.038229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280182, 21.983185, 27.398293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252638, -0.965151, 0.068252,
		0.880307, 0.200008, -0.430182,
		0.401539, 0.168763, 0.900158,
		31.400644, 22.033813, 27.668341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816000, 21.533077, 27.039169>,  <31.119566, 21.915680, 27.038229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816000, 21.533077, 27.039169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.737745, 21.590981, 27.427143>,  <31.690792, 21.625723, 27.659927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.737745, 21.590981, 27.427143>,  <31.816000, 21.533077, 27.039169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737745, 21.590981, 27.427143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320030, -0.925475, 0.202673,
		0.926988, 0.350058, 0.134729,
		-0.195636, 0.144759, 0.969934,
		31.679054, 21.634409, 27.718122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280243, 21.184547, 27.393000>,  <31.816000, 21.533077, 27.039169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280243, 21.184547, 27.393000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.009457, 21.240391, 27.682060>,  <31.846985, 21.273897, 27.855497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.009457, 21.240391, 27.682060>,  <32.280243, 21.184547, 27.393000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009457, 21.240391, 27.682060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139817, -0.939575, 0.312490,
		0.722612, 0.312585, 0.616541,
		-0.676966, 0.139606, 0.722652,
		31.806366, 21.282272, 27.898855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568974, 20.880749, 27.999098>,  <32.280243, 21.184547, 27.393000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568974, 20.880749, 27.999098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.175941, 20.888084, 28.073063>,  <31.940121, 20.892487, 28.117441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.175941, 20.888084, 28.073063>,  <32.568974, 20.880749, 27.999098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175941, 20.888084, 28.073063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059223, -0.912315, 0.405183,
		0.176128, 0.409077, 0.895341,
		-0.982584, 0.018340, 0.184911,
		31.881166, 20.893587, 28.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529362, 20.508665, 28.537987>,  <32.568974, 20.880749, 27.999098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529362, 20.508665, 28.537987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.147041, 20.499348, 28.420757>,  <31.917648, 20.493757, 28.350420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.147041, 20.499348, 28.420757>,  <32.529362, 20.508665, 28.537987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147041, 20.499348, 28.420757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025912, -0.986304, 0.162891,
		-0.292855, 0.163287, 0.942111,
		-0.955806, -0.023292, -0.293075,
		31.860300, 20.492361, 28.332834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106789, 20.150393, 29.005363>,  <32.529362, 20.508665, 28.537987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106789, 20.150393, 29.005363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.925673, 20.120224, 28.649994>,  <31.817003, 20.102123, 28.436773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.925673, 20.120224, 28.649994>,  <32.106789, 20.150393, 29.005363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925673, 20.120224, 28.649994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026801, -0.994815, 0.098112,
		-0.891214, 0.068234, 0.448420,
		-0.452790, -0.075421, -0.888422,
		31.789835, 20.097597, 28.383467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745770, 19.554688, 29.096619>,  <32.106789, 20.150393, 29.005363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745770, 19.554688, 29.096619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.728872, 19.620834, 28.702488>,  <31.718735, 19.660522, 28.466009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.728872, 19.620834, 28.702488>,  <31.745770, 19.554688, 29.096619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728872, 19.620834, 28.702488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107012, -0.979785, -0.169026,
		-0.993360, -0.112582, 0.023693,
		-0.042243, 0.165368, -0.985327,
		31.716200, 19.670444, 28.406891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283283, 19.037710, 28.882254>,  <31.745770, 19.554688, 29.096619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283283, 19.037710, 28.882254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.452965, 19.164101, 28.542793>,  <31.554773, 19.239935, 28.339117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.452965, 19.164101, 28.542793>,  <31.283283, 19.037710, 28.882254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452965, 19.164101, 28.542793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052089, -0.944112, -0.325481,
		-0.904068, 0.093864, -0.416953,
		0.424202, 0.315976, -0.848653,
		31.580225, 19.258894, 28.288197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903183, 18.750282, 28.314907>,  <31.283283, 19.037710, 28.882254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903183, 18.750282, 28.314907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.256948, 18.838749, 28.150517>,  <31.469208, 18.891829, 28.051882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.256948, 18.838749, 28.150517>,  <30.903183, 18.750282, 28.314907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256948, 18.838749, 28.150517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053292, -0.922683, -0.381858,
		-0.463653, 0.315818, -0.827819,
		0.884413, 0.221166, -0.410974,
		31.522272, 18.905098, 28.027224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951908, 18.447205, 27.615444>,  <30.903183, 18.750282, 28.314907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951908, 18.447205, 27.615444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.329102, 18.503456, 27.736115>,  <31.555418, 18.537207, 27.808517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.329102, 18.503456, 27.736115>,  <30.951908, 18.447205, 27.615444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329102, 18.503456, 27.736115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261689, -0.873327, -0.410876,
		0.205679, 0.466394, -0.860333,
		0.942982, 0.140631, 0.301675,
		31.611996, 18.545645, 27.826616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263138, 18.000162, 27.172686>,  <30.951908, 18.447205, 27.615444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263138, 18.000162, 27.172686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.543146, 18.084305, 27.445660>,  <31.711151, 18.134790, 27.609444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.543146, 18.084305, 27.445660>,  <31.263138, 18.000162, 27.172686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543146, 18.084305, 27.445660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490775, -0.835910, -0.245754,
		0.518759, 0.506956, -0.688393,
		0.700021, 0.210359, 0.682436,
		31.753153, 18.147413, 27.650391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863132, 17.898054, 26.851860>,  <31.263138, 18.000162, 27.172686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863132, 17.898054, 26.851860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920389, 17.833176, 27.242390>,  <31.954742, 17.794249, 27.476707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920389, 17.833176, 27.242390>,  <31.863132, 17.898054, 26.851860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920389, 17.833176, 27.242390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589386, -0.778511, -0.215743,
		0.795069, 0.606311, -0.015841,
		0.143139, -0.162194, 0.976322,
		31.963331, 17.784517, 27.535286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452644, 18.051258, 26.472076>,  <31.863132, 17.898054, 26.851860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452644, 18.051258, 26.472076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.772827, 18.012672, 26.235447>,  <32.964939, 17.989521, 26.093470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.772827, 18.012672, 26.235447>,  <32.452644, 18.051258, 26.472076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772827, 18.012672, 26.235447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297670, 0.792676, -0.532031,
		0.520248, 0.601962, 0.605791,
		0.800459, -0.096463, -0.591575,
		33.012966, 17.983734, 26.057974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729713, 18.756021, 26.438522>,  <32.452644, 18.051258, 26.472076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729713, 18.756021, 26.438522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.884426, 18.562504, 26.124493>,  <32.977253, 18.446392, 25.936075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.884426, 18.562504, 26.124493>,  <32.729713, 18.756021, 26.438522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884426, 18.562504, 26.124493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036925, 0.842524, -0.537392,
		0.921431, 0.236843, 0.308009,
		0.386783, -0.483796, -0.785073,
		33.000462, 18.417364, 25.888971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350098, 19.067392, 26.377333>,  <32.729713, 18.756021, 26.438522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350098, 19.067392, 26.377333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.211040, 18.906590, 26.038502>,  <33.127605, 18.810108, 25.835203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.211040, 18.906590, 26.038502>,  <33.350098, 19.067392, 26.377333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211040, 18.906590, 26.038502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144442, 0.869678, -0.472012,
		0.926435, -0.286445, -0.244271,
		-0.347642, -0.402006, -0.847075,
		33.106747, 18.785988, 25.784380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680088, 19.385513, 25.921179>,  <33.350098, 19.067392, 26.377333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680088, 19.385513, 25.921179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.406994, 19.218075, 25.681629>,  <33.243137, 19.117611, 25.537899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.406994, 19.218075, 25.681629>,  <33.680088, 19.385513, 25.921179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406994, 19.218075, 25.681629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031931, 0.801753, -0.596802,
		0.729969, -0.426580, -0.534018,
		-0.682735, -0.418595, -0.598875,
		33.202175, 19.092497, 25.501966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921734, 19.563803, 25.239664>,  <33.680088, 19.385513, 25.921179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921734, 19.563803, 25.239664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534908, 19.468880, 25.202850>,  <33.302811, 19.411926, 25.180761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534908, 19.468880, 25.202850>,  <33.921734, 19.563803, 25.239664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534908, 19.468880, 25.202850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113547, 0.725842, -0.678425,
		0.227796, -0.645631, -0.728882,
		-0.967066, -0.237305, -0.092034,
		33.244789, 19.397688, 25.175240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825695, 19.483591, 24.482750>,  <33.921734, 19.563803, 25.239664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825695, 19.483591, 24.482750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.488041, 19.561073, 24.682716>,  <33.285450, 19.607563, 24.802696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.488041, 19.561073, 24.682716>,  <33.825695, 19.483591, 24.482750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488041, 19.561073, 24.682716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228280, 0.713843, -0.662055,
		-0.485105, -0.672983, -0.558360,
		-0.844133, 0.193704, 0.499917,
		33.234802, 19.619184, 24.832691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318714, 19.693272, 23.902676>,  <33.825695, 19.483591, 24.482750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318714, 19.693272, 23.902676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148232, 19.838993, 24.233887>,  <33.045940, 19.926426, 24.432613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148232, 19.838993, 24.233887>,  <33.318714, 19.693272, 23.902676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148232, 19.838993, 24.233887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264696, 0.825043, -0.499239,
		-0.865034, -0.431955, -0.255209,
		-0.426208, 0.364306, 0.828027,
		33.020370, 19.948284, 24.482294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590458, 19.365202, 23.717512>,  <33.318714, 19.693272, 23.902676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590458, 19.365202, 23.717512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.459648, 19.253288, 23.356453>,  <32.381161, 19.186140, 23.139818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.459648, 19.253288, 23.356453>,  <32.590458, 19.365202, 23.717512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459648, 19.253288, 23.356453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170074, -0.922148, 0.347445,
		-0.929584, 0.267142, 0.253985,
		-0.327028, -0.279783, -0.902648,
		32.361538, 19.169353, 23.085659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982771, 18.910000, 23.821165>,  <32.590458, 19.365202, 23.717512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982771, 18.910000, 23.821165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.112595, 18.833908, 23.450550>,  <32.190487, 18.788254, 23.228180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.112595, 18.833908, 23.450550>,  <31.982771, 18.910000, 23.821165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112595, 18.833908, 23.450550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114932, -0.980241, 0.160994,
		-0.938857, 0.054237, -0.340007,
		0.324557, -0.190228, -0.926540,
		32.209961, 18.776840, 23.172588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584459, 18.363485, 23.561462>,  <31.982771, 18.910000, 23.821165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584459, 18.363485, 23.561462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913679, 18.346935, 23.334877>,  <32.111210, 18.337006, 23.198927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913679, 18.346935, 23.334877>,  <31.584459, 18.363485, 23.561462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913679, 18.346935, 23.334877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043857, -0.998995, 0.009243,
		-0.566276, 0.017236, -0.824036,
		0.823048, -0.041374, -0.566463,
		32.160595, 18.334522, 23.164938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422075, 17.900528, 23.030403>,  <31.584459, 18.363485, 23.561462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422075, 17.900528, 23.030403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.820429, 17.910160, 23.065346>,  <32.059441, 17.915939, 23.086311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.820429, 17.910160, 23.065346>,  <31.422075, 17.900528, 23.030403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820429, 17.910160, 23.065346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021914, -0.999430, 0.025681,
		0.087923, -0.023661, -0.995846,
		0.995886, 0.024081, 0.087355,
		32.119194, 17.917385, 23.091553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447453, 17.212818, 22.812826>,  <31.422075, 17.900528, 23.030403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447453, 17.212818, 22.812826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.809649, 17.318634, 22.945557>,  <32.026966, 17.382124, 23.025196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.809649, 17.318634, 22.945557>,  <31.447453, 17.212818, 22.812826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809649, 17.318634, 22.945557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226971, -0.962584, 0.148040,
		0.358574, -0.058733, -0.931652,
		0.905488, 0.264541, 0.331827,
		32.081295, 17.397997, 23.045105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916716, 16.890947, 22.434858>,  <31.447453, 17.212818, 22.812826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916716, 16.890947, 22.434858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.095371, 16.973068, 22.783195>,  <32.202564, 17.022341, 22.992197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.095371, 16.973068, 22.783195>,  <31.916716, 16.890947, 22.434858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095371, 16.973068, 22.783195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295774, -0.952476, 0.072849,
		0.844413, 0.225036, -0.486134,
		0.446637, 0.205300, 0.870843,
		32.229362, 17.034658, 23.044449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485001, 16.489645, 22.347559>,  <31.916716, 16.890947, 22.434858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485001, 16.489645, 22.347559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447464, 16.552658, 22.740776>,  <32.424942, 16.590466, 22.976707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447464, 16.552658, 22.740776>,  <32.485001, 16.489645, 22.347559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447464, 16.552658, 22.740776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286491, -0.941364, 0.178203,
		0.953476, 0.298357, 0.043209,
		-0.093843, 0.157533, 0.983045,
		32.419312, 16.599918, 23.035690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140263, 16.294813, 22.649879>,  <32.485001, 16.489645, 22.347559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140263, 16.294813, 22.649879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.839733, 16.284721, 22.913662>,  <32.659416, 16.278666, 23.071932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.839733, 16.284721, 22.913662>,  <33.140263, 16.294813, 22.649879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839733, 16.284721, 22.913662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135519, -0.983871, 0.116754,
		0.645874, 0.177088, 0.742621,
		-0.751319, -0.025231, 0.659456,
		32.614338, 16.277151, 23.111500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420483, 15.882144, 23.151236>,  <33.140263, 16.294813, 22.649879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420483, 15.882144, 23.151236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.026142, 15.860821, 23.214809>,  <32.789539, 15.848027, 23.252954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.026142, 15.860821, 23.214809>,  <33.420483, 15.882144, 23.151236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026142, 15.860821, 23.214809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087463, -0.972386, 0.216370,
		0.143013, 0.227209, 0.963288,
		-0.985849, -0.053308, 0.158936,
		32.730389, 15.844829, 23.262491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.593882, 31.389744, 20.064991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380421, 31.084114, 20.209991>,  <28.252344, 30.900736, 20.296991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380421, 31.084114, 20.209991>,  <28.593882, 31.389744, 20.064991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380421, 31.084114, 20.209991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832961, -0.400753, 0.381540,
		-0.146251, 0.505560, 0.850306,
		-0.533654, -0.764072, 0.362501,
		28.220324, 30.854893, 20.318743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798653, 31.367496, 20.703108>,  <28.593882, 31.389744, 20.064991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798653, 31.367496, 20.703108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632515, 31.012760, 20.622112>,  <28.532831, 30.799919, 20.573515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632515, 31.012760, 20.622112>,  <28.798653, 31.367496, 20.703108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632515, 31.012760, 20.622112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786115, -0.461935, 0.410656,
		-0.457722, 0.011386, 0.889022,
		-0.415346, -0.886841, -0.202488,
		28.507912, 30.746708, 20.561365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971514, 31.000937, 21.320007>,  <28.798653, 31.367496, 20.703108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971514, 31.000937, 21.320007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868896, 30.700558, 21.076611>,  <28.807325, 30.520330, 20.930573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868896, 30.700558, 21.076611>,  <28.971514, 31.000937, 21.320007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868896, 30.700558, 21.076611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707069, -0.575040, 0.411560,
		-0.658968, -0.324663, 0.678495,
		-0.256544, -0.750948, -0.608492,
		28.791933, 30.475273, 20.894062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768497, 30.295553, 21.748323>,  <28.971514, 31.000937, 21.320007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768497, 30.295553, 21.748323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884529, 30.213688, 21.374378>,  <28.954147, 30.164568, 21.150011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884529, 30.213688, 21.374378>,  <28.768497, 30.295553, 21.748323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884529, 30.213688, 21.374378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666613, -0.657683, 0.350827,
		-0.686645, -0.724959, -0.054347,
		0.290079, -0.204665, -0.934862,
		28.971554, 30.152288, 21.093920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907110, 29.496365, 21.814634>,  <28.768497, 30.295553, 21.748323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907110, 29.496365, 21.814634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050760, 29.577755, 21.450298>,  <29.136950, 29.626589, 21.231697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050760, 29.577755, 21.450298>,  <28.907110, 29.496365, 21.814634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050760, 29.577755, 21.450298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627251, -0.775282, 0.074117,
		-0.691076, -0.597942, -0.406053,
		0.359124, 0.203477, -0.910839,
		29.158497, 29.638798, 21.177046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939465, 28.882895, 21.503231>,  <28.907110, 29.496365, 21.814634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939465, 28.882895, 21.503231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195461, 29.099754, 21.285431>,  <29.349060, 29.229870, 21.154751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195461, 29.099754, 21.285431>,  <28.939465, 28.882895, 21.503231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195461, 29.099754, 21.285431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623553, -0.780528, -0.044250,
		-0.448988, -0.311205, -0.837593,
		0.639993, 0.542151, -0.544500,
		29.387459, 29.262400, 21.122082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087393, 28.456770, 20.978918>,  <28.939465, 28.882895, 21.503231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087393, 28.456770, 20.978918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389013, 28.719246, 20.967457>,  <29.569986, 28.876732, 20.960581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389013, 28.719246, 20.967457>,  <29.087393, 28.456770, 20.978918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389013, 28.719246, 20.967457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645570, -0.748472, -0.151755,
		-0.121026, 0.095934, -0.988003,
		0.754051, 0.656191, -0.028652,
		29.615229, 28.916103, 20.958860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490961, 28.283400, 20.380890>,  <29.087393, 28.456770, 20.978918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490961, 28.283400, 20.380890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721222, 28.484211, 20.639065>,  <29.859379, 28.604698, 20.793970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721222, 28.484211, 20.639065>,  <29.490961, 28.283400, 20.380890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721222, 28.484211, 20.639065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744083, -0.648915, -0.158899,
		0.339064, 0.571731, -0.747101,
		0.575652, 0.502028, 0.645439,
		29.893917, 28.634819, 20.832697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113045, 28.066147, 20.249315>,  <29.490961, 28.283400, 20.380890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113045, 28.066147, 20.249315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191572, 28.261677, 20.589317>,  <30.238689, 28.378994, 20.793320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191572, 28.261677, 20.589317>,  <30.113045, 28.066147, 20.249315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191572, 28.261677, 20.589317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754289, -0.629167, 0.187610,
		0.626503, 0.604319, -0.492232,
		0.196320, 0.488823, 0.850006,
		30.250467, 28.408323, 20.844318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874580, 28.378071, 20.271883>,  <30.113045, 28.066147, 20.249315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874580, 28.378071, 20.271883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735394, 28.309547, 20.640572>,  <30.651882, 28.268435, 20.861786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735394, 28.309547, 20.640572>,  <30.874580, 28.378071, 20.271883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735394, 28.309547, 20.640572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590308, -0.803829, 0.073456,
		0.728324, 0.569661, 0.380828,
		-0.347966, -0.171306, 0.921723,
		30.631004, 28.258156, 20.917089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480894, 28.094858, 20.608040>,  <30.874580, 28.378071, 20.271883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480894, 28.094858, 20.608040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180367, 27.985592, 20.848339>,  <31.000050, 27.920033, 20.992519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180367, 27.985592, 20.848339>,  <31.480894, 28.094858, 20.608040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180367, 27.985592, 20.848339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418144, -0.901311, 0.113113,
		0.510562, 0.336183, 0.791395,
		-0.751320, -0.273166, 0.600748,
		30.954971, 27.903643, 21.028564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717197, 27.910294, 21.329781>,  <31.480894, 28.094858, 20.608040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717197, 27.910294, 21.329781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361977, 27.731152, 21.288239>,  <31.148844, 27.623667, 21.263313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361977, 27.731152, 21.288239>,  <31.717197, 27.910294, 21.329781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361977, 27.731152, 21.288239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406002, -0.869963, 0.279868,
		-0.215690, 0.206373, 0.954405,
		-0.888054, -0.447855, -0.103855,
		31.095560, 27.596794, 21.257082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777452, 28.394871, 21.929998>,  <31.717197, 27.910294, 21.329781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777452, 28.394871, 21.929998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959570, 28.434464, 22.283928>,  <32.068840, 28.458220, 22.496284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959570, 28.434464, 22.283928>,  <31.777452, 28.394871, 21.929998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959570, 28.434464, 22.283928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125462, 0.976753, -0.173821,
		-0.881458, 0.190151, 0.432290,
		0.455293, 0.098980, 0.884823,
		32.096157, 28.464157, 22.549376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510160, 28.929771, 22.235426>,  <31.777452, 28.394871, 21.929998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510160, 28.929771, 22.235426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845457, 28.908321, 22.452488>,  <32.046635, 28.895452, 22.582726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845457, 28.908321, 22.452488>,  <31.510160, 28.929771, 22.235426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845457, 28.908321, 22.452488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115010, 0.990153, -0.079813,
		-0.533032, 0.129314, 0.836155,
		0.838242, -0.053623, 0.542655,
		32.096931, 28.892235, 22.615284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430433, 29.444578, 22.789028>,  <31.510160, 28.929771, 22.235426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430433, 29.444578, 22.789028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821424, 29.381470, 22.732967>,  <32.056019, 29.343605, 22.699331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821424, 29.381470, 22.732967>,  <31.430433, 29.444578, 22.789028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821424, 29.381470, 22.732967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140244, 0.981908, -0.127235,
		0.157691, 0.104714, 0.981921,
		0.977479, -0.157772, -0.140152,
		32.114670, 29.334139, 22.690922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784784, 29.962914, 23.186621>,  <31.430433, 29.444578, 22.789028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784784, 29.962914, 23.186621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053707, 29.858120, 22.909676>,  <32.215061, 29.795244, 22.743507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053707, 29.858120, 22.909676>,  <31.784784, 29.962914, 23.186621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053707, 29.858120, 22.909676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310940, 0.948716, -0.057052,
		0.671804, -0.176928, 0.719288,
		0.672306, -0.261983, -0.692365,
		32.255398, 29.779526, 22.701965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451206, 30.340225, 23.391697>,  <31.784784, 29.962914, 23.186621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451206, 30.340225, 23.391697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542049, 30.234478, 23.016777>,  <32.596558, 30.171030, 22.791824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542049, 30.234478, 23.016777>,  <32.451206, 30.340225, 23.391697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542049, 30.234478, 23.016777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525231, 0.843727, -0.110709,
		0.820093, -0.467155, 0.330473,
		0.227111, -0.264367, -0.937300,
		32.610184, 30.155169, 22.735586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065117, 30.513407, 23.269938>,  <32.451206, 30.340225, 23.391697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065117, 30.513407, 23.269938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943581, 30.477818, 22.890514>,  <32.870659, 30.456465, 22.662861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943581, 30.477818, 22.890514>,  <33.065117, 30.513407, 23.269938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943581, 30.477818, 22.890514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434401, 0.873174, -0.221051,
		0.847924, -0.479219, -0.226658,
		-0.303844, -0.088973, -0.948558,
		32.852428, 30.451126, 22.605947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665161, 30.663454, 22.750494>,  <33.065117, 30.513407, 23.269938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665161, 30.663454, 22.750494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326023, 30.729904, 22.549072>,  <33.122540, 30.769773, 22.428219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326023, 30.729904, 22.549072>,  <33.665161, 30.663454, 22.750494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326023, 30.729904, 22.549072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264545, 0.955546, -0.130180,
		0.459542, -0.243584, -0.854101,
		-0.847843, 0.166125, -0.503553,
		33.071671, 30.779741, 22.398006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844223, 31.198792, 22.241026>,  <33.665161, 30.663454, 22.750494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844223, 31.198792, 22.241026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444607, 31.216206, 22.239254>,  <33.204838, 31.226654, 22.238192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444607, 31.216206, 22.239254>,  <33.844223, 31.198792, 22.241026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444607, 31.216206, 22.239254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042874, 0.994068, 0.099954,
		0.008756, 0.099668, -0.994982,
		-0.999042, 0.043534, -0.004430,
		33.144894, 31.229265, 22.237925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548485, 31.697487, 21.737741>,  <33.844223, 31.198792, 22.241026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548485, 31.697487, 21.737741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225357, 31.697739, 21.973515>,  <33.031479, 31.697889, 22.114979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225357, 31.697739, 21.973515>,  <33.548485, 31.697487, 21.737741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225357, 31.697739, 21.973515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062863, 0.994204, -0.087214,
		-0.586070, -0.107507, -0.803097,
		-0.807818, 0.000629, 0.589431,
		32.983013, 31.697927, 22.150343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103672, 32.114132, 21.361498>,  <33.548485, 31.697487, 21.737741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103672, 32.114132, 21.361498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938023, 32.092842, 21.724964>,  <32.838634, 32.080067, 21.943043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938023, 32.092842, 21.724964>,  <33.103672, 32.114132, 21.361498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938023, 32.092842, 21.724964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226794, 0.972838, -0.046377,
		-0.881514, -0.225285, -0.414944,
		-0.414122, -0.053225, 0.908664,
		32.813786, 32.076874, 21.997562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364700, 32.391319, 21.320656>,  <33.103672, 32.114132, 21.361498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364700, 32.391319, 21.320656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465672, 32.425091, 21.706226>,  <32.526253, 32.445354, 21.937569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465672, 32.425091, 21.706226>,  <32.364700, 32.391319, 21.320656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465672, 32.425091, 21.706226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180349, 0.982835, -0.038856,
		-0.950660, -0.164034, 0.263323,
		0.252429, 0.084429, 0.963925,
		32.541401, 32.450420, 21.995403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839989, 32.855717, 21.579775>,  <32.364700, 32.391319, 21.320656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839989, 32.855717, 21.579775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117016, 32.889668, 21.866310>,  <32.283234, 32.910038, 22.038231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117016, 32.889668, 21.866310>,  <31.839989, 32.855717, 21.579775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117016, 32.889668, 21.866310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300085, 0.936945, 0.179117,
		-0.655970, -0.339014, 0.674369,
		0.692570, 0.084873, 0.716341,
		32.324787, 32.915131, 22.081213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486202, 33.203213, 22.007580>,  <31.839989, 32.855717, 21.579775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486202, 33.203213, 22.007580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864481, 33.265598, 22.121655>,  <32.091450, 33.303028, 22.190100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864481, 33.265598, 22.121655>,  <31.486202, 33.203213, 22.007580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864481, 33.265598, 22.121655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213346, 0.959761, 0.182596,
		-0.245233, -0.233524, 0.940918,
		0.945697, 0.155963, 0.285187,
		32.148190, 33.312386, 22.207211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463362, 33.379368, 22.697027>,  <31.486202, 33.203213, 22.007580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463362, 33.379368, 22.697027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823626, 33.514313, 22.587479>,  <32.039783, 33.595280, 22.521749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823626, 33.514313, 22.587479>,  <31.463362, 33.379368, 22.697027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823626, 33.514313, 22.587479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224256, 0.900723, 0.372032,
		0.372188, -0.273656, 0.886898,
		0.900658, 0.337358, -0.273870,
		32.093822, 33.615520, 22.505318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691956, 33.296478, 23.382364>,  <31.463362, 33.379368, 22.697027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691956, 33.296478, 23.382364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343943, 33.493382, 23.393154>,  <31.135136, 33.611523, 23.399628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343943, 33.493382, 23.393154>,  <31.691956, 33.296478, 23.382364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343943, 33.493382, 23.393154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484895, 0.864333, -0.133435,
		-0.089000, -0.103013, -0.990690,
		-0.870032, 0.492257, 0.026976,
		31.082933, 33.641060, 23.401247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413574, 32.488491, 23.503897>,  <31.691956, 33.296478, 23.382364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413574, 32.488491, 23.503897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174538, 32.650497, 23.780693>,  <31.031116, 32.747700, 23.946770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174538, 32.650497, 23.780693>,  <31.413574, 32.488491, 23.503897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174538, 32.650497, 23.780693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159434, -0.785787, 0.597596,
		0.785790, 0.467444, 0.405006,
		-0.597591, 0.405013, 0.691989,
		30.995260, 32.772003, 23.988291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763968, 32.624126, 24.153601>,  <31.413574, 32.488491, 23.503897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763968, 32.624126, 24.153601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372124, 32.581093, 24.221470>,  <31.137016, 32.555275, 24.262192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372124, 32.581093, 24.221470>,  <31.763968, 32.624126, 24.153601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372124, 32.581093, 24.221470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193938, -0.726821, 0.658877,
		0.052438, 0.678349, 0.732866,
		-0.979611, -0.107581, 0.169671,
		31.078239, 32.548820, 24.272371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672361, 32.558727, 24.828314>,  <31.763968, 32.624126, 24.153601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672361, 32.558727, 24.828314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342009, 32.385597, 24.683769>,  <31.143797, 32.281719, 24.597042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342009, 32.385597, 24.683769>,  <31.672361, 32.558727, 24.828314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342009, 32.385597, 24.683769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148936, -0.785590, 0.600555,
		-0.543815, 0.442169, 0.713269,
		-0.825884, -0.432822, -0.361361,
		31.094244, 32.255749, 24.575361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339090, 32.334919, 25.474257>,  <31.672361, 32.558727, 24.828314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339090, 32.334919, 25.474257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222218, 32.118004, 25.159157>,  <31.152094, 31.987854, 24.970097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222218, 32.118004, 25.159157>,  <31.339090, 32.334919, 25.474257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222218, 32.118004, 25.159157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105650, -0.836956, 0.536976,
		-0.950509, 0.073670, 0.301837,
		-0.292183, -0.542290, -0.787751,
		31.134563, 31.955317, 24.922832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906620, 31.762394, 25.768381>,  <31.339090, 32.334919, 25.474257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906620, 31.762394, 25.768381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969257, 31.613926, 25.402275>,  <31.006840, 31.524845, 25.182611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969257, 31.613926, 25.402275>,  <30.906620, 31.762394, 25.768381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969257, 31.613926, 25.402275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170163, -0.922980, 0.345186,
		-0.972894, 0.101690, -0.207694,
		0.156595, -0.371171, -0.915265,
		31.016235, 31.502575, 25.127695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341446, 31.316057, 25.544195>,  <30.906620, 31.762394, 25.768381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341446, 31.316057, 25.544195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672287, 31.189938, 25.358082>,  <30.870792, 31.114265, 25.246414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672287, 31.189938, 25.358082>,  <30.341446, 31.316057, 25.544195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672287, 31.189938, 25.358082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131699, -0.913505, 0.384921,
		-0.546403, -0.257092, -0.797087,
		0.827103, -0.315297, -0.465283,
		30.920418, 31.095348, 25.218496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190586, 30.640505, 25.288670>,  <30.341446, 31.316057, 25.544195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190586, 30.640505, 25.288670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587833, 30.621571, 25.245815>,  <30.826181, 30.610210, 25.220102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587833, 30.621571, 25.245815>,  <30.190586, 30.640505, 25.288670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587833, 30.621571, 25.245815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022708, -0.975158, 0.220345,
		-0.114905, -0.216395, -0.969520,
		0.993117, -0.047335, -0.107137,
		30.885769, 30.607370, 25.213675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296272, 30.010233, 24.948051>,  <30.190586, 30.640505, 25.288670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296272, 30.010233, 24.948051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655979, 30.104324, 25.095554>,  <30.871803, 30.160780, 25.184055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655979, 30.104324, 25.095554>,  <30.296272, 30.010233, 24.948051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655979, 30.104324, 25.095554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097233, -0.929488, 0.355805,
		0.426451, -0.284109, -0.858733,
		0.899269, 0.235231, 0.368756,
		30.925760, 30.174894, 25.206181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653696, 29.519484, 24.693888>,  <30.296272, 30.010233, 24.948051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653696, 29.519484, 24.693888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878101, 29.677479, 24.984886>,  <31.012745, 29.772276, 25.159485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878101, 29.677479, 24.984886>,  <30.653696, 29.519484, 24.693888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878101, 29.677479, 24.984886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266533, -0.918212, 0.292995,
		0.783726, 0.029528, -0.620405,
		0.561012, 0.394986, 0.727497,
		31.046406, 29.795975, 25.203135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342054, 29.165222, 24.689447>,  <30.653696, 29.519484, 24.693888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342054, 29.165222, 24.689447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313694, 29.309998, 25.061249>,  <31.296677, 29.396862, 25.284328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313694, 29.309998, 25.061249>,  <31.342054, 29.165222, 24.689447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313694, 29.309998, 25.061249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252046, -0.895108, 0.367770,
		0.965114, 0.260353, -0.027759,
		-0.070903, 0.361937, 0.929502,
		31.292423, 29.418579, 25.340099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927073, 28.876656, 24.985716>,  <31.342054, 29.165222, 24.689447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927073, 28.876656, 24.985716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682915, 28.992268, 25.280708>,  <31.536419, 29.061634, 25.457705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682915, 28.992268, 25.280708>,  <31.927073, 28.876656, 24.985716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682915, 28.992268, 25.280708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193397, -0.848492, 0.492605,
		0.768124, 0.443311, 0.462019,
		-0.610397, 0.289028, 0.737481,
		31.499796, 29.078976, 25.501953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315025, 28.853111, 25.541777>,  <31.927073, 28.876656, 24.985716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315025, 28.853111, 25.541777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927679, 28.805218, 25.629345>,  <31.695271, 28.776482, 25.681885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927679, 28.805218, 25.629345>,  <32.315025, 28.853111, 25.541777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927679, 28.805218, 25.629345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217491, -0.835067, 0.505332,
		0.122307, 0.536961, 0.834694,
		-0.968369, -0.119733, 0.218919,
		31.637169, 28.769299, 25.695021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298046, 28.680185, 26.269985>,  <32.315025, 28.853111, 25.541777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298046, 28.680185, 26.269985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939974, 28.571560, 26.128620>,  <31.725130, 28.506386, 26.043802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939974, 28.571560, 26.128620>,  <32.298046, 28.680185, 26.269985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939974, 28.571560, 26.128620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100653, -0.895634, 0.433254,
		-0.434182, 0.352270, 0.829091,
		-0.895184, -0.271562, -0.353411,
		31.671419, 28.490091, 26.022596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971899, 28.389450, 26.868837>,  <32.298046, 28.680185, 26.269985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971899, 28.389450, 26.868837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728798, 28.241013, 26.588001>,  <31.582937, 28.151951, 26.419500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728798, 28.241013, 26.588001>,  <31.971899, 28.389450, 26.868837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728798, 28.241013, 26.588001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034390, -0.895570, 0.443590,
		-0.793383, 0.245447, 0.557045,
		-0.607751, -0.371094, -0.702089,
		31.546473, 28.129684, 26.377375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316177, 28.134089, 27.158974>,  <31.971899, 28.389450, 26.868837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316177, 28.134089, 27.158974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359304, 27.932175, 26.816380>,  <31.385180, 27.811026, 26.610823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359304, 27.932175, 26.816380>,  <31.316177, 28.134089, 27.158974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359304, 27.932175, 26.816380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146501, -0.860169, 0.488515,
		-0.983317, 0.072806, -0.166692,
		0.107816, -0.504786, -0.856485,
		31.391649, 27.780739, 26.559435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959692, 27.432268, 27.312067>,  <31.316177, 28.134089, 27.158974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959692, 27.432268, 27.312067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183872, 27.373421, 26.986061>,  <31.318380, 27.338112, 26.790457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183872, 27.373421, 26.986061>,  <30.959692, 27.432268, 27.312067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183872, 27.373421, 26.986061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251689, -0.907294, 0.336853,
		-0.789016, -0.393920, -0.471467,
		0.560453, -0.147120, -0.815015,
		31.352009, 27.329285, 26.741556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717442, 26.854654, 27.003918>,  <30.959692, 27.432268, 27.312067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717442, 26.854654, 27.003918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090460, 26.884117, 26.862534>,  <31.314270, 26.901794, 26.777704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090460, 26.884117, 26.862534>,  <30.717442, 26.854654, 27.003918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090460, 26.884117, 26.862534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131861, -0.980826, 0.143504,
		-0.336112, -0.180431, -0.924377,
		0.932546, 0.073655, -0.353459,
		31.370224, 26.906214, 26.756496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795187, 26.196154, 26.634693>,  <30.717442, 26.854654, 27.003918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795187, 26.196154, 26.634693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171116, 26.316795, 26.698906>,  <31.396673, 26.389181, 26.737434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171116, 26.316795, 26.698906>,  <30.795187, 26.196154, 26.634693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171116, 26.316795, 26.698906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288021, -0.952110, 0.102622,
		0.183795, -0.050210, -0.981681,
		0.939821, 0.301606, 0.160531,
		31.453062, 26.407278, 26.747065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309956, 25.744226, 26.214243>,  <30.795187, 26.196154, 26.634693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309956, 25.744226, 26.214243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545040, 25.909561, 26.492451>,  <31.686090, 26.008762, 26.659376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545040, 25.909561, 26.492451>,  <31.309956, 25.744226, 26.214243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545040, 25.909561, 26.492451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457244, -0.878890, 0.135945,
		0.667477, 0.238126, -0.705529,
		0.587710, 0.413338, 0.695520,
		31.721354, 26.033564, 26.701107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960960, 25.633596, 26.024870>,  <31.309956, 25.744226, 26.214243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960960, 25.633596, 26.024870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969522, 25.692776, 26.420376>,  <31.974661, 25.728283, 26.657679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969522, 25.692776, 26.420376>,  <31.960960, 25.633596, 26.024870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969522, 25.692776, 26.420376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384345, -0.914207, 0.128472,
		0.922942, 0.377276, -0.076434,
		0.021407, 0.147949, 0.988763,
		31.975945, 25.737160, 26.717005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573151, 25.313398, 26.284294>,  <31.960960, 25.633596, 26.024870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573151, 25.313398, 26.284294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353115, 25.343597, 26.616970>,  <32.221096, 25.361717, 26.816576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353115, 25.343597, 26.616970>,  <32.573151, 25.313398, 26.284294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353115, 25.343597, 26.616970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062407, -0.989404, 0.131091,
		0.832774, 0.124014, 0.539544,
		-0.550084, 0.075498, 0.831689,
		32.188091, 25.366247, 26.866476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886440, 24.860643, 26.644754>,  <32.573151, 25.313398, 26.284294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886440, 24.860643, 26.644754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539783, 24.922802, 26.834396>,  <32.331787, 24.960098, 26.948181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539783, 24.922802, 26.834396>,  <32.886440, 24.860643, 26.644754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539783, 24.922802, 26.834396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028821, -0.964264, 0.263372,
		0.498091, 0.214587, 0.840153,
		-0.866646, 0.155397, 0.474107,
		32.279789, 24.969421, 26.976627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940575, 24.438629, 27.214220>,  <32.886440, 24.860643, 26.644754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940575, 24.438629, 27.214220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551281, 24.516361, 27.165134>,  <32.317707, 24.563000, 27.135683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551281, 24.516361, 27.165134>,  <32.940575, 24.438629, 27.214220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551281, 24.516361, 27.165134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221002, -0.937853, 0.267564,
		-0.063092, 0.287522, 0.955694,
		-0.973230, 0.194329, -0.122714,
		32.259312, 24.574659, 27.128321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629665, 24.272205, 27.840414>,  <32.940575, 24.438629, 27.214220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629665, 24.272205, 27.840414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329353, 24.259567, 27.576496>,  <32.149166, 24.251984, 27.418146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329353, 24.259567, 27.576496>,  <32.629665, 24.272205, 27.840414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329353, 24.259567, 27.576496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253009, -0.908925, 0.331425,
		-0.610173, 0.415762, 0.674411,
		-0.750783, -0.031595, -0.659793,
		32.104118, 24.250090, 27.378559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103867, 24.135687, 28.138498>,  <32.629665, 24.272205, 27.840414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103867, 24.135687, 28.138498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940706, 24.060364, 27.781139>,  <31.842810, 24.015169, 27.566725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940706, 24.060364, 27.781139>,  <32.103867, 24.135687, 28.138498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940706, 24.060364, 27.781139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200514, -0.936136, 0.288867,
		-0.890735, 0.296968, 0.344094,
		-0.407903, -0.188308, -0.893395,
		31.818335, 24.003872, 27.513121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328609, 23.890911, 28.215828>,  <32.103867, 24.135687, 28.138498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328609, 23.890911, 28.215828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463860, 23.744816, 27.868893>,  <31.545010, 23.657158, 27.660732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463860, 23.744816, 27.868893>,  <31.328609, 23.890911, 28.215828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463860, 23.744816, 27.868893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371768, -0.898498, 0.233430,
		-0.864559, 0.243521, -0.439586,
		0.338122, -0.365238, -0.867338,
		31.565296, 23.635244, 27.608692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631994, 23.536425, 27.873253>,  <31.328609, 23.890911, 28.215828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631994, 23.536425, 27.873253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991365, 23.407211, 27.754272>,  <31.206987, 23.329683, 27.682884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991365, 23.407211, 27.754272>,  <30.631994, 23.536425, 27.873253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991365, 23.407211, 27.754272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315519, -0.946002, 0.074354,
		-0.305409, 0.027050, -0.951837,
		0.898428, -0.323031, -0.297453,
		31.260893, 23.310303, 27.665037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992989, 23.477776, 27.565462>,  <30.631994, 23.536425, 27.873253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992989, 23.477776, 27.565462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595865, 23.429924, 27.563778>,  <29.357592, 23.401213, 27.562767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595865, 23.429924, 27.563778>,  <29.992989, 23.477776, 27.565462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595865, 23.429924, 27.563778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104511, 0.883406, -0.456806,
		0.058367, -0.453081, -0.889557,
		-0.992810, -0.119631, -0.004210,
		29.298023, 23.394035, 27.562515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805334, 23.857944, 26.951536>,  <29.992989, 23.477776, 27.565462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805334, 23.857944, 26.951536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473097, 23.806847, 27.168346>,  <29.273754, 23.776188, 27.298433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473097, 23.806847, 27.168346>,  <29.805334, 23.857944, 26.951536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473097, 23.806847, 27.168346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301757, 0.921293, -0.245280,
		-0.468032, -0.367289, -0.803769,
		-0.830595, -0.127744, 0.542027,
		29.223919, 23.768524, 27.330954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229464, 23.990643, 26.519226>,  <29.805334, 23.857944, 26.951536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229464, 23.990643, 26.519226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118139, 24.058403, 26.897400>,  <29.051344, 24.099058, 27.124304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118139, 24.058403, 26.897400>,  <29.229464, 23.990643, 26.519226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118139, 24.058403, 26.897400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278586, 0.927774, -0.248244,
		-0.919202, -0.332474, -0.211019,
		-0.278312, 0.169399, 0.945434,
		29.034645, 24.109222, 27.181030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541311, 24.359718, 26.490246>,  <29.229464, 23.990643, 26.519226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541311, 24.359718, 26.490246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700260, 24.462589, 26.842598>,  <28.795630, 24.524313, 27.054010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700260, 24.462589, 26.842598>,  <28.541311, 24.359718, 26.490246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700260, 24.462589, 26.842598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392748, 0.915228, -0.090035,
		-0.829364, -0.310187, 0.464693,
		0.397372, 0.257179, 0.880883,
		28.819471, 24.539743, 27.106863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997639, 24.668249, 26.894579>,  <28.541311, 24.359718, 26.490246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997639, 24.668249, 26.894579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327803, 24.788185, 27.085907>,  <28.525902, 24.860147, 27.200705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327803, 24.788185, 27.085907>,  <27.997639, 24.668249, 26.894579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327803, 24.788185, 27.085907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358924, 0.932722, 0.034689,
		-0.435739, -0.200313, 0.877500,
		0.825412, 0.299841, 0.478321,
		28.575426, 24.878138, 27.229403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
