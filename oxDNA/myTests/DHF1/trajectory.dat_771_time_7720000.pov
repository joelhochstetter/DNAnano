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
	<1.677636, 0.731698, 1.155225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.490078, 0.414043, 1.000570>,  <1.377543, 0.223451, 0.907778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.490078, 0.414043, 1.000570>,  <1.677636, 0.731698, 1.155225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.490078, 0.414043, 1.000570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408447, -0.193170, 0.892108,
		-0.783141, 0.576224, -0.233786,
		-0.468894, -0.794135, -0.386636,
		1.349410, 0.175803, 0.884579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.931323, 0.750734, 1.152207>,  <1.677636, 0.731698, 1.155225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.931323, 0.750734, 1.152207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.037930, 0.368191, 1.200123>,  <1.101894, 0.138665, 1.228872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.037930, 0.368191, 1.200123>,  <0.931323, 0.750734, 1.152207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.037930, 0.368191, 1.200123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377147, 0.010895, 0.926089,
		-0.886977, -0.291996, -0.357784,
		0.266517, -0.956357, 0.119789,
		1.117885, 0.081284, 1.236060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.362459, 0.315403, 1.301429>,  <0.931323, 0.750734, 1.152207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.362459, 0.315403, 1.301429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.709015, 0.198883, 1.463669>,  <0.916949, 0.128971, 1.561013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.709015, 0.198883, 1.463669>,  <0.362459, 0.315403, 1.301429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.709015, 0.198883, 1.463669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409817, 0.049335, 0.910833,
		-0.285337, -0.955358, -0.076637,
		0.866391, -0.291302, 0.405599,
		0.968932, 0.111493, 1.585349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.077376, -0.310705, 1.676107>,  <0.362459, 0.315403, 1.301429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.077376, -0.310705, 1.676107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.395866, -0.104481, 1.802736>,  <0.586961, 0.019254, 1.878714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.395866, -0.104481, 1.802736>,  <0.077376, -0.310705, 1.676107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.395866, -0.104481, 1.802736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532905, 0.349942, 0.770424,
		0.286413, -0.782139, 0.553376,
		0.796229, 0.515557, 0.316578,
		0.634735, 0.050188, 1.897709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.146775, -0.404585, 2.382467>,  <0.077376, -0.310705, 1.676107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.146775, -0.404585, 2.382467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.329006, -0.057560, 2.302681>,  <0.438345, 0.150655, 2.254809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.329006, -0.057560, 2.302681>,  <0.146775, -0.404585, 2.382467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.329006, -0.057560, 2.302681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292910, 0.357683, 0.886717,
		0.840627, -0.345543, 0.417069,
		0.455577, 0.867562, -0.199465,
		0.465679, 0.202709, 2.242841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.652459, -0.287520, 2.925654>,  <0.146775, -0.404585, 2.382467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.652459, -0.287520, 2.925654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.566734, 0.074352, 2.778347>,  <0.515300, 0.291476, 2.689963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.566734, 0.074352, 2.778347>,  <0.652459, -0.287520, 2.925654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.566734, 0.074352, 2.778347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278110, 0.304906, 0.910872,
		0.936336, 0.297629, 0.186257,
		-0.214311, 0.904682, -0.368268,
		0.502441, 0.345757, 2.667866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.952205, 0.205073, 3.398861>,  <0.652459, -0.287521, 2.925654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.952205, 0.205073, 3.398861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683102, 0.424297, 3.200054>,  <0.521640, 0.555832, 3.080770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683102, 0.424297, 3.200054>,  <0.952205, 0.205073, 3.398861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.683102, 0.424297, 3.200054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176881, 0.533146, 0.827326,
		0.718407, 0.644504, -0.261737,
		-0.672759, 0.548060, -0.497017,
		0.481274, 0.588715, 3.050949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.045508, 0.848216, 3.710356>,  <0.952205, 0.205073, 3.398861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.045508, 0.848216, 3.710356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.680916, 0.849030, 3.545820>,  <0.462161, 0.849518, 3.447099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.680916, 0.849030, 3.545820>,  <1.045508, 0.848216, 3.710356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.680916, 0.849030, 3.545820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367738, 0.444046, 0.817063,
		0.184316, 0.896001, -0.403991,
		-0.911480, 0.002035, -0.411339,
		0.407472, 0.849640, 3.422419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.160342, 0.397290, 4.252004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.024803, 0.744091, 4.325829>,  <-0.135890, 0.952172, 4.370123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.024803, 0.744091, 4.325829>,  <0.160342, 0.397290, 4.252004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.024803, 0.744091, 4.325829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240291, 0.077690, -0.967587,
		-0.853239, -0.492209, 0.172373,
		-0.462864, 0.867003, 0.184562,
		-0.163662, 1.004192, 4.381197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.652193, 0.423836, 4.194727>,  <0.160342, 0.397290, 4.252004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.652193, 0.423836, 4.194727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.395729, 0.718231, 4.107792>,  <-0.241851, 0.894868, 4.055631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.395729, 0.718231, 4.107792>,  <-0.652193, 0.423836, 4.194727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.395729, 0.718231, 4.107792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184876, -0.126731, -0.974556,
		-0.744806, 0.665026, 0.054811,
		0.641159, 0.735989, -0.217337,
		-0.203381, 0.939028, 4.042591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.941255, 0.966353, 3.708399>,  <-0.652193, 0.423836, 4.194727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.941255, 0.966353, 3.708399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.547340, 0.912510, 3.664444>,  <-0.310991, 0.880204, 3.638071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.547340, 0.912510, 3.664444>,  <-0.941255, 0.966353, 3.708399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.547340, 0.912510, 3.664444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141586, -0.254975, -0.956526,
		0.100736, 0.957533, -0.270154,
		0.984787, -0.134607, -0.109888,
		-0.251904, 0.872128, 3.631477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.784553, 0.941817, 2.932901>,  <-0.941255, 0.966353, 3.708399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.784553, 0.941817, 2.932901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.411980, 0.934406, 3.078278>,  <-0.188436, 0.929960, 3.165504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.411980, 0.934406, 3.078278>,  <-0.784553, 0.941817, 2.932901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.411980, 0.934406, 3.078278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343508, -0.284959, -0.894875,
		0.120146, 0.958361, -0.259055,
		0.931433, -0.018528, 0.363441,
		-0.132550, 0.928848, 3.187310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.397164, 1.218196, 2.384372>,  <-0.784553, 0.941817, 2.932901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.397164, 1.218196, 2.384372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.120300, 1.029243, 2.602646>,  <0.045818, 0.915872, 2.733610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.120300, 1.029243, 2.602646>,  <-0.397164, 1.218196, 2.384372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.120300, 1.029243, 2.602646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473361, -0.273626, -0.837292,
		0.544834, 0.837845, 0.034214,
		0.692159, -0.472381, 0.545684,
		0.087348, 0.887529, 2.766351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.226125, 1.430643, 2.072906>,  <-0.397164, 1.218196, 2.384372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.226125, 1.430643, 2.072906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.322357, 1.098938, 2.274677>,  <0.380096, 0.899915, 2.395740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.322357, 1.098938, 2.274677>,  <0.226125, 1.430643, 2.072906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.322357, 1.098938, 2.274677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422117, -0.378586, -0.823705,
		0.874036, 0.411094, 0.258965,
		0.240580, -0.829261, 0.504427,
		0.394531, 0.850160, 2.426005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.920435, 1.381882, 1.972655>,  <0.226125, 1.430643, 2.072906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.920435, 1.381882, 1.972655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.761337, 1.021599, 2.042538>,  <0.665878, 0.805429, 2.084467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.761337, 1.021599, 2.042538>,  <0.920435, 1.381882, 1.972655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.761337, 1.021599, 2.042538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585762, -0.395848, -0.707239,
		0.706174, -0.178964, 0.685047,
		-0.397745, -0.900709, 0.174708,
		0.642014, 0.751386, 2.094950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.468325, 0.915674, 1.906155>,  <0.920435, 1.381882, 1.972655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.468325, 0.915674, 1.906155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.122162, 0.726349, 1.840374>,  <0.914464, 0.612754, 1.800905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.122162, 0.726349, 1.840374>,  <1.468325, 0.915674, 1.906155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.122162, 0.726349, 1.840374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308264, -0.244177, -0.919430,
		0.395022, -0.846376, 0.357218,
		-0.865408, -0.473313, -0.164452,
		0.862540, 0.584355, 1.791038>
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
