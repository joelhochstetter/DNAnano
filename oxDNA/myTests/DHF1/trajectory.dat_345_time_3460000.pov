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
	<2.177748, 3.290651, 4.977559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.360832, 2.944016, 5.057083>,  <2.470682, 2.736034, 5.104798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.360832, 2.944016, 5.057083>,  <2.177748, 3.290651, 4.977559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.360832, 2.944016, 5.057083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258023, -0.084520, -0.962435,
		0.850839, 0.491813, 0.184914,
		0.457709, -0.866589, 0.198812,
		2.498145, 2.684039, 5.116727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.667661, 3.287112, 4.475432>,  <2.177748, 3.290651, 4.977559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.667661, 3.287112, 4.475432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.616558, 2.900688, 4.565239>,  <2.585896, 2.668834, 4.619123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.616558, 2.900688, 4.565239>,  <2.667661, 3.287112, 4.475432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.616558, 2.900688, 4.565239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083008, -0.215164, -0.973044,
		0.988326, -0.142950, -0.052702,
		-0.127757, -0.966059, 0.224518,
		2.578231, 2.610870, 4.632594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.105230, 2.893808, 4.040323>,  <2.667661, 3.287112, 4.475432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.105230, 2.893808, 4.040323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811737, 2.658394, 4.176125>,  <2.635641, 2.517145, 4.257606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811737, 2.658394, 4.176125>,  <3.105230, 2.893808, 4.040323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.811737, 2.658394, 4.176125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221862, -0.264756, -0.938446,
		0.642194, -0.763892, 0.063686,
		-0.733732, -0.588535, 0.339503,
		2.591617, 2.481833, 4.277976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.140800, 2.147672, 3.895659>,  <3.105230, 2.893808, 4.040323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.140800, 2.147672, 3.895659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.760052, 2.265999, 3.927750>,  <2.531603, 2.336995, 3.947004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.760052, 2.265999, 3.927750>,  <3.140800, 2.147672, 3.895659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.760052, 2.265999, 3.927750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134149, -0.166741, -0.976832,
		-0.275588, -0.940579, 0.198399,
		-0.951869, 0.295818, 0.080225,
		2.474491, 2.354744, 3.951817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.673965, 1.710785, 3.487453>,  <3.140800, 2.147672, 3.895659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.673965, 1.710785, 3.487453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.467430, 2.051346, 3.524353>,  <2.343509, 2.255682, 3.546493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.467430, 2.051346, 3.524353>,  <2.673965, 1.710785, 3.487453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.467430, 2.051346, 3.524353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297256, -0.077158, -0.951675,
		-0.803141, -0.518807, 0.292924,
		-0.516337, 0.851402, 0.092250,
		2.312529, 2.306767, 3.552028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.982214, 1.577273, 3.281587>,  <2.673965, 1.710785, 3.487453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.982214, 1.577273, 3.281587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.996590, 1.977013, 3.280296>,  <2.005215, 2.216856, 3.279522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.996590, 1.977013, 3.280296>,  <1.982214, 1.577273, 3.281587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.996590, 1.977013, 3.280296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457937, 0.013598, -0.888881,
		-0.888258, 0.033424, 0.458128,
		0.035940, 0.999349, -0.003228,
		2.007372, 2.276817, 3.279328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.266818, 1.865387, 3.180048>,  <1.982214, 1.577273, 3.281587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.266818, 1.865387, 3.180048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.526760, 2.145119, 3.060966>,  <1.682726, 2.312958, 2.989518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.526760, 2.145119, 3.060966>,  <1.266818, 1.865387, 3.180048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.526760, 2.145119, 3.060966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339202, -0.083667, -0.936986,
		-0.680169, 0.709887, 0.182842,
		0.649856, 0.699328, -0.297703,
		1.721717, 2.354917, 2.971656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.887623, 2.283018, 2.738369>,  <1.266818, 1.865387, 3.180048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.887623, 2.283018, 2.738369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.267906, 2.364571, 2.644913>,  <1.496076, 2.413502, 2.588839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.267906, 2.364571, 2.644913>,  <0.887623, 2.283018, 2.738369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.267906, 2.364571, 2.644913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191002, -0.208539, -0.959182,
		-0.244283, 0.956527, -0.159317,
		0.950707, 0.203882, -0.233641,
		1.553118, 2.425735, 2.574820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.442163, 1.918857, 1.411599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.762977, 2.151810, 1.358574>,  <1.955465, 2.291581, 1.326759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.762977, 2.151810, 1.358574>,  <1.442163, 1.918857, 1.411599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.762977, 2.151810, 1.358574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229197, 0.505048, 0.832103,
		0.551554, -0.636990, 0.538545,
		0.802033, 0.582383, -0.132565,
		2.003587, 2.326524, 1.318805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.890038, 1.837989, 1.954331>,  <1.442163, 1.918857, 1.411599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.890038, 1.837989, 1.954331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.947615, 2.207687, 1.812881>,  <1.982160, 2.429507, 1.728012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.947615, 2.207687, 1.812881>,  <1.890038, 1.837989, 1.954331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.947615, 2.207687, 1.812881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037563, 0.362191, 0.931346,
		0.988873, -0.120776, 0.086852,
		0.143941, 0.924246, -0.353624,
		1.990797, 2.484961, 1.706794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.552555, 2.160127, 2.098225>,  <1.890038, 1.837989, 1.954331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.552555, 2.160127, 2.098225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.250443, 2.422119, 2.088837>,  <2.069175, 2.579315, 2.083204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.250443, 2.422119, 2.088837>,  <2.552555, 2.160127, 2.098225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.250443, 2.422119, 2.088837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128792, 0.183435, 0.974559,
		0.642623, 0.733042, -0.222901,
		-0.755281, 0.654981, -0.023470,
		2.023858, 2.618613, 2.081796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.792883, 2.823340, 2.290565>,  <2.552555, 2.160127, 2.098225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.792883, 2.823340, 2.290565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.416540, 2.718521, 2.376465>,  <2.190734, 2.655630, 2.428005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.416540, 2.718521, 2.376465>,  <2.792883, 2.823340, 2.290565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.416540, 2.718521, 2.376465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143317, 0.266519, 0.953115,
		-0.306995, 0.927523, -0.213201,
		-0.940858, -0.262046, 0.214750,
		2.134283, 2.639907, 2.440890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.503606, 3.347067, 2.675614>,  <2.792883, 2.823340, 2.290565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.503606, 3.347067, 2.675614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.305343, 3.012344, 2.768631>,  <2.186384, 2.811511, 2.824441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.305343, 3.012344, 2.768631>,  <2.503606, 3.347067, 2.675614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.305343, 3.012344, 2.768631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065872, 0.230757, 0.970779,
		-0.866015, 0.496493, -0.059255,
		-0.495659, -0.836807, 0.232544,
		2.156645, 2.761302, 2.838394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.111866, 3.534046, 3.137280>,  <2.503606, 3.347067, 2.675614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.111866, 3.534046, 3.137280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.069486, 3.142822, 3.209030>,  <2.044057, 2.908088, 3.252080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.069486, 3.142822, 3.209030>,  <2.111866, 3.534046, 3.137280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.069486, 3.142822, 3.209030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035101, 0.183958, 0.982307,
		-0.993752, 0.097781, -0.053822,
		-0.105952, -0.978059, 0.179376,
		2.037700, 2.849405, 3.262843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.713871, 3.438171, 3.843759>,  <2.111866, 3.534046, 3.137280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.713871, 3.438171, 3.843759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863378, 3.079849, 3.747566>,  <1.953082, 2.864856, 3.689850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863378, 3.079849, 3.747566>,  <1.713871, 3.438171, 3.843759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.863378, 3.079849, 3.747566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097376, -0.219943, 0.970640,
		-0.922397, -0.386211, 0.005023,
		0.373767, -0.895805, -0.240483,
		1.975508, 2.811108, 3.675421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.268900, 2.796119, 4.090876>,  <1.713871, 3.438171, 3.843759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.268900, 2.796119, 4.090876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.636300, 2.645493, 4.042618>,  <1.856740, 2.555117, 4.013663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.636300, 2.645493, 4.042618>,  <1.268900, 2.796119, 4.090876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.636300, 2.645493, 4.042618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021226, -0.257711, 0.965989,
		-0.394851, -0.889821, -0.228715,
		0.918500, -0.376567, -0.120645,
		1.911850, 2.532523, 4.006424>
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
