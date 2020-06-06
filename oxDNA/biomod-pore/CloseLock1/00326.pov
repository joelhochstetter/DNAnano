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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.327507, 35.306198, 34.909344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.484558, 34.939228, 34.935177>,  <24.578789, 34.719044, 34.950676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.484558, 34.939228, 34.935177>,  <24.327507, 35.306198, 34.909344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.484558, 34.939228, 34.935177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631454, 0.217854, -0.744181,
		0.668663, 0.332967, 0.664848,
		0.392627, -0.917427, 0.064583,
		24.602346, 34.664001, 34.954552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049326, 35.325668, 34.984997>,  <24.327507, 35.306198, 34.909344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049326, 35.325668, 34.984997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859568, 35.045380, 34.771854>,  <24.745712, 34.877205, 34.643967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859568, 35.045380, 34.771854>,  <25.049326, 35.325668, 34.984997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859568, 35.045380, 34.771854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301842, 0.439135, -0.846199,
		0.826947, -0.562271, 0.003185,
		-0.474394, -0.700723, -0.532858,
		24.717249, 34.835163, 34.611996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496227, 35.093025, 34.484024>,  <25.049326, 35.325668, 34.984997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496227, 35.093025, 34.484024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133240, 35.015850, 34.334743>,  <24.915447, 34.969543, 34.245174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133240, 35.015850, 34.334743>,  <25.496227, 35.093025, 34.484024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133240, 35.015850, 34.334743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304690, 0.309361, -0.900811,
		0.289243, -0.931169, -0.221954,
		-0.907470, -0.192926, -0.373198,
		24.861000, 34.957970, 34.222782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983971, 34.616459, 34.179928>,  <25.496227, 35.093025, 34.484024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983971, 34.616459, 34.179928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933258, 34.775009, 34.543644>,  <25.902830, 34.870140, 34.761875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933258, 34.775009, 34.543644>,  <25.983971, 34.616459, 34.179928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933258, 34.775009, 34.543644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347308, -0.876403, 0.333610,
		0.929141, -0.273511, 0.248774,
		-0.126780, 0.396372, 0.909295,
		25.895224, 34.893921, 34.816433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542288, 35.031910, 34.484077>,  <25.983971, 34.616459, 34.179928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542288, 35.031910, 34.484077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880564, 35.026203, 34.270683>,  <27.083529, 35.022778, 34.142647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880564, 35.026203, 34.270683>,  <26.542288, 35.031910, 34.484077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880564, 35.026203, 34.270683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062966, 0.989993, -0.126292,
		0.529947, 0.140395, 0.836328,
		0.845690, -0.014268, -0.533484,
		27.134270, 35.021923, 34.110638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987156, 35.626366, 34.716805>,  <26.542288, 35.031910, 34.484077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987156, 35.626366, 34.716805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113634, 35.513409, 34.354527>,  <27.189522, 35.445637, 34.137161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113634, 35.513409, 34.354527>,  <26.987156, 35.626366, 34.716805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113634, 35.513409, 34.354527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007949, 0.953850, -0.300180,
		0.948660, 0.102115, 0.299359,
		0.316197, -0.282389, -0.905691,
		27.208492, 35.428692, 34.082821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529455, 36.086369, 34.504650>,  <26.987156, 35.626366, 34.716805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529455, 36.086369, 34.504650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401720, 35.937160, 34.156197>,  <27.325079, 35.847637, 33.947124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401720, 35.937160, 34.156197>,  <27.529455, 36.086369, 34.504650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401720, 35.937160, 34.156197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030133, 0.922801, -0.384098,
		0.947161, -0.096407, -0.305927,
		-0.319340, -0.373021, -0.871136,
		27.305918, 35.825253, 33.894855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833231, 36.495869, 33.973133>,  <27.529455, 36.086369, 34.504650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833231, 36.495869, 33.973133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542156, 36.305428, 33.775631>,  <27.367512, 36.191162, 33.657131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542156, 36.305428, 33.775631>,  <27.833231, 36.495869, 33.973133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542156, 36.305428, 33.775631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242848, 0.852061, -0.463700,
		0.641480, -0.217521, -0.735655,
		-0.727687, -0.476107, -0.493755,
		27.323851, 36.162594, 33.627502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902491, 36.751896, 33.255405>,  <27.833231, 36.495869, 33.973133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902491, 36.751896, 33.255405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527832, 36.616020, 33.289577>,  <27.303036, 36.534492, 33.310081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527832, 36.616020, 33.289577>,  <27.902491, 36.751896, 33.255405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527832, 36.616020, 33.289577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333497, 0.790297, -0.514014,
		0.107092, -0.509941, -0.853517,
		-0.936649, -0.339692, 0.085429,
		27.246838, 36.514114, 33.315205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647528, 36.693031, 32.576992>,  <27.902491, 36.751896, 33.255405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647528, 36.693031, 32.576992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314638, 36.691647, 32.798763>,  <27.114904, 36.690815, 32.931828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314638, 36.691647, 32.798763>,  <27.647528, 36.693031, 32.576992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314638, 36.691647, 32.798763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405455, 0.685859, -0.604321,
		-0.378165, -0.727726, -0.572194,
		-0.832224, -0.003466, 0.554428,
		27.064970, 36.690605, 32.965092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157595, 36.683186, 32.123703>,  <27.647528, 36.693031, 32.576992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157595, 36.683186, 32.123703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989054, 36.826550, 32.456932>,  <26.887930, 36.912567, 32.656868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989054, 36.826550, 32.456932>,  <27.157595, 36.683186, 32.123703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989054, 36.826550, 32.456932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262179, 0.831228, -0.490227,
		-0.868174, -0.424970, -0.256270,
		-0.421350, 0.358414, 0.833068,
		26.862648, 36.934074, 32.706852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593996, 36.981388, 31.892040>,  <27.157595, 36.683186, 32.123703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593996, 36.981388, 31.892040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616051, 37.129875, 32.262802>,  <26.629284, 37.218967, 32.485260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616051, 37.129875, 32.262802>,  <26.593996, 36.981388, 31.892040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616051, 37.129875, 32.262802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274691, 0.898137, -0.343357,
		-0.959950, -0.235681, 0.151493,
		0.055138, 0.371220, 0.926907,
		26.632593, 37.241241, 32.540874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948090, 37.278671, 31.942266>,  <26.593996, 36.981388, 31.892040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948090, 37.278671, 31.942266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192276, 37.451721, 32.207645>,  <26.338787, 37.555553, 32.366875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192276, 37.451721, 32.207645>,  <25.948090, 37.278671, 31.942266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192276, 37.451721, 32.207645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419249, 0.887174, -0.192751,
		-0.671985, -0.160483, 0.722967,
		0.610464, 0.432629, 0.663450,
		26.375416, 37.581509, 32.406681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630934, 37.740795, 32.234554>,  <25.948090, 37.278671, 31.942266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630934, 37.740795, 32.234554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992445, 37.885918, 32.325378>,  <26.209351, 37.972992, 32.379871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992445, 37.885918, 32.325378>,  <25.630934, 37.740795, 32.234554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992445, 37.885918, 32.325378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304657, 0.917942, -0.254099,
		-0.300618, 0.160473, 0.940148,
		0.903777, 0.362809, 0.227061,
		26.263578, 37.994759, 32.393497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546677, 38.231285, 32.730236>,  <25.630934, 37.740795, 32.234554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546677, 38.231285, 32.730236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877348, 38.322292, 32.524387>,  <26.075750, 38.376896, 32.400879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877348, 38.322292, 32.524387>,  <25.546677, 38.231285, 32.730236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877348, 38.322292, 32.524387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400951, 0.879871, -0.255077,
		0.394769, 0.417206, 0.818594,
		0.826678, 0.227520, -0.514625,
		26.125351, 38.390549, 32.369999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588926, 38.949966, 32.763172>,  <25.546677, 38.231285, 32.730236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588926, 38.949966, 32.763172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868530, 38.867157, 32.489376>,  <26.036293, 38.817471, 32.325100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868530, 38.867157, 32.489376>,  <25.588926, 38.949966, 32.763172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868530, 38.867157, 32.489376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032506, 0.946989, -0.319619,
		0.714372, 0.245667, 0.655226,
		0.699011, -0.207028, -0.684488,
		26.078234, 38.805050, 32.284031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146873, 39.421959, 32.819920>,  <25.588926, 38.949966, 32.763172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146873, 39.421959, 32.819920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164549, 39.273796, 32.448792>,  <26.175154, 39.184898, 32.226116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164549, 39.273796, 32.448792>,  <26.146873, 39.421959, 32.819920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164549, 39.273796, 32.448792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124018, 0.919507, -0.372997,
		0.991296, 0.131549, -0.005304,
		0.044191, -0.370407, -0.927818,
		26.177807, 39.162674, 32.170444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676954, 39.889648, 32.493019>,  <26.146873, 39.421959, 32.819920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676954, 39.889648, 32.493019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492884, 39.701950, 32.191544>,  <26.382441, 39.589333, 32.010658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492884, 39.701950, 32.191544>,  <26.676954, 39.889648, 32.493019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492884, 39.701950, 32.191544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184263, 0.880908, -0.435946,
		0.868495, -0.061735, -0.491838,
		-0.460178, -0.469244, -0.753689,
		26.354832, 39.561176, 31.965437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016771, 40.192986, 31.911629>,  <26.676954, 39.889648, 32.493019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016771, 40.192986, 31.911629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670183, 40.043770, 31.778923>,  <26.462231, 39.954239, 31.699299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670183, 40.043770, 31.778923>,  <27.016771, 40.192986, 31.911629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670183, 40.043770, 31.778923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218066, 0.880619, -0.420663,
		0.449083, -0.292146, -0.844379,
		-0.866471, -0.373043, -0.331764,
		26.410242, 39.931858, 31.679394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930641, 40.355217, 31.230129>,  <27.016771, 40.192986, 31.911629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930641, 40.355217, 31.230129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552944, 40.285820, 31.342064>,  <26.326326, 40.244183, 31.409225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552944, 40.285820, 31.342064>,  <26.930641, 40.355217, 31.230129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552944, 40.285820, 31.342064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303649, 0.787449, -0.536396,
		-0.127299, -0.591460, -0.796223,
		-0.944241, -0.173490, 0.279837,
		26.269672, 40.233772, 31.426016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652695, 40.730034, 30.775928>,  <26.930641, 40.355217, 31.230129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652695, 40.730034, 30.775928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336319, 40.663601, 31.011499>,  <26.146494, 40.623741, 31.152842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336319, 40.663601, 31.011499>,  <26.652695, 40.730034, 30.775928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336319, 40.663601, 31.011499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535323, 0.654006, -0.534514,
		-0.296391, -0.738034, -0.606183,
		-0.790937, -0.166078, 0.588928,
		26.099037, 40.613777, 31.188177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092821, 40.479057, 30.415007>,  <26.652695, 40.730034, 30.775928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092821, 40.479057, 30.415007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950094, 40.655598, 30.744343>,  <25.864458, 40.761524, 30.941944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950094, 40.655598, 30.744343>,  <26.092821, 40.479057, 30.415007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950094, 40.655598, 30.744343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466144, 0.679669, -0.566357,
		-0.809562, -0.585881, -0.036783,
		-0.356818, 0.441355, 0.823339,
		25.843048, 40.788006, 30.991344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444567, 40.662628, 30.230038>,  <26.092821, 40.479057, 30.415007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444567, 40.662628, 30.230038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486908, 40.873650, 30.567200>,  <25.512312, 41.000263, 30.769497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486908, 40.873650, 30.567200>,  <25.444567, 40.662628, 30.230038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486908, 40.873650, 30.567200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514285, 0.754536, -0.407659,
		-0.851061, -0.390340, 0.351182,
		0.105853, 0.527551, 0.842903,
		25.518663, 41.031914, 30.820070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826050, 40.960598, 30.464781>,  <25.444567, 40.662628, 30.230038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826050, 40.960598, 30.464781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090586, 41.187252, 30.661373>,  <25.249308, 41.323242, 30.779329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090586, 41.187252, 30.661373>,  <24.826050, 40.960598, 30.464781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090586, 41.187252, 30.661373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338151, 0.810100, -0.478948,
		-0.669538, 0.150553, 0.727360,
		0.661342, 0.566632, 0.491483,
		25.288988, 41.357243, 30.808819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.409151, 41.626328, 30.628523>,  <24.826050, 40.960598, 30.464781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.409151, 41.626328, 30.628523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798857, 41.714520, 30.609768>,  <25.032681, 41.767433, 30.598515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798857, 41.714520, 30.609768>,  <24.409151, 41.626328, 30.628523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798857, 41.714520, 30.609768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212348, 0.827969, -0.519014,
		-0.075611, 0.515613, 0.853479,
		0.974265, 0.220478, -0.046886,
		25.091137, 41.780663, 30.595701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.224142, 41.170410, 30.052074>,  <24.409151, 41.626328, 30.628523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.224142, 41.170410, 30.052074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306854, 41.561676, 30.043732>,  <24.356482, 41.796436, 30.038727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306854, 41.561676, 30.043732>,  <24.224142, 41.170410, 30.052074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.306854, 41.561676, 30.043732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455687, -0.115149, -0.882661,
		-0.865789, 0.173013, -0.469548,
		0.206780, 0.978165, -0.020855,
		24.368889, 41.855125, 30.037476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.064787, 41.532917, 29.384127>,  <24.224142, 41.170410, 30.052074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.064787, 41.532917, 29.384127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378618, 41.681900, 29.582403>,  <24.566917, 41.771290, 29.701370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378618, 41.681900, 29.582403>,  <24.064787, 41.532917, 29.384127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378618, 41.681900, 29.582403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577073, -0.146262, -0.803489,
		-0.226762, 0.916453, -0.329687,
		0.784580, 0.372454, 0.495694,
		24.613993, 41.793636, 29.731112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.432190, 42.207760, 29.066439>,  <24.064787, 41.532917, 29.384127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.432190, 42.207760, 29.066439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659208, 41.947807, 29.268644>,  <24.795420, 41.791836, 29.389969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659208, 41.947807, 29.268644>,  <24.432190, 42.207760, 29.066439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659208, 41.947807, 29.268644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500117, -0.215621, -0.838684,
		0.654043, 0.728811, 0.202640,
		0.567548, -0.649879, 0.505516,
		24.829473, 41.752842, 29.420300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031260, 42.239956, 28.781832>,  <24.432190, 42.207760, 29.066439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031260, 42.239956, 28.781832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027235, 41.876469, 28.948744>,  <25.024820, 41.658375, 29.048891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027235, 41.876469, 28.948744>,  <25.031260, 42.239956, 28.781832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.027235, 41.876469, 28.948744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649855, -0.323104, -0.687963,
		0.759992, 0.264251, 0.593787,
		-0.010060, -0.908722, 0.417281,
		25.024218, 41.603851, 29.073929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742821, 41.941410, 28.882639>,  <25.031260, 42.239956, 28.781832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742821, 41.941410, 28.882639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489573, 41.645016, 28.793106>,  <25.337624, 41.467178, 28.739388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489573, 41.645016, 28.793106>,  <25.742821, 41.941410, 28.882639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489573, 41.645016, 28.793106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543530, -0.219694, -0.810130,
		0.551118, -0.634570, 0.541839,
		-0.633123, -0.740983, -0.223830,
		25.299635, 41.422722, 28.725958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047251, 41.318073, 28.724932>,  <25.742821, 41.941410, 28.882639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047251, 41.318073, 28.724932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711081, 41.264095, 28.514988>,  <25.509378, 41.231709, 28.389021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711081, 41.264095, 28.514988>,  <26.047251, 41.318073, 28.724932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711081, 41.264095, 28.514988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541905, -0.218503, -0.811539,
		-0.005173, -0.966461, 0.256761,
		-0.840423, -0.134942, -0.524861,
		25.458954, 41.223614, 28.357531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915419, 40.642174, 28.422874>,  <26.047251, 41.318073, 28.724932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915419, 40.642174, 28.422874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756596, 40.899559, 28.161095>,  <25.661303, 41.053989, 28.004026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756596, 40.899559, 28.161095>,  <25.915419, 40.642174, 28.422874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756596, 40.899559, 28.161095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595828, -0.361655, -0.717074,
		-0.698094, -0.674657, -0.239795,
		-0.397056, 0.643462, -0.654449,
		25.637478, 41.092598, 27.964760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898470, 40.233852, 27.829233>,  <25.915419, 40.642174, 28.422874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898470, 40.233852, 27.829233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859818, 40.616531, 27.719406>,  <25.836626, 40.846138, 27.653509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859818, 40.616531, 27.719406>,  <25.898470, 40.233852, 27.829233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859818, 40.616531, 27.719406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715007, -0.125181, -0.687819,
		-0.692407, -0.262785, -0.671950,
		-0.096633, 0.956699, -0.274570,
		25.830828, 40.903542, 27.637035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880312, 40.383053, 27.033613>,  <25.898470, 40.233852, 27.829233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880312, 40.383053, 27.033613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016920, 40.715076, 27.209959>,  <26.098885, 40.914291, 27.315765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016920, 40.715076, 27.209959>,  <25.880312, 40.383053, 27.033613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016920, 40.715076, 27.209959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847162, -0.068721, -0.526872,
		-0.407041, 0.553418, -0.726668,
		0.341518, 0.830064, 0.440863,
		26.119375, 40.964096, 27.342218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543015, 39.937893, 27.107649>,  <25.880312, 40.383053, 27.033613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543015, 39.937893, 27.107649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339762, 39.784527, 27.416140>,  <26.217810, 39.692505, 27.601234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339762, 39.784527, 27.416140>,  <26.543015, 39.937893, 27.107649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339762, 39.784527, 27.416140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839271, -0.019298, 0.543371,
		-0.193455, 0.923373, 0.331598,
		-0.508133, -0.383419, 0.771227,
		26.187323, 39.669502, 27.647507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788034, 40.372353, 27.714241>,  <26.543015, 39.937893, 27.107649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788034, 40.372353, 27.714241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663332, 40.000168, 27.791241>,  <26.588511, 39.776859, 27.837440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663332, 40.000168, 27.791241>,  <26.788034, 40.372353, 27.714241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663332, 40.000168, 27.791241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849696, -0.182343, 0.494740,
		-0.425234, 0.317804, 0.847453,
		-0.311757, -0.930458, 0.192499,
		26.569805, 39.721031, 27.848989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764118, 40.290649, 28.454931>,  <26.788034, 40.372353, 27.714241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764118, 40.290649, 28.454931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784859, 39.920643, 28.304379>,  <26.797304, 39.698639, 28.214046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784859, 39.920643, 28.304379>,  <26.764118, 40.290649, 28.454931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784859, 39.920643, 28.304379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731259, -0.221510, 0.645130,
		-0.680126, -0.308686, 0.664938,
		0.051852, -0.925012, -0.376384,
		26.800415, 39.643139, 28.191463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086992, 40.059139, 29.012177>,  <26.764118, 40.290649, 28.454931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086992, 40.059139, 29.012177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119467, 39.787663, 28.720209>,  <27.138952, 39.624775, 28.545029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119467, 39.787663, 28.720209>,  <27.086992, 40.059139, 29.012177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119467, 39.787663, 28.720209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639696, -0.526116, 0.560349,
		-0.764328, -0.512419, 0.391444,
		0.081189, -0.678696, -0.729918,
		27.143824, 39.584053, 28.501234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856848, 39.340370, 29.289536>,  <27.086992, 40.059139, 29.012177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856848, 39.340370, 29.289536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113613, 39.302456, 28.985178>,  <27.267673, 39.279709, 28.802563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113613, 39.302456, 28.985178>,  <26.856848, 39.340370, 29.289536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113613, 39.302456, 28.985178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641608, -0.476972, 0.600697,
		-0.419862, -0.873793, -0.245361,
		0.641915, -0.094784, -0.760895,
		27.306187, 39.274021, 28.756908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974665, 38.663845, 29.445049>,  <26.856848, 39.340370, 29.289536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974665, 38.663845, 29.445049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237476, 38.791115, 29.171677>,  <27.395163, 38.867477, 29.007652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237476, 38.791115, 29.171677>,  <26.974665, 38.663845, 29.445049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237476, 38.791115, 29.171677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694582, -0.607889, 0.384743,
		-0.293035, -0.727486, -0.620399,
		0.657028, 0.318175, -0.683431,
		27.434586, 38.886566, 28.966648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272312, 38.113422, 29.132893>,  <26.974665, 38.663845, 29.445049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272312, 38.113422, 29.132893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543888, 38.399395, 29.066069>,  <27.706833, 38.570980, 29.025974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543888, 38.399395, 29.066069>,  <27.272312, 38.113422, 29.132893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543888, 38.399395, 29.066069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680201, -0.526866, 0.509645,
		0.276347, -0.459651, -0.844010,
		0.678939, 0.714936, -0.167058,
		27.747570, 38.613876, 29.015951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832891, 37.828621, 28.958479>,  <27.272312, 38.113422, 29.132893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832891, 37.828621, 28.958479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988426, 38.188042, 29.039871>,  <28.081747, 38.403694, 29.088707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988426, 38.188042, 29.039871>,  <27.832891, 37.828621, 28.958479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988426, 38.188042, 29.039871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725206, -0.434732, 0.533933,
		0.568229, -0.060046, -0.820677,
		0.388835, 0.898556, 0.203482,
		28.105076, 38.457607, 29.100916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554279, 37.759697, 28.939314>,  <27.832891, 37.828621, 28.958479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554279, 37.759697, 28.939314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523647, 38.093163, 29.158089>,  <28.505268, 38.293243, 29.289354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523647, 38.093163, 29.158089>,  <28.554279, 37.759697, 28.939314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523647, 38.093163, 29.158089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697485, -0.347200, 0.626871,
		0.712496, 0.429486, -0.554879,
		-0.076578, 0.833663, 0.546939,
		28.500673, 38.343262, 29.322170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204109, 38.118202, 29.019989>,  <28.554279, 37.759697, 28.939314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204109, 38.118202, 29.019989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988136, 38.244370, 29.332138>,  <28.858553, 38.320068, 29.519428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988136, 38.244370, 29.332138>,  <29.204109, 38.118202, 29.019989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988136, 38.244370, 29.332138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625327, -0.470280, 0.622738,
		0.563417, 0.824226, 0.056681,
		-0.539933, 0.315418, 0.780374,
		28.826157, 38.338993, 29.566250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628920, 38.377041, 29.509836>,  <29.204109, 38.118202, 29.019989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628920, 38.377041, 29.509836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296919, 38.327679, 29.727411>,  <29.097719, 38.298061, 29.857956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296919, 38.327679, 29.727411>,  <29.628920, 38.377041, 29.509836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296919, 38.327679, 29.727411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543255, -0.399826, 0.738250,
		0.126374, 0.908246, 0.398898,
		-0.830002, -0.123408, 0.543936,
		29.047918, 38.290657, 29.890593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871971, 38.250744, 30.169367>,  <29.628920, 38.377041, 29.509836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871971, 38.250744, 30.169367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488424, 38.138504, 30.186543>,  <29.258297, 38.071159, 30.196848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488424, 38.138504, 30.186543>,  <29.871971, 38.250744, 30.169367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488424, 38.138504, 30.186543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209083, -0.595824, 0.775421,
		-0.191996, 0.752502, 0.629983,
		-0.958865, -0.280597, 0.042939,
		29.200766, 38.054325, 30.199425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635382, 38.385777, 30.859848>,  <29.871971, 38.250744, 30.169367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635382, 38.385777, 30.859848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392891, 38.096928, 30.726566>,  <29.247396, 37.923618, 30.646597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392891, 38.096928, 30.726566>,  <29.635382, 38.385777, 30.859848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392891, 38.096928, 30.726566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157674, -0.519787, 0.839619,
		-0.779503, 0.456464, 0.428970,
		-0.606229, -0.722123, -0.333204,
		29.211021, 37.880291, 30.626606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158400, 38.232029, 31.505241>,  <29.635382, 38.385777, 30.859848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158400, 38.232029, 31.505241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122234, 37.920540, 31.256916>,  <29.100534, 37.733646, 31.107922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122234, 37.920540, 31.256916>,  <29.158400, 38.232029, 31.505241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122234, 37.920540, 31.256916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005684, -0.622953, 0.782238,
		-0.995888, 0.074253, 0.051897,
		-0.090413, -0.778727, -0.620814,
		29.095110, 37.686920, 31.070671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755260, 37.786526, 31.896646>,  <29.158400, 38.232029, 31.505241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755260, 37.786526, 31.896646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909740, 37.573677, 31.595263>,  <29.002428, 37.445969, 31.414433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909740, 37.573677, 31.595263>,  <28.755260, 37.786526, 31.896646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909740, 37.573677, 31.595263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005451, -0.815502, 0.578728,
		-0.922400, -0.227611, -0.312045,
		0.386198, -0.532117, -0.753460,
		29.025600, 37.414043, 31.369225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416113, 37.186985, 31.943504>,  <28.755260, 37.786526, 31.896646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416113, 37.186985, 31.943504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767574, 37.104366, 31.771317>,  <28.978451, 37.054794, 31.668005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767574, 37.104366, 31.771317>,  <28.416113, 37.186985, 31.943504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767574, 37.104366, 31.771317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133633, -0.759167, 0.637030,
		-0.458374, -0.617255, -0.639445,
		0.878656, -0.206547, -0.430468,
		29.031172, 37.042400, 31.642176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469189, 36.380764, 31.809412>,  <28.416113, 37.186985, 31.943504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469189, 36.380764, 31.809412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839298, 36.528996, 31.777063>,  <29.061363, 36.617935, 31.757654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839298, 36.528996, 31.777063>,  <28.469189, 36.380764, 31.809412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839298, 36.528996, 31.777063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346086, -0.737582, 0.579825,
		0.155223, -0.564485, -0.810718,
		0.925273, 0.370580, -0.080871,
		29.116880, 36.640171, 31.752802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906904, 35.745472, 31.648731>,  <28.469189, 36.380764, 31.809412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906904, 35.745472, 31.648731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146080, 36.042339, 31.769831>,  <29.289585, 36.220459, 31.842491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146080, 36.042339, 31.769831>,  <28.906904, 35.745472, 31.648731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146080, 36.042339, 31.769831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504767, -0.642063, 0.577032,
		0.622638, -0.192212, -0.758536,
		0.597941, 0.742165, 0.302750,
		29.325462, 36.264988, 31.860655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486588, 35.396877, 31.705471>,  <28.906904, 35.745472, 31.648731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486588, 35.396877, 31.705471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558647, 35.726295, 31.920624>,  <29.601883, 35.923946, 32.049717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558647, 35.726295, 31.920624>,  <29.486588, 35.396877, 31.705471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558647, 35.726295, 31.920624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475889, -0.551542, 0.685077,
		0.860858, 0.132556, -0.491277,
		0.180149, 0.823547, 0.537881,
		29.612692, 35.973358, 32.081989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105471, 35.304581, 31.904053>,  <29.486588, 35.396877, 31.705471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105471, 35.304581, 31.904053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944456, 35.562584, 32.163879>,  <29.847847, 35.717384, 32.319775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944456, 35.562584, 32.163879>,  <30.105471, 35.304581, 31.904053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944456, 35.562584, 32.163879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602854, -0.347196, 0.718346,
		0.688863, 0.680753, -0.249085,
		-0.402535, 0.645004, 0.649565,
		29.823696, 35.756084, 32.358749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662477, 35.331921, 32.378357>,  <30.105471, 35.304581, 31.904053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662477, 35.331921, 32.378357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329441, 35.466698, 32.554203>,  <30.129620, 35.547565, 32.659710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329441, 35.466698, 32.554203>,  <30.662477, 35.331921, 32.378357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329441, 35.466698, 32.554203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359029, -0.276061, 0.891565,
		0.421769, 0.900143, 0.108873,
		-0.832592, 0.336946, 0.439612,
		30.079664, 35.567780, 32.686085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820641, 35.849464, 32.948200>,  <30.662477, 35.331921, 32.378357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820641, 35.849464, 32.948200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453316, 35.706715, 33.016716>,  <30.232920, 35.621067, 33.057827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453316, 35.706715, 33.016716>,  <30.820641, 35.849464, 32.948200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453316, 35.706715, 33.016716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260182, -0.218021, 0.940623,
		-0.298336, 0.908355, 0.293063,
		-0.918314, -0.356872, 0.171294,
		30.177822, 35.599651, 33.068104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454416, 36.117123, 32.316139>,  <30.820641, 35.849464, 32.948200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454416, 36.117123, 32.316139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698195, 36.049545, 32.006290>,  <30.844461, 36.008999, 31.820383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698195, 36.049545, 32.006290>,  <30.454416, 36.117123, 32.316139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698195, 36.049545, 32.006290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378810, 0.796245, -0.471696,
		0.696474, 0.580907, 0.421272,
		0.609447, -0.168942, -0.774618,
		30.881029, 35.998863, 31.773905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775076, 36.735497, 32.093132>,  <30.454416, 36.117123, 32.316139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775076, 36.735497, 32.093132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800066, 36.493355, 31.775732>,  <30.815060, 36.348072, 31.585291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800066, 36.493355, 31.775732>,  <30.775076, 36.735497, 32.093132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800066, 36.493355, 31.775732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223779, 0.766318, -0.602229,
		0.972635, 0.215195, -0.087588,
		0.062476, -0.605350, -0.793504,
		30.818810, 36.311749, 31.537682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275707, 37.123241, 32.255676>,  <30.775076, 36.735497, 32.093132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275707, 37.123241, 32.255676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594538, 36.909046, 32.144020>,  <31.785837, 36.780529, 32.077026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594538, 36.909046, 32.144020>,  <31.275707, 37.123241, 32.255676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594538, 36.909046, 32.144020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503010, 0.332973, 0.797565,
		-0.334138, -0.776133, 0.534761,
		0.797078, -0.535487, -0.279144,
		31.833660, 36.748402, 32.060276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448807, 36.618008, 32.718021>,  <31.275707, 37.123241, 32.255676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448807, 36.618008, 32.718021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763144, 36.776035, 32.527706>,  <31.951746, 36.870850, 32.413517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763144, 36.776035, 32.527706>,  <31.448807, 36.618008, 32.718021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763144, 36.776035, 32.527706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387559, 0.284923, 0.876708,
		0.481921, -0.873350, 0.070793,
		0.785844, 0.395067, -0.475786,
		31.998898, 36.894554, 32.384972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129616, 36.395359, 32.988373>,  <31.448807, 36.618008, 32.718021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129616, 36.395359, 32.988373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127529, 36.772247, 32.854389>,  <32.126278, 36.998379, 32.773998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127529, 36.772247, 32.854389>,  <32.129616, 36.395359, 32.988373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127529, 36.772247, 32.854389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481510, 0.295940, 0.824965,
		0.876425, -0.156984, -0.455230,
		-0.005214, 0.942218, -0.334959,
		32.125965, 37.054913, 32.753902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828716, 36.644794, 33.072701>,  <32.129616, 36.395359, 32.988373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828716, 36.644794, 33.072701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548931, 36.929977, 33.092472>,  <32.381058, 37.101086, 33.104336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548931, 36.929977, 33.092472>,  <32.828716, 36.644794, 33.072701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548931, 36.929977, 33.092472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498110, 0.436749, 0.749091,
		0.512478, 0.548586, -0.660621,
		-0.699466, 0.712954, 0.049432,
		32.339092, 37.143864, 33.107304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242954, 37.237015, 33.033169>,  <32.828716, 36.644794, 33.072701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242954, 37.237015, 33.033169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889385, 37.294003, 33.211330>,  <32.677242, 37.328194, 33.318226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889385, 37.294003, 33.211330>,  <33.242954, 37.237015, 33.033169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889385, 37.294003, 33.211330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457962, 0.456432, 0.762850,
		-0.094617, 0.878278, -0.468695,
		-0.883922, 0.142466, 0.445404,
		32.624210, 37.336742, 33.344952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330173, 37.868633, 33.359192>,  <33.242954, 37.237015, 33.033169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330173, 37.868633, 33.359192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019810, 37.735153, 33.573338>,  <32.833591, 37.655067, 33.701824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019810, 37.735153, 33.573338>,  <33.330173, 37.868633, 33.359192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019810, 37.735153, 33.573338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221975, 0.649953, 0.726835,
		-0.590504, 0.682793, -0.430230,
		-0.775907, -0.333698, 0.535363,
		32.787037, 37.635044, 33.733948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029881, 38.451683, 33.724602>,  <33.330173, 37.868633, 33.359192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029881, 38.451683, 33.724602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958118, 38.120056, 33.936436>,  <32.915062, 37.921078, 34.063534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958118, 38.120056, 33.936436>,  <33.029881, 38.451683, 33.724602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958118, 38.120056, 33.936436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274885, 0.474628, 0.836162,
		-0.944590, 0.295588, 0.142747,
		-0.179407, -0.829069, 0.529582,
		32.904297, 37.871334, 34.095310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883675, 38.651218, 34.362225>,  <33.029881, 38.451683, 33.724602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883675, 38.651218, 34.362225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923706, 38.264172, 34.454926>,  <32.947723, 38.031944, 34.510544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923706, 38.264172, 34.454926>,  <32.883675, 38.651218, 34.362225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923706, 38.264172, 34.454926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103609, 0.241786, 0.964782,
		-0.989570, -0.072540, 0.124451,
		0.100076, -0.967614, 0.231748,
		32.953728, 37.973888, 34.524448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446663, 38.632915, 34.947342>,  <32.883675, 38.651218, 34.362225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446663, 38.632915, 34.947342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701359, 38.325275, 34.969418>,  <32.854176, 38.140694, 34.982662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701359, 38.325275, 34.969418>,  <32.446663, 38.632915, 34.947342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701359, 38.325275, 34.969418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200597, 0.234337, 0.951234,
		-0.744525, -0.594621, 0.303492,
		0.636744, -0.769098, 0.055191,
		32.892384, 38.094547, 34.985973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257019, 38.300362, 35.615551>,  <32.446663, 38.632915, 34.947342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257019, 38.300362, 35.615551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629051, 38.199039, 35.509125>,  <32.852272, 38.138248, 35.445271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629051, 38.199039, 35.509125>,  <32.257019, 38.300362, 35.615551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629051, 38.199039, 35.509125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333561, 0.278869, 0.900538,
		-0.153912, -0.926321, 0.343862,
		0.930079, -0.253303, -0.266064,
		32.908073, 38.123051, 35.429306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596779, 37.931534, 36.137428>,  <32.257019, 38.300362, 35.615551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596779, 37.931534, 36.137428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919323, 38.047340, 35.931141>,  <33.112850, 38.116825, 35.807369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919323, 38.047340, 35.931141>,  <32.596779, 37.931534, 36.137428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919323, 38.047340, 35.931141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475468, 0.201241, 0.856407,
		0.351725, -0.935779, 0.024618,
		0.806362, 0.289515, -0.515715,
		33.161232, 38.134193, 35.776428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118576, 37.613480, 36.478947>,  <32.596779, 37.931534, 36.137428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118576, 37.613480, 36.478947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317299, 37.890995, 36.270397>,  <33.436535, 38.057503, 36.145267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317299, 37.890995, 36.270397>,  <33.118576, 37.613480, 36.478947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317299, 37.890995, 36.270397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529266, 0.233903, 0.815578,
		0.687792, -0.681135, -0.250994,
		0.496810, 0.693790, -0.521378,
		33.466343, 38.099133, 36.113983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830040, 37.493095, 36.638275>,  <33.118576, 37.613480, 36.478947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830040, 37.493095, 36.638275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812046, 37.874786, 36.520004>,  <33.801250, 38.103802, 36.449039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812046, 37.874786, 36.520004>,  <33.830040, 37.493095, 36.638275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812046, 37.874786, 36.520004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478065, 0.280454, 0.832346,
		0.877171, -0.103908, -0.468800,
		-0.044989, 0.954227, -0.295681,
		33.798550, 38.161053, 36.431301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476738, 37.765823, 36.669289>,  <33.830040, 37.493095, 36.638275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476738, 37.765823, 36.669289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248249, 38.093987, 36.679382>,  <34.111156, 38.290886, 36.685440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248249, 38.093987, 36.679382>,  <34.476738, 37.765823, 36.669289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248249, 38.093987, 36.679382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546467, 0.357184, 0.757491,
		0.612440, 0.446484, -0.652357,
		-0.571219, 0.820410, 0.025235,
		34.076885, 38.340111, 36.686954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948231, 38.319202, 36.538357>,  <34.476738, 37.765823, 36.669289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948231, 38.319202, 36.538357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630768, 38.454285, 36.740768>,  <34.440289, 38.535336, 36.862217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630768, 38.454285, 36.740768>,  <34.948231, 38.319202, 36.538357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630768, 38.454285, 36.740768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600791, 0.304218, 0.739257,
		0.095707, 0.890734, -0.444335,
		-0.793656, 0.337705, 0.506029,
		34.392670, 38.555595, 36.892578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126171, 38.955704, 36.767986>,  <34.948231, 38.319202, 36.538357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126171, 38.955704, 36.767986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820190, 38.866085, 37.009529>,  <34.636600, 38.812313, 37.154457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820190, 38.866085, 37.009529>,  <35.126171, 38.955704, 36.767986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820190, 38.866085, 37.009529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438341, 0.505840, 0.742956,
		-0.471911, 0.833025, -0.288737,
		-0.764955, -0.224044, 0.603860,
		34.590702, 38.798870, 37.190689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753529, 39.622044, 37.065399>,  <35.126171, 38.955704, 36.767986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753529, 39.622044, 37.065399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690746, 39.312595, 37.310963>,  <34.653076, 39.126926, 37.458302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690746, 39.312595, 37.310963>,  <34.753529, 39.622044, 37.065399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690746, 39.312595, 37.310963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342123, 0.540530, 0.768622,
		-0.926454, 0.330672, 0.179833,
		-0.156957, -0.773617, 0.613906,
		34.643658, 39.080509, 37.495136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483341, 39.995087, 37.566536>,  <34.753529, 39.622044, 37.065399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483341, 39.995087, 37.566536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585003, 39.640453, 37.721134>,  <34.646000, 39.427673, 37.813892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585003, 39.640453, 37.721134>,  <34.483341, 39.995087, 37.566536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585003, 39.640453, 37.721134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029668, 0.406577, 0.913135,
		-0.966708, -0.220613, 0.129637,
		0.254157, -0.886581, 0.386496,
		34.661251, 39.374477, 37.837082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962288, 39.799873, 38.151638>,  <34.483341, 39.995087, 37.566536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962288, 39.799873, 38.151638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287632, 39.582699, 38.235229>,  <34.482838, 39.452393, 38.285385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287632, 39.582699, 38.235229>,  <33.962288, 39.799873, 38.151638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287632, 39.582699, 38.235229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052322, 0.289485, 0.955752,
		-0.579407, -0.788301, 0.207047,
		0.813357, -0.542936, 0.208975,
		34.531639, 39.419819, 38.297920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862843, 39.355209, 38.699848>,  <33.962288, 39.799873, 38.151638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862843, 39.355209, 38.699848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246765, 39.465134, 38.677025>,  <34.477119, 39.531090, 38.663330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246765, 39.465134, 38.677025>,  <33.862843, 39.355209, 38.699848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246765, 39.465134, 38.677025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030772, 0.305100, 0.951823,
		0.278975, -0.911809, 0.301293,
		0.959805, 0.274806, -0.057057,
		34.534706, 39.547577, 38.659908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217106, 38.878342, 39.194416>,  <33.862843, 39.355209, 38.699848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217106, 38.878342, 39.194416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430988, 39.212173, 39.141396>,  <34.559319, 39.412472, 39.109585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430988, 39.212173, 39.141396>,  <34.217106, 38.878342, 39.194416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430988, 39.212173, 39.141396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015432, 0.166474, 0.985925,
		0.844895, -0.525137, 0.101894,
		0.534709, 0.834576, -0.132549,
		34.591400, 39.462547, 39.101631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584541, 38.900837, 39.810326>,  <34.217106, 38.878342, 39.194416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584541, 38.900837, 39.810326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676079, 39.252155, 39.642406>,  <34.731003, 39.462948, 39.541656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676079, 39.252155, 39.642406>,  <34.584541, 38.900837, 39.810326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676079, 39.252155, 39.642406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136622, 0.397991, 0.907159,
		0.963828, -0.264952, -0.028916,
		0.228845, 0.878296, -0.419793,
		34.744732, 39.515644, 39.516468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249920, 39.103912, 40.086937>,  <34.584541, 38.900837, 39.810326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249920, 39.103912, 40.086937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047142, 39.438583, 40.004017>,  <34.925476, 39.639385, 39.954266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047142, 39.438583, 40.004017>,  <35.249920, 39.103912, 40.086937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047142, 39.438583, 40.004017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294374, 0.394080, 0.870658,
		0.810154, 0.380353, -0.446074,
		-0.506946, 0.836680, -0.207299,
		34.895058, 39.689587, 39.941826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585236, 39.673450, 40.329288>,  <35.249920, 39.103912, 40.086937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585236, 39.673450, 40.329288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206734, 39.799816, 40.301586>,  <34.979633, 39.875637, 40.284966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206734, 39.799816, 40.301586>,  <35.585236, 39.673450, 40.329288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206734, 39.799816, 40.301586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093753, 0.472893, 0.876118,
		0.309532, 0.822538, -0.477096,
		-0.946256, 0.315916, -0.069260,
		34.922855, 39.894592, 40.280807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573917, 40.367996, 40.542511>,  <35.585236, 39.673450, 40.329288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573917, 40.367996, 40.542511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188553, 40.263752, 40.567532>,  <34.957333, 40.201206, 40.582542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188553, 40.263752, 40.567532>,  <35.573917, 40.367996, 40.542511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188553, 40.263752, 40.567532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054280, 0.418278, 0.906696,
		-0.262461, 0.870129, -0.417121,
		-0.963415, -0.260614, 0.062551,
		34.899529, 40.185570, 40.586296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229942, 41.017551, 40.701763>,  <35.573917, 40.367996, 40.542511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229942, 41.017551, 40.701763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940350, 40.763527, 40.809505>,  <34.766594, 40.611111, 40.874153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940350, 40.763527, 40.809505>,  <35.229942, 41.017551, 40.701763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940350, 40.763527, 40.809505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113036, 0.494413, 0.861846,
		-0.680498, 0.593511, -0.429729,
		-0.723978, -0.635060, 0.269359,
		34.723156, 40.573009, 40.890312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774410, 41.464260, 40.969536>,  <35.229942, 41.017551, 40.701763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774410, 41.464260, 40.969536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703014, 41.100739, 41.120380>,  <34.660175, 40.882626, 41.210888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703014, 41.100739, 41.120380>,  <34.774410, 41.464260, 40.969536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703014, 41.100739, 41.120380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058586, 0.392399, 0.917927,
		-0.982196, 0.141747, -0.123283,
		-0.178489, -0.908807, 0.377108,
		34.649467, 40.828094, 41.233513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176479, 41.456841, 41.481503>,  <34.774410, 41.464260, 40.969536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176479, 41.456841, 41.481503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390251, 41.126030, 41.551247>,  <34.518517, 40.927544, 41.593094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390251, 41.126030, 41.551247>,  <34.176479, 41.456841, 41.481503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390251, 41.126030, 41.551247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036158, 0.228475, 0.972878,
		-0.844436, -0.513635, 0.152008,
		0.534434, -0.827030, 0.174361,
		34.550583, 40.877922, 41.603554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809490, 41.300758, 42.072750>,  <34.176479, 41.456841, 41.481503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809490, 41.300758, 42.072750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176296, 41.141571, 42.062080>,  <34.396378, 41.046059, 42.055679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176296, 41.141571, 42.062080>,  <33.809490, 41.300758, 42.072750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176296, 41.141571, 42.062080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064625, 0.082243, 0.994515,
		-0.393592, -0.913705, 0.101136,
		0.917011, -0.397969, -0.026678,
		34.451401, 41.022179, 42.054077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812111, 41.173431, 42.730476>,  <33.809490, 41.300758, 42.072750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812111, 41.173431, 42.730476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187031, 41.098747, 42.612755>,  <34.411983, 41.053936, 42.542122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187031, 41.098747, 42.612755>,  <33.812111, 41.173431, 42.730476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187031, 41.098747, 42.612755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294478, -0.027438, 0.955264,
		-0.186436, -0.982031, 0.029266,
		0.937296, -0.186714, -0.294302,
		34.468220, 41.042732, 42.524464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045166, 40.517929, 42.968655>,  <33.812111, 41.173431, 42.730476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045166, 40.517929, 42.968655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365105, 40.753574, 42.922733>,  <34.557068, 40.894962, 42.895180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365105, 40.753574, 42.922733>,  <34.045166, 40.517929, 42.968655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365105, 40.753574, 42.922733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181715, -0.055400, 0.981790,
		0.572030, -0.806146, -0.151363,
		0.799851, 0.589118, -0.114799,
		34.605061, 40.930309, 42.888294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486408, 40.334179, 43.439728>,  <34.045166, 40.517929, 42.968655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486408, 40.334179, 43.439728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609726, 40.700718, 43.337536>,  <34.683716, 40.920639, 43.276222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609726, 40.700718, 43.337536>,  <34.486408, 40.334179, 43.439728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609726, 40.700718, 43.337536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214037, 0.194859, 0.957193,
		0.926900, -0.349778, -0.136058,
		0.308293, 0.916343, -0.255480,
		34.702213, 40.975620, 43.260891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940807, 40.413479, 43.875916>,  <34.486408, 40.334179, 43.439728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940807, 40.413479, 43.875916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926579, 40.794785, 43.755901>,  <34.918041, 41.023567, 43.683895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926579, 40.794785, 43.755901>,  <34.940807, 40.413479, 43.875916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926579, 40.794785, 43.755901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268549, 0.298297, 0.915915,
		0.962609, -0.047995, -0.266609,
		-0.035569, 0.953266, -0.300033,
		34.915909, 41.080765, 43.665890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561878, 40.739880, 44.047478>,  <34.940807, 40.413479, 43.875916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561878, 40.739880, 44.047478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312572, 41.049915, 44.005962>,  <35.162987, 41.235939, 43.981052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312572, 41.049915, 44.005962>,  <35.561878, 40.739880, 44.047478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312572, 41.049915, 44.005962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210830, 0.294352, 0.932152,
		0.753054, 0.559097, -0.346872,
		-0.623266, 0.775092, -0.103789,
		35.125591, 41.282444, 43.974827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986057, 41.308636, 44.392853>,  <35.561878, 40.739880, 44.047478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986057, 41.308636, 44.392853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598827, 41.407555, 44.376431>,  <35.366489, 41.466904, 44.366577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598827, 41.407555, 44.376431>,  <35.986057, 41.308636, 44.392853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598827, 41.407555, 44.376431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033057, 0.288274, 0.956977,
		0.248489, 0.925064, -0.287244,
		-0.968070, 0.247294, -0.041053,
		35.308407, 41.481743, 44.364113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942402, 41.978374, 44.667271>,  <35.986057, 41.308636, 44.392853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942402, 41.978374, 44.667271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577675, 41.823017, 44.720547>,  <35.358837, 41.729801, 44.752510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577675, 41.823017, 44.720547>,  <35.942402, 41.978374, 44.667271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577675, 41.823017, 44.720547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072297, 0.167438, 0.983228,
		-0.404180, 0.906154, -0.124593,
		-0.911818, -0.388394, 0.133188,
		35.304131, 41.706497, 44.760502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578453, 42.497181, 45.050026>,  <35.942402, 41.978374, 44.667271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578453, 42.497181, 45.050026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362625, 42.166286, 45.112682>,  <35.233128, 41.967751, 45.150276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362625, 42.166286, 45.112682>,  <35.578453, 42.497181, 45.050026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362625, 42.166286, 45.112682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006217, 0.182128, 0.983255,
		-0.841916, 0.531511, -0.093128,
		-0.539572, -0.827240, 0.156641,
		35.200752, 41.918114, 45.159676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060394, 42.643803, 45.500187>,  <35.578453, 42.497181, 45.050026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060394, 42.643803, 45.500187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074989, 42.246140, 45.540821>,  <35.083748, 42.007542, 45.565201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074989, 42.246140, 45.540821>,  <35.060394, 42.643803, 45.500187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074989, 42.246140, 45.540821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128563, 0.096137, 0.987030,
		-0.991030, -0.049075, -0.124304,
		0.036489, -0.994157, 0.101584,
		35.085938, 41.947891, 45.571297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490467, 42.498001, 45.964916>,  <35.060394, 42.643803, 45.500187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490467, 42.498001, 45.964916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715336, 42.167206, 45.962334>,  <34.850258, 41.968727, 45.960785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715336, 42.167206, 45.962334>,  <34.490467, 42.498001, 45.964916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715336, 42.167206, 45.962334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028804, -0.027376, 0.999210,
		-0.826516, -0.561546, -0.039211,
		0.562176, -0.826992, -0.006452,
		34.883987, 41.919109, 45.960400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142254, 42.027245, 46.401932>,  <34.490467, 42.498001, 45.964916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142254, 42.027245, 46.401932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525894, 41.916588, 46.377911>,  <34.756077, 41.850193, 46.363499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525894, 41.916588, 46.377911>,  <34.142254, 42.027245, 46.401932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525894, 41.916588, 46.377911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026857, -0.122267, 0.992134,
		-0.281806, -0.953164, -0.109836,
		0.959096, -0.276639, -0.060055,
		34.813622, 41.833595, 46.359894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258919, 41.261887, 46.692177>,  <34.142254, 42.027245, 46.401932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258919, 41.261887, 46.692177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590668, 41.484673, 46.709797>,  <34.789715, 41.618343, 46.720371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590668, 41.484673, 46.709797>,  <34.258919, 41.261887, 46.692177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590668, 41.484673, 46.709797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076469, -0.191269, 0.978554,
		0.553443, -0.808214, -0.201223,
		0.829369, 0.556961, 0.044054,
		34.839478, 41.651760, 46.723015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682716, 40.854389, 47.003311>,  <34.258919, 41.261887, 46.692177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682716, 40.854389, 47.003311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831425, 41.223541, 47.043453>,  <34.920650, 41.445034, 47.067539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831425, 41.223541, 47.043453>,  <34.682716, 40.854389, 47.003311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831425, 41.223541, 47.043453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082267, -0.140429, 0.986667,
		0.924672, -0.358559, -0.128131,
		0.371772, 0.922884, 0.100353,
		34.942955, 41.500408, 47.073559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293682, 40.766121, 47.376434>,  <34.682716, 40.854389, 47.003311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293682, 40.766121, 47.376434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179958, 41.147335, 47.418175>,  <35.111725, 41.376064, 47.443218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179958, 41.147335, 47.418175>,  <35.293682, 40.766121, 47.376434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179958, 41.147335, 47.418175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076166, -0.086046, 0.993376,
		0.955702, 0.290376, -0.048125,
		-0.284311, 0.953036, 0.104351,
		35.094666, 41.433247, 47.449482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812515, 40.984673, 47.759617>,  <35.293682, 40.766121, 47.376434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812515, 40.984673, 47.759617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539425, 41.274651, 47.796120>,  <35.375568, 41.448639, 47.818020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539425, 41.274651, 47.796120>,  <35.812515, 40.984673, 47.759617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539425, 41.274651, 47.796120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113795, -0.017874, 0.993344,
		0.721755, 0.688570, -0.070292,
		-0.682730, 0.724950, 0.091256,
		35.334606, 41.492134, 47.823498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990894, 41.364265, 48.354610>,  <35.812515, 40.984673, 47.759617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990894, 41.364265, 48.354610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608238, 41.475281, 48.319283>,  <35.378643, 41.541889, 48.298084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608238, 41.475281, 48.319283>,  <35.990894, 41.364265, 48.354610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608238, 41.475281, 48.319283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066913, 0.085708, 0.994071,
		0.283467, 0.956882, -0.063421,
		-0.956645, 0.277543, -0.088324,
		35.321243, 41.558544, 48.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946224, 41.960068, 48.832783>,  <35.990894, 41.364265, 48.354610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946224, 41.960068, 48.832783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573048, 41.828190, 48.774918>,  <35.349144, 41.749062, 48.740200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573048, 41.828190, 48.774918>,  <35.946224, 41.960068, 48.832783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573048, 41.828190, 48.774918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234647, 0.252034, 0.938839,
		-0.273073, 0.909823, -0.312495,
		-0.932937, -0.329698, -0.144664,
		35.293167, 41.729282, 48.731518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543068, 42.498940, 48.987392>,  <35.946224, 41.960068, 48.832783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543068, 42.498940, 48.987392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311855, 42.174713, 49.025066>,  <35.173126, 41.980179, 49.047672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311855, 42.174713, 49.025066>,  <35.543068, 42.498940, 48.987392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311855, 42.174713, 49.025066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165010, 0.229141, 0.959305,
		-0.799157, 0.538966, -0.266201,
		-0.578030, -0.810562, 0.094185,
		35.138447, 41.931545, 49.053322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979023, 42.642128, 49.418755>,  <35.543068, 42.498940, 48.987392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979023, 42.642128, 49.418755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069489, 42.254856, 49.461601>,  <35.123768, 42.022491, 49.487309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069489, 42.254856, 49.461601>,  <34.979023, 42.642128, 49.418755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069489, 42.254856, 49.461601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071488, 0.093172, 0.993080,
		-0.971463, -0.232255, -0.048141,
		0.226163, -0.968182, 0.107116,
		35.137337, 41.964401, 49.493736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437843, 42.320026, 49.784782>,  <34.979023, 42.642128, 49.418755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437843, 42.320026, 49.784782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803509, 42.160755, 49.815144>,  <35.022907, 42.065193, 49.833359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803509, 42.160755, 49.815144>,  <34.437843, 42.320026, 49.784782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803509, 42.160755, 49.815144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021441, 0.234494, 0.971881,
		-0.404777, -0.886832, 0.222904,
		0.914164, -0.398174, 0.075903,
		35.077759, 42.041302, 49.837914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411354, 42.077309, 50.445469>,  <34.437843, 42.320026, 49.784782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411354, 42.077309, 50.445469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801167, 42.103577, 50.359695>,  <35.035053, 42.119339, 50.308231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801167, 42.103577, 50.359695>,  <34.411354, 42.077309, 50.445469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801167, 42.103577, 50.359695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208945, 0.081467, 0.974528,
		0.081467, -0.994510, 0.065671,
		-0.974528, -0.065671, 0.214435,
		35.093525, 42.123280, 50.295364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798023, 41.548290, 50.930340>,  <34.411354, 42.077309, 50.445469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798023, 41.548290, 50.930340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977787, 41.882679, 50.804371>,  <35.085644, 42.083313, 50.728790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977787, 41.882679, 50.804371>,  <34.798023, 41.548290, 50.930340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977787, 41.882679, 50.804371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279294, 0.203373, 0.938421,
		0.848544, -0.509691, -0.142086,
		0.449409, 0.835975, -0.314924,
		35.112610, 42.133472, 50.709892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441612, 41.709919, 51.005669>,  <34.798023, 41.548290, 50.930340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441612, 41.709919, 51.005669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307167, 42.080166, 51.075245>,  <35.226498, 42.302315, 51.116993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307167, 42.080166, 51.075245>,  <35.441612, 41.709919, 51.005669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307167, 42.080166, 51.075245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357731, -0.045379, 0.932722,
		0.871238, 0.375728, -0.315870,
		-0.336115, 0.925619, 0.173945,
		35.206333, 42.357853, 51.127430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238430, 41.250820, 50.408932>,  <35.441612, 41.709919, 51.005669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238430, 41.250820, 50.408932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533257, 41.004368, 50.520008>,  <35.710152, 40.856495, 50.586655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533257, 41.004368, 50.520008>,  <35.238430, 41.250820, 50.408932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533257, 41.004368, 50.520008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675309, -0.655556, 0.337940,
		-0.026174, -0.436612, -0.899269,
		0.737070, -0.616130, 0.277690,
		35.754379, 40.819530, 50.603313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956387, 40.540306, 50.408798>,  <35.238430, 41.250820, 50.408932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956387, 40.540306, 50.408798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247704, 40.535130, 50.682854>,  <35.422493, 40.532024, 50.847286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247704, 40.535130, 50.682854>,  <34.956387, 40.540306, 50.408798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247704, 40.535130, 50.682854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620299, -0.437370, 0.651105,
		0.291236, -0.899189, -0.326560,
		0.728293, -0.012939, 0.685143,
		35.466190, 40.531246, 50.888397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322994, 39.899303, 50.508495>,  <34.956387, 40.540306, 50.408798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322994, 39.899303, 50.508495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314503, 40.131062, 50.834404>,  <35.309410, 40.270119, 51.029949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314503, 40.131062, 50.834404>,  <35.322994, 39.899303, 50.508495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314503, 40.131062, 50.834404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619412, -0.647322, 0.444187,
		0.784779, -0.495248, 0.372628,
		-0.021227, 0.579399, 0.814768,
		35.308136, 40.304882, 51.078835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726639, 39.569092, 50.958317>,  <35.322994, 39.899303, 50.508495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726639, 39.569092, 50.958317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857182, 39.908634, 51.124660>,  <34.935505, 40.112358, 51.224464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857182, 39.908634, 51.124660>,  <34.726639, 39.569092, 50.958317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857182, 39.908634, 51.124660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631884, -0.131281, 0.763864,
		0.703005, -0.512062, 0.493535,
		0.326354, 0.848857, 0.415855,
		34.955090, 40.163292, 51.249416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249264, 38.937668, 51.009125>,  <34.726639, 39.569092, 50.958317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249264, 38.937668, 51.009125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128613, 39.288460, 50.859497>,  <34.056221, 39.498936, 50.769722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128613, 39.288460, 50.859497>,  <34.249264, 38.937668, 51.009125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128613, 39.288460, 50.859497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209915, -0.443798, -0.871194,
		-0.930031, -0.184253, 0.317952,
		-0.301626, 0.876980, -0.374068,
		34.038124, 39.551556, 50.747276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570984, 38.923843, 50.906696>,  <34.249264, 38.937668, 51.009125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570984, 38.923843, 50.906696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742432, 39.188354, 50.660446>,  <33.845303, 39.347061, 50.512695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742432, 39.188354, 50.660446>,  <33.570984, 38.923843, 50.906696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742432, 39.188354, 50.660446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227122, -0.580648, -0.781834,
		-0.874470, 0.474934, -0.098689,
		0.428623, 0.661276, -0.615627,
		33.871017, 39.386738, 50.475758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106350, 39.010929, 50.231441>,  <33.570984, 38.923843, 50.906696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106350, 39.010929, 50.231441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476910, 39.138706, 50.151711>,  <33.699245, 39.215374, 50.103870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476910, 39.138706, 50.151711>,  <33.106350, 39.010929, 50.231441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476910, 39.138706, 50.151711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076077, -0.359668, -0.929974,
		-0.368769, 0.876695, -0.308895,
		0.926402, 0.319446, -0.199331,
		33.754829, 39.234539, 50.091911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974415, 39.296898, 49.534740>,  <33.106350, 39.010929, 50.231441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974415, 39.296898, 49.534740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370224, 39.252785, 49.572002>,  <33.607712, 39.226318, 49.594360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370224, 39.252785, 49.572002>,  <32.974415, 39.296898, 49.534740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370224, 39.252785, 49.572002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069242, -0.203659, -0.976590,
		0.126674, 0.972811, -0.193889,
		0.989525, -0.110283, 0.093158,
		33.667080, 39.219700, 49.599949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243351, 39.619194, 48.918964>,  <32.974415, 39.296898, 49.534740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243351, 39.619194, 48.918964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516819, 39.356388, 49.046043>,  <33.680901, 39.198704, 49.122292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516819, 39.356388, 49.046043>,  <33.243351, 39.619194, 48.918964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516819, 39.356388, 49.046043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213598, -0.236113, -0.947959,
		0.697834, 0.715949, -0.021087,
		0.683669, -0.657014, 0.317693,
		33.721920, 39.159283, 49.141350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885326, 39.600704, 48.474430>,  <33.243351, 39.619194, 48.918964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885326, 39.600704, 48.474430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939606, 39.260838, 48.678257>,  <33.972172, 39.056919, 48.800552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939606, 39.260838, 48.678257>,  <33.885326, 39.600704, 48.474430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939606, 39.260838, 48.678257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103940, -0.499277, -0.860185,
		0.985283, 0.169691, 0.020562,
		0.135700, -0.849663, 0.509567,
		33.980316, 39.005939, 48.831127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411915, 39.372143, 48.189354>,  <33.885326, 39.600704, 48.474430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411915, 39.372143, 48.189354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224819, 39.068768, 48.370899>,  <34.112560, 38.886742, 48.479828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224819, 39.068768, 48.370899>,  <34.411915, 39.372143, 48.189354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224819, 39.068768, 48.370899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091611, -0.552336, -0.828572,
		0.879106, -0.345976, 0.327831,
		-0.467739, -0.758436, 0.453867,
		34.084496, 38.841236, 48.507061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658138, 38.799637, 47.863083>,  <34.411915, 39.372143, 48.189354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658138, 38.799637, 47.863083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339371, 38.648380, 48.051517>,  <34.148109, 38.557625, 48.164577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339371, 38.648380, 48.051517>,  <34.658138, 38.799637, 47.863083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339371, 38.648380, 48.051517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134499, -0.649199, -0.748632,
		0.588919, -0.659963, 0.466501,
		-0.796922, -0.378140, 0.471090,
		34.100296, 38.534939, 48.192844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694942, 38.142025, 47.777920>,  <34.658138, 38.799637, 47.863083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694942, 38.142025, 47.777920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314678, 38.165634, 47.899750>,  <34.086521, 38.179802, 47.972847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314678, 38.165634, 47.899750>,  <34.694942, 38.142025, 47.777920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314678, 38.165634, 47.899750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275577, -0.611608, -0.741615,
		0.142508, -0.788956, 0.597696,
		-0.950657, 0.059025, 0.304577,
		34.029480, 38.183342, 47.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485176, 37.459705, 47.845959>,  <34.694942, 38.142025, 47.777920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485176, 37.459705, 47.845959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158016, 37.684483, 47.796558>,  <33.961720, 37.819351, 47.766918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158016, 37.684483, 47.796558>,  <34.485176, 37.459705, 47.845959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158016, 37.684483, 47.796558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286349, -0.583751, -0.759763,
		-0.499038, -0.586048, 0.638364,
		-0.817903, 0.561945, -0.123499,
		33.912647, 37.853065, 47.759506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943218, 36.966129, 47.636398>,  <34.485176, 37.459705, 47.845959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943218, 36.966129, 47.636398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838879, 37.334591, 47.520859>,  <33.776276, 37.555668, 47.451534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838879, 37.334591, 47.520859>,  <33.943218, 36.966129, 47.636398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838879, 37.334591, 47.520859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378424, -0.372830, -0.847226,
		-0.888117, -0.111691, 0.445839,
		-0.260850, 0.921153, -0.288850,
		33.760624, 37.610935, 47.434204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475460, 36.796894, 47.252975>,  <33.943218, 36.966129, 47.636398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475460, 36.796894, 47.252975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611061, 37.155342, 47.138401>,  <33.692421, 37.370411, 47.069656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611061, 37.155342, 47.138401>,  <33.475460, 36.796894, 47.252975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611061, 37.155342, 47.138401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148070, -0.249850, -0.956896,
		-0.929059, 0.366805, 0.047989,
		0.339004, 0.896119, -0.286439,
		33.712761, 37.424179, 47.052471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113670, 36.940929, 46.706287>,  <33.475460, 36.796894, 47.252975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113670, 36.940929, 46.706287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418621, 37.197903, 46.675137>,  <33.601593, 37.352085, 46.656448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418621, 37.197903, 46.675137>,  <33.113670, 36.940929, 46.706287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418621, 37.197903, 46.675137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046754, -0.174704, -0.983510,
		-0.645444, 0.746163, -0.163226,
		0.762375, 0.642432, -0.077875,
		33.647335, 37.390633, 46.651775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946712, 37.534695, 46.231983>,  <33.113670, 36.940929, 46.706287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946712, 37.534695, 46.231983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345066, 37.499283, 46.224285>,  <33.584080, 37.478035, 46.219666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345066, 37.499283, 46.224285>,  <32.946712, 37.534695, 46.231983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345066, 37.499283, 46.224285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027989, -0.098601, -0.994733,
		0.086168, 0.991181, -0.100673,
		0.995887, -0.088532, -0.019246,
		33.643833, 37.472725, 46.218510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101074, 37.889454, 45.567318>,  <32.946712, 37.534695, 46.231983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101074, 37.889454, 45.567318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406158, 37.648922, 45.662544>,  <33.589211, 37.504604, 45.719681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406158, 37.648922, 45.662544>,  <33.101074, 37.889454, 45.567318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406158, 37.648922, 45.662544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159863, -0.181386, -0.970331,
		0.626670, 0.778141, -0.042214,
		0.762712, -0.601329, 0.238065,
		33.634972, 37.468525, 45.733963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480938, 38.160995, 45.067200>,  <33.101074, 37.889454, 45.567318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480938, 38.160995, 45.067200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630306, 37.800323, 45.154396>,  <33.719929, 37.583920, 45.206715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630306, 37.800323, 45.154396>,  <33.480938, 38.160995, 45.067200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630306, 37.800323, 45.154396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006197, -0.237414, -0.971389,
		0.927640, 0.361388, -0.094243,
		0.373423, -0.901683, 0.217995,
		33.742332, 37.529819, 45.219795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225166, 38.023277, 44.799015>,  <33.480938, 38.160995, 45.067200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225166, 38.023277, 44.799015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018314, 37.685265, 44.853413>,  <33.894203, 37.482456, 44.886051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018314, 37.685265, 44.853413>,  <34.225166, 38.023277, 44.799015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018314, 37.685265, 44.853413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051195, -0.189143, -0.980614,
		0.854375, -0.500142, 0.141073,
		-0.517129, -0.845035, 0.135995,
		33.863174, 37.431755, 44.894211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578987, 37.470604, 44.404583>,  <34.225166, 38.023277, 44.799015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578987, 37.470604, 44.404583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197357, 37.361305, 44.453693>,  <33.968380, 37.295727, 44.483158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197357, 37.361305, 44.453693>,  <34.578987, 37.470604, 44.404583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197357, 37.361305, 44.453693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053927, -0.246477, -0.967647,
		0.294670, -0.929830, 0.220422,
		-0.954076, -0.273250, 0.122772,
		33.911133, 37.279331, 44.490524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547440, 36.833160, 44.022148>,  <34.578987, 37.470604, 44.404583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547440, 36.833160, 44.022148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169960, 36.955360, 44.072914>,  <33.943474, 37.028679, 44.103374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169960, 36.955360, 44.072914>,  <34.547440, 36.833160, 44.022148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169960, 36.955360, 44.072914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176421, -0.140219, -0.974276,
		-0.279843, -0.941812, 0.186220,
		-0.943696, 0.305498, 0.126917,
		33.886852, 37.047009, 44.110989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185417, 36.338295, 43.716869>,  <34.547440, 36.833160, 44.022148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185417, 36.338295, 43.716869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928085, 36.644264, 43.729725>,  <33.773689, 36.827843, 43.737438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928085, 36.644264, 43.729725>,  <34.185417, 36.338295, 43.716869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928085, 36.644264, 43.729725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307007, -0.219290, -0.926098,
		-0.701341, -0.605650, 0.375910,
		-0.643325, 0.764918, 0.032142,
		33.735088, 36.873741, 43.739368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460083, 36.089287, 43.354492>,  <34.185417, 36.338295, 43.716869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460083, 36.089287, 43.354492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456116, 36.489265, 43.353924>,  <33.453735, 36.729252, 43.353580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456116, 36.489265, 43.353924>,  <33.460083, 36.089287, 43.354492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456116, 36.489265, 43.353924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174307, -0.003131, -0.984686,
		-0.984641, -0.009521, 0.174330,
		-0.009921, 0.999950, -0.001423,
		33.453140, 36.789249, 43.353497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835495, 36.271606, 43.020416>,  <33.460083, 36.089287, 43.354492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835495, 36.271606, 43.020416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092365, 36.576912, 42.992039>,  <33.246487, 36.760098, 42.975014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092365, 36.576912, 42.992039>,  <32.835495, 36.271606, 43.020416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092365, 36.576912, 42.992039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091552, -0.015514, -0.995679,
		-0.761069, 0.645898, 0.059916,
		0.642178, 0.763266, -0.070940,
		33.285019, 36.805893, 42.970757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574753, 36.717861, 42.341621>,  <32.835495, 36.271606, 43.020416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574753, 36.717861, 42.341621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954334, 36.822899, 42.411507>,  <33.182083, 36.885921, 42.453438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954334, 36.822899, 42.411507>,  <32.574753, 36.717861, 42.341621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954334, 36.822899, 42.411507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167807, 0.048670, -0.984618,
		-0.267060, 0.963678, 0.002120,
		0.948957, 0.262597, 0.174709,
		33.239021, 36.901676, 42.463921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690563, 37.206860, 41.881001>,  <32.574753, 36.717861, 42.341621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690563, 37.206860, 41.881001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063877, 37.105747, 41.983047>,  <33.287865, 37.045078, 42.044277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063877, 37.105747, 41.983047>,  <32.690563, 37.206860, 41.881001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063877, 37.105747, 41.983047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265391, 0.006802, -0.964117,
		0.241974, 0.967500, 0.073433,
		0.933283, -0.252779, 0.255120,
		33.343861, 37.029915, 42.059582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078304, 37.477764, 41.444344>,  <32.690563, 37.206860, 41.881001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078304, 37.477764, 41.444344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349300, 37.228924, 41.601318>,  <33.511898, 37.079620, 41.695503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349300, 37.228924, 41.601318>,  <33.078304, 37.477764, 41.444344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349300, 37.228924, 41.601318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430477, -0.097260, -0.897346,
		0.596407, 0.776873, 0.201908,
		0.677486, -0.622100, 0.392432,
		33.552547, 37.042294, 41.719048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678383, 37.767029, 41.292103>,  <33.078304, 37.477764, 41.444344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678383, 37.767029, 41.292103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745529, 37.374996, 41.334557>,  <33.785816, 37.139778, 41.360027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745529, 37.374996, 41.334557>,  <33.678383, 37.767029, 41.292103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745529, 37.374996, 41.334557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376287, -0.035810, -0.925811,
		0.911170, 0.195348, 0.362780,
		0.167864, -0.980080, 0.106136,
		33.795887, 37.080971, 41.366398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321537, 37.758381, 41.017784>,  <33.678383, 37.767029, 41.292103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321537, 37.758381, 41.017784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126751, 37.409599, 41.038033>,  <34.009880, 37.200329, 41.050182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126751, 37.409599, 41.038033>,  <34.321537, 37.758381, 41.017784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126751, 37.409599, 41.038033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326729, -0.235605, -0.915280,
		0.810010, -0.429167, 0.399624,
		-0.486962, -0.871955, 0.050621,
		33.980663, 37.148014, 41.053219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754082, 37.288895, 40.672222>,  <34.321537, 37.758381, 41.017784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754082, 37.288895, 40.672222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406158, 37.091614, 40.666668>,  <34.197407, 36.973244, 40.663338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406158, 37.091614, 40.666668>,  <34.754082, 37.288895, 40.672222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406158, 37.091614, 40.666668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117309, -0.179390, -0.976759,
		0.479248, -0.851218, 0.213891,
		-0.869805, -0.493201, -0.013883,
		34.145218, 36.943653, 40.662502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836212, 36.758297, 40.231159>,  <34.754082, 37.288895, 40.672222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836212, 36.758297, 40.231159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439098, 36.791122, 40.266129>,  <34.200829, 36.810818, 40.287109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439098, 36.791122, 40.266129>,  <34.836212, 36.758297, 40.231159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439098, 36.791122, 40.266129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111457, -0.362833, -0.925164,
		-0.044202, -0.928234, 0.369362,
		-0.992786, 0.082062, 0.087421,
		34.141262, 36.815742, 40.292355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557720, 36.129433, 39.981304>,  <34.836212, 36.758297, 40.231159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557720, 36.129433, 39.981304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253857, 36.389179, 39.967247>,  <34.071537, 36.545029, 39.958813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253857, 36.389179, 39.967247>,  <34.557720, 36.129433, 39.981304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253857, 36.389179, 39.967247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367166, -0.472873, -0.800987,
		-0.536753, -0.595577, 0.597649,
		-0.759661, 0.649369, -0.035141,
		34.025959, 36.583988, 39.956703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959282, 35.721252, 39.657135>,  <34.557720, 36.129433, 39.981304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959282, 35.721252, 39.657135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834900, 36.098152, 39.607376>,  <33.760273, 36.324291, 39.577522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834900, 36.098152, 39.607376>,  <33.959282, 35.721252, 39.657135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834900, 36.098152, 39.607376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401735, -0.248924, -0.881275,
		-0.861346, -0.224059, 0.455938,
		-0.310952, 0.942249, -0.124398,
		33.741615, 36.380829, 39.570057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140862, 35.684292, 39.600990>,  <33.959282, 35.721252, 39.657135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140862, 35.684292, 39.600990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327438, 35.988647, 39.420555>,  <33.439384, 36.171261, 39.312294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327438, 35.988647, 39.420555>,  <33.140862, 35.684292, 39.600990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327438, 35.988647, 39.420555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558242, -0.142366, -0.817373,
		-0.686150, 0.633071, 0.358355,
		0.466437, 0.760890, -0.451091,
		33.467369, 36.216915, 39.285229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560825, 36.121101, 39.148853>,  <33.140862, 35.684292, 39.600990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560825, 36.121101, 39.148853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922638, 36.228252, 39.016148>,  <33.139725, 36.292545, 38.936523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922638, 36.228252, 39.016148>,  <32.560825, 36.121101, 39.148853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922638, 36.228252, 39.016148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326468, -0.065456, -0.942939,
		-0.274312, 0.961226, 0.028248,
		0.904528, 0.267881, -0.331765,
		33.193996, 36.308617, 38.916618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360703, 36.506912, 38.581936>,  <32.560825, 36.121101, 39.148853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360703, 36.506912, 38.581936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737545, 36.387268, 38.521309>,  <32.963650, 36.315483, 38.484932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737545, 36.387268, 38.521309>,  <32.360703, 36.506912, 38.581936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737545, 36.387268, 38.521309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227322, -0.237413, -0.944436,
		0.246502, 0.924213, -0.291661,
		0.942105, -0.299106, -0.151572,
		33.020176, 36.297535, 38.475838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555870, 36.786438, 38.041103>,  <32.360703, 36.506912, 38.581936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555870, 36.786438, 38.041103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833160, 36.498264, 38.049221>,  <32.999535, 36.325359, 38.054092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833160, 36.498264, 38.049221>,  <32.555870, 36.786438, 38.041103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833160, 36.498264, 38.049221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036275, -0.062997, -0.997354,
		0.719805, 0.690658, -0.069805,
		0.693228, -0.720433, 0.020292,
		33.041130, 36.282135, 38.055309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081234, 37.119160, 37.622509>,  <32.555870, 36.786438, 38.041103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081234, 37.119160, 37.622509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129036, 36.722965, 37.649788>,  <33.157719, 36.485249, 37.666157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129036, 36.722965, 37.649788>,  <33.081234, 37.119160, 37.622509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129036, 36.722965, 37.649788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140232, -0.051162, -0.988796,
		0.982880, 0.127728, 0.132784,
		0.119503, -0.990489, 0.068197,
		33.164886, 36.425819, 37.670246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785561, 36.852329, 37.283451>,  <33.081234, 37.119160, 37.622509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785561, 36.852329, 37.283451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565098, 36.518570, 37.281921>,  <33.432819, 36.318314, 37.281006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565098, 36.518570, 37.281921>,  <33.785561, 36.852329, 37.283451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565098, 36.518570, 37.281921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136516, -0.085657, -0.986928,
		0.823159, -0.544472, 0.161118,
		-0.551156, -0.834394, -0.003820,
		33.399750, 36.268253, 37.280777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045830, 36.466106, 36.815716>,  <33.785561, 36.852329, 37.283451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045830, 36.466106, 36.815716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689026, 36.286297, 36.834652>,  <33.474941, 36.178410, 36.846012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689026, 36.286297, 36.834652>,  <34.045830, 36.466106, 36.815716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689026, 36.286297, 36.834652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046546, -0.012828, -0.998834,
		0.449607, -0.893176, -0.009481,
		-0.892013, -0.449524, 0.047341,
		33.421421, 36.151440, 36.848854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104244, 35.837570, 36.521057>,  <34.045830, 36.466106, 36.815716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104244, 35.837570, 36.521057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736042, 35.991848, 36.496071>,  <33.515121, 36.084415, 36.481079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736042, 35.991848, 36.496071>,  <34.104244, 35.837570, 36.521057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736042, 35.991848, 36.496071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046704, -0.050119, -0.997651,
		-0.387921, -0.921264, 0.028121,
		-0.920508, 0.385696, -0.062469,
		33.459888, 36.107555, 36.477329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972809, 35.634899, 35.882549>,  <34.104244, 35.837570, 36.521057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972809, 35.634899, 35.882549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667412, 35.880062, 35.963959>,  <33.484173, 36.027161, 36.012802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667412, 35.880062, 35.963959>,  <33.972809, 35.634899, 35.882549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667412, 35.880062, 35.963959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017458, 0.295437, -0.955203,
		-0.645577, -0.732846, -0.214865,
		-0.763496, 0.612906, 0.203521,
		33.438362, 36.063934, 36.025017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119030, 34.907909, 36.041641>,  <33.972809, 35.634899, 35.882549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119030, 34.907909, 36.041641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422291, 34.655178, 36.106144>,  <34.604248, 34.503540, 36.144844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422291, 34.655178, 36.106144>,  <34.119030, 34.907909, 36.041641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422291, 34.655178, 36.106144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171589, 0.431879, 0.885459,
		-0.629099, -0.643641, 0.435844,
		0.758150, -0.631828, 0.161253,
		34.649734, 34.465630, 36.154518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183086, 34.863232, 36.699524>,  <34.119030, 34.907909, 36.041641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183086, 34.863232, 36.699524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527191, 34.683731, 36.602711>,  <34.733654, 34.576031, 36.544624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527191, 34.683731, 36.602711>,  <34.183086, 34.863232, 36.699524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527191, 34.683731, 36.602711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338466, 0.147622, 0.929327,
		-0.381307, -0.881380, 0.278880,
		0.860259, -0.448751, -0.242028,
		34.785271, 34.549107, 36.530102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349804, 34.238277, 37.200764>,  <34.183086, 34.863232, 36.699524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349804, 34.238277, 37.200764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672112, 34.391628, 37.020203>,  <34.865498, 34.483639, 36.911865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672112, 34.391628, 37.020203>,  <34.349804, 34.238277, 37.200764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672112, 34.391628, 37.020203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500347, -0.032895, 0.865200,
		0.316845, -0.923008, -0.218325,
		0.805768, 0.383373, -0.451401,
		34.913841, 34.506641, 36.884781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906670, 33.941681, 37.647533>,  <34.349804, 34.238277, 37.200764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906670, 33.941681, 37.647533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084789, 34.207111, 37.407074>,  <35.191662, 34.366371, 37.262798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084789, 34.207111, 37.407074>,  <34.906670, 33.941681, 37.647533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084789, 34.207111, 37.407074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696090, 0.165727, 0.698565,
		0.563179, -0.729519, -0.388112,
		0.445296, 0.663578, -0.601145,
		35.218380, 34.406185, 37.226730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537781, 33.694111, 37.502064>,  <34.906670, 33.941681, 37.647533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537781, 33.694111, 37.502064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571007, 34.088596, 37.444813>,  <35.590942, 34.325287, 37.410461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571007, 34.088596, 37.444813>,  <35.537781, 33.694111, 37.502064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571007, 34.088596, 37.444813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651654, 0.054910, 0.756527,
		0.753954, -0.156114, -0.638108,
		0.083066, 0.986212, -0.143131,
		35.595928, 34.384460, 37.401875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210320, 33.863586, 37.685265>,  <35.537781, 33.694111, 37.502064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210320, 33.863586, 37.685265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018593, 34.214634, 37.682579>,  <35.903557, 34.425262, 37.680965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018593, 34.214634, 37.682579>,  <36.210320, 33.863586, 37.685265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018593, 34.214634, 37.682579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390022, 0.219856, 0.894174,
		0.786220, 0.425969, -0.447670,
		-0.479313, 0.877618, -0.006718,
		35.874798, 34.477921, 37.680565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711670, 34.319241, 37.901684>,  <36.210320, 33.863586, 37.685265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711670, 34.319241, 37.901684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361885, 34.495850, 37.982052>,  <36.152012, 34.601814, 38.030273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361885, 34.495850, 37.982052>,  <36.711670, 34.319241, 37.901684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361885, 34.495850, 37.982052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344235, 0.272985, 0.898322,
		0.341783, 0.854714, -0.390703,
		-0.874464, 0.441525, 0.200921,
		36.099545, 34.628307, 38.042328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843632, 34.979439, 38.202721>,  <36.711670, 34.319241, 37.901684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843632, 34.979439, 38.202721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458771, 34.912308, 38.288597>,  <36.227856, 34.872028, 38.340122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458771, 34.912308, 38.288597>,  <36.843632, 34.979439, 38.202721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458771, 34.912308, 38.288597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152384, 0.321788, 0.934469,
		-0.225919, 0.931818, -0.284035,
		-0.962154, -0.167832, 0.214692,
		36.170124, 34.861958, 38.353004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640408, 35.612362, 38.497620>,  <36.843632, 34.979439, 38.202721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640408, 35.612362, 38.497620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368847, 35.342102, 38.612572>,  <36.205910, 35.179947, 38.681541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368847, 35.342102, 38.612572>,  <36.640408, 35.612362, 38.497620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368847, 35.342102, 38.612572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026134, 0.413387, 0.910180,
		-0.733763, 0.610414, -0.298307,
		-0.678903, -0.675652, 0.287376,
		36.165176, 35.139408, 38.698784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299458, 36.046635, 38.911930>,  <36.640408, 35.612362, 38.497620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299458, 36.046635, 38.911930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219913, 35.666969, 39.009529>,  <36.172188, 35.439171, 39.068089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219913, 35.666969, 39.009529>,  <36.299458, 36.046635, 38.911930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219913, 35.666969, 39.009529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141949, 0.218449, 0.965469,
		-0.969693, 0.226630, 0.091292,
		-0.198862, -0.949167, 0.243999,
		36.160255, 35.382217, 39.082729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847580, 36.057171, 39.497337>,  <36.299458, 36.046635, 38.911930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847580, 36.057171, 39.497337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993649, 35.685173, 39.514145>,  <36.081291, 35.461975, 39.524231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993649, 35.685173, 39.514145>,  <35.847580, 36.057171, 39.497337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993649, 35.685173, 39.514145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127934, 0.094839, 0.987238,
		-0.922108, -0.355135, 0.153610,
		0.365170, -0.929992, 0.042018,
		36.103199, 35.406174, 39.526749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598320, 35.766823, 40.169258>,  <35.847580, 36.057171, 39.497337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598320, 35.766823, 40.169258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905666, 35.530094, 40.071800>,  <36.090076, 35.388058, 40.013325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905666, 35.530094, 40.071800>,  <35.598320, 35.766823, 40.169258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905666, 35.530094, 40.071800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370073, 0.100248, 0.923578,
		-0.522165, -0.799814, 0.296043,
		0.768369, -0.591817, -0.243644,
		36.136177, 35.352551, 39.998707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551132, 35.227131, 40.653343>,  <35.598320, 35.766823, 40.169258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551132, 35.227131, 40.653343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925014, 35.214428, 40.511745>,  <36.149345, 35.206806, 40.426788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925014, 35.214428, 40.511745>,  <35.551132, 35.227131, 40.653343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925014, 35.214428, 40.511745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350285, -0.086272, 0.932661,
		-0.060153, -0.995766, -0.069517,
		0.934710, -0.031751, -0.353992,
		36.205429, 35.204899, 40.405548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814102, 34.572754, 40.931881>,  <35.551132, 35.227131, 40.653343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814102, 34.572754, 40.931881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118847, 34.822926, 40.864468>,  <36.301693, 34.973030, 40.824020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118847, 34.822926, 40.864468>,  <35.814102, 34.572754, 40.931881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118847, 34.822926, 40.864468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248403, -0.041809, 0.967754,
		0.598215, -0.779161, -0.187211,
		0.761863, 0.625428, -0.168535,
		36.347404, 35.010555, 40.813908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336433, 34.479813, 41.435116>,  <35.814102, 34.572754, 40.931881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336433, 34.479813, 41.435116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407249, 34.855183, 41.316452>,  <36.449738, 35.080406, 41.245255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407249, 34.855183, 41.316452>,  <36.336433, 34.479813, 41.435116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407249, 34.855183, 41.316452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196656, 0.261613, 0.944926,
		0.964357, -0.225629, -0.138232,
		0.177039, 0.938430, -0.296660,
		36.460361, 35.136711, 41.227455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934738, 34.687622, 41.814808>,  <36.336433, 34.479813, 41.435116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934738, 34.687622, 41.814808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797813, 35.032200, 41.664753>,  <36.715656, 35.238949, 41.574718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797813, 35.032200, 41.664753>,  <36.934738, 34.687622, 41.814808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797813, 35.032200, 41.664753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122860, 0.436871, 0.891094,
		0.931517, 0.258947, -0.255386,
		-0.342317, 0.861447, -0.375139,
		36.695118, 35.290634, 41.552212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369122, 35.208282, 42.092239>,  <36.934738, 34.687622, 41.814808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369122, 35.208282, 42.092239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057056, 35.435158, 41.986671>,  <36.869820, 35.571281, 41.923328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057056, 35.435158, 41.986671>,  <37.369122, 35.208282, 42.092239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057056, 35.435158, 41.986671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065100, 0.345986, 0.935979,
		0.622185, 0.747393, -0.233000,
		-0.780158, 0.567184, -0.263922,
		36.823009, 35.605312, 41.907494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340576, 35.785992, 42.641045>,  <37.369122, 35.208282, 42.092239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340576, 35.785992, 42.641045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977249, 35.796669, 42.474072>,  <36.759254, 35.803078, 42.373886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977249, 35.796669, 42.474072>,  <37.340576, 35.785992, 42.641045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977249, 35.796669, 42.474072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393652, 0.282879, 0.874653,
		0.141435, 0.958784, -0.246433,
		-0.908314, 0.026698, -0.417436,
		36.704754, 35.804680, 42.348839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970245, 36.536507, 42.768814>,  <37.340576, 35.785992, 42.641045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970245, 36.536507, 42.768814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706085, 36.238888, 42.728287>,  <36.547588, 36.060318, 42.703968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706085, 36.238888, 42.728287>,  <36.970245, 36.536507, 42.768814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706085, 36.238888, 42.728287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360594, 0.195874, 0.911924,
		-0.658664, 0.638775, -0.397653,
		-0.660404, -0.744043, -0.101323,
		36.507965, 36.015675, 42.697891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292385, 36.712643, 43.127357>,  <36.970245, 36.536507, 42.768814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292385, 36.712643, 43.127357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286133, 36.312691, 43.126862>,  <36.282383, 36.072720, 43.126564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286133, 36.312691, 43.126862>,  <36.292385, 36.712643, 43.127357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286133, 36.312691, 43.126862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467276, 0.006211, 0.884090,
		-0.883973, 0.014394, -0.467316,
		-0.015628, -0.999877, -0.001235,
		36.281445, 36.012726, 43.126492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708221, 36.602192, 43.486576>,  <36.292385, 36.712643, 43.127357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708221, 36.602192, 43.486576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890751, 36.247173, 43.461185>,  <36.000267, 36.034161, 43.445950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890751, 36.247173, 43.461185>,  <35.708221, 36.602192, 43.486576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890751, 36.247173, 43.461185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381355, -0.259525, 0.887251,
		-0.803953, -0.380662, -0.456898,
		0.456319, -0.887549, -0.063478,
		36.027645, 35.980907, 43.442142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173130, 36.089718, 43.634102>,  <35.708221, 36.602192, 43.486576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173130, 36.089718, 43.634102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528126, 35.921291, 43.709011>,  <35.741123, 35.820236, 43.753956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528126, 35.921291, 43.709011>,  <35.173130, 36.089718, 43.634102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528126, 35.921291, 43.709011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348782, -0.348127, 0.870148,
		-0.301187, -0.837566, -0.455817,
		0.887489, -0.421059, 0.187277,
		35.794373, 35.794971, 43.765194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007755, 35.440865, 43.911316>,  <35.173130, 36.089718, 43.634102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007755, 35.440865, 43.911316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384995, 35.512772, 44.023209>,  <35.611340, 35.555916, 44.090343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384995, 35.512772, 44.023209>,  <35.007755, 35.440865, 43.911316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384995, 35.512772, 44.023209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218119, -0.300512, 0.928502,
		0.250979, -0.936683, -0.244201,
		0.943098, 0.179769, 0.279730,
		35.667923, 35.566704, 44.107128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162247, 34.883732, 44.431427>,  <35.007755, 35.440865, 43.911316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162247, 34.883732, 44.431427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401669, 35.199814, 44.484051>,  <35.545322, 35.389465, 44.515625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401669, 35.199814, 44.484051>,  <35.162247, 34.883732, 44.431427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401669, 35.199814, 44.484051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127844, -0.067899, 0.989467,
		0.790817, -0.609067, 0.060382,
		0.598552, 0.790207, 0.131561,
		35.581234, 35.436874, 44.523518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485931, 34.855888, 45.193794>,  <35.162247, 34.883732, 44.431427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485931, 34.855888, 45.193794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568871, 35.233597, 45.091534>,  <35.618633, 35.460220, 45.030178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568871, 35.233597, 45.091534>,  <35.485931, 34.855888, 45.193794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568871, 35.233597, 45.091534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046719, 0.251472, 0.966736,
		0.977151, -0.212396, 0.008027,
		0.207349, 0.944272, -0.255649,
		35.631077, 35.516880, 45.014839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095997, 35.091766, 45.515186>,  <35.485931, 34.855888, 45.193794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095997, 35.091766, 45.515186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884163, 35.420616, 45.431618>,  <35.757061, 35.617928, 45.381477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884163, 35.420616, 45.431618>,  <36.095997, 35.091766, 45.515186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884163, 35.420616, 45.431618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023903, 0.231736, 0.972485,
		0.847919, 0.520009, -0.103073,
		-0.529587, 0.822124, -0.208923,
		35.725288, 35.667252, 45.368942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459900, 35.618614, 45.814705>,  <36.095997, 35.091766, 45.515186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459900, 35.618614, 45.814705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111328, 35.803226, 45.748249>,  <35.902187, 35.913994, 45.708374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111328, 35.803226, 45.748249>,  <36.459900, 35.618614, 45.814705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111328, 35.803226, 45.748249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123299, 0.533923, 0.836495,
		0.474778, 0.708458, -0.522181,
		-0.871426, 0.461534, -0.166143,
		35.849899, 35.941689, 45.698406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616096, 36.389393, 45.703869>,  <36.459900, 35.618614, 45.814705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616096, 36.389393, 45.703869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251694, 36.296638, 45.840275>,  <36.033051, 36.240986, 45.922119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251694, 36.296638, 45.840275>,  <36.616096, 36.389393, 45.703869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251694, 36.296638, 45.840275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217391, 0.432652, 0.874959,
		-0.350434, 0.871229, -0.343739,
		-0.911009, -0.231889, 0.341013,
		35.978390, 36.227070, 45.942577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438530, 37.067589, 45.979019>,  <36.616096, 36.389393, 45.703869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438530, 37.067589, 45.979019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207565, 36.776421, 46.126926>,  <36.068985, 36.601719, 46.215672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207565, 36.776421, 46.126926>,  <36.438530, 37.067589, 45.979019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207565, 36.776421, 46.126926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048815, 0.421307, 0.905603,
		-0.814991, 0.540959, -0.207735,
		-0.577414, -0.727918, 0.369768,
		36.034340, 36.558044, 46.237858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996677, 37.397564, 46.461948>,  <36.438530, 37.067589, 45.979019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996677, 37.397564, 46.461948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912445, 37.027161, 46.587273>,  <35.861908, 36.804920, 46.662468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912445, 37.027161, 46.587273>,  <35.996677, 37.397564, 46.461948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912445, 37.027161, 46.587273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089449, 0.300905, 0.949450,
		-0.973476, 0.227958, 0.019467,
		-0.210577, -0.926008, 0.313314,
		35.849274, 36.749359, 46.681267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453358, 37.366581, 46.991837>,  <35.996677, 37.397564, 46.461948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453358, 37.366581, 46.991837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657749, 37.028881, 47.056522>,  <35.780384, 36.826263, 47.095333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657749, 37.028881, 47.056522>,  <35.453358, 37.366581, 46.991837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657749, 37.028881, 47.056522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133837, 0.263972, 0.955200,
		-0.849112, -0.466441, 0.247875,
		0.510977, -0.844246, 0.161714,
		35.811043, 36.775608, 47.105038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166351, 37.091270, 47.590244>,  <35.453358, 37.366581, 46.991837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166351, 37.091270, 47.590244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497131, 36.866493, 47.582611>,  <35.695599, 36.731625, 47.578030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497131, 36.866493, 47.582611>,  <35.166351, 37.091270, 47.590244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497131, 36.866493, 47.582611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068890, 0.067575, 0.995333,
		-0.558035, -0.824408, 0.094594,
		0.826953, -0.561948, -0.019084,
		35.745216, 36.697910, 47.576885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060154, 36.536213, 48.172882>,  <35.166351, 37.091270, 47.590244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060154, 36.536213, 48.172882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448345, 36.589214, 48.092266>,  <35.681259, 36.621014, 48.043896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448345, 36.589214, 48.092266>,  <35.060154, 36.536213, 48.172882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448345, 36.589214, 48.092266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207811, -0.035157, 0.977537,
		0.122441, -0.990559, -0.061654,
		0.970475, 0.132503, -0.201544,
		35.739487, 36.628963, 48.031803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378670, 36.133553, 48.725498>,  <35.060154, 36.536213, 48.172882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378670, 36.133553, 48.725498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676800, 36.363842, 48.591019>,  <35.855679, 36.502018, 48.510330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676800, 36.363842, 48.591019>,  <35.378670, 36.133553, 48.725498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676800, 36.363842, 48.591019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301961, 0.158080, 0.940123,
		0.594401, -0.802215, -0.056027,
		0.745323, 0.575728, -0.336201,
		35.900398, 36.536560, 48.490158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912697, 35.925995, 49.096600>,  <35.378670, 36.133553, 48.725498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912697, 35.925995, 49.096600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998463, 36.300163, 48.984161>,  <36.049923, 36.524666, 48.916698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998463, 36.300163, 48.984161>,  <35.912697, 35.925995, 49.096600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998463, 36.300163, 48.984161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256456, 0.223781, 0.940294,
		0.942474, -0.273699, -0.191913,
		0.214411, 0.935420, -0.281100,
		36.062786, 36.580788, 48.899830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678242, 36.085091, 49.267143>,  <35.912697, 35.925995, 49.096600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678242, 36.085091, 49.267143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478836, 36.430004, 49.231480>,  <36.359192, 36.636951, 49.210079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478836, 36.430004, 49.231480>,  <36.678242, 36.085091, 49.267143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478836, 36.430004, 49.231480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335486, 0.286740, 0.897346,
		0.799335, 0.417424, -0.432228,
		-0.498510, 0.862286, -0.089162,
		36.329285, 36.688690, 49.204731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075367, 36.527000, 49.641201>,  <36.678242, 36.085091, 49.267143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075367, 36.527000, 49.641201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713192, 36.694824, 49.615402>,  <36.495888, 36.795517, 49.599922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713192, 36.694824, 49.615402>,  <37.075367, 36.527000, 49.641201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713192, 36.694824, 49.615402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064292, 0.285730, 0.956151,
		0.419586, 0.861587, -0.285684,
		-0.905436, 0.419555, -0.064495,
		36.441563, 36.820690, 49.596054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196629, 37.221951, 49.746758>,  <37.075367, 36.527000, 49.641201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196629, 37.221951, 49.746758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831028, 37.088390, 49.838943>,  <36.611668, 37.008255, 49.894257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831028, 37.088390, 49.838943>,  <37.196629, 37.221951, 49.746758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831028, 37.088390, 49.838943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110788, 0.341057, 0.933491,
		-0.390297, 0.878743, -0.274733,
		-0.913999, -0.333902, 0.230468,
		36.556828, 36.988220, 49.908085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547359, 37.835125, 49.970001>,  <37.196629, 37.221951, 49.746758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547359, 37.835125, 49.970001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660473, 38.217007, 49.932968>,  <37.728340, 38.446136, 49.910748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660473, 38.217007, 49.932968>,  <37.547359, 37.835125, 49.970001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660473, 38.217007, 49.932968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385804, -0.201578, -0.900290,
		-0.878175, 0.218865, -0.425332,
		0.282780, 0.954706, -0.092582,
		37.745308, 38.503418, 49.905193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274490, 38.191559, 49.317493>,  <37.547359, 37.835125, 49.970001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274490, 38.191559, 49.317493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618580, 38.362267, 49.429127>,  <37.825031, 38.464691, 49.496105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618580, 38.362267, 49.429127>,  <37.274490, 38.191559, 49.317493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618580, 38.362267, 49.429127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398875, -0.222194, -0.889679,
		-0.317676, 0.876641, -0.361363,
		0.860221, 0.426768, 0.279084,
		37.876648, 38.490295, 49.512852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514584, 38.613590, 48.635632>,  <37.274490, 38.191559, 49.317493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514584, 38.613590, 48.635632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842552, 38.595188, 48.863880>,  <38.039333, 38.584148, 49.000828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842552, 38.595188, 48.863880>,  <37.514584, 38.613590, 48.635632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842552, 38.595188, 48.863880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565962, -0.084755, -0.820063,
		0.086088, 0.995339, -0.043457,
		0.819924, -0.046003, 0.570621,
		38.088528, 38.581387, 49.035065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829361, 39.116455, 48.372231>,  <37.514584, 38.613590, 48.635632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829361, 39.116455, 48.372231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109333, 38.898071, 48.556412>,  <38.277317, 38.767040, 48.666920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109333, 38.898071, 48.556412>,  <37.829361, 39.116455, 48.372231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109333, 38.898071, 48.556412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565650, 0.030154, -0.824094,
		0.436041, 0.837266, 0.329930,
		0.699934, -0.545964, 0.460451,
		38.319313, 38.734283, 48.694546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452415, 39.390312, 48.199722>,  <37.829361, 39.116455, 48.372231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452415, 39.390312, 48.199722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559223, 39.025265, 48.323544>,  <38.623306, 38.806236, 48.397839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559223, 39.025265, 48.323544>,  <38.452415, 39.390312, 48.199722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559223, 39.025265, 48.323544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476590, -0.154134, -0.865508,
		0.837595, 0.378635, 0.393790,
		0.267015, -0.912622, 0.309555,
		38.639328, 38.751476, 48.416409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195869, 39.313927, 47.987530>,  <38.452415, 39.390312, 48.199722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195869, 39.313927, 47.987530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011375, 38.960873, 48.023811>,  <38.900681, 38.749043, 48.045582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011375, 38.960873, 48.023811>,  <39.195869, 39.313927, 47.987530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011375, 38.960873, 48.023811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246614, -0.225728, -0.942459,
		0.852319, -0.412322, 0.321782,
		-0.461232, -0.882631, 0.090708,
		38.873005, 38.696083, 48.051025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671074, 38.803745, 47.616867>,  <39.195869, 39.313927, 47.987530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671074, 38.803745, 47.616867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304562, 38.644405, 47.633621>,  <39.084656, 38.548801, 47.643673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304562, 38.644405, 47.633621>,  <39.671074, 38.803745, 47.616867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304562, 38.644405, 47.633621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192312, -0.529241, -0.826390,
		0.351360, -0.749146, 0.561539,
		-0.916276, -0.398351, 0.041885,
		39.029678, 38.524899, 47.646187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748943, 38.024082, 47.532021>,  <39.671074, 38.803745, 47.616867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748943, 38.024082, 47.532021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387562, 38.159748, 47.427147>,  <39.170734, 38.241150, 47.364223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387562, 38.159748, 47.427147>,  <39.748943, 38.024082, 47.532021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387562, 38.159748, 47.427147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060889, -0.503863, -0.861634,
		-0.424339, -0.794411, 0.434566,
		-0.903454, 0.339165, -0.262180,
		39.116528, 38.261497, 47.348492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532257, 37.484535, 47.126869>,  <39.748943, 38.024082, 47.532021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532257, 37.484535, 47.126869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298470, 37.793732, 47.028175>,  <39.158195, 37.979248, 46.968960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298470, 37.793732, 47.028175>,  <39.532257, 37.484535, 47.126869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298470, 37.793732, 47.028175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198620, -0.431125, -0.880160,
		-0.786732, -0.465418, 0.405511,
		-0.584468, 0.772993, -0.246738,
		39.123131, 38.025631, 46.954155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988716, 37.163265, 46.696190>,  <39.532257, 37.484535, 47.126869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988716, 37.163265, 46.696190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968582, 37.555172, 46.618710>,  <38.956501, 37.790318, 46.572224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968582, 37.555172, 46.618710>,  <38.988716, 37.163265, 46.696190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968582, 37.555172, 46.618710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193982, -0.199840, -0.960435,
		-0.979713, -0.010771, 0.200117,
		-0.050336, 0.979769, -0.193697,
		38.953480, 37.849102, 46.560600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385681, 37.218002, 46.354984>,  <38.988716, 37.163265, 46.696190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385681, 37.218002, 46.354984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557652, 37.561363, 46.243046>,  <38.660831, 37.767380, 46.175880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557652, 37.561363, 46.243046>,  <38.385681, 37.218002, 46.354984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557652, 37.561363, 46.243046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226281, -0.197622, -0.953804,
		-0.874050, 0.473387, 0.109277,
		0.429923, 0.858400, -0.279850,
		38.686626, 37.818882, 46.159092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939072, 37.452522, 45.807240>,  <38.385681, 37.218002, 46.354984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939072, 37.452522, 45.807240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290974, 37.635761, 45.756355>,  <38.502113, 37.745705, 45.725826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290974, 37.635761, 45.756355>,  <37.939072, 37.452522, 45.807240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290974, 37.635761, 45.756355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018538, -0.234308, -0.971986,
		-0.475073, 0.857464, -0.197640,
		0.879751, 0.458101, -0.127209,
		38.554897, 37.773190, 45.718193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801216, 38.007103, 45.418560>,  <37.939072, 37.452522, 45.807240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801216, 38.007103, 45.418560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195179, 37.970070, 45.360069>,  <38.431557, 37.947849, 45.324974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195179, 37.970070, 45.360069>,  <37.801216, 38.007103, 45.418560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195179, 37.970070, 45.360069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158189, -0.138799, -0.977605,
		0.070218, 0.985983, -0.151351,
		0.984909, -0.092587, -0.146226,
		38.490650, 37.942295, 45.316200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014076, 38.566505, 44.924473>,  <37.801216, 38.007103, 45.418560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014076, 38.566505, 44.924473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254215, 38.246628, 44.928024>,  <38.398300, 38.054703, 44.930157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254215, 38.246628, 44.928024>,  <38.014076, 38.566505, 44.924473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254215, 38.246628, 44.928024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081251, -0.072036, -0.994087,
		0.795601, 0.596076, -0.108222,
		0.600348, -0.799690, 0.008880,
		38.434319, 38.006721, 44.930687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414520, 38.719250, 44.326340>,  <38.014076, 38.566505, 44.924473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414520, 38.719250, 44.326340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452568, 38.327644, 44.398438>,  <38.475399, 38.092682, 44.441696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452568, 38.327644, 44.398438>,  <38.414520, 38.719250, 44.326340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452568, 38.327644, 44.398438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124563, -0.191351, -0.973586,
		0.987642, 0.070157, -0.140151,
		0.095122, -0.979011, 0.180247,
		38.481106, 38.033939, 44.452511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769058, 38.540070, 43.752422>,  <38.414520, 38.719250, 44.326340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769058, 38.540070, 43.752422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641548, 38.190960, 43.900288>,  <38.565041, 37.981495, 43.989006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641548, 38.190960, 43.900288>,  <38.769058, 38.540070, 43.752422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641548, 38.190960, 43.900288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015113, -0.385282, -0.922675,
		0.947710, -0.299713, 0.109628,
		-0.318775, -0.872772, 0.369665,
		38.545914, 37.929127, 44.011189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145130, 38.163315, 43.352116>,  <38.769058, 38.540070, 43.752422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145130, 38.163315, 43.352116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851307, 37.925312, 43.482586>,  <38.675014, 37.782509, 43.560867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851307, 37.925312, 43.482586>,  <39.145130, 38.163315, 43.352116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851307, 37.925312, 43.482586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055623, -0.531876, -0.844993,
		0.676264, -0.602552, 0.423789,
		-0.734556, -0.595011, 0.326173,
		38.630939, 37.746807, 43.580437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458580, 37.478619, 43.530067>,  <39.145130, 38.163315, 43.352116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458580, 37.478619, 43.530067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066154, 37.432659, 43.467709>,  <38.830700, 37.405083, 43.430294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066154, 37.432659, 43.467709>,  <39.458580, 37.478619, 43.530067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066154, 37.432659, 43.467709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193575, -0.557051, -0.807603,
		0.005951, -0.822491, 0.568747,
		-0.981067, -0.114901, -0.155899,
		38.771835, 37.398190, 43.420940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477757, 36.914528, 43.157642>,  <39.458580, 37.478619, 43.530067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477757, 36.914528, 43.157642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113655, 37.072117, 43.106678>,  <38.895195, 37.166668, 43.076099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113655, 37.072117, 43.106678>,  <39.477757, 36.914528, 43.157642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113655, 37.072117, 43.106678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018624, -0.346363, -0.937916,
		-0.413644, -0.851363, 0.322614,
		-0.910248, 0.393972, -0.127415,
		38.840580, 37.190308, 43.068455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993481, 36.432529, 42.875465>,  <39.477757, 36.914528, 43.157642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993481, 36.432529, 42.875465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847466, 36.791779, 42.777382>,  <38.759857, 37.007328, 42.718533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847466, 36.791779, 42.777382>,  <38.993481, 36.432529, 42.875465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847466, 36.791779, 42.777382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048960, -0.244499, -0.968413,
		-0.929704, -0.365514, 0.045279,
		-0.365039, 0.898120, -0.245207,
		38.737953, 37.061214, 42.703819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389923, 36.279903, 42.526943>,  <38.993481, 36.432529, 42.875465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389923, 36.279903, 42.526943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488037, 36.650654, 42.413284>,  <38.546906, 36.873104, 42.345089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488037, 36.650654, 42.413284>,  <38.389923, 36.279903, 42.526943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488037, 36.650654, 42.413284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038425, -0.283578, -0.958179,
		-0.968689, 0.245946, -0.033942,
		0.245285, 0.926873, -0.284149,
		38.561623, 36.928715, 42.328041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999115, 36.388039, 41.869049>,  <38.389923, 36.279903, 42.526943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999115, 36.388039, 41.869049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281158, 36.671516, 41.859509>,  <38.450386, 36.841602, 41.853783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281158, 36.671516, 41.859509>,  <37.999115, 36.388039, 41.869049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281158, 36.671516, 41.859509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154341, -0.186218, -0.970310,
		-0.692097, 0.680494, -0.240685,
		0.705110, 0.708697, -0.023852,
		38.492691, 36.884125, 41.852352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788475, 36.883156, 41.510330>,  <37.999115, 36.388039, 41.869049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788475, 36.883156, 41.510330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184605, 36.937130, 41.497406>,  <38.422283, 36.969517, 41.489651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184605, 36.937130, 41.497406>,  <37.788475, 36.883156, 41.510330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184605, 36.937130, 41.497406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011690, -0.150909, -0.988479,
		-0.138261, 0.979295, -0.147871,
		0.990327, 0.134940, -0.032313,
		38.481701, 36.977612, 41.487713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962749, 37.058800, 40.873611>,  <37.788475, 36.883156, 41.510330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962749, 37.058800, 40.873611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328663, 36.952728, 40.995495>,  <38.548210, 36.889084, 41.068626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328663, 36.952728, 40.995495>,  <37.962749, 37.058800, 40.873611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328663, 36.952728, 40.995495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232836, -0.270257, -0.934210,
		0.330085, 0.925549, -0.185484,
		0.914785, -0.265181, 0.304708,
		38.603100, 36.873173, 41.086906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526672, 37.289478, 40.449135>,  <37.962749, 37.058800, 40.873611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526672, 37.289478, 40.449135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637012, 36.953442, 40.635960>,  <38.703217, 36.751820, 40.748055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637012, 36.953442, 40.635960>,  <38.526672, 37.289478, 40.449135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637012, 36.953442, 40.635960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045137, -0.474063, -0.879334,
		0.960140, 0.263648, -0.092851,
		0.275851, -0.840092, 0.467067,
		38.719769, 36.701412, 40.776081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128902, 37.111580, 40.058609>,  <38.526672, 37.289478, 40.449135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128902, 37.111580, 40.058609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996281, 36.788788, 40.254101>,  <38.916710, 36.595112, 40.371395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996281, 36.788788, 40.254101>,  <39.128902, 37.111580, 40.058609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996281, 36.788788, 40.254101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184397, -0.563471, -0.805294,
		0.925242, -0.176875, 0.335623,
		-0.331550, -0.806979, 0.488732,
		38.896816, 36.546696, 40.400719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473015, 36.601601, 39.779644>,  <39.128902, 37.111580, 40.058609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473015, 36.601601, 39.779644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213188, 36.377922, 39.985699>,  <39.057293, 36.243713, 40.109333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213188, 36.377922, 39.985699>,  <39.473015, 36.601601, 39.779644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213188, 36.377922, 39.985699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005165, -0.674274, -0.738463,
		0.760290, -0.482339, 0.435095,
		-0.649563, -0.559199, 0.515135,
		39.018318, 36.210163, 40.140240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829178, 35.884529, 39.950424>,  <39.473015, 36.601601, 39.779644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829178, 35.884529, 39.950424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431404, 35.889118, 39.908527>,  <39.192741, 35.891872, 39.883389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431404, 35.889118, 39.908527>,  <39.829178, 35.884529, 39.950424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431404, 35.889118, 39.908527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065216, -0.713755, -0.697353,
		-0.082755, -0.700302, 0.709034,
		-0.994434, 0.011469, -0.104738,
		39.133076, 35.892559, 39.877106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703629, 35.252205, 39.685989>,  <39.829178, 35.884529, 39.950424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703629, 35.252205, 39.685989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360210, 35.434093, 39.591225>,  <39.154160, 35.543224, 39.534367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360210, 35.434093, 39.591225>,  <39.703629, 35.252205, 39.685989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360210, 35.434093, 39.591225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026487, -0.500765, -0.865178,
		-0.512055, -0.736519, 0.441973,
		-0.858544, 0.454725, -0.236911,
		39.102646, 35.570511, 39.520153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274685, 34.708763, 39.354202>,  <39.703629, 35.252205, 39.685989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274685, 34.708763, 39.354202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079174, 35.043335, 39.255013>,  <38.961868, 35.244076, 39.195499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079174, 35.043335, 39.255013>,  <39.274685, 34.708763, 39.354202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079174, 35.043335, 39.255013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301470, -0.428663, -0.851683,
		-0.818666, -0.341526, 0.461678,
		-0.488776, 0.836425, -0.247972,
		38.932541, 35.294262, 39.180622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637421, 34.499557, 39.002636>,  <39.274685, 34.708763, 39.354202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637421, 34.499557, 39.002636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700764, 34.877033, 38.886448>,  <38.738770, 35.103519, 38.816734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700764, 34.877033, 38.886448>,  <38.637421, 34.499557, 39.002636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700764, 34.877033, 38.886448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278326, -0.239593, -0.930123,
		-0.947343, 0.228135, 0.224713,
		0.158354, 0.943689, -0.290472,
		38.748268, 35.160141, 38.799305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140259, 34.539612, 38.428562>,  <38.637421, 34.499557, 39.002636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140259, 34.539612, 38.428562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367027, 34.865097, 38.377239>,  <38.503090, 35.060390, 38.346447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367027, 34.865097, 38.377239>,  <38.140259, 34.539612, 38.428562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367027, 34.865097, 38.377239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039649, -0.128622, -0.990901,
		-0.822815, 0.566853, -0.040655,
		0.566924, 0.813717, -0.128307,
		38.537106, 35.109211, 38.338749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821991, 34.933922, 37.949017>,  <38.140259, 34.539612, 38.428562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821991, 34.933922, 37.949017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209145, 35.034039, 37.958393>,  <38.441437, 35.094109, 37.964020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209145, 35.034039, 37.958393>,  <37.821991, 34.933922, 37.949017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209145, 35.034039, 37.958393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030348, -0.023785, -0.999256,
		-0.249547, 0.967879, -0.030617,
		0.967887, 0.250290, 0.023438,
		38.499512, 35.109127, 37.965424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003387, 35.530815, 37.434944>,  <37.821991, 34.933922, 37.949017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003387, 35.530815, 37.434944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341370, 35.326626, 37.498791>,  <38.544159, 35.204113, 37.537098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341370, 35.326626, 37.498791>,  <38.003387, 35.530815, 37.434944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341370, 35.326626, 37.498791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221253, 0.061913, -0.973249,
		0.486934, 0.857663, 0.165257,
		0.844951, -0.510472, 0.159613,
		38.594856, 35.173485, 37.546673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366653, 35.710094, 36.828388>,  <38.003387, 35.530815, 37.434944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366653, 35.710094, 36.828388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608040, 35.432133, 36.984818>,  <38.752872, 35.265354, 37.078674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608040, 35.432133, 36.984818>,  <38.366653, 35.710094, 36.828388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608040, 35.432133, 36.984818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360662, -0.199534, -0.911103,
		0.711161, 0.690865, 0.130213,
		0.603468, -0.694904, 0.391069,
		38.789082, 35.223663, 37.102139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943165, 35.733593, 36.467270>,  <38.366653, 35.710094, 36.828388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943165, 35.733593, 36.467270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975121, 35.374096, 36.639729>,  <38.994293, 35.158398, 36.743202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975121, 35.374096, 36.639729>,  <38.943165, 35.733593, 36.467270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975121, 35.374096, 36.639729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379125, -0.372624, -0.847004,
		0.921890, 0.231128, 0.310964,
		0.079893, -0.898739, 0.431145,
		38.999088, 35.104473, 36.769073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587517, 35.581013, 36.409222>,  <38.943165, 35.733593, 36.467270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587517, 35.581013, 36.409222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367508, 35.248177, 36.437801>,  <39.235504, 35.048473, 36.454948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367508, 35.248177, 36.437801>,  <39.587517, 35.581013, 36.409222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367508, 35.248177, 36.437801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458133, -0.372146, -0.807231,
		0.698277, -0.411261, 0.585896,
		-0.550021, -0.832089, 0.071449,
		39.202503, 34.998550, 36.459236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997185, 35.149967, 36.294235>,  <39.587517, 35.581013, 36.409222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997185, 35.149967, 36.294235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651878, 34.958469, 36.230251>,  <39.444695, 34.843571, 36.191860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651878, 34.958469, 36.230251>,  <39.997185, 35.149967, 36.294235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651878, 34.958469, 36.230251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383487, -0.415997, -0.824551,
		0.328203, -0.773145, 0.542705,
		-0.863261, -0.478741, -0.159960,
		39.392899, 34.814846, 36.182262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273594, 34.589016, 35.996578>,  <39.997185, 35.149967, 36.294235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273594, 34.589016, 35.996578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878952, 34.559994, 35.938137>,  <39.642166, 34.542580, 35.903072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878952, 34.559994, 35.938137>,  <40.273594, 34.589016, 35.996578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878952, 34.559994, 35.938137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159540, -0.615912, -0.771491,
		-0.034013, -0.784467, 0.619237,
		-0.986605, -0.072553, -0.146103,
		39.582970, 34.538227, 35.894306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082359, 33.873409, 35.905354>,  <40.273594, 34.589016, 35.996578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082359, 33.873409, 35.905354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788101, 34.070389, 35.719311>,  <39.611546, 34.188576, 35.607685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788101, 34.070389, 35.719311>,  <40.082359, 33.873409, 35.905354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788101, 34.070389, 35.719311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183443, -0.516141, -0.836629,
		-0.652055, -0.700781, 0.289360,
		-0.735644, 0.492447, -0.465106,
		39.567410, 34.218124, 35.579781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748249, 33.333946, 35.473312>,  <40.082359, 33.873409, 35.905354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748249, 33.333946, 35.473312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658669, 33.690357, 35.315369>,  <39.604919, 33.904205, 35.220604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658669, 33.690357, 35.315369>,  <39.748249, 33.333946, 35.473312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658669, 33.690357, 35.315369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392917, -0.288218, -0.873239,
		-0.891886, -0.350711, -0.285552,
		-0.223954, 0.891028, -0.394858,
		39.591484, 33.957664, 35.196911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508160, 33.248402, 34.719204>,  <39.748249, 33.333946, 35.473312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508160, 33.248402, 34.719204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676369, 33.608524, 34.764122>,  <39.777294, 33.824596, 34.791073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676369, 33.608524, 34.764122>,  <39.508160, 33.248402, 34.719204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676369, 33.608524, 34.764122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475739, -0.113424, -0.872243,
		-0.772547, 0.420223, -0.476007,
		0.420527, 0.900304, 0.112291,
		39.802528, 33.878616, 34.797810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157661, 33.728909, 34.332676>,  <39.508160, 33.248402, 34.719204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157661, 33.728909, 34.332676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543507, 33.819370, 34.386898>,  <39.775013, 33.873650, 34.419430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543507, 33.819370, 34.386898>,  <39.157661, 33.728909, 34.332676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543507, 33.819370, 34.386898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163630, -0.110342, -0.980332,
		-0.206751, 0.967821, -0.143443,
		0.964614, 0.226156, 0.135551,
		39.832890, 33.887218, 34.427563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444744, 34.215679, 33.881329>,  <39.157661, 33.728909, 34.332676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444744, 34.215679, 33.881329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738838, 33.967072, 33.989513>,  <39.915295, 33.817909, 34.054424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738838, 33.967072, 33.989513>,  <39.444744, 34.215679, 33.881329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738838, 33.967072, 33.989513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146719, -0.243635, -0.958705,
		0.661744, 0.744555, -0.087941,
		0.735234, -0.621515, 0.270464,
		39.959408, 33.780617, 34.070652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142624, 34.444759, 33.601288>,  <39.444744, 34.215679, 33.881329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142624, 34.444759, 33.601288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142956, 34.051880, 33.676418>,  <40.143154, 33.816151, 33.721497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142956, 34.051880, 33.676418>,  <40.142624, 34.444759, 33.601288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142956, 34.051880, 33.676418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290540, -0.179487, -0.939878,
		0.956862, 0.055347, 0.285221,
		0.000826, -0.982202, 0.187824,
		40.143204, 33.757217, 33.732765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865158, 34.224216, 33.411339>,  <40.142624, 34.444759, 33.601288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865158, 34.224216, 33.411339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596043, 33.929062, 33.432827>,  <40.434574, 33.751968, 33.445721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596043, 33.929062, 33.432827>,  <40.865158, 34.224216, 33.411339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596043, 33.929062, 33.432827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358834, -0.388951, -0.848502,
		0.646992, -0.551582, 0.526459,
		-0.672785, -0.737886, 0.053722,
		40.394207, 33.707695, 33.448944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648705, 34.584091, 33.307270>,  <40.865158, 34.224216, 33.411339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648705, 34.584091, 33.307270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592724, 34.939297, 33.132072>,  <41.559135, 35.152420, 33.026955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592724, 34.939297, 33.132072>,  <41.648705, 34.584091, 33.307270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592724, 34.939297, 33.132072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879986, -0.091234, -0.466156,
		-0.453913, -0.450671, -0.768673,
		-0.139954, 0.888016, -0.437996,
		41.550739, 35.205700, 33.000675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812809, 34.500195, 32.625088>,  <41.648705, 34.584091, 33.307270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812809, 34.500195, 32.625088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858376, 34.892525, 32.688328>,  <41.885715, 35.127922, 32.726273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858376, 34.892525, 32.688328>,  <41.812809, 34.500195, 32.625088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858376, 34.892525, 32.688328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940076, -0.054941, -0.336508,
		-0.321371, 0.186962, -0.928313,
		0.113917, 0.980829, 0.158102,
		41.892551, 35.186775, 32.735760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738926, 33.886238, 32.283215>,  <41.812809, 34.500195, 32.625088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738926, 33.886238, 32.283215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131237, 33.936230, 32.343155>,  <42.366623, 33.966225, 32.379120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131237, 33.936230, 32.343155>,  <41.738926, 33.886238, 32.283215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131237, 33.936230, 32.343155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062607, -0.928909, 0.364977,
		0.184809, -0.348580, -0.918879,
		0.980778, 0.124980, 0.149847,
		42.425472, 33.973724, 32.388107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075615, 33.461845, 31.810795>,  <41.738926, 33.886238, 32.283215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075615, 33.461845, 31.810795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293510, 33.530632, 32.139107>,  <42.424248, 33.571903, 32.336094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293510, 33.530632, 32.139107>,  <42.075615, 33.461845, 31.810795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293510, 33.530632, 32.139107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084305, -0.962559, 0.257628,
		0.834355, -0.209537, -0.509849,
		0.544743, 0.171971, 0.820781,
		42.456932, 33.582222, 32.385342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584866, 32.843868, 31.898193>,  <42.075615, 33.461845, 31.810795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584866, 32.843868, 31.898193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577042, 33.027660, 32.253384>,  <42.572346, 33.137936, 32.466499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577042, 33.027660, 32.253384>,  <42.584866, 32.843868, 31.898193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577042, 33.027660, 32.253384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002542, -0.888165, 0.459518,
		0.999806, 0.006731, 0.018539,
		-0.019559, 0.459476, 0.887975,
		42.571175, 33.165504, 32.519775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984264, 32.406277, 32.334721>,  <42.584866, 32.843868, 31.898193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984264, 32.406277, 32.334721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798080, 32.631901, 32.607540>,  <42.686371, 32.767273, 32.771233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798080, 32.631901, 32.607540>,  <42.984264, 32.406277, 32.334721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798080, 32.631901, 32.607540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149009, -0.809555, 0.567818,
		0.872437, 0.162664, 0.460863,
		-0.465458, 0.564058, 0.682047,
		42.658443, 32.801117, 32.812153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317749, 32.227692, 32.972382>,  <42.984264, 32.406277, 32.334721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317749, 32.227692, 32.972382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968719, 32.391949, 33.078201>,  <42.759300, 32.490501, 33.141693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968719, 32.391949, 33.078201>,  <43.317749, 32.227692, 32.972382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968719, 32.391949, 33.078201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148389, -0.738817, 0.657366,
		0.465398, 0.534344, 0.705607,
		-0.872574, 0.410641, 0.264553,
		42.706947, 32.515141, 33.157566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452549, 32.255192, 33.617691>,  <43.317749, 32.227692, 32.972382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452549, 32.255192, 33.617691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055786, 32.290039, 33.580761>,  <42.817726, 32.310947, 33.558601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055786, 32.290039, 33.580761>,  <43.452549, 32.255192, 33.617691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055786, 32.290039, 33.580761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125834, -0.579149, 0.805452,
		0.016696, 0.810554, 0.585426,
		-0.991911, 0.087114, -0.092326,
		42.758213, 32.316174, 33.553062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116993, 32.297508, 34.213181>,  <43.452549, 32.255192, 33.617691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116993, 32.297508, 34.213181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803082, 32.179581, 33.995117>,  <42.614735, 32.108822, 33.864277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803082, 32.179581, 33.995117>,  <43.116993, 32.297508, 34.213181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803082, 32.179581, 33.995117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181768, -0.731446, 0.657227,
		-0.592519, 0.614872, 0.520436,
		-0.784781, -0.294821, -0.545160,
		42.567646, 32.091133, 33.831570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524761, 32.243385, 34.690487>,  <43.116993, 32.297508, 34.213181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524761, 32.243385, 34.690487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410686, 32.019722, 34.379097>,  <42.342243, 31.885525, 34.192265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410686, 32.019722, 34.379097>,  <42.524761, 32.243385, 34.690487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410686, 32.019722, 34.379097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250583, -0.740455, 0.623646,
		-0.925137, 0.372926, 0.071052,
		-0.285184, -0.559154, -0.778471,
		42.325130, 31.851976, 34.145557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887012, 31.893696, 34.864346>,  <42.524761, 32.243385, 34.690487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887012, 31.893696, 34.864346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034775, 31.663681, 34.572353>,  <42.123432, 31.525673, 34.397160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034775, 31.663681, 34.572353>,  <41.887012, 31.893696, 34.864346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034775, 31.663681, 34.572353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300898, -0.817241, 0.491505,
		-0.879204, 0.038085, -0.474922,
		0.369406, -0.575036, -0.729981,
		42.145596, 31.491171, 34.353359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253632, 31.577133, 34.521141>,  <41.887012, 31.893696, 34.864346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253632, 31.577133, 34.521141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577835, 31.350634, 34.461231>,  <41.772358, 31.214733, 34.425285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577835, 31.350634, 34.461231>,  <41.253632, 31.577133, 34.521141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577835, 31.350634, 34.461231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478330, -0.787479, 0.388686,
		-0.338038, -0.243392, -0.909115,
		0.810512, -0.566248, -0.149776,
		41.820988, 31.180759, 34.416298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959751, 30.920973, 34.452488>,  <41.253632, 31.577133, 34.521141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959751, 30.920973, 34.452488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338081, 30.812582, 34.524025>,  <41.565079, 30.747547, 34.566948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338081, 30.812582, 34.524025>,  <40.959751, 30.920973, 34.452488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338081, 30.812582, 34.524025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324508, -0.771317, 0.547508,
		-0.010413, -0.575885, -0.817465,
		0.945826, -0.270975, 0.178847,
		41.621830, 30.731289, 34.577679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893684, 30.226198, 34.593288>,  <40.959751, 30.920973, 34.452488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893684, 30.226198, 34.593288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276512, 30.251198, 34.706497>,  <41.506210, 30.266197, 34.774422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276512, 30.251198, 34.706497>,  <40.893684, 30.226198, 34.593288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276512, 30.251198, 34.706497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116292, -0.811625, 0.572487,
		0.265491, -0.580826, -0.769517,
		0.957074, 0.062501, 0.283025,
		41.563633, 30.269949, 34.791405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180515, 29.665958, 34.322571>,  <40.893684, 30.226198, 34.593288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180515, 29.665958, 34.322571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417679, 29.783190, 34.622589>,  <41.559975, 29.853529, 34.802601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417679, 29.783190, 34.622589>,  <41.180515, 29.665958, 34.322571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417679, 29.783190, 34.622589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014988, -0.927241, 0.374166,
		0.805133, -0.233087, -0.545373,
		0.592906, 0.293079, 0.750045,
		41.595551, 29.871113, 34.847603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720871, 29.208260, 34.283566>,  <41.180515, 29.665958, 34.322571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720871, 29.208260, 34.283566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660023, 29.364775, 34.646610>,  <41.623516, 29.458685, 34.864437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660023, 29.364775, 34.646610>,  <41.720871, 29.208260, 34.283566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660023, 29.364775, 34.646610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066214, -0.920267, 0.385649,
		0.986142, -0.001433, 0.165896,
		-0.152116, 0.391289, 0.907609,
		41.614388, 29.482161, 34.918892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101093, 28.814671, 34.696953>,  <41.720871, 29.208260, 34.283566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101093, 28.814671, 34.696953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845139, 29.005751, 34.937733>,  <41.691566, 29.120399, 35.082203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845139, 29.005751, 34.937733>,  <42.101093, 28.814671, 34.696953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845139, 29.005751, 34.937733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136593, -0.841544, 0.522635,
		0.756232, 0.252204, 0.603743,
		-0.639887, 0.477700, 0.601953,
		41.653172, 29.149061, 35.118320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356552, 28.701956, 35.299824>,  <42.101093, 28.814671, 34.696953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356552, 28.701956, 35.299824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962646, 28.751177, 35.348988>,  <41.726303, 28.780708, 35.378487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962646, 28.751177, 35.348988>,  <42.356552, 28.701956, 35.299824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962646, 28.751177, 35.348988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024608, -0.798180, 0.601916,
		0.172173, 0.589718, 0.789043,
		-0.984759, 0.123051, 0.122913,
		41.667217, 28.788092, 35.385860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262272, 28.529331, 35.976112>,  <42.356552, 28.701956, 35.299824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262272, 28.529331, 35.976112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885925, 28.554712, 35.843002>,  <41.660118, 28.569941, 35.763138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885925, 28.554712, 35.843002>,  <42.262272, 28.529331, 35.976112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885925, 28.554712, 35.843002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263886, -0.753253, 0.602473,
		-0.212436, 0.654663, 0.725456,
		-0.940869, 0.063451, -0.332775,
		41.603664, 28.573748, 35.743172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842037, 28.386240, 36.579651>,  <42.262272, 28.529331, 35.976112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842037, 28.386240, 36.579651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631439, 28.322762, 36.245556>,  <41.505081, 28.284676, 36.045097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631439, 28.322762, 36.245556>,  <41.842037, 28.386240, 36.579651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631439, 28.322762, 36.245556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278020, -0.896273, 0.345543,
		-0.803436, 0.414138, 0.427762,
		-0.526494, -0.158695, -0.835236,
		41.473492, 28.275152, 35.994984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298416, 28.147814, 36.840218>,  <41.842037, 28.386240, 36.579651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298416, 28.147814, 36.840218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273720, 28.009874, 36.465569>,  <41.258900, 27.927111, 36.240780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273720, 28.009874, 36.465569>,  <41.298416, 28.147814, 36.840218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273720, 28.009874, 36.465569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299506, -0.888766, 0.346973,
		-0.952095, 0.301948, -0.048409,
		-0.061743, -0.344850, -0.936625,
		41.255196, 27.906420, 36.184582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721718, 27.686298, 36.901253>,  <41.298416, 28.147814, 36.840218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721718, 27.686298, 36.901253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895367, 27.605648, 36.550053>,  <40.999554, 27.557259, 36.339333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895367, 27.605648, 36.550053>,  <40.721718, 27.686298, 36.901253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895367, 27.605648, 36.550053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135012, -0.978186, 0.157875,
		-0.890681, 0.050005, -0.451871,
		0.434119, -0.201624, -0.878003,
		41.025604, 27.545160, 36.286652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206211, 27.223593, 36.482014>,  <40.721718, 27.686298, 36.901253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206211, 27.223593, 36.482014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569244, 27.167332, 36.323765>,  <40.787064, 27.133575, 36.228817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569244, 27.167332, 36.323765>,  <40.206211, 27.223593, 36.482014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569244, 27.167332, 36.323765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113392, -0.989319, 0.091593,
		-0.404278, -0.038267, -0.913835,
		0.907580, -0.140651, -0.395621,
		40.841518, 27.125137, 36.205078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168724, 26.726580, 36.020744>,  <40.206211, 27.223593, 36.482014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168724, 26.726580, 36.020744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534000, 26.708801, 36.182785>,  <40.753166, 26.698133, 36.280010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534000, 26.708801, 36.182785>,  <40.168724, 26.726580, 36.020744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534000, 26.708801, 36.182785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103775, -0.986628, 0.125684,
		0.394099, -0.156813, -0.905591,
		0.913190, -0.044446, 0.405103,
		40.807957, 26.695467, 36.304317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441853, 26.016602, 35.758286>,  <40.168724, 26.726580, 36.020744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441853, 26.016602, 35.758286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617344, 26.141300, 36.095409>,  <40.722637, 26.216120, 36.297684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617344, 26.141300, 36.095409>,  <40.441853, 26.016602, 35.758286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617344, 26.141300, 36.095409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040283, -0.930130, 0.365015,
		0.897718, -0.194092, -0.395513,
		0.438725, 0.311748, 0.842813,
		40.748962, 26.234825, 36.348251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309517, 25.487579, 36.300961>,  <40.441853, 26.016602, 35.758286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309517, 25.487579, 36.300961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687057, 25.609907, 36.350964>,  <40.913582, 25.683304, 36.380966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687057, 25.609907, 36.350964>,  <40.309517, 25.487579, 36.300961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687057, 25.609907, 36.350964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188978, -0.810095, 0.555007,
		0.270998, -0.500218, -0.822400,
		0.943847, 0.305822, 0.125004,
		40.970211, 25.701654, 36.388466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748562, 25.368525, 35.737667>,  <40.309517, 25.487579, 36.300961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748562, 25.368525, 35.737667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082397, 25.165815, 35.651276>,  <41.282700, 25.044189, 35.599442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082397, 25.165815, 35.651276>,  <40.748562, 25.368525, 35.737667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082397, 25.165815, 35.651276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545836, 0.813664, 0.200034,
		0.074361, -0.284834, 0.955688,
		0.834586, -0.506774, -0.215978,
		41.332771, 25.013783, 35.586483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264305, 25.242123, 36.353195>,  <40.748562, 25.368525, 35.737667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264305, 25.242123, 36.353195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447495, 25.265518, 35.998379>,  <41.557407, 25.279556, 35.785488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447495, 25.265518, 35.998379>,  <41.264305, 25.242123, 36.353195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447495, 25.265518, 35.998379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505154, 0.803951, 0.313818,
		0.731493, -0.591812, 0.338639,
		0.457971, 0.058491, -0.887041,
		41.584885, 25.283066, 35.732265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068943, 25.356628, 36.408703>,  <41.264305, 25.242123, 36.353195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068943, 25.356628, 36.408703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940453, 25.487034, 36.053055>,  <41.863358, 25.565277, 35.839668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940453, 25.487034, 36.053055>,  <42.068943, 25.356628, 36.408703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940453, 25.487034, 36.053055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450256, 0.878544, 0.159467,
		0.833117, -0.349106, -0.429000,
		-0.321225, 0.326015, -0.889117,
		41.844086, 25.584839, 35.786320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618557, 25.728020, 36.069798>,  <42.068943, 25.356628, 36.408703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618557, 25.728020, 36.069798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284931, 25.883799, 35.913506>,  <42.084755, 25.977266, 35.819729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284931, 25.883799, 35.913506>,  <42.618557, 25.728020, 36.069798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284931, 25.883799, 35.913506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353815, 0.921044, 0.162764,
		0.423268, -0.002491, -0.906001,
		-0.834062, 0.389450, -0.390730,
		42.034714, 26.000633, 35.796288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883274, 26.295547, 35.725288>,  <42.618557, 25.728020, 36.069798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883274, 26.295547, 35.725288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505314, 26.346006, 35.846115>,  <42.278538, 26.376282, 35.918610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505314, 26.346006, 35.846115>,  <42.883274, 26.295547, 35.725288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505314, 26.346006, 35.846115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202991, 0.949726, 0.238360,
		-0.256809, 0.286543, -0.923007,
		-0.944904, 0.126149, 0.302063,
		42.221844, 26.383852, 35.936733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165344, 26.747597, 36.250999>,  <42.883274, 26.295547, 35.725288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165344, 26.747597, 36.250999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286613, 26.456020, 36.005486>,  <43.359375, 26.281075, 35.858177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286613, 26.456020, 36.005486>,  <43.165344, 26.747597, 36.250999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286613, 26.456020, 36.005486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762017, 0.572204, -0.303170,
		0.572204, -0.375803, 0.728941,
		0.303170, -0.728941, -0.613786,
		43.377563, 26.237339, 35.821350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892147, 26.497694, 36.347450>,  <43.165344, 26.747597, 36.250999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892147, 26.497694, 36.347450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798592, 26.467041, 35.959755>,  <43.742458, 26.448650, 35.727139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798592, 26.467041, 35.959755>,  <43.892147, 26.497694, 36.347450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798592, 26.467041, 35.959755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734051, 0.639775, -0.227720,
		0.637543, -0.764733, -0.093395,
		-0.233897, -0.076625, -0.969237,
		43.728424, 26.444052, 35.668983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446796, 26.338802, 35.892548>,  <43.892147, 26.497694, 36.347450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446796, 26.338802, 35.892548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170193, 26.549911, 35.695259>,  <44.004230, 26.676577, 35.576885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170193, 26.549911, 35.695259>,  <44.446796, 26.338802, 35.892548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170193, 26.549911, 35.695259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704444, 0.643839, -0.298713,
		0.159901, -0.554009, -0.817010,
		-0.691513, 0.527773, -0.493219,
		43.962738, 26.708244, 35.547295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787151, 26.663597, 35.303074>,  <44.446796, 26.338802, 35.892548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787151, 26.663597, 35.303074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471455, 26.901361, 35.364750>,  <44.282036, 27.044020, 35.401756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471455, 26.901361, 35.364750>,  <44.787151, 26.663597, 35.303074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471455, 26.901361, 35.364750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531732, 0.787111, -0.312596,
		-0.307179, -0.164724, -0.937287,
		-0.789241, 0.594409, 0.154195,
		44.234684, 27.079683, 35.411007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785343, 27.111990, 34.732342>,  <44.787151, 26.663597, 35.303074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785343, 27.111990, 34.732342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559746, 27.291632, 35.009533>,  <44.424389, 27.399416, 35.175850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559746, 27.291632, 35.009533>,  <44.785343, 27.111990, 34.732342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559746, 27.291632, 35.009533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271884, 0.893380, -0.357702,
		-0.779740, -0.013330, -0.625961,
		-0.563990, 0.449104, 0.692980,
		44.390549, 27.426363, 35.217426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434719, 27.645767, 34.388645>,  <44.785343, 27.111990, 34.732342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434719, 27.645767, 34.388645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397858, 27.765434, 34.768539>,  <44.375740, 27.837234, 34.996475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397858, 27.765434, 34.768539>,  <44.434719, 27.645767, 34.388645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397858, 27.765434, 34.768539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214595, 0.937353, -0.274442,
		-0.972345, 0.178518, -0.150585,
		-0.092158, 0.299167, 0.949740,
		44.370209, 27.855185, 35.053463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918633, 28.174604, 34.445442>,  <44.434719, 27.645767, 34.388645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918633, 28.174604, 34.445442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132412, 28.229050, 34.779110>,  <44.260681, 28.261717, 34.979309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132412, 28.229050, 34.779110>,  <43.918633, 28.174604, 34.445442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132412, 28.229050, 34.779110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306870, 0.888350, -0.341563,
		-0.787524, 0.438530, 0.433010,
		0.534450, 0.136111, 0.834168,
		44.292747, 28.269882, 35.029362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768459, 28.767664, 34.666752>,  <43.918633, 28.174604, 34.445442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768459, 28.767664, 34.666752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106247, 28.750961, 34.880341>,  <44.308918, 28.740940, 35.008495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106247, 28.750961, 34.880341>,  <43.768459, 28.767664, 34.666752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106247, 28.750961, 34.880341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150762, 0.975178, -0.162169,
		-0.513950, 0.217450, 0.829802,
		0.844468, -0.041756, 0.533976,
		44.359589, 28.738434, 35.040535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743942, 29.386742, 35.169243>,  <43.768459, 28.767664, 34.666752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743942, 29.386742, 35.169243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118614, 29.248449, 35.146935>,  <44.343418, 29.165474, 35.133549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118614, 29.248449, 35.146935>,  <43.743942, 29.386742, 35.169243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118614, 29.248449, 35.146935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336225, 0.932362, -0.132871,
		0.097933, 0.105706, 0.989563,
		0.936676, -0.345729, -0.055768,
		44.399616, 29.144732, 35.130203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170898, 29.824785, 35.675903>,  <43.743942, 29.386742, 35.169243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170898, 29.824785, 35.675903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400372, 29.678177, 35.382904>,  <44.538055, 29.590212, 35.207104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400372, 29.678177, 35.382904>,  <44.170898, 29.824785, 35.675903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400372, 29.678177, 35.382904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342319, 0.919735, -0.192107,
		0.744113, -0.140538, 0.653105,
		0.573685, -0.366520, -0.732495,
		44.572475, 29.568220, 35.163155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742695, 30.235157, 35.784225>,  <44.170898, 29.824785, 35.675903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742695, 30.235157, 35.784225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764061, 30.096399, 35.409672>,  <44.776878, 30.013145, 35.184940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764061, 30.096399, 35.409672>,  <44.742695, 30.235157, 35.784225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764061, 30.096399, 35.409672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290005, 0.902694, -0.317869,
		0.955534, -0.254577, 0.148815,
		0.053412, -0.346892, -0.936383,
		44.780087, 29.992332, 35.128757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289280, 30.508783, 35.569149>,  <44.742695, 30.235157, 35.784225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289280, 30.508783, 35.569149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143318, 30.398445, 35.213451>,  <45.055740, 30.332243, 35.000034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143318, 30.398445, 35.213451>,  <45.289280, 30.508783, 35.569149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143318, 30.398445, 35.213451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363021, 0.837357, -0.408715,
		0.857358, -0.471955, -0.205414,
		-0.364900, -0.275846, -0.889245,
		45.033848, 30.315691, 34.946678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892803, 30.629938, 35.073956>,  <45.289280, 30.508783, 35.569149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892803, 30.629938, 35.073956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556843, 30.614859, 34.857384>,  <45.355267, 30.605812, 34.727440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556843, 30.614859, 34.857384>,  <45.892803, 30.629938, 35.073956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556843, 30.614859, 34.857384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265759, 0.841241, -0.470835,
		0.473222, -0.539344, -0.696540,
		-0.839900, -0.037698, -0.541429,
		45.304874, 30.603550, 34.694954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071209, 30.728262, 34.371803>,  <45.892803, 30.629938, 35.073956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071209, 30.728262, 34.371803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681705, 30.815042, 34.399315>,  <45.448006, 30.867111, 34.415821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681705, 30.815042, 34.399315>,  <46.071209, 30.728262, 34.371803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681705, 30.815042, 34.399315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150559, 0.840681, -0.520179,
		-0.170677, -0.496172, -0.851283,
		-0.973756, 0.216952, 0.068782,
		45.389580, 30.880129, 34.419949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884071, 30.955763, 33.682560>,  <46.071209, 30.728262, 34.371803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884071, 30.955763, 33.682560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585194, 31.112806, 33.897060>,  <45.405869, 31.207033, 34.025761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585194, 31.112806, 33.897060>,  <45.884071, 30.955763, 33.682560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585194, 31.112806, 33.897060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106964, 0.867384, -0.486007,
		-0.655945, -0.305781, -0.690097,
		-0.747191, 0.392610, 0.536249,
		45.361038, 31.230589, 34.057934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390430, 31.271481, 33.208435>,  <45.884071, 30.955763, 33.682560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390430, 31.271481, 33.208435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247059, 31.443079, 33.540096>,  <45.161034, 31.546038, 33.739094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247059, 31.443079, 33.540096>,  <45.390430, 31.271481, 33.208435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247059, 31.443079, 33.540096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061006, 0.897028, -0.437743,
		-0.931561, -0.106318, -0.347694,
		-0.358431, 0.428996, 0.829150,
		45.139530, 31.571777, 33.788841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762554, 31.678261, 32.991890>,  <45.390430, 31.271481, 33.208435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762554, 31.678261, 32.991890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918110, 31.830484, 33.327496>,  <45.011444, 31.921818, 33.528858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918110, 31.830484, 33.327496>,  <44.762554, 31.678261, 32.991890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918110, 31.830484, 33.327496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151416, 0.871912, -0.465664,
		-0.908757, 0.308131, 0.281454,
		0.388889, 0.380558, 0.839012,
		45.034775, 31.944653, 33.579201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405670, 32.270947, 33.045681>,  <44.762554, 31.678261, 32.991890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405670, 32.270947, 33.045681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713169, 32.332500, 33.293987>,  <44.897667, 32.369434, 33.442970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713169, 32.332500, 33.293987>,  <44.405670, 32.270947, 33.045681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713169, 32.332500, 33.293987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000839, 0.970378, -0.241592,
		-0.639551, 0.186245, 0.745847,
		0.768749, 0.153885, 0.620762,
		44.943794, 32.378666, 33.480217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240276, 32.940014, 33.368423>,  <44.405670, 32.270947, 33.045681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240276, 32.940014, 33.368423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621479, 32.954323, 33.488754>,  <44.850201, 32.962906, 33.560955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621479, 32.954323, 33.488754>,  <44.240276, 32.940014, 33.368423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621479, 32.954323, 33.488754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105006, 0.892447, -0.438762,
		-0.284171, 0.449732, 0.846752,
		0.953006, 0.035770, 0.300832,
		44.907379, 32.965054, 33.579002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340858, 33.610477, 33.765388>,  <44.240276, 32.940014, 33.368423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340858, 33.610477, 33.765388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687138, 33.465359, 33.627430>,  <44.894905, 33.378288, 33.544655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687138, 33.465359, 33.627430>,  <44.340858, 33.610477, 33.765388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687138, 33.465359, 33.627430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261075, 0.915098, -0.307304,
		0.427100, 0.175988, 0.886912,
		0.865693, -0.362801, -0.344893,
		44.946846, 33.356518, 33.523964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912834, 34.096233, 33.957401>,  <44.340858, 33.610477, 33.765388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912834, 34.096233, 33.957401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027195, 33.907475, 33.623798>,  <45.095814, 33.794220, 33.423637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027195, 33.907475, 33.623798>,  <44.912834, 34.096233, 33.957401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027195, 33.907475, 33.623798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420312, 0.843905, -0.333411,
		0.861160, -0.255219, 0.439622,
		0.285906, -0.471898, -0.834008,
		45.112968, 33.765903, 33.373596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550617, 34.314915, 33.861652>,  <44.912834, 34.096233, 33.957401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550617, 34.314915, 33.861652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361694, 34.273384, 33.511532>,  <45.248341, 34.248466, 33.301460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361694, 34.273384, 33.511532>,  <45.550617, 34.314915, 33.861652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361694, 34.273384, 33.511532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165160, 0.965025, -0.203592,
		0.865823, -0.240722, -0.438638,
		-0.472306, -0.103829, -0.875298,
		45.220001, 34.242237, 33.248943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086231, 34.766769, 34.138676>,  <45.550617, 34.314915, 33.861652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086231, 34.766769, 34.138676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457596, 34.623589, 34.098827>,  <46.680412, 34.537678, 34.074917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457596, 34.623589, 34.098827>,  <46.086231, 34.766769, 34.138676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457596, 34.623589, 34.098827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093888, -0.033403, 0.995022,
		-0.359501, -0.933141, 0.002596,
		0.928409, -0.357955, -0.099620,
		46.736118, 34.516201, 34.068943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236782, 34.112862, 34.448833>,  <46.086231, 34.766769, 34.138676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236782, 34.112862, 34.448833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543598, 34.369034, 34.464336>,  <46.727688, 34.522736, 34.473637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543598, 34.369034, 34.464336>,  <46.236782, 34.112862, 34.448833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543598, 34.369034, 34.464336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060853, 0.012484, 0.998069,
		0.638706, -0.767918, 0.048548,
		0.767041, 0.640427, 0.038756,
		46.773712, 34.561161, 34.475964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.827595, 33.912251, 34.896709>,  <46.236782, 34.112862, 34.448833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.827595, 33.912251, 34.896709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789391, 34.310181, 34.882828>,  <46.766468, 34.548939, 34.874500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789391, 34.310181, 34.882828>,  <46.827595, 33.912251, 34.896709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789391, 34.310181, 34.882828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157517, 0.019316, 0.987328,
		0.982887, 0.099765, 0.154857,
		-0.095510, 0.994824, -0.034700,
		46.760738, 34.608627, 34.872417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.226192, 34.274670, 35.330429>,  <46.827595, 33.912251, 34.896709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.226192, 34.274670, 35.330429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919697, 34.528740, 35.291576>,  <46.735798, 34.681183, 35.268265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919697, 34.528740, 35.291576>,  <47.226192, 34.274670, 35.330429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919697, 34.528740, 35.291576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052563, 0.088699, 0.994671,
		0.640403, 0.767261, -0.034578,
		-0.766239, 0.635172, -0.097133,
		46.689827, 34.719292, 35.262436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.675381, 34.917301, 35.556190>,  <47.226192, 34.274670, 35.330429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.675381, 34.917301, 35.556190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.924881, 34.978252, 35.249542>,  <48.074581, 35.014824, 35.065552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.924881, 34.978252, 35.249542>,  <47.675381, 34.917301, 35.556190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.924881, 34.978252, 35.249542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354098, -0.929480, 0.103353,
		-0.696812, -0.335927, -0.633724,
		0.623753, 0.152382, -0.766624,
		48.112007, 35.023968, 35.019554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.154575, 42.003086, 41.551857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761784, 41.932461, 41.578793>,  <37.526108, 41.890087, 41.594955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761784, 41.932461, 41.578793>,  <38.154575, 42.003086, 41.551857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761784, 41.932461, 41.578793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030839, -0.201851, -0.978931,
		0.186433, -0.963371, 0.192769,
		-0.981984, -0.176560, 0.067341,
		37.467190, 41.879494, 41.598995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072834, 41.440578, 41.252949>,  <38.154575, 42.003086, 41.551857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072834, 41.440578, 41.252949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694324, 41.568253, 41.232174>,  <37.467220, 41.644855, 41.219711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694324, 41.568253, 41.232174>,  <38.072834, 41.440578, 41.252949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694324, 41.568253, 41.232174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092489, -0.421016, -0.902325,
		-0.309867, -0.849041, 0.427916,
		-0.946270, 0.319179, -0.051932,
		37.410442, 41.664005, 41.216595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663006, 40.877724, 41.035061>,  <38.072834, 41.440578, 41.252949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663006, 40.877724, 41.035061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430840, 41.193954, 40.956982>,  <37.291538, 41.383694, 40.910133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430840, 41.193954, 40.956982>,  <37.663006, 40.877724, 41.035061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430840, 41.193954, 40.956982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209565, -0.376646, -0.902341,
		-0.786893, -0.482826, 0.384289,
		-0.580414, 0.790580, -0.195197,
		37.256714, 41.431129, 40.898422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983250, 40.611958, 40.804939>,  <37.663006, 40.877724, 41.035061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983250, 40.611958, 40.804939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017075, 40.986683, 40.669159>,  <37.037369, 41.211517, 40.587692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017075, 40.986683, 40.669159>,  <36.983250, 40.611958, 40.804939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017075, 40.986683, 40.669159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272641, -0.305912, -0.912187,
		-0.958393, 0.169683, 0.229546,
		0.084562, 0.936817, -0.339447,
		37.042442, 41.267727, 40.567326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472065, 40.604778, 40.385098>,  <36.983250, 40.611958, 40.804939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472065, 40.604778, 40.385098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692638, 40.919159, 40.273247>,  <36.824982, 41.107788, 40.206135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692638, 40.919159, 40.273247>,  <36.472065, 40.604778, 40.385098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692638, 40.919159, 40.273247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298545, -0.127072, -0.945898,
		-0.778966, 0.605085, 0.164570,
		0.551437, 0.785955, -0.279630,
		36.858070, 41.154945, 40.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992012, 40.984600, 40.113594>,  <36.472065, 40.604778, 40.385098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992012, 40.984600, 40.113594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333473, 41.115520, 39.951530>,  <36.538349, 41.194073, 39.854294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333473, 41.115520, 39.951530>,  <35.992012, 40.984600, 40.113594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333473, 41.115520, 39.951530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270044, -0.387038, -0.881633,
		-0.445375, 0.862017, -0.242009,
		0.853649, 0.327305, -0.405160,
		36.589569, 41.213711, 39.829983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927402, 41.398277, 39.528645>,  <35.992012, 40.984600, 40.113594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927402, 41.398277, 39.528645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288406, 41.239143, 39.462658>,  <36.505009, 41.143665, 39.423065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288406, 41.239143, 39.462658>,  <35.927402, 41.398277, 39.528645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288406, 41.239143, 39.462658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319029, -0.360246, -0.876609,
		0.289315, 0.843773, -0.452044,
		0.902506, -0.397832, -0.164964,
		36.559158, 41.119793, 39.413170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970608, 41.367245, 38.801506>,  <35.927402, 41.398277, 39.528645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970608, 41.367245, 38.801506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250984, 41.102245, 38.907162>,  <36.419212, 40.943245, 38.970554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250984, 41.102245, 38.907162>,  <35.970608, 41.367245, 38.801506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250984, 41.102245, 38.907162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060797, -0.424505, -0.903382,
		0.710621, 0.617161, -0.337832,
		0.700943, -0.662502, 0.264140,
		36.461266, 40.903496, 38.986404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303257, 41.299271, 38.265224>,  <35.970608, 41.367245, 38.801506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303257, 41.299271, 38.265224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454369, 40.979282, 38.451702>,  <36.545036, 40.787289, 38.563587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454369, 40.979282, 38.451702>,  <36.303257, 41.299271, 38.265224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454369, 40.979282, 38.451702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013774, -0.498594, -0.866726,
		0.925795, 0.333849, -0.177338,
		0.377775, -0.799968, 0.466194,
		36.567699, 40.739292, 38.591560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608543, 40.953163, 37.702488>,  <36.303257, 41.299271, 38.265224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608543, 40.953163, 37.702488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635994, 40.674850, 37.988476>,  <36.652466, 40.507862, 38.160069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635994, 40.674850, 37.988476>,  <36.608543, 40.953163, 37.702488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635994, 40.674850, 37.988476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159155, -0.699844, -0.696339,
		0.984865, 0.161580, 0.062707,
		0.068630, -0.695780, 0.714968,
		36.656582, 40.466118, 38.202965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339596, 40.571999, 37.773556>,  <36.608543, 40.953163, 37.702488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339596, 40.571999, 37.773556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050438, 40.323612, 37.894764>,  <36.876945, 40.174580, 37.967491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050438, 40.323612, 37.894764>,  <37.339596, 40.571999, 37.773556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050438, 40.323612, 37.894764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360709, -0.713203, -0.601025,
		0.589336, -0.325172, 0.739558,
		-0.722892, -0.620971, 0.303023,
		36.833569, 40.137321, 37.985672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655678, 39.907795, 37.737370>,  <37.339596, 40.571999, 37.773556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655678, 39.907795, 37.737370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261845, 39.840454, 37.756348>,  <37.025543, 39.800049, 37.767735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261845, 39.840454, 37.756348>,  <37.655678, 39.907795, 37.737370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261845, 39.840454, 37.756348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091082, -0.725062, -0.682634,
		0.149319, -0.667790, 0.729219,
		-0.984585, -0.168349, 0.047442,
		36.966469, 39.789951, 37.770580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673500, 39.181931, 37.805012>,  <37.655678, 39.907795, 37.737370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673500, 39.181931, 37.805012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.348629, 39.335159, 37.629005>,  <37.153706, 39.427097, 37.523399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.348629, 39.335159, 37.629005>,  <37.673500, 39.181931, 37.805012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348629, 39.335159, 37.629005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128060, -0.618769, -0.775065,
		-0.569174, -0.685843, 0.453498,
		-0.812184, 0.383071, -0.440016,
		37.104973, 39.450081, 37.497002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109863, 38.635681, 37.774513>,  <37.673500, 39.181931, 37.805012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109863, 38.635681, 37.774513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062393, 38.907879, 37.485283>,  <37.033913, 39.071198, 37.311745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062393, 38.907879, 37.485283>,  <37.109863, 38.635681, 37.774513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062393, 38.907879, 37.485283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006950, -0.727639, -0.685925,
		-0.992909, -0.086426, 0.081621,
		-0.118672, 0.680494, -0.723080,
		37.026791, 39.112026, 37.268360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617081, 38.335083, 37.389175>,  <37.109863, 38.635681, 37.774513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617081, 38.335083, 37.389175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731144, 38.627636, 37.141380>,  <36.799583, 38.803169, 36.992702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731144, 38.627636, 37.141380>,  <36.617081, 38.335083, 37.389175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731144, 38.627636, 37.141380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140403, -0.607475, -0.781832,
		-0.948140, 0.309926, -0.070541,
		0.285162, 0.731382, -0.619486,
		36.816692, 38.847050, 36.955536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187057, 38.163101, 36.973957>,  <36.617081, 38.335083, 37.389175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187057, 38.163101, 36.973957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457413, 38.406086, 36.807026>,  <36.619629, 38.551876, 36.706867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457413, 38.406086, 36.807026>,  <36.187057, 38.163101, 36.973957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457413, 38.406086, 36.807026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015841, -0.578098, -0.815814,
		-0.736830, 0.544792, -0.400355,
		0.675893, 0.607458, -0.417330,
		36.660179, 38.588322, 36.681828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956280, 38.202477, 36.285599>,  <36.187057, 38.163101, 36.973957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956280, 38.202477, 36.285599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327908, 38.348751, 36.263325>,  <36.550884, 38.436516, 36.249962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327908, 38.348751, 36.263325>,  <35.956280, 38.202477, 36.285599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327908, 38.348751, 36.263325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167185, -0.549421, -0.818649,
		-0.329961, 0.751274, -0.571588,
		0.929072, 0.365683, -0.055686,
		36.606628, 38.458454, 36.246620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087246, 38.417850, 35.682526>,  <35.956280, 38.202477, 36.285599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087246, 38.417850, 35.682526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450344, 38.314266, 35.814548>,  <36.668201, 38.252117, 35.893761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450344, 38.314266, 35.814548>,  <36.087246, 38.417850, 35.682526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450344, 38.314266, 35.814548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133833, -0.566882, -0.812855,
		0.397599, 0.782038, -0.479928,
		0.907746, -0.258960, 0.330055,
		36.722668, 38.236580, 35.913567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574432, 38.413570, 35.145958>,  <36.087246, 38.417850, 35.682526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574432, 38.413570, 35.145958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783978, 38.205956, 35.416119>,  <36.909706, 38.081387, 35.578217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783978, 38.205956, 35.416119>,  <36.574432, 38.413570, 35.145958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783978, 38.205956, 35.416119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308621, -0.623385, -0.718432,
		0.793928, 0.584803, -0.166383,
		0.523862, -0.519034, 0.675405,
		36.941135, 38.050247, 35.618740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112892, 38.106598, 34.675152>,  <36.574432, 38.413570, 35.145958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112892, 38.106598, 34.675152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148937, 37.910343, 35.021828>,  <37.170567, 37.792591, 35.229832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148937, 37.910343, 35.021828>,  <37.112892, 38.106598, 34.675152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148937, 37.910343, 35.021828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126804, -0.857495, -0.498621,
		0.987826, 0.154832, -0.015058,
		0.090115, -0.490641, 0.866690,
		37.175972, 37.763149, 35.281834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620743, 37.686234, 34.555363>,  <37.112892, 38.106598, 34.675152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620743, 37.686234, 34.555363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426235, 37.498985, 34.850498>,  <37.309528, 37.386635, 35.027580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426235, 37.498985, 34.850498>,  <37.620743, 37.686234, 34.555363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426235, 37.498985, 34.850498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151971, -0.876830, -0.456152,
		0.860490, -0.109685, 0.497520,
		-0.486273, -0.468123, 0.737834,
		37.280354, 37.358547, 35.071850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076260, 37.131516, 34.758167>,  <37.620743, 37.686234, 34.555363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076260, 37.131516, 34.758167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707771, 37.036140, 34.881126>,  <37.486679, 36.978916, 34.954903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707771, 37.036140, 34.881126>,  <38.076260, 37.131516, 34.758167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707771, 37.036140, 34.881126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162061, -0.953540, -0.253965,
		0.353671, -0.184142, 0.917065,
		-0.921224, -0.238441, 0.307397,
		37.431404, 36.964607, 34.973347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808716, 37.058434, 34.472889>,  <38.076260, 37.131516, 34.758167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808716, 37.058434, 34.472889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.170715, 36.953953, 34.607204>,  <39.387913, 36.891266, 34.687794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.170715, 36.953953, 34.607204>,  <38.808716, 37.058434, 34.472889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170715, 36.953953, 34.607204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162481, 0.517257, 0.840265,
		-0.393168, -0.814997, 0.425676,
		0.904997, -0.261201, 0.335790,
		39.442215, 36.875591, 34.707943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819424, 37.251030, 35.164387>,  <38.808716, 37.058434, 34.472889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819424, 37.251030, 35.164387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209492, 37.181351, 35.109688>,  <39.443531, 37.139542, 35.076870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209492, 37.181351, 35.109688>,  <38.819424, 37.251030, 35.164387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209492, 37.181351, 35.109688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182790, 0.284515, 0.941084,
		-0.125032, -0.942712, 0.309292,
		0.975169, -0.174201, -0.136745,
		39.502041, 37.129089, 35.068665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960381, 36.962288, 35.748123>,  <38.819424, 37.251030, 35.164387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960381, 36.962288, 35.748123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311279, 37.080051, 35.596458>,  <39.521816, 37.150711, 35.505459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311279, 37.080051, 35.596458>,  <38.960381, 36.962288, 35.748123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311279, 37.080051, 35.596458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265654, 0.360147, 0.894272,
		0.399842, -0.885220, 0.237724,
		0.877243, 0.294415, -0.379164,
		39.574451, 37.168373, 35.482708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473324, 36.665623, 36.233128>,  <38.960381, 36.962288, 35.748123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473324, 36.665623, 36.233128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628937, 36.978119, 36.037857>,  <39.722305, 37.165619, 35.920696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628937, 36.978119, 36.037857>,  <39.473324, 36.665623, 36.233128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628937, 36.978119, 36.037857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282998, 0.402943, 0.870373,
		0.876680, -0.476753, -0.064334,
		0.389030, 0.781245, -0.488172,
		39.745647, 37.212494, 35.891407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124859, 36.756062, 36.538921>,  <39.473324, 36.665623, 36.233128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124859, 36.756062, 36.538921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068432, 37.107605, 36.356621>,  <40.034576, 37.318531, 36.247242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068432, 37.107605, 36.356621>,  <40.124859, 36.756062, 36.538921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068432, 37.107605, 36.356621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229478, 0.476843, 0.848505,
		0.963037, 0.015110, -0.268945,
		-0.141065, 0.878859, -0.455750,
		40.026112, 37.371262, 36.219894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605011, 37.186882, 36.814480>,  <40.124859, 36.756062, 36.538921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605011, 37.186882, 36.814480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350391, 37.458313, 36.667870>,  <40.197620, 37.621170, 36.579903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350391, 37.458313, 36.667870>,  <40.605011, 37.186882, 36.814480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350391, 37.458313, 36.667870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057256, 0.515509, 0.854969,
		0.769107, 0.523245, -0.367000,
		-0.636551, 0.678575, -0.366523,
		40.159428, 37.661884, 36.557911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933769, 37.787258, 36.965591>,  <40.605011, 37.186882, 36.814480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933769, 37.787258, 36.965591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.542923, 37.863716, 36.928249>,  <40.308414, 37.909592, 36.905842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.542923, 37.863716, 36.928249>,  <40.933769, 37.787258, 36.965591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542923, 37.863716, 36.928249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011669, 0.486375, 0.873672,
		0.212406, 0.852586, -0.477473,
		-0.977112, 0.191145, -0.093360,
		40.249790, 37.921059, 36.900242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750298, 38.578033, 37.158855>,  <40.933769, 37.787258, 36.965591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750298, 38.578033, 37.158855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378662, 38.430576, 37.170845>,  <40.155682, 38.342102, 37.178040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378662, 38.430576, 37.170845>,  <40.750298, 38.578033, 37.158855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378662, 38.430576, 37.170845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248088, 0.681243, 0.688738,
		-0.274317, 0.632462, -0.724391,
		-0.929087, -0.368645, 0.029971,
		40.099937, 38.319984, 37.179836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293629, 39.110397, 37.148640>,  <40.750298, 38.578033, 37.158855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293629, 39.110397, 37.148640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063595, 38.817875, 37.295319>,  <39.925575, 38.642361, 37.383324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063595, 38.817875, 37.295319>,  <40.293629, 39.110397, 37.148640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063595, 38.817875, 37.295319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347131, 0.624010, 0.700080,
		-0.740794, 0.275316, -0.612719,
		-0.575086, -0.731309, 0.366693,
		39.891068, 38.598484, 37.405327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811298, 39.451347, 37.471691>,  <40.293629, 39.110397, 37.148640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811298, 39.451347, 37.471691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.750645, 39.084682, 37.619606>,  <39.714252, 38.864685, 37.708355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.750645, 39.084682, 37.619606>,  <39.811298, 39.451347, 37.471691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750645, 39.084682, 37.619606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307424, 0.399299, 0.863742,
		-0.939413, 0.017294, -0.342351,
		-0.151638, -0.916657, 0.369790,
		39.705154, 38.809685, 37.730541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091022, 39.431950, 37.701988>,  <39.811298, 39.451347, 37.471691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091022, 39.431950, 37.701988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297543, 39.158398, 37.908188>,  <39.421455, 38.994267, 38.031906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297543, 39.158398, 37.908188>,  <39.091022, 39.431950, 37.701988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297543, 39.158398, 37.908188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360299, 0.372609, 0.855188,
		-0.776926, -0.627269, -0.054023,
		0.516304, -0.683883, 0.515494,
		39.452435, 38.953232, 38.062836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721661, 39.185009, 38.241386>,  <39.091022, 39.431950, 37.701988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721661, 39.185009, 38.241386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.076477, 39.053417, 38.370964>,  <39.289368, 38.974461, 38.448711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.076477, 39.053417, 38.370964>,  <38.721661, 39.185009, 38.241386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076477, 39.053417, 38.370964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259281, 0.225599, 0.939084,
		-0.382021, -0.916994, 0.114816,
		0.887037, -0.328980, 0.323942,
		39.342587, 38.954723, 38.468147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468616, 38.757599, 38.799969>,  <38.721661, 39.185009, 38.241386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468616, 38.757599, 38.799969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843819, 38.879230, 38.866524>,  <39.068939, 38.952209, 38.906456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843819, 38.879230, 38.866524>,  <38.468616, 38.757599, 38.799969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843819, 38.879230, 38.866524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276863, 0.368421, 0.887475,
		0.208559, -0.878523, 0.429768,
		0.938003, 0.304078, 0.166393,
		39.125221, 38.970455, 38.916443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742573, 38.264339, 39.264812>,  <38.468616, 38.757599, 38.799969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742573, 38.264339, 39.264812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.931545, 38.614609, 39.304817>,  <39.044930, 38.824772, 39.328819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.931545, 38.614609, 39.304817>,  <38.742573, 38.264339, 39.264812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931545, 38.614609, 39.304817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197085, -0.005645, 0.980370,
		0.859051, -0.482866, 0.169916,
		0.472429, 0.875676, 0.100015,
		39.073273, 38.877312, 39.334820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134773, 38.270519, 39.842091>,  <38.742573, 38.264339, 39.264812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134773, 38.270519, 39.842091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156120, 38.668762, 39.811344>,  <39.168926, 38.907707, 39.792896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156120, 38.668762, 39.811344>,  <39.134773, 38.270519, 39.842091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156120, 38.668762, 39.811344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077419, 0.072624, 0.994350,
		0.995569, -0.059015, -0.073203,
		0.053365, 0.995612, -0.076871,
		39.172131, 38.967445, 39.788284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604546, 38.504974, 40.304398>,  <39.134773, 38.270519, 39.842091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604546, 38.504974, 40.304398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.427094, 38.855133, 40.227592>,  <39.320621, 39.065228, 40.181511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.427094, 38.855133, 40.227592>,  <39.604546, 38.504974, 40.304398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427094, 38.855133, 40.227592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212383, 0.310834, 0.926432,
		0.870679, 0.370216, -0.323816,
		-0.443633, 0.875398, -0.192009,
		39.294003, 39.117752, 40.169991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022556, 39.041050, 40.635201>,  <39.604546, 38.504974, 40.304398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022556, 39.041050, 40.635201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.663300, 39.205536, 40.572933>,  <39.447746, 39.304230, 40.535572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.663300, 39.205536, 40.572933>,  <40.022556, 39.041050, 40.635201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663300, 39.205536, 40.572933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113140, 0.558251, 0.821922,
		0.424891, 0.720594, -0.547916,
		-0.898147, 0.411218, -0.155668,
		39.393856, 39.328903, 40.526234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112991, 39.631557, 40.788818>,  <40.022556, 39.041050, 40.635201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112991, 39.631557, 40.788818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716240, 39.594757, 40.823967>,  <39.478191, 39.572678, 40.845058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716240, 39.594757, 40.823967>,  <40.112991, 39.631557, 40.788818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716240, 39.594757, 40.823967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003611, 0.710794, 0.703391,
		-0.127171, 0.697358, -0.705350,
		-0.991874, -0.091998, 0.087874,
		39.418678, 39.567158, 40.850330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.886116, 40.363365, 40.962727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.605743, 40.104893, 41.083485>,  <39.437519, 39.949810, 41.155941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.605743, 40.104893, 41.083485>,  <39.886116, 40.363365, 40.962727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605743, 40.104893, 41.083485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051025, 0.467632, 0.882449,
		-0.711396, 0.603136, -0.360752,
		-0.700936, -0.646178, 0.301897,
		39.395462, 39.911037, 41.174053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426380, 40.887730, 41.301994>,  <39.886116, 40.363365, 40.962727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426380, 40.887730, 41.301994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.292862, 40.528809, 41.417530>,  <39.212749, 40.313457, 41.486851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.292862, 40.528809, 41.417530>,  <39.426380, 40.887730, 41.301994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292862, 40.528809, 41.417530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086587, 0.334308, 0.938478,
		-0.938659, 0.288253, -0.189286,
		-0.333799, -0.897301, 0.288842,
		39.192722, 40.259617, 41.504181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712162, 41.025494, 41.679817>,  <39.426380, 40.887730, 41.301994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712162, 41.025494, 41.679817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878864, 40.680141, 41.793579>,  <38.978886, 40.472931, 41.861835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878864, 40.680141, 41.793579>,  <38.712162, 41.025494, 41.679817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878864, 40.680141, 41.793579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123994, 0.255955, 0.958703,
		-0.900521, -0.434813, -0.000382,
		0.416758, -0.863380, 0.284407,
		39.003891, 40.421127, 41.878902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314945, 40.731415, 42.159199>,  <38.712162, 41.025494, 41.679817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314945, 40.731415, 42.159199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666592, 40.557121, 42.236439>,  <38.877579, 40.452545, 42.282784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666592, 40.557121, 42.236439>,  <38.314945, 40.731415, 42.159199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666592, 40.557121, 42.236439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130124, 0.170321, 0.976759,
		-0.458494, -0.883814, 0.093034,
		0.879119, -0.435732, 0.193097,
		38.930328, 40.426403, 42.294369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170120, 40.239170, 42.687572>,  <38.314945, 40.731415, 42.159199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170120, 40.239170, 42.687572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568089, 40.271980, 42.710915>,  <38.806870, 40.291664, 42.724918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568089, 40.271980, 42.710915>,  <38.170120, 40.239170, 42.687572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568089, 40.271980, 42.710915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073097, 0.190127, 0.979035,
		0.069206, -0.978327, 0.195157,
		0.994920, 0.082021, 0.058355,
		38.866566, 40.296589, 42.728420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276989, 39.821400, 43.189095>,  <38.170120, 40.239170, 42.687572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276989, 39.821400, 43.189095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600872, 40.055908, 43.178757>,  <38.795200, 40.196613, 43.172554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600872, 40.055908, 43.178757>,  <38.276989, 39.821400, 43.189095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600872, 40.055908, 43.178757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072146, 0.143155, 0.987067,
		0.582388, -0.797367, 0.158210,
		0.809703, 0.586270, -0.025845,
		38.843784, 40.231789, 43.171001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700500, 39.711159, 43.834499>,  <38.276989, 39.821400, 43.189095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700500, 39.711159, 43.834499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804188, 40.076096, 43.707737>,  <38.866402, 40.295059, 43.631680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804188, 40.076096, 43.707737>,  <38.700500, 39.711159, 43.834499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804188, 40.076096, 43.707737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088728, 0.304243, 0.948453,
		0.961735, -0.273975, -0.002085,
		0.259218, 0.912345, -0.316910,
		38.881954, 40.349800, 43.612663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207169, 39.856220, 44.247906>,  <38.700500, 39.711159, 43.834499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207169, 39.856220, 44.247906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120068, 40.213387, 44.090286>,  <39.067806, 40.427689, 43.995712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120068, 40.213387, 44.090286>,  <39.207169, 39.856220, 44.247906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120068, 40.213387, 44.090286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109139, 0.423485, 0.899304,
		0.969882, 0.152821, -0.189669,
		-0.217755, 0.892920, -0.394052,
		39.054741, 40.481262, 43.972069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829906, 40.311329, 44.378448>,  <39.207169, 39.856220, 44.247906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829906, 40.311329, 44.378448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485416, 40.513042, 44.353168>,  <39.278725, 40.634071, 44.338001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485416, 40.513042, 44.353168>,  <39.829906, 40.311329, 44.378448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485416, 40.513042, 44.353168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171427, 0.405306, 0.897965,
		0.478443, 0.762514, -0.435506,
		-0.861223, 0.504282, -0.063201,
		39.227051, 40.664326, 44.334209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030190, 40.963058, 44.686745>,  <39.829906, 40.311329, 44.378448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030190, 40.963058, 44.686745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.634548, 41.021740, 44.691586>,  <39.397163, 41.056950, 44.694489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.634548, 41.021740, 44.691586>,  <40.030190, 40.963058, 44.686745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634548, 41.021740, 44.691586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047027, 0.237030, 0.970363,
		0.139485, 0.960362, -0.241347,
		-0.989107, 0.146700, 0.012101,
		39.337814, 41.065750, 44.695217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926151, 41.540119, 45.029984>,  <40.030190, 40.963058, 44.686745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926151, 41.540119, 45.029984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.576153, 41.346699, 45.039383>,  <39.366154, 41.230644, 45.045025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.576153, 41.346699, 45.039383>,  <39.926151, 41.540119, 45.029984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576153, 41.346699, 45.039383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204435, 0.413060, 0.887461,
		-0.438841, 0.771724, -0.460283,
		-0.875000, -0.483553, 0.023500,
		39.313652, 41.201633, 45.046432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507874, 42.054970, 45.418270>,  <39.926151, 41.540119, 45.029984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507874, 42.054970, 45.418270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312588, 41.706074, 45.406647>,  <39.195415, 41.496735, 45.399673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312588, 41.706074, 45.406647>,  <39.507874, 42.054970, 45.418270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312588, 41.706074, 45.406647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379175, 0.182014, 0.907247,
		-0.786049, 0.453948, -0.419593,
		-0.488215, -0.872239, -0.029054,
		39.166122, 41.444401, 45.397930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818012, 42.186806, 45.710148>,  <39.507874, 42.054970, 45.418270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818012, 42.186806, 45.710148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.865807, 41.789997, 45.726212>,  <38.894482, 41.551910, 45.735847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.865807, 41.789997, 45.726212>,  <38.818012, 42.186806, 45.710148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865807, 41.789997, 45.726212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259662, 0.007816, 0.965668,
		-0.958280, -0.125806, -0.256657,
		0.119481, -0.992024, 0.040157,
		38.901649, 41.492390, 45.738258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286713, 41.908562, 46.099758>,  <38.818012, 42.186806, 45.710148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286713, 41.908562, 46.099758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.562134, 41.624454, 46.158295>,  <38.727386, 41.453991, 46.193417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.562134, 41.624454, 46.158295>,  <38.286713, 41.908562, 46.099758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562134, 41.624454, 46.158295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235353, -0.027996, 0.971507,
		-0.685931, -0.703376, -0.186440,
		0.688554, -0.710266, 0.146338,
		38.768700, 41.411373, 46.202198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982750, 41.376263, 46.437645>,  <38.286713, 41.908562, 46.099758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982750, 41.376263, 46.437645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366344, 41.304691, 46.525574>,  <38.596500, 41.261749, 46.578331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366344, 41.304691, 46.525574>,  <37.982750, 41.376263, 46.437645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366344, 41.304691, 46.525574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231245, -0.045458, 0.971833,
		-0.163900, -0.982810, -0.084971,
		0.958990, -0.178933, 0.219820,
		38.654041, 41.251011, 46.591518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965233, 41.009365, 46.949715>,  <37.982750, 41.376263, 46.437645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965233, 41.009365, 46.949715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348633, 41.112118, 46.999172>,  <38.578674, 41.173771, 47.028847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348633, 41.112118, 46.999172>,  <37.965233, 41.009365, 46.949715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348633, 41.112118, 46.999172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120756, -0.027065, 0.992313,
		0.258255, -0.966063, 0.005078,
		0.958500, 0.256883, 0.123648,
		38.636185, 41.189182, 47.036266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175629, 40.516891, 47.423992>,  <37.965233, 41.009365, 46.949715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175629, 40.516891, 47.423992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428349, 40.823402, 47.470715>,  <38.579979, 41.007309, 47.498749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428349, 40.823402, 47.470715>,  <38.175629, 40.516891, 47.423992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428349, 40.823402, 47.470715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108762, -0.061559, 0.992160,
		0.767464, -0.639550, 0.044449,
		0.631799, 0.766281, 0.116803,
		38.617889, 41.053288, 47.505756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606781, 40.335377, 48.036652>,  <38.175629, 40.516891, 47.423992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606781, 40.335377, 48.036652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667538, 40.726494, 47.978905>,  <38.703991, 40.961166, 47.944256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667538, 40.726494, 47.978905>,  <38.606781, 40.335377, 48.036652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667538, 40.726494, 47.978905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040672, 0.139752, 0.989351,
		0.987560, -0.156147, -0.018542,
		0.151893, 0.977797, -0.144364,
		38.713104, 41.019833, 47.935596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128361, 40.548347, 48.566879>,  <38.606781, 40.335377, 48.036652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128361, 40.548347, 48.566879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914253, 40.870647, 48.465488>,  <38.785789, 41.064026, 48.404655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914253, 40.870647, 48.465488>,  <39.128361, 40.548347, 48.566879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914253, 40.870647, 48.465488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149659, 0.204867, 0.967281,
		0.831316, 0.555693, 0.010928,
		-0.535272, 0.805751, -0.253474,
		38.753670, 41.112373, 48.389446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367374, 41.091068, 49.033527>,  <39.128361, 40.548347, 48.566879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367374, 41.091068, 49.033527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998116, 41.190174, 48.915947>,  <38.776558, 41.249638, 48.845398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998116, 41.190174, 48.915947>,  <39.367374, 41.091068, 49.033527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998116, 41.190174, 48.915947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234735, 0.242276, 0.941383,
		0.304456, 0.938039, -0.165499,
		-0.923150, 0.247762, -0.293953,
		38.721172, 41.264503, 48.827763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162525, 41.604996, 49.453697>,  <39.367374, 41.091068, 49.033527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162525, 41.604996, 49.453697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825333, 41.465111, 49.290192>,  <38.623016, 41.381180, 49.192089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825333, 41.465111, 49.290192>,  <39.162525, 41.604996, 49.453697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825333, 41.465111, 49.290192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446669, 0.031581, 0.894142,
		-0.299783, 0.936325, -0.182827,
		-0.842981, -0.349711, -0.408760,
		38.572437, 41.360199, 49.167564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633678, 42.166454, 49.473904>,  <39.162525, 41.604996, 49.453697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633678, 42.166454, 49.473904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459206, 41.806511, 49.473606>,  <38.354523, 41.590546, 49.473427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459206, 41.806511, 49.473606>,  <38.633678, 42.166454, 49.473904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459206, 41.806511, 49.473606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238314, 0.114719, 0.964389,
		-0.867728, 0.420826, -0.264487,
		-0.436181, -0.899859, -0.000744,
		38.328350, 41.536552, 49.473381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078918, 42.241146, 49.885807>,  <38.633678, 42.166454, 49.473904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078918, 42.241146, 49.885807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165100, 41.850677, 49.875484>,  <38.216808, 41.616398, 49.869293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165100, 41.850677, 49.875484>,  <38.078918, 42.241146, 49.885807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165100, 41.850677, 49.875484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194123, -0.068713, 0.978568,
		-0.957024, -0.205830, -0.204302,
		0.215456, -0.976172, -0.025804,
		38.229736, 41.557827, 49.867744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480247, 41.899445, 50.165981>,  <38.078918, 42.241146, 49.885807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480247, 41.899445, 50.165981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.806465, 41.670719, 50.201561>,  <38.002197, 41.533482, 50.222908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.806465, 41.670719, 50.201561>,  <37.480247, 41.899445, 50.165981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806465, 41.670719, 50.201561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300758, -0.287497, 0.909335,
		-0.494399, -0.768357, -0.406444,
		0.815546, -0.571815, 0.088951,
		38.051128, 41.499176, 50.228245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443798, 42.610477, 49.824154>,  <37.480247, 41.899445, 50.165981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443798, 42.610477, 49.824154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080158, 42.714054, 49.693626>,  <36.861973, 42.776199, 49.615311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080158, 42.714054, 49.693626>,  <37.443798, 42.610477, 49.824154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080158, 42.714054, 49.693626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399936, 0.323370, -0.857603,
		-0.116549, -0.910154, -0.397537,
		-0.909102, 0.258942, -0.326315,
		36.807426, 42.791737, 49.595730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378635, 42.243042, 49.175068>,  <37.443798, 42.610477, 49.824154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378635, 42.243042, 49.175068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108490, 42.537273, 49.153843>,  <36.946404, 42.713814, 49.141109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108490, 42.537273, 49.153843>,  <37.378635, 42.243042, 49.175068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108490, 42.537273, 49.153843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245031, 0.155945, -0.956891,
		-0.695593, -0.659248, -0.285558,
		-0.675360, 0.735577, -0.053062,
		36.905884, 42.757946, 49.137924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202267, 42.179081, 48.492668>,  <37.378635, 42.243042, 49.175068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202267, 42.179081, 48.492668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043591, 42.535633, 48.580376>,  <36.948383, 42.749565, 48.632999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043591, 42.535633, 48.580376>,  <37.202267, 42.179081, 48.492668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043591, 42.535633, 48.580376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160159, 0.302410, -0.939626,
		-0.903871, -0.337626, -0.262727,
		-0.396694, 0.891379, 0.219266,
		36.924583, 42.803047, 48.646156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624084, 42.265171, 48.046558>,  <37.202267, 42.179081, 48.492668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624084, 42.265171, 48.046558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752705, 42.620930, 48.176525>,  <36.829876, 42.834385, 48.254505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752705, 42.620930, 48.176525>,  <36.624084, 42.265171, 48.046558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752705, 42.620930, 48.176525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142247, 0.293878, -0.945199,
		-0.936146, 0.350151, -0.032017,
		0.321553, 0.889399, 0.324921,
		36.849171, 42.887749, 48.274002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214500, 42.655403, 47.742584>,  <36.624084, 42.265171, 48.046558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214500, 42.655403, 47.742584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549885, 42.858356, 47.822132>,  <36.751114, 42.980129, 47.869862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549885, 42.858356, 47.822132>,  <36.214500, 42.655403, 47.742584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549885, 42.858356, 47.822132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120251, 0.183682, -0.975603,
		-0.531534, 0.841917, 0.092996,
		0.838458, 0.507383, 0.198874,
		36.801422, 43.010571, 47.881794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136471, 43.281719, 47.444828>,  <36.214500, 42.655403, 47.742584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136471, 43.281719, 47.444828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532604, 43.235558, 47.475609>,  <36.770283, 43.207859, 47.494076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532604, 43.235558, 47.475609>,  <36.136471, 43.281719, 47.444828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532604, 43.235558, 47.475609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096405, 0.173831, -0.980045,
		0.099727, 0.977990, 0.183276,
		0.990333, -0.115406, 0.076948,
		36.829704, 43.200935, 47.498692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440266, 43.768387, 46.907322>,  <36.136471, 43.281719, 47.444828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440266, 43.768387, 46.907322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.760910, 43.544285, 46.990791>,  <36.953297, 43.409824, 47.040871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.760910, 43.544285, 46.990791>,  <36.440266, 43.768387, 46.907322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760910, 43.544285, 46.990791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091152, -0.230423, -0.968812,
		0.590861, 0.795628, -0.133640,
		0.801607, -0.560252, 0.208671,
		37.001392, 43.376209, 47.053394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856827, 43.836422, 46.326244>,  <36.440266, 43.768387, 46.907322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856827, 43.836422, 46.326244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032272, 43.519413, 46.495728>,  <37.137539, 43.329208, 46.597416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032272, 43.519413, 46.495728>,  <36.856827, 43.836422, 46.326244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032272, 43.519413, 46.495728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230772, -0.356339, -0.905410,
		0.868541, 0.494903, 0.026597,
		0.438612, -0.792524, 0.423704,
		37.163857, 43.281654, 46.622837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602768, 43.786121, 46.105267>,  <36.856827, 43.836422, 46.326244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602768, 43.786121, 46.105267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470798, 43.422092, 46.205605>,  <37.391617, 43.203674, 46.265808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470798, 43.422092, 46.205605>,  <37.602768, 43.786121, 46.105267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470798, 43.422092, 46.205605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263429, -0.343925, -0.901288,
		0.906508, -0.231275, 0.353208,
		-0.329922, -0.910070, 0.250847,
		37.371822, 43.149071, 46.280857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071415, 43.227257, 45.724770>,  <37.602768, 43.786121, 46.105267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071415, 43.227257, 45.724770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751587, 43.006470, 45.819450>,  <37.559692, 42.873997, 45.876259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751587, 43.006470, 45.819450>,  <38.071415, 43.227257, 45.724770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751587, 43.006470, 45.819450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081718, -0.290477, -0.953386,
		0.594994, -0.781638, 0.187149,
		-0.799565, -0.551965, 0.236706,
		37.511719, 42.840881, 45.890461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164074, 42.475964, 45.536491>,  <38.071415, 43.227257, 45.724770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164074, 42.475964, 45.536491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774429, 42.566288, 45.532314>,  <37.540642, 42.620483, 45.529808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774429, 42.566288, 45.532314>,  <38.164074, 42.475964, 45.536491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774429, 42.566288, 45.532314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077219, -0.375813, -0.923473,
		-0.212450, -0.898763, 0.383522,
		-0.974116, 0.225807, -0.010440,
		37.482193, 42.634029, 45.529182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955894, 41.950733, 45.216858>,  <38.164074, 42.475964, 45.536491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955894, 41.950733, 45.216858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650078, 42.208462, 45.209675>,  <37.466587, 42.363098, 45.205364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650078, 42.208462, 45.209675>,  <37.955894, 41.950733, 45.216858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650078, 42.208462, 45.209675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151771, -0.207032, -0.966490,
		-0.626453, -0.736195, 0.256075,
		-0.764541, 0.644325, -0.017963,
		37.420715, 42.401760, 45.204285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454880, 41.580746, 44.903709>,  <37.955894, 41.950733, 45.216858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454880, 41.580746, 44.903709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317249, 41.949211, 44.830975>,  <37.234669, 42.170292, 44.787334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317249, 41.949211, 44.830975>,  <37.454880, 41.580746, 44.903709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317249, 41.949211, 44.830975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214947, -0.265793, -0.939761,
		-0.914006, -0.284268, 0.289456,
		-0.344080, 0.921165, -0.181833,
		37.214024, 42.225559, 44.776424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897942, 41.482883, 44.410820>,  <37.454880, 41.580746, 44.903709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897942, 41.482883, 44.410820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998611, 41.869713, 44.395702>,  <37.059013, 42.101810, 44.386631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998611, 41.869713, 44.395702>,  <36.897942, 41.482883, 44.410820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998611, 41.869713, 44.395702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183233, 0.009270, -0.983026,
		-0.950307, 0.254330, 0.179533,
		0.251677, 0.967073, -0.037793,
		37.074116, 42.159836, 44.384365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353775, 41.787876, 44.006680>,  <36.897942, 41.482883, 44.410820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353775, 41.787876, 44.006680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.680210, 42.017624, 44.032284>,  <36.876072, 42.155472, 44.047646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.680210, 42.017624, 44.032284>,  <36.353775, 41.787876, 44.006680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680210, 42.017624, 44.032284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073972, 0.213654, -0.974105,
		-0.573173, 0.790221, 0.216848,
		0.816089, 0.574372, 0.064006,
		36.925037, 42.189934, 44.051487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294979, 42.436840, 43.629955>,  <36.353775, 41.787876, 44.006680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294979, 42.436840, 43.629955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684147, 42.349136, 43.600670>,  <36.917648, 42.296513, 43.583099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684147, 42.349136, 43.600670>,  <36.294979, 42.436840, 43.629955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684147, 42.349136, 43.600670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017124, 0.247496, -0.968738,
		0.230528, 0.943753, 0.237038,
		0.972915, -0.219262, -0.073215,
		36.976021, 42.283360, 43.578705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581055, 42.856720, 43.163094>,  <36.294979, 42.436840, 43.629955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581055, 42.856720, 43.163094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878643, 42.589481, 43.168129>,  <37.057198, 42.429138, 43.171150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878643, 42.589481, 43.168129>,  <36.581055, 42.856720, 43.163094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878643, 42.589481, 43.168129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141463, 0.139061, -0.980128,
		0.653067, 0.730967, 0.197968,
		0.743971, -0.668094, 0.012589,
		37.101833, 42.389053, 43.171906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852699, 42.978500, 42.606701>,  <36.581055, 42.856720, 43.163094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852699, 42.978500, 42.606701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026737, 42.628048, 42.689720>,  <37.131161, 42.417774, 42.739532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026737, 42.628048, 42.689720>,  <36.852699, 42.978500, 42.606701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026737, 42.628048, 42.689720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052664, -0.205354, -0.977270,
		0.898842, 0.436138, -0.043208,
		0.435097, -0.876136, 0.207550,
		37.157265, 42.365208, 42.751984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331650, 42.980511, 42.104614>,  <36.852699, 42.978500, 42.606701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331650, 42.980511, 42.104614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288910, 42.603168, 42.230255>,  <37.263264, 42.376762, 42.305637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288910, 42.603168, 42.230255>,  <37.331650, 42.980511, 42.104614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288910, 42.603168, 42.230255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194945, -0.329652, -0.923756,
		0.974977, -0.037473, 0.219127,
		-0.106852, -0.943358, 0.314098,
		37.256855, 42.320160, 42.324486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905197, 42.658115, 41.916794>,  <37.331650, 42.980511, 42.104614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905197, 42.658115, 41.916794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598991, 42.400749, 41.917732>,  <37.415268, 42.246330, 41.918297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598991, 42.400749, 41.917732>,  <37.905197, 42.658115, 41.916794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598991, 42.400749, 41.917732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172552, -0.208811, -0.962613,
		0.619851, -0.736488, 0.270870,
		-0.765513, -0.643416, 0.002349,
		37.369339, 42.207726, 41.918438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.986046, 26.892700, 35.734650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.621525, 26.941376, 35.891983>,  <41.402813, 26.970581, 35.986385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.621525, 26.941376, 35.891983>,  <41.986046, 26.892700, 35.734650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621525, 26.941376, 35.891983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020409, 0.940800, -0.338346,
		-0.411225, -0.316364, -0.854873,
		-0.911305, 0.121690, 0.393337,
		41.348133, 26.977882, 36.009983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567913, 27.122320, 35.158314>,  <41.986046, 26.892700, 35.734650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567913, 27.122320, 35.158314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.395351, 27.255434, 35.493729>,  <41.291817, 27.335302, 35.694977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.395351, 27.255434, 35.493729>,  <41.567913, 27.122320, 35.158314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395351, 27.255434, 35.493729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107298, 0.903956, -0.413946,
		-0.895757, -0.268550, -0.354260,
		-0.431401, 0.332784, 0.838539,
		41.265930, 27.355268, 35.745289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060787, 27.588827, 34.941841>,  <41.567913, 27.122320, 35.158314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060787, 27.588827, 34.941841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116962, 27.684464, 35.326157>,  <41.150669, 27.741846, 35.556744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116962, 27.684464, 35.326157>,  <41.060787, 27.588827, 34.941841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116962, 27.684464, 35.326157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073666, 0.970238, -0.230675,
		-0.987345, -0.038381, 0.153874,
		0.140441, 0.239091, 0.960787,
		41.159096, 27.756191, 35.614391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536285, 28.046511, 35.115356>,  <41.060787, 27.588827, 34.941841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536285, 28.046511, 35.115356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821415, 28.133108, 35.382191>,  <40.992493, 28.185066, 35.542294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821415, 28.133108, 35.382191>,  <40.536285, 28.046511, 35.115356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821415, 28.133108, 35.382191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156804, 0.976282, -0.149285,
		-0.683588, 0.001812, 0.729866,
		0.712826, 0.216495, 0.667090,
		41.035263, 28.198057, 35.582317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343243, 28.660311, 35.397343>,  <40.536285, 28.046511, 35.115356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343243, 28.660311, 35.397343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.728985, 28.649940, 35.502678>,  <40.960430, 28.643719, 35.565880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.728985, 28.649940, 35.502678>,  <40.343243, 28.660311, 35.397343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728985, 28.649940, 35.502678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120974, 0.928289, -0.351632,
		-0.235337, 0.370955, 0.898337,
		0.964356, -0.025924, 0.263337,
		41.018291, 28.642164, 35.581680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467705, 29.336609, 35.649910>,  <40.343243, 28.660311, 35.397343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467705, 29.336609, 35.649910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820148, 29.165625, 35.569000>,  <41.031616, 29.063034, 35.520454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820148, 29.165625, 35.569000>,  <40.467705, 29.336609, 35.649910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820148, 29.165625, 35.569000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365450, 0.886944, -0.282448,
		0.300146, 0.174946, 0.937714,
		0.881112, -0.427463, -0.202278,
		41.084480, 29.037386, 35.508316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033840, 29.766874, 36.039757>,  <40.467705, 29.336609, 35.649910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033840, 29.766874, 36.039757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.219883, 29.582315, 35.737553>,  <41.331509, 29.471581, 35.556232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.219883, 29.582315, 35.737553>,  <41.033840, 29.766874, 36.039757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219883, 29.582315, 35.737553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458292, 0.855664, -0.240431,
		0.757394, -0.234416, 0.609429,
		0.465106, -0.461397, -0.755506,
		41.359413, 29.443895, 35.510902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748142, 30.009525, 36.122238>,  <41.033840, 29.766874, 36.039757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748142, 30.009525, 36.122238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.689117, 29.867174, 35.753113>,  <41.653702, 29.781763, 35.531639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.689117, 29.867174, 35.753113>,  <41.748142, 30.009525, 36.122238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689117, 29.867174, 35.753113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432022, 0.816116, -0.383811,
		0.889709, -0.455310, 0.033320,
		-0.147560, -0.355875, -0.922810,
		41.644848, 29.760412, 35.476269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323738, 30.291584, 35.861233>,  <41.748142, 30.009525, 36.122238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323738, 30.291584, 35.861233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.127411, 30.157497, 35.539555>,  <42.009613, 30.077045, 35.346550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.127411, 30.157497, 35.539555>,  <42.323738, 30.291584, 35.861233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127411, 30.157497, 35.539555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398847, 0.734178, -0.549458,
		0.774610, -0.590433, -0.226646,
		-0.490816, -0.335218, -0.804194,
		41.980164, 30.056932, 35.298298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742424, 30.388018, 35.323105>,  <42.323738, 30.291584, 35.861233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742424, 30.388018, 35.323105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392296, 30.343254, 35.134941>,  <42.182217, 30.316397, 35.022045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392296, 30.343254, 35.134941>,  <42.742424, 30.388018, 35.323105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392296, 30.343254, 35.134941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190079, 0.814894, -0.547557,
		0.444607, -0.568704, -0.692026,
		-0.875326, -0.111908, -0.470406,
		42.129700, 30.309681, 34.993820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883511, 30.538189, 34.675900>,  <42.742424, 30.388018, 35.323105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883511, 30.538189, 34.675900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488846, 30.598200, 34.650658>,  <42.252045, 30.634207, 34.635513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488846, 30.598200, 34.650658>,  <42.883511, 30.538189, 34.675900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488846, 30.598200, 34.650658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157459, 0.781712, -0.603435,
		-0.041199, -0.605325, -0.794911,
		-0.986666, 0.150027, -0.063108,
		42.192844, 30.643208, 34.631725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800472, 30.467903, 33.995243>,  <42.883511, 30.538189, 34.675900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800472, 30.467903, 33.995243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493000, 30.695049, 34.112999>,  <42.308517, 30.831337, 34.183651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493000, 30.695049, 34.112999>,  <42.800472, 30.467903, 33.995243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493000, 30.695049, 34.112999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161505, 0.617635, -0.769703,
		-0.618911, -0.544109, -0.566475,
		-0.768677, 0.567867, 0.294385,
		42.262398, 30.865410, 34.201313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487206, 30.677290, 33.376930>,  <42.800472, 30.467903, 33.995243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487206, 30.677290, 33.376930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.387997, 30.935207, 33.666130>,  <42.328472, 31.089958, 33.839649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.387997, 30.935207, 33.666130>,  <42.487206, 30.677290, 33.376930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387997, 30.935207, 33.666130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210748, 0.764355, -0.609382,
		-0.945553, 0.001231, -0.325466,
		-0.248022, 0.644794, 0.722998,
		42.313591, 31.128645, 33.883030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013363, 31.168976, 33.073254>,  <42.487206, 30.677290, 33.376930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013363, 31.168976, 33.073254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093834, 31.376677, 33.405495>,  <42.142117, 31.501297, 33.604839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093834, 31.376677, 33.405495>,  <42.013363, 31.168976, 33.073254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093834, 31.376677, 33.405495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039783, 0.842910, -0.536582,
		-0.978746, 0.140994, 0.148921,
		0.201182, 0.519253, 0.830603,
		42.154190, 31.532452, 33.654675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505470, 31.732346, 33.176651>,  <42.013363, 31.168976, 33.073254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505470, 31.732346, 33.176651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.829472, 31.844954, 33.382423>,  <42.023872, 31.912519, 33.505886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.829472, 31.844954, 33.382423>,  <41.505470, 31.732346, 33.176651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829472, 31.844954, 33.382423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001485, 0.876248, -0.481859,
		-0.586426, 0.391070, 0.709344,
		0.810002, 0.281521, 0.514435,
		42.072472, 31.929409, 33.536755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454891, 32.417973, 33.241150>,  <41.505470, 31.732346, 33.176651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454891, 32.417973, 33.241150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.840023, 32.378330, 33.341656>,  <42.071102, 32.354546, 33.401958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.840023, 32.378330, 33.341656>,  <41.454891, 32.417973, 33.241150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840023, 32.378330, 33.341656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160838, 0.957713, -0.238572,
		-0.216999, 0.270118, 0.938055,
		0.962830, -0.099105, 0.251268,
		42.128872, 32.348598, 33.417038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579624, 33.085064, 33.503971>,  <41.454891, 32.417973, 33.241150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579624, 33.085064, 33.503971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924263, 32.912601, 33.396828>,  <42.131046, 32.809124, 33.332542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924263, 32.912601, 33.396828>,  <41.579624, 33.085064, 33.503971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924263, 32.912601, 33.396828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298586, 0.857272, -0.419441,
		0.410475, 0.281411, 0.867363,
		0.861601, -0.431153, -0.267863,
		42.182743, 32.783257, 33.316467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061153, 33.605026, 33.580841>,  <41.579624, 33.085064, 33.503971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061153, 33.605026, 33.580841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267021, 33.350723, 33.350735>,  <42.390541, 33.198143, 33.212669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267021, 33.350723, 33.350735>,  <42.061153, 33.605026, 33.580841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267021, 33.350723, 33.350735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566247, 0.755846, -0.328727,
		0.643803, -0.156559, 0.749004,
		0.514666, -0.635757, -0.575267,
		42.421421, 33.159996, 33.178154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777832, 33.809708, 33.675621>,  <42.061153, 33.605026, 33.580841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777832, 33.809708, 33.675621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708885, 33.608707, 33.336731>,  <42.667519, 33.488106, 33.133396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708885, 33.608707, 33.336731>,  <42.777832, 33.809708, 33.675621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708885, 33.608707, 33.336731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378250, 0.760389, -0.527954,
		0.909514, -0.411464, 0.059004,
		-0.172368, -0.502500, -0.847221,
		42.657173, 33.457958, 33.082565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386829, 33.815365, 33.240257>,  <42.777832, 33.809708, 33.675621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386829, 33.815365, 33.240257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.102772, 33.730434, 32.971748>,  <42.932335, 33.679478, 32.810642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.102772, 33.730434, 32.971748>,  <43.386829, 33.815365, 33.240257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102772, 33.730434, 32.971748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368592, 0.700221, -0.611417,
		0.599859, -0.681622, -0.419000,
		-0.710147, -0.212324, -0.671274,
		42.889729, 33.666737, 32.770367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699879, 33.834400, 32.479156>,  <43.386829, 33.815365, 33.240257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699879, 33.834400, 32.479156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306278, 33.902916, 32.459526>,  <43.070118, 33.944023, 32.447750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306278, 33.902916, 32.459526>,  <43.699879, 33.834400, 32.479156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306278, 33.902916, 32.459526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169165, 0.811618, -0.559159,
		-0.055948, -0.558513, -0.827607,
		-0.983998, 0.171287, -0.049072,
		43.011078, 33.954304, 32.444805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414528, 33.785976, 32.314297>,  <43.699879, 33.834400, 32.479156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414528, 33.785976, 32.314297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.795551, 33.905796, 32.335831>,  <45.024166, 33.977688, 32.348751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.795551, 33.905796, 32.335831>,  <44.414528, 33.785976, 32.314297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795551, 33.905796, 32.335831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126781, -0.551357, 0.824580,
		0.276688, -0.778636, -0.563178,
		0.952560, 0.299552, 0.053837,
		45.081318, 33.995663, 32.351982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921463, 33.282700, 32.225956>,  <44.414528, 33.785976, 32.314297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921463, 33.282700, 32.225956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105415, 33.534004, 32.476967>,  <45.215786, 33.684788, 32.627575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105415, 33.534004, 32.476967>,  <44.921463, 33.282700, 32.225956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105415, 33.534004, 32.476967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087125, -0.735209, 0.672219,
		0.883696, -0.254467, -0.392846,
		0.459881, 0.628263, 0.627531,
		45.243382, 33.722485, 32.665226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593960, 33.138680, 32.363045>,  <44.921463, 33.282700, 32.225956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593960, 33.138680, 32.363045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.452736, 33.324455, 32.687920>,  <45.368000, 33.435921, 32.882843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.452736, 33.324455, 32.687920>,  <45.593960, 33.138680, 32.363045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452736, 33.324455, 32.687920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193073, -0.813235, 0.548974,
		0.915461, 0.350633, 0.197452,
		-0.353064, 0.464442, 0.812183,
		45.346817, 33.463787, 32.931576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011189, 32.917271, 32.968124>,  <45.593960, 33.138680, 32.363045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011189, 32.917271, 32.968124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.675461, 33.049309, 33.140907>,  <45.474026, 33.128532, 33.244576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.675461, 33.049309, 33.140907>,  <46.011189, 32.917271, 32.968124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.675461, 33.049309, 33.140907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061739, -0.731538, 0.678999,
		0.540128, 0.596563, 0.593611,
		-0.839315, 0.330097, 0.431955,
		45.423668, 33.148338, 33.270493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190346, 32.709152, 33.586784>,  <46.011189, 32.917271, 32.968124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190346, 32.709152, 33.586784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796200, 32.776917, 33.579308>,  <45.559711, 32.817574, 33.574821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796200, 32.776917, 33.579308>,  <46.190346, 32.709152, 33.586784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796200, 32.776917, 33.579308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123926, -0.636851, 0.760962,
		0.117011, 0.752145, 0.648527,
		-0.985368, 0.169410, -0.018692,
		45.500587, 32.827740, 33.573700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977962, 32.618370, 34.249550>,  <46.190346, 32.709152, 33.586784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977962, 32.618370, 34.249550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.648830, 32.565842, 34.028385>,  <45.451351, 32.534325, 33.895687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.648830, 32.565842, 34.028385>,  <45.977962, 32.618370, 34.249550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648830, 32.565842, 34.028385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279785, -0.753239, 0.595275,
		-0.494645, 0.644505, 0.583044,
		-0.822829, -0.131323, -0.552908,
		45.401981, 32.526443, 33.862514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522667, 32.350975, 34.731117>,  <45.977962, 32.618370, 34.249550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522667, 32.350975, 34.731117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373615, 32.233974, 34.378845>,  <45.284184, 32.163773, 34.167484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373615, 32.233974, 34.378845>,  <45.522667, 32.350975, 34.731117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373615, 32.233974, 34.378845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233214, -0.889050, 0.393956,
		-0.898199, 0.352185, 0.263068,
		-0.372626, -0.292500, -0.880678,
		45.261826, 32.146225, 34.114643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884945, 32.216766, 34.927773>,  <45.522667, 32.350975, 34.731117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884945, 32.216766, 34.927773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985691, 32.027172, 34.590275>,  <45.046139, 31.913414, 34.387775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985691, 32.027172, 34.590275>,  <44.884945, 32.216766, 34.927773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985691, 32.027172, 34.590275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224364, -0.876692, 0.425526,
		-0.941396, 0.082131, -0.327150,
		0.251861, -0.473990, -0.843742,
		45.061249, 31.884975, 34.337151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414452, 31.788113, 34.717422>,  <44.884945, 32.216766, 34.927773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414452, 31.788113, 34.717422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724930, 31.607347, 34.541557>,  <44.911217, 31.498888, 34.436039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724930, 31.607347, 34.541557>,  <44.414452, 31.788113, 34.717422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724930, 31.607347, 34.541557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268631, -0.867901, 0.417835,
		-0.570406, -0.206215, -0.795055,
		0.776193, -0.451912, -0.439660,
		44.957787, 31.471773, 34.409660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140190, 31.234968, 34.342068>,  <44.414452, 31.788113, 34.717422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140190, 31.234968, 34.342068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521400, 31.126492, 34.396034>,  <44.750126, 31.061405, 34.428413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521400, 31.126492, 34.396034>,  <44.140190, 31.234968, 34.342068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521400, 31.126492, 34.396034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299780, -0.908242, 0.291938,
		0.043366, -0.318668, -0.946874,
		0.953022, -0.271194, 0.134917,
		44.807308, 31.045134, 34.436508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061829, 30.539810, 34.127048>,  <44.140190, 31.234968, 34.342068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061829, 30.539810, 34.127048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.448509, 30.548925, 34.229004>,  <44.680519, 30.554394, 34.290176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.448509, 30.548925, 34.229004>,  <44.061829, 30.539810, 34.127048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448509, 30.548925, 34.229004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057323, -0.951437, 0.302461,
		0.249407, -0.307000, -0.918448,
		0.966701, 0.022787, 0.254893,
		44.738518, 30.555761, 34.305473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463837, 30.018072, 33.792370>,  <44.061829, 30.539810, 34.127048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463837, 30.018072, 33.792370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660152, 30.115005, 34.127129>,  <44.777943, 30.173166, 34.327984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660152, 30.115005, 34.127129>,  <44.463837, 30.018072, 33.792370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660152, 30.115005, 34.127129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080576, -0.969050, 0.233346,
		0.867546, -0.047089, -0.495123,
		0.490787, 0.242333, 0.836901,
		44.807388, 30.187706, 34.378201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056835, 29.483753, 33.948757>,  <44.463837, 30.018072, 33.792370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056835, 29.483753, 33.948757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.957493, 29.636398, 34.304890>,  <44.897888, 29.727985, 34.518570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.957493, 29.636398, 34.304890>,  <45.056835, 29.483753, 33.948757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.957493, 29.636398, 34.304890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089567, -0.906145, 0.413375,
		0.964518, 0.182410, 0.190870,
		-0.248359, 0.381612, 0.890331,
		44.882984, 29.750881, 34.571991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402294, 29.078545, 34.281898>,  <45.056835, 29.483753, 33.948757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402294, 29.078545, 34.281898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.157562, 29.226725, 34.561451>,  <45.010723, 29.315634, 34.729183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.157562, 29.226725, 34.561451>,  <45.402294, 29.078545, 34.281898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157562, 29.226725, 34.561451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126050, -0.917921, 0.376208,
		0.780882, 0.142081, 0.608306,
		-0.611829, 0.370451, 0.698879,
		44.974014, 29.337860, 34.771114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589745, 28.677280, 34.924126>,  <45.402294, 29.078545, 34.281898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589745, 28.677280, 34.924126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.233936, 28.839788, 35.007740>,  <45.020451, 28.937294, 35.057911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.233936, 28.839788, 35.007740>,  <45.589745, 28.677280, 34.924126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233936, 28.839788, 35.007740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239700, -0.804462, 0.543493,
		0.388968, 0.433342, 0.812969,
		-0.889521, 0.406270, 0.209038,
		44.967079, 28.961670, 35.070450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456932, 28.580574, 35.730209>,  <45.589745, 28.677280, 34.924126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456932, 28.580574, 35.730209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126072, 28.614458, 35.507984>,  <44.927555, 28.634789, 35.374649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126072, 28.614458, 35.507984>,  <45.456932, 28.580574, 35.730209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126072, 28.614458, 35.507984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378776, -0.814322, 0.439782,
		-0.415152, 0.574198, 0.705652,
		-0.827150, 0.084708, -0.555560,
		44.877926, 28.639870, 35.341316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823677, 28.632118, 36.149055>,  <45.456932, 28.580574, 35.730209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823677, 28.632118, 36.149055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.681622, 28.497314, 35.800274>,  <44.596390, 28.416431, 35.591007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.681622, 28.497314, 35.800274>,  <44.823677, 28.632118, 36.149055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681622, 28.497314, 35.800274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513632, -0.708995, 0.483226,
		-0.781062, 0.619475, 0.078693,
		-0.355140, -0.337010, -0.871952,
		44.575081, 28.396212, 35.538689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173023, 28.371132, 36.229622>,  <44.823677, 28.632118, 36.149055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173023, 28.371132, 36.229622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.248013, 28.219238, 35.867260>,  <44.293007, 28.128101, 35.649845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.248013, 28.219238, 35.867260>,  <44.173023, 28.371132, 36.229622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248013, 28.219238, 35.867260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465286, -0.846552, 0.258569,
		-0.865080, 0.373029, -0.335389,
		0.187470, -0.379734, -0.905901,
		44.304253, 28.105318, 35.595490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500790, 28.028074, 36.071667>,  <44.173023, 28.371132, 36.229622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500790, 28.028074, 36.071667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759716, 27.860470, 35.816978>,  <43.915073, 27.759907, 35.664165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759716, 27.860470, 35.816978>,  <43.500790, 28.028074, 36.071667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759716, 27.860470, 35.816978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527341, -0.849347, 0.022816,
		-0.550356, 0.320999, -0.770759,
		0.647318, -0.419010, -0.636719,
		43.953911, 27.734766, 35.625961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130726, 27.824844, 35.448429>,  <43.500790, 28.028074, 36.071667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130726, 27.824844, 35.448429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453865, 27.591614, 35.414013>,  <43.647747, 27.451675, 35.393364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453865, 27.591614, 35.414013>,  <43.130726, 27.824844, 35.448429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453865, 27.591614, 35.414013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581436, -0.812311, 0.045625,
		-0.096497, 0.013171, -0.995246,
		0.807849, -0.583075, -0.086044,
		43.696220, 27.416691, 35.388199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922253, 27.295610, 35.085629>,  <43.130726, 27.824844, 35.448429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922253, 27.295610, 35.085629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252518, 27.145765, 35.254364>,  <43.450676, 27.055859, 35.355606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252518, 27.145765, 35.254364>,  <42.922253, 27.295610, 35.085629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252518, 27.145765, 35.254364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485893, -0.852152, 0.194282,
		0.286688, -0.365378, -0.885612,
		0.825662, -0.374614, 0.421836,
		43.500217, 27.033381, 35.380917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.530006, 38.666523, 38.785271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149338, 38.758438, 38.703773>,  <39.920937, 38.813587, 38.654877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149338, 38.758438, 38.703773>,  <40.530006, 38.666523, 38.785271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149338, 38.758438, 38.703773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054753, -0.525851, -0.848813,
		-0.302182, -0.818950, 0.487858,
		-0.951676, 0.229784, -0.203742,
		39.863834, 38.827374, 38.642651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078228, 38.059692, 38.822300>,  <40.530006, 38.666523, 38.785271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078228, 38.059692, 38.822300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900494, 38.327934, 38.584694>,  <39.793854, 38.488880, 38.442131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900494, 38.327934, 38.584694>,  <40.078228, 38.059692, 38.822300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900494, 38.327934, 38.584694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106601, -0.618777, -0.778300,
		-0.889496, -0.409148, 0.203457,
		-0.444334, 0.670606, -0.594016,
		39.767193, 38.529118, 38.406490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723736, 37.711445, 38.364162>,  <40.078228, 38.059692, 38.822300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723736, 37.711445, 38.364162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707802, 38.055752, 38.161186>,  <39.698242, 38.262337, 38.039402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707802, 38.055752, 38.161186>,  <39.723736, 37.711445, 38.364162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707802, 38.055752, 38.161186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127306, -0.508073, -0.851854,
		-0.991063, 0.030666, 0.129820,
		-0.039835, 0.860768, -0.507437,
		39.695850, 38.313984, 38.008957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202408, 37.582397, 37.917042>,  <39.723736, 37.711445, 38.364162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202408, 37.582397, 37.917042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401730, 37.886871, 37.751007>,  <39.521320, 38.069553, 37.651386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401730, 37.886871, 37.751007>,  <39.202408, 37.582397, 37.917042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401730, 37.886871, 37.751007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131361, -0.406952, -0.903955,
		-0.856996, 0.504967, -0.102794,
		0.498300, 0.761182, -0.415089,
		39.551220, 38.115227, 37.626480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966114, 37.712738, 37.203259>,  <39.202408, 37.582397, 37.917042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966114, 37.712738, 37.203259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308624, 37.918930, 37.190090>,  <39.514130, 38.042645, 37.182190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308624, 37.918930, 37.190090>,  <38.966114, 37.712738, 37.203259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308624, 37.918930, 37.190090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182318, -0.361255, -0.914470,
		-0.483280, 0.777032, -0.403313,
		0.856271, 0.515477, -0.032920,
		39.565506, 38.073574, 37.180214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972958, 38.148773, 36.696590>,  <38.966114, 37.712738, 37.203259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972958, 38.148773, 36.696590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366692, 38.100407, 36.747902>,  <39.602932, 38.071388, 36.778690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366692, 38.100407, 36.747902>,  <38.972958, 38.148773, 36.696590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366692, 38.100407, 36.747902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085272, -0.310320, -0.946800,
		0.154290, 0.942911, -0.295150,
		0.984339, -0.120914, 0.128283,
		39.661995, 38.064133, 36.786388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297001, 38.607563, 36.253838>,  <38.972958, 38.148773, 36.696590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297001, 38.607563, 36.253838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550468, 38.309143, 36.335686>,  <39.702549, 38.130089, 36.384796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550468, 38.309143, 36.335686>,  <39.297001, 38.607563, 36.253838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550468, 38.309143, 36.335686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068423, -0.209421, -0.975429,
		0.770574, 0.632098, -0.081656,
		0.633667, -0.746053, 0.204625,
		39.740570, 38.085327, 36.397072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703026, 38.535923, 35.709038>,  <39.297001, 38.607563, 36.253838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703026, 38.535923, 35.709038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810280, 38.180084, 35.856945>,  <39.874634, 37.966583, 35.945690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810280, 38.180084, 35.856945>,  <39.703026, 38.535923, 35.709038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810280, 38.180084, 35.856945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030081, -0.391366, -0.919743,
		0.962912, 0.235491, -0.131698,
		0.268134, -0.889593, 0.369767,
		39.890720, 37.913208, 35.967876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118778, 38.246372, 35.221165>,  <39.703026, 38.535923, 35.709038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118778, 38.246372, 35.221165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048428, 37.916714, 35.436516>,  <40.006218, 37.718918, 35.565727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048428, 37.916714, 35.436516>,  <40.118778, 38.246372, 35.221165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048428, 37.916714, 35.436516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028974, -0.542337, -0.839662,
		0.983986, -0.163275, 0.071505,
		-0.175876, -0.824143, 0.538382,
		39.995667, 37.669472, 35.598030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586266, 37.734505, 34.921021>,  <40.118778, 38.246372, 35.221165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586266, 37.734505, 34.921021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286282, 37.549603, 35.110287>,  <40.106293, 37.438663, 35.223846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286282, 37.549603, 35.110287>,  <40.586266, 37.734505, 34.921021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286282, 37.549603, 35.110287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116933, -0.611397, -0.782637,
		0.651067, -0.642274, 0.404470,
		-0.749959, -0.462253, 0.473163,
		40.061295, 37.410927, 35.252235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715801, 37.021023, 34.772533>,  <40.586266, 37.734505, 34.921021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715801, 37.021023, 34.772533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330807, 37.051517, 34.876694>,  <40.099812, 37.069817, 34.939190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330807, 37.051517, 34.876694>,  <40.715801, 37.021023, 34.772533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330807, 37.051517, 34.876694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252590, -0.602248, -0.757295,
		0.099088, -0.794660, 0.598913,
		-0.962486, 0.076241, 0.260399,
		40.042061, 37.074390, 34.954815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590176, 36.398750, 35.140728>,  <40.715801, 37.021023, 34.772533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590176, 36.398750, 35.140728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267220, 36.569267, 34.977566>,  <40.073444, 36.671577, 34.879669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267220, 36.569267, 34.977566>,  <40.590176, 36.398750, 35.140728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267220, 36.569267, 34.977566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016727, -0.707609, -0.706406,
		-0.589774, -0.563526, 0.578451,
		-0.807395, 0.426295, -0.407904,
		40.025002, 36.697155, 34.855194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119064, 35.939220, 34.820404>,  <40.590176, 36.398750, 35.140728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119064, 35.939220, 34.820404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007725, 36.282455, 34.647797>,  <39.940922, 36.488396, 34.544231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007725, 36.282455, 34.647797>,  <40.119064, 35.939220, 34.820404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007725, 36.282455, 34.647797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104653, -0.419505, -0.901700,
		-0.954760, -0.296151, 0.026969,
		-0.278352, 0.858085, -0.431520,
		39.924217, 36.539883, 34.518341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546486, 35.843956, 34.437195>,  <40.119064, 35.939220, 34.820404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546486, 35.843956, 34.437195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775547, 36.132107, 34.280670>,  <39.912983, 36.304996, 34.186756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775547, 36.132107, 34.280670>,  <39.546486, 35.843956, 34.437195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775547, 36.132107, 34.280670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091199, -0.530344, -0.842863,
		-0.814711, 0.446979, -0.369399,
		0.572650, 0.720379, -0.391313,
		39.947342, 36.348221, 34.163277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188171, 35.148617, 34.748665>,  <39.546486, 35.843956, 34.437195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188171, 35.148617, 34.748665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312359, 34.786064, 34.863258>,  <39.386871, 34.568531, 34.932014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312359, 34.786064, 34.863258>,  <39.188171, 35.148617, 34.748665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312359, 34.786064, 34.863258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555426, 0.071604, 0.828477,
		-0.771433, -0.416340, -0.481198,
		0.310472, -0.906385, 0.286484,
		39.405502, 34.514149, 34.949203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620636, 34.789753, 34.986301>,  <39.188171, 35.148617, 34.748665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620636, 34.789753, 34.986301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934341, 34.622265, 35.169426>,  <39.122566, 34.521770, 35.279301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934341, 34.622265, 35.169426>,  <38.620636, 34.789753, 34.986301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934341, 34.622265, 35.169426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370602, 0.275619, 0.886955,
		-0.497571, -0.865277, 0.060979,
		0.784268, -0.418724, 0.457813,
		39.169621, 34.496647, 35.306770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298347, 34.419716, 35.529285>,  <38.620636, 34.789753, 34.986301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298347, 34.419716, 35.529285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678928, 34.471336, 35.641056>,  <38.907276, 34.502308, 35.708118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678928, 34.471336, 35.641056>,  <38.298347, 34.419716, 35.529285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678928, 34.471336, 35.641056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303381, 0.240174, 0.922104,
		0.051888, -0.962113, 0.267667,
		0.951455, 0.129051, 0.279425,
		38.964363, 34.510052, 35.724884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287663, 34.179523, 36.127430>,  <38.298347, 34.419716, 35.529285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287663, 34.179523, 36.127430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643482, 34.361675, 36.142006>,  <38.856976, 34.470966, 36.150753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643482, 34.361675, 36.142006>,  <38.287663, 34.179523, 36.127430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643482, 34.361675, 36.142006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128785, 0.173442, 0.976387,
		0.438309, -0.873238, 0.212932,
		0.889550, 0.455382, 0.036439,
		38.910347, 34.498291, 36.152939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747986, 33.778950, 36.517849>,  <38.287663, 34.179523, 36.127430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747986, 33.778950, 36.517849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859577, 34.162544, 36.537941>,  <38.926533, 34.392700, 36.549995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859577, 34.162544, 36.537941>,  <38.747986, 33.778950, 36.517849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859577, 34.162544, 36.537941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137668, -0.011831, 0.990408,
		0.950377, -0.283220, 0.128721,
		0.278981, 0.958982, 0.050234,
		38.943272, 34.450237, 36.553013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972389, 33.878246, 37.140205>,  <38.747986, 33.778950, 36.517849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972389, 33.878246, 37.140205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002644, 34.266224, 37.047699>,  <39.020794, 34.499012, 36.992195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002644, 34.266224, 37.047699>,  <38.972389, 33.878246, 37.140205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002644, 34.266224, 37.047699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198781, 0.241940, 0.949711,
		0.977121, -0.025859, 0.211106,
		0.075633, 0.969947, -0.231265,
		39.025333, 34.557209, 36.978321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509148, 34.252964, 37.543671>,  <38.972389, 33.878246, 37.140205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509148, 34.252964, 37.543671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266262, 34.543365, 37.414543>,  <39.120533, 34.717606, 37.337067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266262, 34.543365, 37.414543>,  <39.509148, 34.252964, 37.543671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266262, 34.543365, 37.414543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001279, 0.407190, 0.913343,
		0.794540, 0.554179, -0.248179,
		-0.607211, 0.726004, -0.322820,
		39.084099, 34.761166, 37.317696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858875, 34.832951, 37.761719>,  <39.509148, 34.252964, 37.543671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858875, 34.832951, 37.761719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476841, 34.931213, 37.695423>,  <39.247620, 34.990170, 37.655647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476841, 34.931213, 37.695423>,  <39.858875, 34.832951, 37.761719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476841, 34.931213, 37.695423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000462, 0.560524, 0.828138,
		0.296333, 0.790865, -0.535461,
		-0.955084, 0.245652, -0.165736,
		39.190315, 35.004910, 37.645702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748165, 35.503521, 37.949348>,  <39.858875, 34.832951, 37.761719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748165, 35.503521, 37.949348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367359, 35.381866, 37.963039>,  <39.138878, 35.308872, 37.971256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367359, 35.381866, 37.963039>,  <39.748165, 35.503521, 37.949348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367359, 35.381866, 37.963039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116133, 0.462452, 0.879006,
		-0.283169, 0.832850, -0.475581,
		-0.952013, -0.304138, 0.034230,
		39.081757, 35.290627, 37.973309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421917, 36.035000, 38.071758>,  <39.748165, 35.503521, 37.949348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421917, 36.035000, 38.071758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141384, 35.768684, 38.173634>,  <38.973064, 35.608894, 38.234760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141384, 35.768684, 38.173634>,  <39.421917, 36.035000, 38.071758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141384, 35.768684, 38.173634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065107, 0.415623, 0.907204,
		-0.709859, 0.619666, -0.334836,
		-0.701329, -0.665787, 0.254689,
		38.930984, 35.568947, 38.250042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942787, 36.368534, 38.361931>,  <39.421917, 36.035000, 38.071758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942787, 36.368534, 38.361931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884903, 35.998383, 38.502060>,  <38.850170, 35.776291, 38.586136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884903, 35.998383, 38.502060>,  <38.942787, 36.368534, 38.361931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884903, 35.998383, 38.502060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091246, 0.365019, 0.926518,
		-0.985257, 0.102116, -0.137261,
		-0.144715, -0.925383, 0.350320,
		38.841488, 35.720768, 38.607155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394989, 36.400364, 38.797001>,  <38.942787, 36.368534, 38.361931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394989, 36.400364, 38.797001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548206, 36.052116, 38.920486>,  <38.640137, 35.843170, 38.994579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548206, 36.052116, 38.920486>,  <38.394989, 36.400364, 38.797001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548206, 36.052116, 38.920486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117822, 0.285425, 0.951131,
		-0.916186, -0.400697, 0.006752,
		0.383043, -0.870617, 0.308713,
		38.663120, 35.790932, 39.013100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941559, 36.181160, 39.292080>,  <38.394989, 36.400364, 38.797001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941559, 36.181160, 39.292080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273983, 35.977879, 39.382473>,  <38.473438, 35.855907, 39.436710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273983, 35.977879, 39.382473>,  <37.941559, 36.181160, 39.292080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273983, 35.977879, 39.382473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105681, 0.254616, 0.961250,
		-0.546052, -0.822737, 0.157893,
		0.831059, -0.508207, 0.225981,
		38.523300, 35.825417, 39.450268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772644, 35.802441, 39.887978>,  <37.941559, 36.181160, 39.292080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772644, 35.802441, 39.887978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171349, 35.834541, 39.890144>,  <38.410572, 35.853802, 39.891445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171349, 35.834541, 39.890144>,  <37.772644, 35.802441, 39.887978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171349, 35.834541, 39.890144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036497, 0.391206, 0.919579,
		0.071681, -0.916797, 0.392868,
		0.996760, 0.080255, 0.005419,
		38.470375, 35.858620, 39.891769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475021, 35.149052, 40.157040>,  <37.772644, 35.802441, 39.887978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475021, 35.149052, 40.157040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080814, 35.160458, 40.223896>,  <36.844288, 35.167301, 40.264011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080814, 35.160458, 40.223896>,  <37.475021, 35.149052, 40.157040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080814, 35.160458, 40.223896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165077, -0.386504, -0.907394,
		0.038725, -0.921847, 0.385616,
		-0.985520, 0.028518, 0.167143,
		36.785160, 35.169014, 40.274040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141327, 34.585163, 39.732452>,  <37.475021, 35.149052, 40.157040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141327, 34.585163, 39.732452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833118, 34.827019, 39.813152>,  <36.648193, 34.972134, 39.861572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833118, 34.827019, 39.813152>,  <37.141327, 34.585163, 39.732452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833118, 34.827019, 39.813152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412483, -0.231687, -0.881010,
		-0.485951, -0.762058, 0.427924,
		-0.770525, 0.604639, 0.201747,
		36.601959, 35.008411, 39.873676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547962, 34.203415, 39.562187>,  <37.141327, 34.585163, 39.732452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547962, 34.203415, 39.562187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409462, 34.578667, 39.563889>,  <36.326363, 34.803818, 39.564907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409462, 34.578667, 39.563889>,  <36.547962, 34.203415, 39.562187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409462, 34.578667, 39.563889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549702, -0.199215, -0.811259,
		-0.760221, -0.283237, 0.584672,
		-0.346254, 0.938131, 0.004249,
		36.305584, 34.860107, 39.565163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948429, 34.093475, 39.337864>,  <36.547962, 34.203415, 39.562187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948429, 34.093475, 39.337864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010761, 34.486160, 39.294113>,  <36.048161, 34.721771, 39.267864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010761, 34.486160, 39.294113>,  <35.948429, 34.093475, 39.337864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010761, 34.486160, 39.294113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534133, -0.009399, -0.845348,
		-0.830915, 0.190149, 0.522899,
		0.155828, 0.981710, -0.109374,
		36.057510, 34.780674, 39.261299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314667, 34.305077, 39.197048>,  <35.948429, 34.093475, 39.337864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314667, 34.305077, 39.197048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591991, 34.550106, 39.045219>,  <35.758385, 34.697124, 38.954121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591991, 34.550106, 39.045219>,  <35.314667, 34.305077, 39.197048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591991, 34.550106, 39.045219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484833, 0.006808, -0.874580,
		-0.533160, 0.790385, 0.301715,
		0.693309, 0.612572, -0.379575,
		35.799984, 34.733879, 38.931347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944553, 34.731319, 38.705082>,  <35.314667, 34.305077, 39.197048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944553, 34.731319, 38.705082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323051, 34.778801, 38.584724>,  <35.550148, 34.807289, 38.512508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323051, 34.778801, 38.584724>,  <34.944553, 34.731319, 38.705082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323051, 34.778801, 38.584724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310101, 0.068302, -0.948247,
		-0.092006, 0.990578, 0.101439,
		0.946241, 0.118701, -0.300895,
		35.606922, 34.814411, 38.494457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931374, 35.213097, 38.292080>,  <34.944553, 34.731319, 38.705082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931374, 35.213097, 38.292080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297832, 35.075153, 38.210358>,  <35.517708, 34.992386, 38.161324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297832, 35.075153, 38.210358>,  <34.931374, 35.213097, 38.292080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297832, 35.075153, 38.210358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208777, 0.024550, -0.977655,
		0.342170, 0.938333, -0.049507,
		0.916151, -0.344861, -0.204302,
		35.572678, 34.971695, 38.149067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284889, 35.604759, 37.893116>,  <34.931374, 35.213097, 38.292080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284889, 35.604759, 37.893116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457508, 35.249588, 37.829422>,  <35.561081, 35.036488, 37.791206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457508, 35.249588, 37.829422>,  <35.284889, 35.604759, 37.893116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457508, 35.249588, 37.829422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157880, 0.099453, -0.982438,
		0.888168, 0.449107, -0.097267,
		0.431546, -0.887926, -0.159235,
		35.586971, 34.983212, 37.781651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539543, 35.722393, 37.289669>,  <35.284889, 35.604759, 37.893116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539543, 35.722393, 37.289669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525196, 35.324375, 37.326775>,  <35.516586, 35.085564, 37.349037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525196, 35.324375, 37.326775>,  <35.539543, 35.722393, 37.289669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525196, 35.324375, 37.326775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116685, -0.088019, -0.989261,
		0.992521, -0.046306, -0.112950,
		-0.035867, -0.995042, 0.092764,
		35.514435, 35.025864, 37.354603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830074, 35.438961, 36.668793>,  <35.539543, 35.722393, 37.289669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830074, 35.438961, 36.668793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625530, 35.134186, 36.827766>,  <35.502804, 34.951321, 36.923149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625530, 35.134186, 36.827766>,  <35.830074, 35.438961, 36.668793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625530, 35.134186, 36.827766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289024, -0.283045, -0.914522,
		0.809304, -0.582519, -0.075482,
		-0.511362, -0.761943, 0.397432,
		35.472122, 34.905602, 36.946995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004002, 34.808552, 36.265938>,  <35.830074, 35.438961, 36.668793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004002, 34.808552, 36.265938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661171, 34.736660, 36.459064>,  <35.455471, 34.693527, 36.574940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661171, 34.736660, 36.459064>,  <36.004002, 34.808552, 36.265938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661171, 34.736660, 36.459064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395308, -0.371547, -0.840050,
		0.330369, -0.910851, 0.247398,
		-0.857081, -0.179728, 0.482815,
		35.404045, 34.682743, 36.603909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875629, 34.127464, 36.137432>,  <36.004002, 34.808552, 36.265938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875629, 34.127464, 36.137432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537746, 34.337513, 36.178841>,  <35.335018, 34.463543, 36.203686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537746, 34.337513, 36.178841>,  <35.875629, 34.127464, 36.137432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537746, 34.337513, 36.178841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234299, -0.188888, -0.953638,
		-0.481224, -0.829798, 0.282591,
		-0.844705, 0.525125, 0.103523,
		35.284336, 34.495049, 36.209896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.901848, 35.126850, 43.875072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558205, 35.328259, 43.838409>,  <36.352020, 35.449104, 43.816410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558205, 35.328259, 43.838409>,  <36.901848, 35.126850, 43.875072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558205, 35.328259, 43.838409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157300, 0.089346, -0.983501,
		-0.487025, -0.859350, -0.155962,
		-0.859106, 0.503523, -0.091662,
		36.300472, 35.479317, 43.810909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465412, 34.739079, 43.452503>,  <36.901848, 35.126850, 43.875072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465412, 34.739079, 43.452503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.317669, 35.110794, 43.452156>,  <36.229023, 35.333824, 43.451950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.317669, 35.110794, 43.452156>,  <36.465412, 34.739079, 43.452503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317669, 35.110794, 43.452156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072006, 0.027691, -0.997020,
		-0.926493, -0.368320, -0.077142,
		-0.369358, 0.929287, -0.000866,
		36.206860, 35.389580, 43.451897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979038, 34.716690, 42.928017>,  <36.465412, 34.739079, 43.452503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979038, 34.716690, 42.928017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.057686, 35.104725, 42.984966>,  <36.104874, 35.337547, 43.019135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.057686, 35.104725, 42.984966>,  <35.979038, 34.716690, 42.928017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057686, 35.104725, 42.984966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068167, 0.131334, -0.988992,
		-0.978108, 0.204160, -0.040305,
		0.196619, 0.970088, 0.142375,
		36.116673, 35.395752, 43.027679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649605, 35.107185, 42.350735>,  <35.979038, 34.716690, 42.928017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649605, 35.107185, 42.350735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899578, 35.399120, 42.461578>,  <36.049564, 35.574284, 42.528084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899578, 35.399120, 42.461578>,  <35.649605, 35.107185, 42.350735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899578, 35.399120, 42.461578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276607, 0.124929, -0.952828,
		-0.730031, 0.672107, -0.123806,
		0.624935, 0.729839, 0.277111,
		36.087059, 35.618073, 42.544712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527439, 35.644463, 41.789082>,  <35.649605, 35.107185, 42.350735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527439, 35.644463, 41.789082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.888649, 35.714214, 41.946121>,  <36.105377, 35.756065, 42.040344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.888649, 35.714214, 41.946121>,  <35.527439, 35.644463, 41.789082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888649, 35.714214, 41.946121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399040, -0.002068, -0.916931,
		-0.159078, 0.984677, -0.071450,
		0.903029, 0.174375, 0.392596,
		36.159557, 35.766525, 42.063900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822773, 36.349606, 41.711575>,  <35.527439, 35.644463, 41.789082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822773, 36.349606, 41.711575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132957, 36.100037, 41.750309>,  <36.319069, 35.950294, 41.773552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132957, 36.100037, 41.750309>,  <35.822773, 36.349606, 41.711575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132957, 36.100037, 41.750309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171643, 0.060718, -0.983286,
		0.607613, 0.779125, 0.154176,
		0.775464, -0.623921, 0.096839,
		36.365597, 35.912861, 41.779362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260464, 36.501831, 41.099270>,  <35.822773, 36.349606, 41.711575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260464, 36.501831, 41.099270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378845, 36.145073, 41.236053>,  <36.449875, 35.931019, 41.318123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378845, 36.145073, 41.236053>,  <36.260464, 36.501831, 41.099270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378845, 36.145073, 41.236053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137195, -0.314598, -0.939258,
		0.945298, 0.324893, 0.029256,
		0.295954, -0.891893, 0.341963,
		36.467632, 35.877506, 41.338642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884468, 36.338257, 40.772552>,  <36.260464, 36.501831, 41.099270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884468, 36.338257, 40.772552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775383, 35.973919, 40.896477>,  <36.709930, 35.755314, 40.970829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775383, 35.973919, 40.896477>,  <36.884468, 36.338257, 40.772552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775383, 35.973919, 40.896477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207221, -0.370066, -0.905599,
		0.939514, -0.182772, 0.289670,
		-0.272715, -0.910849, 0.309808,
		36.693569, 35.700665, 40.989418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394001, 35.775658, 40.575470>,  <36.884468, 36.338257, 40.772552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394001, 35.775658, 40.575470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052467, 35.579174, 40.644394>,  <36.847549, 35.461285, 40.685749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052467, 35.579174, 40.644394>,  <37.394001, 35.775658, 40.575470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052467, 35.579174, 40.644394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163189, -0.566903, -0.807459,
		0.494309, -0.661316, 0.564199,
		-0.853832, -0.491205, 0.172306,
		36.796318, 35.431812, 40.696087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023628, 35.596718, 40.683754>,  <37.394001, 35.775658, 40.575470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023628, 35.596718, 40.683754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327969, 35.789673, 40.510128>,  <38.510574, 35.905445, 40.405952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327969, 35.789673, 40.510128>,  <38.023628, 35.596718, 40.683754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327969, 35.789673, 40.510128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123271, 0.549274, 0.826500,
		0.637112, -0.682350, 0.358451,
		0.760850, 0.482386, -0.434063,
		38.556225, 35.934387, 40.379910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618351, 35.554043, 41.176197>,  <38.023628, 35.596718, 40.683754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618351, 35.554043, 41.176197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727276, 35.841091, 40.919804>,  <38.792629, 36.013321, 40.765968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727276, 35.841091, 40.919804>,  <38.618351, 35.554043, 41.176197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727276, 35.841091, 40.919804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379191, 0.532217, 0.756941,
		0.884342, -0.449181, -0.127187,
		0.272313, 0.717623, -0.640987,
		38.808971, 36.056377, 40.727509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430553, 35.797325, 41.285301>,  <38.618351, 35.554043, 41.176197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430553, 35.797325, 41.285301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193512, 36.073719, 41.119720>,  <39.051285, 36.239555, 41.020370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193512, 36.073719, 41.119720>,  <39.430553, 35.797325, 41.285301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193512, 36.073719, 41.119720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254998, 0.648415, 0.717310,
		0.764062, 0.319527, -0.560456,
		-0.592608, 0.690985, -0.413951,
		39.015728, 36.281013, 40.995537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791622, 36.361221, 41.372551>,  <39.430553, 35.797325, 41.285301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791622, 36.361221, 41.372551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428478, 36.517033, 41.310520>,  <39.210590, 36.610519, 41.273300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428478, 36.517033, 41.310520>,  <39.791622, 36.361221, 41.372551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428478, 36.517033, 41.310520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157246, 0.659230, 0.735316,
		0.388663, 0.643180, -0.659743,
		-0.907863, 0.389532, -0.155081,
		39.156120, 36.633892, 41.263996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795082, 37.078869, 41.563389>,  <39.791622, 36.361221, 41.372551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795082, 37.078869, 41.563389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397545, 37.061314, 41.522701>,  <39.159023, 37.050781, 41.498291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397545, 37.061314, 41.522701>,  <39.795082, 37.078869, 41.563389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397545, 37.061314, 41.522701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107208, 0.612280, 0.783338,
		0.027904, 0.789422, -0.613216,
		-0.993845, -0.043884, -0.101717,
		39.099392, 37.048149, 41.492188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478737, 37.643036, 41.784149>,  <39.795082, 37.078869, 41.563389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478737, 37.643036, 41.784149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149368, 37.418678, 41.818508>,  <38.951748, 37.284061, 41.839123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149368, 37.418678, 41.818508>,  <39.478737, 37.643036, 41.784149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149368, 37.418678, 41.818508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230388, 0.468802, 0.852729,
		-0.518562, 0.682362, -0.515243,
		-0.823417, -0.560898, 0.085895,
		38.902344, 37.250408, 41.844276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948269, 38.087158, 41.941502>,  <39.478737, 37.643036, 41.784149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948269, 38.087158, 41.941502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817852, 37.733860, 42.076305>,  <38.739601, 37.521881, 42.157188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817852, 37.733860, 42.076305>,  <38.948269, 38.087158, 41.941502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817852, 37.733860, 42.076305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405438, 0.452686, 0.794164,
		-0.854002, 0.122291, -0.505694,
		-0.326040, -0.883244, 0.337013,
		38.720039, 37.468887, 42.177410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319016, 38.131123, 42.232574>,  <38.948269, 38.087158, 41.941502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319016, 38.131123, 42.232574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.421459, 37.784340, 42.403591>,  <38.482925, 37.576271, 42.506199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.421459, 37.784340, 42.403591>,  <38.319016, 38.131123, 42.232574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421459, 37.784340, 42.403591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362074, 0.324056, 0.874008,
		-0.896277, -0.378640, -0.230911,
		0.256106, -0.866960, 0.427539,
		38.498291, 37.524250, 42.531853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754398, 37.717400, 42.640156>,  <38.319016, 38.131123, 42.232574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754398, 37.717400, 42.640156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.090401, 37.560860, 42.790482>,  <38.292004, 37.466934, 42.880676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.090401, 37.560860, 42.790482>,  <37.754398, 37.717400, 42.640156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090401, 37.560860, 42.790482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336246, 0.168121, 0.926647,
		-0.425823, -0.904755, 0.009633,
		0.840008, -0.391349, 0.375810,
		38.342403, 37.443455, 42.903225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539085, 37.238724, 43.226467>,  <37.754398, 37.717400, 42.640156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539085, 37.238724, 43.226467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929035, 37.297993, 43.293003>,  <38.163006, 37.333553, 43.332924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929035, 37.297993, 43.293003>,  <37.539085, 37.238724, 43.226467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929035, 37.297993, 43.293003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195744, 0.213325, 0.957171,
		0.106344, -0.965680, 0.236968,
		0.974872, 0.148175, 0.166341,
		38.221497, 37.342445, 43.342907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652161, 36.900509, 43.883884>,  <37.539085, 37.238724, 43.226467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652161, 36.900509, 43.883884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.947861, 37.164406, 43.829857>,  <38.125282, 37.322742, 43.797440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.947861, 37.164406, 43.829857>,  <37.652161, 36.900509, 43.883884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947861, 37.164406, 43.829857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065870, 0.270451, 0.960478,
		0.670198, -0.701139, 0.243389,
		0.739253, 0.659742, -0.135072,
		38.169636, 37.362328, 43.789337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063133, 36.796440, 44.389549>,  <37.652161, 36.900509, 43.883884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063133, 36.796440, 44.389549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216553, 37.147972, 44.276020>,  <38.308605, 37.358891, 44.207905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216553, 37.147972, 44.276020>,  <38.063133, 36.796440, 44.389549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216553, 37.147972, 44.276020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300756, 0.171707, 0.938116,
		0.873177, -0.445171, -0.198456,
		0.383546, 0.878829, -0.283818,
		38.331615, 37.411621, 44.190876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727211, 36.811127, 44.672390>,  <38.063133, 36.796440, 44.389549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727211, 36.811127, 44.672390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674606, 37.199150, 44.590721>,  <38.643044, 37.431965, 44.541718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674606, 37.199150, 44.590721>,  <38.727211, 36.811127, 44.672390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674606, 37.199150, 44.590721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231385, 0.230313, 0.945207,
		0.963932, 0.077067, -0.254747,
		-0.131516, 0.970060, -0.204174,
		38.635151, 37.490170, 44.529469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320019, 37.107594, 44.898605>,  <38.727211, 36.811127, 44.672390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320019, 37.107594, 44.898605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.041107, 37.393597, 44.918884>,  <38.873760, 37.565197, 44.931053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.041107, 37.393597, 44.918884>,  <39.320019, 37.107594, 44.898605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041107, 37.393597, 44.918884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246980, 0.173251, 0.953407,
		0.672906, 0.677314, -0.297396,
		-0.697280, 0.715004, 0.050701,
		38.831924, 37.608097, 44.934093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.654720, 42.230499, 43.141502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.766350, 41.889931, 43.319134>,  <34.833328, 41.685589, 43.425713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.766350, 41.889931, 43.319134>,  <34.654720, 42.230499, 43.141502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766350, 41.889931, 43.319134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134866, -0.423117, -0.895982,
		0.950752, 0.309935, -0.003253,
		0.279073, -0.851418, 0.444079,
		34.850071, 41.634506, 43.452358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315369, 42.057873, 42.924751>,  <34.654720, 42.230499, 43.141502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315369, 42.057873, 42.924751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.123684, 41.723587, 43.032028>,  <35.008671, 41.523014, 43.096394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.123684, 41.723587, 43.032028>,  <35.315369, 42.057873, 42.924751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123684, 41.723587, 43.032028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018096, -0.296092, -0.954988,
		0.877512, -0.462497, 0.126768,
		-0.479214, -0.835719, 0.268193,
		34.979919, 41.472870, 43.112488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626179, 41.595142, 42.596420>,  <35.315369, 42.057873, 42.924751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626179, 41.595142, 42.596420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.300400, 41.391106, 42.707047>,  <35.104931, 41.268684, 42.773422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.300400, 41.391106, 42.707047>,  <35.626179, 41.595142, 42.596420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300400, 41.391106, 42.707047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088756, -0.361509, -0.928135,
		0.573410, -0.780463, 0.249157,
		-0.814447, -0.510087, 0.276563,
		35.056065, 41.238079, 42.790016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713017, 41.018078, 42.213081>,  <35.626179, 41.595142, 42.596420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713017, 41.018078, 42.213081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327091, 41.011250, 42.318027>,  <35.095535, 41.007153, 42.380997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327091, 41.011250, 42.318027>,  <35.713017, 41.018078, 42.213081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327091, 41.011250, 42.318027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237189, -0.374064, -0.896559,
		0.113449, -0.927246, 0.356854,
		-0.964816, -0.017071, 0.262370,
		35.037647, 41.006126, 42.396740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561096, 40.347054, 42.062294>,  <35.713017, 41.018078, 42.213081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561096, 40.347054, 42.062294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214706, 40.547081, 42.060051>,  <35.006874, 40.667095, 42.058704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214706, 40.547081, 42.060051>,  <35.561096, 40.347054, 42.062294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214706, 40.547081, 42.060051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333443, -0.585719, -0.738748,
		-0.372708, -0.637863, 0.673958,
		-0.865970, 0.500064, -0.005611,
		34.954914, 40.697102, 42.058369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182304, 39.790977, 41.929588>,  <35.561096, 40.347054, 42.062294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182304, 39.790977, 41.929588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972282, 40.115353, 41.826275>,  <34.846272, 40.309978, 41.764286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972282, 40.115353, 41.826275>,  <35.182304, 39.790977, 41.929588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972282, 40.115353, 41.826275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331737, -0.474480, -0.815365,
		-0.783756, -0.342426, 0.518142,
		-0.525050, 0.810934, -0.258281,
		34.814766, 40.358631, 41.748791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425625, 39.611183, 41.717220>,  <35.182304, 39.790977, 41.929588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425625, 39.611183, 41.717220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476707, 39.968555, 41.544952>,  <34.507359, 40.182980, 41.441593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476707, 39.968555, 41.544952>,  <34.425625, 39.611183, 41.717220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476707, 39.968555, 41.544952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352985, -0.364850, -0.861560,
		-0.926872, 0.262049, 0.268773,
		0.127709, 0.893429, -0.430669,
		34.515018, 40.236584, 41.415752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832932, 39.718227, 41.249748>,  <34.425625, 39.611183, 41.717220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832932, 39.718227, 41.249748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106911, 39.988079, 41.139675>,  <34.271297, 40.149990, 41.073631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106911, 39.988079, 41.139675>,  <33.832932, 39.718227, 41.249748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106911, 39.988079, 41.139675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299733, -0.083341, -0.950376,
		-0.664087, 0.733435, 0.145125,
		0.684944, 0.674631, -0.275181,
		34.312393, 40.190468, 41.057121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610134, 40.027462, 40.671902>,  <33.832932, 39.718227, 41.249748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610134, 40.027462, 40.671902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007923, 40.062328, 40.648468>,  <34.246597, 40.083248, 40.634407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007923, 40.062328, 40.648468>,  <33.610134, 40.027462, 40.671902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007923, 40.062328, 40.648468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046419, -0.135601, -0.989676,
		-0.094212, 0.986922, -0.130805,
		0.994469, 0.087168, -0.058587,
		34.306263, 40.088478, 40.630894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696857, 40.381252, 40.093418>,  <33.610134, 40.027462, 40.671902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696857, 40.381252, 40.093418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071125, 40.247044, 40.137131>,  <34.295685, 40.166519, 40.163357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071125, 40.247044, 40.137131>,  <33.696857, 40.381252, 40.093418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071125, 40.247044, 40.137131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064446, -0.141992, -0.987768,
		0.346936, 0.931269, -0.111235,
		0.935672, -0.335524, 0.109279,
		34.351826, 40.146385, 40.169914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166531, 40.632042, 39.576912>,  <33.696857, 40.381252, 40.093418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166531, 40.632042, 39.576912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408287, 40.335632, 39.693943>,  <34.553341, 40.157787, 39.764160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408287, 40.335632, 39.693943>,  <34.166531, 40.632042, 39.576912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408287, 40.335632, 39.693943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214280, -0.202507, -0.955550,
		0.767332, 0.640216, 0.036394,
		0.604388, -0.741022, 0.292576,
		34.589603, 40.113327, 39.781715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810356, 40.724979, 39.201885>,  <34.166531, 40.632042, 39.576912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810356, 40.724979, 39.201885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813812, 40.337883, 39.302612>,  <34.815887, 40.105625, 39.363049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813812, 40.337883, 39.302612>,  <34.810356, 40.724979, 39.201885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813812, 40.337883, 39.302612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286397, -0.238879, -0.927854,
		0.958072, 0.080135, 0.275093,
		0.008639, -0.967737, 0.251813,
		34.816402, 40.047562, 39.378155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339443, 40.501617, 39.012009>,  <34.810356, 40.724979, 39.201885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339443, 40.501617, 39.012009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097862, 40.183506, 39.033077>,  <34.952915, 39.992638, 39.045719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097862, 40.183506, 39.033077>,  <35.339443, 40.501617, 39.012009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097862, 40.183506, 39.033077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354971, -0.327570, -0.875610,
		0.713608, -0.510129, 0.480137,
		-0.603953, -0.795277, 0.052676,
		34.916676, 39.944923, 39.048882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765072, 39.884819, 38.781013>,  <35.339443, 40.501617, 39.012009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765072, 39.884819, 38.781013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376686, 39.824078, 38.707073>,  <35.143654, 39.787632, 38.662708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376686, 39.824078, 38.707073>,  <35.765072, 39.884819, 38.781013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376686, 39.824078, 38.707073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210164, -0.172301, -0.962363,
		0.114284, -0.973270, 0.199212,
		-0.970964, -0.151850, -0.184855,
		35.085396, 39.778522, 38.651615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401566, 39.425793, 38.844887>,  <35.765072, 39.884819, 38.781013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401566, 39.425793, 38.844887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520653, 39.767651, 38.674732>,  <36.592102, 39.972763, 38.572639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520653, 39.767651, 38.674732>,  <36.401566, 39.425793, 38.844887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520653, 39.767651, 38.674732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242010, 0.363474, 0.899621,
		0.923471, -0.370777, -0.098621,
		0.297713, 0.854641, -0.425389,
		36.609966, 40.024044, 38.547115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949039, 39.691647, 39.181099>,  <36.401566, 39.425793, 38.844887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949039, 39.691647, 39.181099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.807102, 40.015137, 38.993462>,  <36.721939, 40.209232, 38.880878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.807102, 40.015137, 38.993462>,  <36.949039, 39.691647, 39.181099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807102, 40.015137, 38.993462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159073, 0.546655, 0.822110,
		0.921294, 0.217099, -0.322622,
		-0.354842, 0.808725, -0.469096,
		36.700649, 40.257755, 38.852734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485634, 40.132019, 39.288151>,  <36.949039, 39.691647, 39.181099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485634, 40.132019, 39.288151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.170067, 40.366730, 39.215157>,  <36.980728, 40.507557, 39.171360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.170067, 40.366730, 39.215157>,  <37.485634, 40.132019, 39.288151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170067, 40.366730, 39.215157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249161, 0.576912, 0.777876,
		0.561718, 0.568212, -0.601339,
		-0.788918, 0.586777, -0.182485,
		36.933392, 40.542763, 39.160412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695858, 40.806675, 39.074631>,  <37.485634, 40.132019, 39.288151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695858, 40.806675, 39.074631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338272, 40.843613, 39.250042>,  <37.123722, 40.865776, 39.355289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338272, 40.843613, 39.250042>,  <37.695858, 40.806675, 39.074631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338272, 40.843613, 39.250042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376990, 0.684043, 0.624471,
		-0.242302, 0.723573, -0.646322,
		-0.893962, 0.092346, 0.438524,
		37.070084, 40.871315, 39.381599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705303, 41.550198, 39.285191>,  <37.695858, 40.806675, 39.074631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705303, 41.550198, 39.285191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.384914, 41.412045, 39.480801>,  <37.192680, 41.329155, 39.598167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.384914, 41.412045, 39.480801>,  <37.705303, 41.550198, 39.285191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384914, 41.412045, 39.480801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178330, 0.642113, 0.745580,
		-0.571520, 0.684400, -0.452726,
		-0.800976, -0.345379, 0.489030,
		37.144623, 41.308430, 39.627510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553997, 42.121872, 39.636028>,  <37.705303, 41.550198, 39.285191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553997, 42.121872, 39.636028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.351898, 41.823975, 39.810425>,  <37.230640, 41.645237, 39.915062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.351898, 41.823975, 39.810425>,  <37.553997, 42.121872, 39.636028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351898, 41.823975, 39.810425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037109, 0.485997, 0.873173,
		-0.862177, 0.457347, -0.217911,
		-0.505247, -0.744742, 0.435987,
		37.200325, 41.600552, 39.941219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169498, 42.510792, 40.159599>,  <37.553997, 42.121872, 39.636028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169498, 42.510792, 40.159599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147129, 42.127701, 40.272472>,  <37.133709, 41.897846, 40.340199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147129, 42.127701, 40.272472>,  <37.169498, 42.510792, 40.159599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147129, 42.127701, 40.272472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012065, 0.283255, 0.958969,
		-0.998362, 0.050222, -0.027395,
		-0.055921, -0.957729, 0.282185,
		37.130352, 41.840382, 40.357128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705353, 42.556694, 40.650856>,  <37.169498, 42.510792, 40.159599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705353, 42.556694, 40.650856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848495, 42.192860, 40.735325>,  <36.934383, 41.974560, 40.786007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848495, 42.192860, 40.735325>,  <36.705353, 42.556694, 40.650856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848495, 42.192860, 40.735325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138005, 0.275186, 0.951434,
		-0.923521, -0.311338, 0.224006,
		0.357860, -0.909583, 0.211174,
		36.955853, 41.919983, 40.798676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272408, 42.288509, 41.189472>,  <36.705353, 42.556694, 40.650856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272408, 42.288509, 41.189472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606987, 42.069538, 41.199902>,  <36.807735, 41.938156, 41.206158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606987, 42.069538, 41.199902>,  <36.272408, 42.288509, 41.189472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606987, 42.069538, 41.199902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028460, 0.090890, 0.995454,
		-0.547309, -0.831902, 0.091605,
		0.836446, -0.547428, 0.026069,
		36.857922, 41.905312, 41.207722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168720, 41.638489, 41.638252>,  <36.272408, 42.288509, 41.189472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168720, 41.638489, 41.638252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561337, 41.714367, 41.628494>,  <36.796906, 41.759892, 41.622639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561337, 41.714367, 41.628494>,  <36.168720, 41.638489, 41.638252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561337, 41.714367, 41.628494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021751, 0.016016, 0.999635,
		0.190016, -0.981712, 0.011595,
		0.981540, 0.189694, -0.024397,
		36.855797, 41.771275, 41.621174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470833, 41.226177, 42.220448>,  <36.168720, 41.638489, 41.638252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470833, 41.226177, 42.220448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.723896, 41.519890, 42.121994>,  <36.875732, 41.696117, 42.062923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.723896, 41.519890, 42.121994>,  <36.470833, 41.226177, 42.220448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723896, 41.519890, 42.121994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264694, 0.093654, 0.959774,
		0.727796, -0.672353, -0.135110,
		0.632654, 0.734282, -0.246129,
		36.913692, 41.740173, 42.048157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955856, 41.173733, 42.731949>,  <36.470833, 41.226177, 42.220448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955856, 41.173733, 42.731949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090328, 41.523628, 42.592339>,  <37.171013, 41.733566, 42.508572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090328, 41.523628, 42.592339>,  <36.955856, 41.173733, 42.731949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090328, 41.523628, 42.592339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283785, 0.259286, 0.923167,
		0.898025, -0.409398, -0.161070,
		0.336179, 0.874736, -0.349027,
		37.191181, 41.786049, 42.487629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689144, 41.203846, 42.914062>,  <36.955856, 41.173733, 42.731949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689144, 41.203846, 42.914062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517109, 41.562263, 42.870010>,  <37.413887, 41.777313, 42.843578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517109, 41.562263, 42.870010>,  <37.689144, 41.203846, 42.914062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517109, 41.562263, 42.870010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226723, 0.225282, 0.947547,
		0.873854, 0.382561, -0.300045,
		-0.430089, 0.896044, -0.110129,
		37.388081, 41.831078, 42.836971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118965, 41.699230, 43.222870>,  <37.689144, 41.203846, 42.914062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118965, 41.699230, 43.222870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760807, 41.877274, 43.227699>,  <37.545914, 41.984100, 43.230595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760807, 41.877274, 43.227699>,  <38.118965, 41.699230, 43.222870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760807, 41.877274, 43.227699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175234, 0.327323, 0.928522,
		0.409343, 0.833509, -0.371082,
		-0.895395, 0.445110, 0.012071,
		37.492188, 42.010807, 43.231319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880623, 41.711231, 43.532402>,  <38.118965, 41.699230, 43.222870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880623, 41.711231, 43.532402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.912804, 41.335022, 43.664433>,  <38.932114, 41.109299, 43.743649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.912804, 41.335022, 43.664433>,  <38.880623, 41.711231, 43.532402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912804, 41.335022, 43.664433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187134, -0.311004, -0.931803,
		0.979034, 0.136737, 0.150981,
		0.080456, -0.940521, 0.330072,
		38.936939, 41.052864, 43.763454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481037, 41.467751, 43.317959>,  <38.880623, 41.711231, 43.532402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481037, 41.467751, 43.317959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253685, 41.146595, 43.389866>,  <39.117271, 40.953903, 43.433010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253685, 41.146595, 43.389866>,  <39.481037, 41.467751, 43.317959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253685, 41.146595, 43.389866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252496, -0.378161, -0.890640,
		0.783063, -0.460834, 0.417666,
		-0.568383, -0.802887, 0.179765,
		39.083172, 40.905727, 43.443794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895004, 41.034538, 43.008400>,  <39.481037, 41.467751, 43.317959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895004, 41.034538, 43.008400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.589355, 40.782932, 43.065624>,  <39.405968, 40.631969, 43.099957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.589355, 40.782932, 43.065624>,  <39.895004, 41.034538, 43.008400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589355, 40.782932, 43.065624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174242, -0.414783, -0.893082,
		0.621100, -0.657492, 0.426544,
		-0.764117, -0.629015, 0.143059,
		39.360119, 40.594227, 43.108543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176205, 40.314495, 42.831230>,  <39.895004, 41.034538, 43.008400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176205, 40.314495, 42.831230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.778660, 40.314392, 42.786991>,  <39.540131, 40.314331, 42.760448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.778660, 40.314392, 42.786991>,  <40.176205, 40.314495, 42.831230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778660, 40.314392, 42.786991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101767, -0.393595, -0.913634,
		-0.043295, -0.919284, 0.391206,
		-0.993866, -0.000256, -0.110594,
		39.480499, 40.314316, 42.753815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951809, 39.734753, 42.578152>,  <40.176205, 40.314495, 42.831230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951809, 39.734753, 42.578152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.616848, 39.935947, 42.492577>,  <39.415871, 40.056664, 42.441231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.616848, 39.935947, 42.492577>,  <39.951809, 39.734753, 42.578152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616848, 39.935947, 42.492577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029571, -0.432514, -0.901142,
		-0.545790, -0.748290, 0.377061,
		-0.837400, 0.502985, -0.213934,
		39.365627, 40.086842, 42.428398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580227, 39.235622, 42.178612>,  <39.951809, 39.734753, 42.578152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580227, 39.235622, 42.178612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397377, 39.585285, 42.113010>,  <39.287666, 39.795082, 42.073650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397377, 39.585285, 42.113010>,  <39.580227, 39.235622, 42.178612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397377, 39.585285, 42.113010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132277, -0.249161, -0.959386,
		-0.879513, -0.416862, 0.229527,
		-0.457121, 0.874154, -0.163999,
		39.260242, 39.847530, 42.063812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917316, 39.079506, 41.960030>,  <39.580227, 39.235622, 42.178612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917316, 39.079506, 41.960030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001209, 39.444134, 41.818581>,  <39.051544, 39.662910, 41.733711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001209, 39.444134, 41.818581>,  <38.917316, 39.079506, 41.960030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001209, 39.444134, 41.818581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088229, -0.342544, -0.935350,
		-0.973769, 0.227376, 0.008583,
		0.209736, 0.911572, -0.353619,
		39.064129, 39.717606, 41.712494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451557, 39.123638, 41.522705>,  <38.917316, 39.079506, 41.960030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451557, 39.123638, 41.522705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745712, 39.376522, 41.425117>,  <38.922203, 39.528252, 41.366566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745712, 39.376522, 41.425117>,  <38.451557, 39.123638, 41.522705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745712, 39.376522, 41.425117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143221, -0.206885, -0.967826,
		-0.662344, 0.746664, -0.061594,
		0.735384, 0.632212, -0.243967,
		38.966328, 39.566185, 41.351929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147678, 39.465355, 40.962807>,  <38.451557, 39.123638, 41.522705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147678, 39.465355, 40.962807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.543205, 39.511913, 40.925499>,  <38.780521, 39.539848, 40.903114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.543205, 39.511913, 40.925499>,  <38.147678, 39.465355, 40.962807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543205, 39.511913, 40.925499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070833, -0.183818, -0.980405,
		-0.131263, 0.976044, -0.173516,
		0.988814, 0.116400, -0.093265,
		38.839848, 39.546833, 40.897518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254349, 39.887218, 40.393021>,  <38.147678, 39.465355, 40.962807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254349, 39.887218, 40.393021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.608326, 39.703636, 40.424614>,  <38.820713, 39.593487, 40.443569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.608326, 39.703636, 40.424614>,  <38.254349, 39.887218, 40.393021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608326, 39.703636, 40.424614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041839, -0.247262, -0.968045,
		0.463817, 0.853360, -0.238015,
		0.884943, -0.458954, 0.078981,
		38.873810, 39.565948, 40.448307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653542, 40.243763, 39.862988>,  <38.254349, 39.887218, 40.393021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653542, 40.243763, 39.862988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.847454, 39.909920, 39.967613>,  <38.963802, 39.709614, 40.030388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.847454, 39.909920, 39.967613>,  <38.653542, 40.243763, 39.862988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847454, 39.909920, 39.967613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203817, -0.183028, -0.961748,
		0.850557, 0.519548, 0.081379,
		0.484780, -0.834608, 0.261568,
		38.992889, 39.659538, 40.046085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202320, 40.222698, 39.454189>,  <38.653542, 40.243763, 39.862988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202320, 40.222698, 39.454189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.216919, 39.847050, 39.590843>,  <39.225677, 39.621658, 39.672836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.216919, 39.847050, 39.590843>,  <39.202320, 40.222698, 39.454189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216919, 39.847050, 39.590843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391076, -0.301175, -0.869686,
		0.919635, 0.165347, 0.356277,
		0.036498, -0.939124, 0.341634,
		39.227867, 39.565311, 39.693333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894211, 39.931992, 39.283047>,  <39.202320, 40.222698, 39.454189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894211, 39.931992, 39.283047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.647129, 39.617935, 39.300938>,  <39.498882, 39.429501, 39.311672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.647129, 39.617935, 39.300938>,  <39.894211, 39.931992, 39.283047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647129, 39.617935, 39.300938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330559, -0.310834, -0.891130,
		0.713566, -0.535665, 0.451538,
		-0.617701, -0.785140, 0.044731,
		39.461819, 39.382393, 39.314358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306461, 39.336571, 39.147713>,  <39.894211, 39.931992, 39.283047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306461, 39.336571, 39.147713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.930027, 39.226295, 39.069382>,  <39.704166, 39.160130, 39.022385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.930027, 39.226295, 39.069382>,  <40.306461, 39.336571, 39.147713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930027, 39.226295, 39.069382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304163, -0.437044, -0.846450,
		0.147776, -0.856146, 0.495153,
		-0.941088, -0.275693, -0.195823,
		39.647701, 39.143589, 39.010635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.363939, 42.125156, 30.595230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.983976, 42.000160, 30.593317>,  <25.755999, 41.925163, 30.592169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.983976, 42.000160, 30.593317>,  <26.363939, 42.125156, 30.595230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983976, 42.000160, 30.593317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218620, -0.675340, 0.704359,
		-0.223335, 0.668031, 0.709828,
		-0.949909, -0.312491, -0.004782,
		25.699003, 41.906414, 30.591883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232946, 42.086201, 31.265589>,  <26.363939, 42.125156, 30.595230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232946, 42.086201, 31.265589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.935427, 41.861656, 31.120459>,  <25.756916, 41.726929, 31.033381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.935427, 41.861656, 31.120459>,  <26.232946, 42.086201, 31.265589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935427, 41.861656, 31.120459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319395, -0.775340, 0.544826,
		-0.587155, 0.289356, 0.755991,
		-0.743798, -0.561357, -0.362825,
		25.712288, 41.693249, 31.011610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009588, 41.757092, 31.825453>,  <26.232946, 42.086201, 31.265589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009588, 41.757092, 31.825453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.847933, 41.544304, 31.527815>,  <25.750940, 41.416630, 31.349232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.847933, 41.544304, 31.527815>,  <26.009588, 41.757092, 31.825453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847933, 41.544304, 31.527815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076704, -0.830332, 0.551965,
		-0.911476, 0.165995, 0.376373,
		-0.404138, -0.531972, -0.744096,
		25.726692, 41.384712, 31.304586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489416, 41.321320, 32.109348>,  <26.009588, 41.757092, 31.825453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489416, 41.321320, 32.109348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.607075, 41.173317, 31.756855>,  <25.677670, 41.084515, 31.545359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.607075, 41.173317, 31.756855>,  <25.489416, 41.321320, 32.109348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607075, 41.173317, 31.756855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043744, -0.926271, 0.374311,
		-0.954760, -0.071553, -0.288642,
		0.294144, -0.370003, -0.881236,
		25.695318, 41.062317, 31.492485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130806, 40.704582, 31.977304>,  <25.489416, 41.321320, 32.109348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130806, 40.704582, 31.977304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.426119, 40.655510, 31.712009>,  <25.603308, 40.626064, 31.552832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.426119, 40.655510, 31.712009>,  <25.130806, 40.704582, 31.977304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426119, 40.655510, 31.712009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102674, -0.951417, 0.290281,
		-0.666630, -0.282407, -0.689819,
		0.738283, -0.122683, -0.663239,
		25.647604, 40.618706, 31.513037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089836, 39.980213, 31.816114>,  <25.130806, 40.704582, 31.977304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089836, 39.980213, 31.816114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.467945, 40.075203, 31.726612>,  <25.694811, 40.132198, 31.672911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.467945, 40.075203, 31.726612>,  <25.089836, 39.980213, 31.816114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467945, 40.075203, 31.726612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262005, -0.961158, 0.086770,
		-0.194457, -0.140646, -0.970776,
		0.945272, 0.237475, -0.223754,
		25.751526, 40.146446, 31.659487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269022, 39.513329, 31.285772>,  <25.089836, 39.980213, 31.816114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269022, 39.513329, 31.285772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616058, 39.644207, 31.435562>,  <25.824280, 39.722733, 31.525436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616058, 39.644207, 31.435562>,  <25.269022, 39.513329, 31.285772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616058, 39.644207, 31.435562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342586, -0.939103, 0.026819,
		0.360444, 0.105022, -0.926850,
		0.867591, 0.327193, 0.374473,
		25.876335, 39.742363, 31.547905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637657, 38.964848, 31.055820>,  <25.269022, 39.513329, 31.285772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637657, 38.964848, 31.055820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.855198, 39.153893, 31.333197>,  <25.985723, 39.267319, 31.499622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.855198, 39.153893, 31.333197>,  <25.637657, 38.964848, 31.055820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855198, 39.153893, 31.333197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488490, -0.850194, 0.196332,
		0.682349, 0.231963, -0.693249,
		0.543854, 0.472612, 0.693441,
		26.018354, 39.295677, 31.541229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275183, 38.582195, 30.985704>,  <25.637657, 38.964848, 31.055820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275183, 38.582195, 30.985704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261278, 38.762611, 31.342436>,  <26.252935, 38.870861, 31.556475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261278, 38.762611, 31.342436>,  <26.275183, 38.582195, 30.985704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261278, 38.762611, 31.342436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283694, -0.851206, 0.441550,
		0.958285, 0.268356, -0.098367,
		-0.034762, 0.451037, 0.891828,
		26.250849, 38.897923, 31.609983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950483, 38.497463, 31.386700>,  <26.275183, 38.582195, 30.985704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950483, 38.497463, 31.386700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683701, 38.601784, 31.665884>,  <26.523630, 38.664375, 31.833395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683701, 38.601784, 31.665884>,  <26.950483, 38.497463, 31.386700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683701, 38.601784, 31.665884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208751, -0.833819, 0.511048,
		0.715257, 0.486546, 0.501677,
		-0.666956, 0.260805, 0.697961,
		26.483614, 38.680027, 31.875273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355009, 38.560730, 31.968248>,  <26.950483, 38.497463, 31.386700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355009, 38.560730, 31.968248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.973064, 38.506336, 32.073887>,  <26.743896, 38.473701, 32.137268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.973064, 38.506336, 32.073887>,  <27.355009, 38.560730, 31.968248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973064, 38.506336, 32.073887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278528, -0.718873, 0.636902,
		0.103244, 0.681712, 0.724299,
		-0.954863, -0.135981, 0.264095,
		26.686605, 38.465542, 32.153114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500917, 38.346470, 32.644314>,  <27.355009, 38.560730, 31.968248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500917, 38.346470, 32.644314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121349, 38.240120, 32.576363>,  <26.893608, 38.176308, 32.535591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121349, 38.240120, 32.576363>,  <27.500917, 38.346470, 32.644314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121349, 38.240120, 32.576363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114278, -0.791484, 0.600411,
		-0.294094, 0.550329, 0.781439,
		-0.948920, -0.265878, -0.169880,
		26.836674, 38.160355, 32.525398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162699, 38.093555, 33.349342>,  <27.500917, 38.346470, 32.644314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162699, 38.093555, 33.349342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932171, 37.938786, 33.061413>,  <26.793854, 37.845924, 32.888657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932171, 37.938786, 33.061413>,  <27.162699, 38.093555, 33.349342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932171, 37.938786, 33.061413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027409, -0.889471, 0.456168,
		-0.816764, 0.243169, 0.523225,
		-0.576320, -0.386923, -0.719823,
		26.759275, 37.822708, 32.845467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680264, 37.758442, 33.729736>,  <27.162699, 38.093555, 33.349342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680264, 37.758442, 33.729736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657732, 37.593380, 33.366077>,  <26.644213, 37.494343, 33.147884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657732, 37.593380, 33.366077>,  <26.680264, 37.758442, 33.729736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657732, 37.593380, 33.366077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078900, -0.909582, 0.407964,
		-0.995290, -0.048750, 0.083795,
		-0.056330, -0.412654, -0.909144,
		26.640833, 37.469585, 33.093334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154865, 37.304237, 33.755737>,  <26.680264, 37.758442, 33.729736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154865, 37.304237, 33.755737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375160, 37.206440, 33.436512>,  <26.507338, 37.147762, 33.244976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375160, 37.206440, 33.436512>,  <26.154865, 37.304237, 33.755737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375160, 37.206440, 33.436512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138988, -0.915925, 0.376517,
		-0.823024, -0.318284, -0.470454,
		0.550739, -0.244495, -0.798066,
		26.540382, 37.133091, 33.197094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076023, 36.597443, 33.791828>,  <26.154865, 37.304237, 33.755737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076023, 36.597443, 33.791828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.372448, 36.649067, 33.528263>,  <26.550303, 36.680042, 33.370125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.372448, 36.649067, 33.528263>,  <26.076023, 36.597443, 33.791828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372448, 36.649067, 33.528263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343980, -0.915763, 0.207499,
		-0.576632, -0.380423, -0.723031,
		0.741063, 0.129058, -0.658916,
		26.594767, 36.687782, 33.330589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031590, 36.002499, 33.290520>,  <26.076023, 36.597443, 33.791828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031590, 36.002499, 33.290520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.403196, 36.150452, 33.286198>,  <26.626160, 36.239223, 33.283604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.403196, 36.150452, 33.286198>,  <26.031590, 36.002499, 33.290520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403196, 36.150452, 33.286198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357074, -0.888424, 0.288446,
		0.097091, -0.271829, -0.957435,
		0.929017, 0.369881, -0.010805,
		26.681902, 36.261417, 33.282955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447657, 35.610760, 32.841434>,  <26.031590, 36.002499, 33.290520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447657, 35.610760, 32.841434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.709053, 35.777966, 33.093853>,  <26.865891, 35.878288, 33.245304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.709053, 35.777966, 33.093853>,  <26.447657, 35.610760, 32.841434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709053, 35.777966, 33.093853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435616, -0.889477, 0.138093,
		0.619023, 0.184650, -0.763358,
		0.653490, 0.418013, 0.631043,
		26.905100, 35.903370, 33.283165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080891, 35.236065, 32.741875>,  <26.447657, 35.610760, 32.841434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080891, 35.236065, 32.741875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133417, 35.414612, 33.095940>,  <27.164932, 35.521740, 33.308380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133417, 35.414612, 33.095940>,  <27.080891, 35.236065, 32.741875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133417, 35.414612, 33.095940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445232, -0.824331, 0.349638,
		0.885734, 0.348190, -0.306984,
		0.131316, 0.446366, 0.885163,
		27.172812, 35.548523, 33.361488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813231, 35.201691, 32.962463>,  <27.080891, 35.236065, 32.741875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813231, 35.201691, 32.962463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598370, 35.254047, 33.295769>,  <27.469454, 35.285461, 33.495754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598370, 35.254047, 33.295769>,  <27.813231, 35.201691, 32.962463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598370, 35.254047, 33.295769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361085, -0.857106, 0.367406,
		0.762289, 0.498233, 0.413133,
		-0.537152, 0.130894, 0.833267,
		27.437223, 35.293316, 33.545750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254841, 34.953949, 33.464451>,  <27.813231, 35.201691, 32.962463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254841, 34.953949, 33.464451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903521, 34.951588, 33.655678>,  <27.692728, 34.950172, 33.770412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903521, 34.951588, 33.655678>,  <28.254841, 34.953949, 33.464451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903521, 34.951588, 33.655678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258560, -0.846951, 0.464565,
		0.402158, 0.531638, 0.745406,
		-0.878303, -0.005904, 0.478069,
		27.640030, 34.949818, 33.799099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945005, 35.234997, 33.246887>,  <28.254841, 34.953949, 33.464451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945005, 35.234997, 33.246887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328362, 35.338692, 33.199089>,  <29.558376, 35.400909, 33.170410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328362, 35.338692, 33.199089>,  <28.945005, 35.234997, 33.246887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328362, 35.338692, 33.199089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257513, 0.604528, -0.753812,
		-0.123179, 0.753219, 0.646133,
		0.958391, 0.259242, -0.119499,
		29.615879, 35.416466, 33.163239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940453, 35.980862, 33.261967>,  <28.945005, 35.234997, 33.246887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940453, 35.980862, 33.261967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271421, 35.842361, 33.085114>,  <29.470003, 35.759262, 32.979004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271421, 35.842361, 33.085114>,  <28.940453, 35.980862, 33.261967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271421, 35.842361, 33.085114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151534, 0.620432, -0.769482,
		0.540747, 0.703685, 0.460891,
		0.827424, -0.346255, -0.442129,
		29.519648, 35.738483, 32.952477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264515, 36.626274, 33.138107>,  <28.940453, 35.980862, 33.261967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264515, 36.626274, 33.138107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.435848, 36.351871, 32.902843>,  <29.538649, 36.187229, 32.761684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.435848, 36.351871, 32.902843>,  <29.264515, 36.626274, 33.138107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435848, 36.351871, 32.902843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260701, 0.529396, -0.807326,
		0.865197, 0.499138, 0.047916,
		0.428333, -0.686004, -0.588158,
		29.564348, 36.146069, 32.726395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900602, 36.976593, 32.886902>,  <29.264515, 36.626274, 33.138107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900602, 36.976593, 32.886902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796741, 36.688095, 32.630032>,  <29.734425, 36.514996, 32.475910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796741, 36.688095, 32.630032>,  <29.900602, 36.976593, 32.886902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796741, 36.688095, 32.630032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290230, 0.692524, -0.660437,
		0.921058, 0.014896, -0.389140,
		-0.259651, -0.721241, -0.642178,
		29.718845, 36.471722, 32.437378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165581, 37.232315, 32.241985>,  <29.900602, 36.976593, 32.886902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165581, 37.232315, 32.241985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906361, 36.943668, 32.144585>,  <29.750828, 36.770481, 32.086143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906361, 36.943668, 32.144585>,  <30.165581, 37.232315, 32.241985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906361, 36.943668, 32.144585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331913, 0.555372, -0.762493,
		0.685466, -0.413311, -0.599424,
		-0.648050, -0.721620, -0.243505,
		29.711945, 36.727180, 32.071533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342993, 37.090168, 31.497126>,  <30.165581, 37.232315, 32.241985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342993, 37.090168, 31.497126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977203, 36.981861, 31.617407>,  <29.757729, 36.916878, 31.689575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977203, 36.981861, 31.617407>,  <30.342993, 37.090168, 31.497126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977203, 36.981861, 31.617407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396003, 0.446108, -0.802602,
		0.083171, -0.853038, -0.515178,
		-0.914475, -0.270765, 0.300703,
		29.702862, 36.900631, 31.707617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083759, 36.834232, 30.943419>,  <30.342993, 37.090168, 31.497126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083759, 36.834232, 30.943419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777578, 36.922298, 31.185282>,  <29.593870, 36.975140, 31.330400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777578, 36.922298, 31.185282>,  <30.083759, 36.834232, 30.943419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777578, 36.922298, 31.185282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470500, 0.449541, -0.759304,
		-0.438993, -0.865701, -0.240513,
		-0.765451, 0.220167, 0.604658,
		29.547943, 36.988350, 31.366678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600407, 36.577976, 30.541288>,  <30.083759, 36.834232, 30.943419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600407, 36.577976, 30.541288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.452475, 36.843330, 30.801487>,  <29.363714, 37.002544, 30.957605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.452475, 36.843330, 30.801487>,  <29.600407, 36.577976, 30.541288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452475, 36.843330, 30.801487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548173, 0.409492, -0.729262,
		-0.750154, -0.626288, 0.212206,
		-0.369831, 0.663385, 0.650496,
		29.341526, 37.042347, 30.996635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071026, 36.731754, 30.173119>,  <29.600407, 36.577976, 30.541288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071026, 36.731754, 30.173119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081656, 37.012581, 30.457766>,  <29.088034, 37.181076, 30.628553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081656, 37.012581, 30.457766>,  <29.071026, 36.731754, 30.173119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081656, 37.012581, 30.457766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530423, 0.613295, -0.585252,
		-0.847317, -0.361908, 0.388687,
		0.026572, 0.702062, 0.711620,
		29.089626, 37.223198, 30.671251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435658, 36.883121, 30.318394>,  <29.071026, 36.731754, 30.173119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435658, 36.883121, 30.318394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671970, 37.199856, 30.380331>,  <28.813757, 37.389896, 30.417494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671970, 37.199856, 30.380331>,  <28.435658, 36.883121, 30.318394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671970, 37.199856, 30.380331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550741, 0.536018, -0.639819,
		-0.589628, 0.292715, 0.752766,
		0.590781, 0.791835, 0.154841,
		28.849205, 37.437405, 30.426783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028687, 37.522041, 30.287449>,  <28.435658, 36.883121, 30.318394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028687, 37.522041, 30.287449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.389521, 37.694618, 30.283440>,  <28.606022, 37.798164, 30.281034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.389521, 37.694618, 30.283440>,  <28.028687, 37.522041, 30.287449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389521, 37.694618, 30.283440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368073, 0.757053, -0.539809,
		-0.225305, 0.490644, 0.841728,
		0.902087, 0.431439, -0.010024,
		28.660147, 37.824051, 30.280432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019194, 38.214565, 30.651051>,  <28.028687, 37.522041, 30.287449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019194, 38.214565, 30.651051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.310324, 38.193291, 30.377571>,  <28.485003, 38.180527, 30.213484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.310324, 38.193291, 30.377571>,  <28.019194, 38.214565, 30.651051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310324, 38.193291, 30.377571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429128, 0.742335, -0.514576,
		0.534902, 0.667914, 0.517465,
		0.727825, -0.053189, -0.683697,
		28.528671, 38.177334, 30.172462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004284, 38.882996, 30.435677>,  <28.019194, 38.214565, 30.651051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004284, 38.882996, 30.435677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259159, 38.719540, 30.174295>,  <28.412085, 38.621468, 30.017466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259159, 38.719540, 30.174295>,  <28.004284, 38.882996, 30.435677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259159, 38.719540, 30.174295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379336, 0.571769, -0.727451,
		0.670891, 0.711402, 0.209313,
		0.637189, -0.408640, -0.653455,
		28.450315, 38.596947, 29.978258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307722, 39.363762, 30.072456>,  <28.004284, 38.882996, 30.435677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307722, 39.363762, 30.072456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403944, 39.070000, 29.818596>,  <28.461678, 38.893742, 29.666279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403944, 39.070000, 29.818596>,  <28.307722, 39.363762, 30.072456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403944, 39.070000, 29.818596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597330, 0.403368, -0.693174,
		0.765068, 0.545844, -0.341649,
		0.240555, -0.734403, -0.634654,
		28.476110, 38.849678, 29.628201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479197, 39.670429, 29.471544>,  <28.307722, 39.363762, 30.072456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479197, 39.670429, 29.471544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367775, 39.298164, 29.376654>,  <28.300922, 39.074806, 29.319719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367775, 39.298164, 29.376654>,  <28.479197, 39.670429, 29.471544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367775, 39.298164, 29.376654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516205, 0.353369, -0.780169,
		0.809902, -0.094860, -0.578844,
		-0.278552, -0.930662, -0.237226,
		28.284210, 39.018967, 29.305487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618065, 39.630447, 28.717686>,  <28.479197, 39.670429, 29.471544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618065, 39.630447, 28.717686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360216, 39.341438, 28.817623>,  <28.205507, 39.168034, 28.877586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360216, 39.341438, 28.817623>,  <28.618065, 39.630447, 28.717686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360216, 39.341438, 28.817623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530437, 0.187356, -0.826761,
		0.550545, -0.665474, -0.504027,
		-0.644621, -0.722524, 0.249844,
		28.166830, 39.124680, 28.892576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398502, 39.403763, 28.184553>,  <28.618065, 39.630447, 28.717686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398502, 39.403763, 28.184553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.116198, 39.255676, 28.426163>,  <27.946815, 39.166824, 28.571129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.116198, 39.255676, 28.426163>,  <28.398502, 39.403763, 28.184553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116198, 39.255676, 28.426163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706907, 0.311734, -0.634905,
		0.046755, -0.875080, -0.481715,
		-0.705759, -0.370213, 0.604024,
		27.904470, 39.144611, 28.607370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041309, 39.186584, 27.656483>,  <28.398502, 39.403763, 28.184553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041309, 39.186584, 27.656483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825602, 39.201767, 27.992994>,  <27.696177, 39.210876, 28.194901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825602, 39.201767, 27.992994>,  <28.041309, 39.186584, 27.656483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825602, 39.201767, 27.992994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755538, 0.419426, -0.503234,
		-0.371954, -0.906996, -0.197507,
		-0.539270, 0.037955, 0.841277,
		27.663820, 39.213154, 28.245377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500681, 38.694954, 27.607494>,  <28.041309, 39.186584, 27.656483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500681, 38.694954, 27.607494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374489, 38.959694, 27.879501>,  <27.298773, 39.118538, 28.042706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374489, 38.959694, 27.879501>,  <27.500681, 38.694954, 27.607494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374489, 38.959694, 27.879501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830183, 0.154606, -0.535623,
		-0.459637, -0.733520, 0.500681,
		-0.315482, 0.661849, 0.680019,
		27.279844, 39.158249, 28.083508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901804, 38.462852, 27.744671>,  <27.500681, 38.694954, 27.607494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901804, 38.462852, 27.744671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.865047, 38.840343, 27.871752>,  <26.842993, 39.066837, 27.948000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.865047, 38.840343, 27.871752>,  <26.901804, 38.462852, 27.744671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865047, 38.840343, 27.871752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895242, 0.061402, -0.441330,
		-0.436002, -0.324975, 0.839222,
		-0.091891, 0.943727, 0.317703,
		26.837481, 39.123463, 27.967062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236336, 38.482445, 28.063641>,  <26.901804, 38.462852, 27.744671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236336, 38.482445, 28.063641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.364096, 38.845238, 27.953833>,  <26.440752, 39.062916, 27.887949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.364096, 38.845238, 27.953833>,  <26.236336, 38.482445, 28.063641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364096, 38.845238, 27.953833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857069, 0.152909, -0.491988,
		-0.404250, 0.392421, 0.826189,
		0.319398, 0.906986, -0.274519,
		26.459915, 39.117332, 27.871477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.732201, 37.744648, 45.078712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.350063, 37.821362, 45.168636>,  <39.120781, 37.867390, 45.222591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.350063, 37.821362, 45.168636>,  <39.732201, 37.744648, 45.078712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350063, 37.821362, 45.168636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263632, 0.209471, 0.941605,
		0.133497, 0.958822, -0.250677,
		-0.955341, 0.191788, 0.224813,
		39.063461, 37.878899, 45.236080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702682, 38.365456, 45.489243>,  <39.732201, 37.744648, 45.078712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702682, 38.365456, 45.489243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.361725, 38.172016, 45.568802>,  <39.157150, 38.055950, 45.616539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.361725, 38.172016, 45.568802>,  <39.702682, 38.365456, 45.489243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361725, 38.172016, 45.568802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096950, 0.227620, 0.968912,
		-0.513840, 0.845174, -0.147136,
		-0.852390, -0.483601, 0.198900,
		39.106007, 38.026936, 45.628471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307663, 38.906403, 45.903038>,  <39.702682, 38.365456, 45.489243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307663, 38.906403, 45.903038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.129772, 38.558403, 45.988186>,  <39.023037, 38.349602, 46.039272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.129772, 38.558403, 45.988186>,  <39.307663, 38.906403, 45.903038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129772, 38.558403, 45.988186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118696, 0.292816, 0.948773,
		-0.887766, 0.396680, -0.233490,
		-0.444729, -0.870002, 0.212868,
		38.996353, 38.297401, 46.052048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675823, 39.086914, 46.331650>,  <39.307663, 38.906403, 45.903038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675823, 39.086914, 46.331650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.762272, 38.703281, 46.404819>,  <38.814140, 38.473103, 46.448719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.762272, 38.703281, 46.404819>,  <38.675823, 39.086914, 46.331650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762272, 38.703281, 46.404819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040630, 0.178353, 0.983128,
		-0.975521, -0.219908, -0.000421,
		0.216123, -0.959078, 0.182922,
		38.827110, 38.415558, 46.459698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112015, 38.821663, 46.765244>,  <38.675823, 39.086914, 46.331650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112015, 38.821663, 46.765244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.421654, 38.572960, 46.812904>,  <38.607437, 38.423737, 46.841499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.421654, 38.572960, 46.812904>,  <38.112015, 38.821663, 46.765244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421654, 38.572960, 46.812904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101670, 0.063668, 0.992779,
		-0.624854, -0.780618, -0.013929,
		0.774094, -0.621758, 0.119149,
		38.653881, 38.386433, 46.848648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823715, 38.395248, 47.219990>,  <38.112015, 38.821663, 46.765244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823715, 38.395248, 47.219990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219337, 38.346603, 47.253418>,  <38.456711, 38.317417, 47.273476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219337, 38.346603, 47.253418>,  <37.823715, 38.395248, 47.219990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219337, 38.346603, 47.253418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071368, 0.101426, 0.992280,
		-0.129153, -0.987381, 0.091636,
		0.989053, -0.121616, 0.083567,
		38.516052, 38.310120, 47.278488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939327, 37.886642, 47.734623>,  <37.823715, 38.395248, 47.219990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939327, 37.886642, 47.734623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288002, 38.081871, 47.716934>,  <38.497208, 38.199009, 47.706322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288002, 38.081871, 47.716934>,  <37.939327, 37.886642, 47.734623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288002, 38.081871, 47.716934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040909, 0.017452, 0.999010,
		0.488361, -0.872629, -0.004754,
		0.871682, 0.488072, -0.044221,
		38.549507, 38.228294, 47.703667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360580, 37.506264, 48.170940>,  <37.939327, 37.886642, 47.734623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360580, 37.506264, 48.170940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508034, 37.876705, 48.138817>,  <38.596504, 38.098969, 48.119545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508034, 37.876705, 48.138817>,  <38.360580, 37.506264, 48.170940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508034, 37.876705, 48.138817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126234, 0.135463, 0.982708,
		0.920963, -0.352123, 0.166842,
		0.368635, 0.926099, -0.080307,
		38.618626, 38.154533, 48.114723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912308, 37.529785, 48.703514>,  <38.360580, 37.506264, 48.170940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912308, 37.529785, 48.703514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829086, 37.913437, 48.626804>,  <38.779152, 38.143627, 48.580776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829086, 37.913437, 48.626804>,  <38.912308, 37.529785, 48.703514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829086, 37.913437, 48.626804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246938, 0.138209, 0.959125,
		0.946432, 0.246911, 0.208090,
		-0.208058, 0.959132, -0.191777,
		38.766670, 38.201176, 48.569271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159515, 37.890667, 49.277210>,  <38.912308, 37.529785, 48.703514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159515, 37.890667, 49.277210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.913521, 38.163662, 49.119228>,  <38.765923, 38.327461, 49.024437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.913521, 38.163662, 49.119228>,  <39.159515, 37.890667, 49.277210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913521, 38.163662, 49.119228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287160, 0.272642, 0.918262,
		0.734388, 0.678139, 0.028311,
		-0.614991, 0.682491, -0.394959,
		38.729023, 38.368408, 49.000740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161728, 38.395973, 49.691246>,  <39.159515, 37.890667, 49.277210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161728, 38.395973, 49.691246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822010, 38.437828, 49.484268>,  <38.618179, 38.462940, 49.360081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822010, 38.437828, 49.484268>,  <39.161728, 38.395973, 49.691246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822010, 38.437828, 49.484268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449164, 0.371808, 0.812410,
		0.277395, 0.922394, -0.268778,
		-0.849296, 0.104633, -0.517444,
		38.567223, 38.469219, 49.329037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000450, 39.051872, 49.798374>,  <39.161728, 38.395973, 49.691246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000450, 39.051872, 49.798374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667706, 38.846428, 49.714275>,  <38.468060, 38.723160, 49.663818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667706, 38.846428, 49.714275>,  <39.000450, 39.051872, 49.798374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667706, 38.846428, 49.714275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416364, 0.327104, 0.848318,
		-0.366938, 0.793223, -0.485956,
		-0.831864, -0.513615, -0.210243,
		38.418148, 38.692345, 49.651203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370705, 39.495781, 49.691795>,  <39.000450, 39.051872, 49.798374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370705, 39.495781, 49.691795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290680, 39.141998, 49.860420>,  <38.242664, 38.929729, 49.961594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290680, 39.141998, 49.860420>,  <38.370705, 39.495781, 49.691795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290680, 39.141998, 49.860420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507217, 0.461611, 0.727768,
		-0.838276, -0.068226, -0.540961,
		-0.200061, -0.884455, 0.421563,
		38.230663, 38.876663, 49.986889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429638, 40.045471, 49.218559>,  <38.370705, 39.495781, 49.691795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429638, 40.045471, 49.218559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528259, 40.329250, 49.482647>,  <38.587433, 40.499519, 49.641098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528259, 40.329250, 49.482647>,  <38.429638, 40.045471, 49.218559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528259, 40.329250, 49.482647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047441, 0.671600, -0.739394,
		-0.967966, 0.213624, 0.131931,
		0.246557, 0.709449, 0.660221,
		38.602226, 40.542084, 49.680714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785854, 40.359653, 49.196365>,  <38.429638, 40.045471, 49.218559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785854, 40.359653, 49.196365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928402, 40.725956, 49.270546>,  <38.013931, 40.945736, 49.315056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928402, 40.725956, 49.270546>,  <37.785854, 40.359653, 49.196365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928402, 40.725956, 49.270546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327301, 0.063557, -0.942780,
		-0.875144, 0.396673, -0.277079,
		0.356365, 0.915757, 0.185453,
		38.035313, 41.000683, 49.326183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574547, 40.881950, 48.575108>,  <37.785854, 40.359653, 49.196365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574547, 40.881950, 48.575108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.892643, 41.048923, 48.750988>,  <38.083500, 41.149109, 48.856518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.892643, 41.048923, 48.750988>,  <37.574547, 40.881950, 48.575108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892643, 41.048923, 48.750988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311620, 0.340692, -0.887030,
		-0.520080, 0.842423, 0.140852,
		0.795242, 0.417434, 0.439704,
		38.131214, 41.174152, 48.882900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622566, 41.568962, 48.301018>,  <37.574547, 40.881950, 48.575108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622566, 41.568962, 48.301018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.984741, 41.499615, 48.455997>,  <38.202045, 41.458004, 48.548985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.984741, 41.499615, 48.455997>,  <37.622566, 41.568962, 48.301018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984741, 41.499615, 48.455997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409117, 0.113140, -0.905440,
		0.113140, 0.978336, 0.173370,
		0.905440, -0.173370, 0.387454,
		38.256374, 41.447605, 48.572235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008514, 42.118591, 48.030746>,  <37.622566, 41.568962, 48.301018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008514, 42.118591, 48.030746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248516, 41.813438, 48.127087>,  <38.392517, 41.630348, 48.184891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248516, 41.813438, 48.127087>,  <38.008514, 42.118591, 48.030746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248516, 41.813438, 48.127087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355174, -0.015743, -0.934668,
		0.716831, 0.646349, 0.261509,
		0.600005, -0.762880, 0.240851,
		38.428516, 41.584576, 48.199341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731583, 42.324375, 47.768650>,  <38.008514, 42.118591, 48.030746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731583, 42.324375, 47.768650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.710239, 41.925797, 47.794712>,  <38.697433, 41.686649, 47.810349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.710239, 41.925797, 47.794712>,  <38.731583, 42.324375, 47.768650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710239, 41.925797, 47.794712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328223, -0.079122, -0.941281,
		0.943092, -0.028835, 0.331279,
		-0.053354, -0.996448, 0.065155,
		38.694233, 41.626862, 47.814259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352089, 42.140621, 47.583469>,  <38.731583, 42.324375, 47.768650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352089, 42.140621, 47.583469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.145092, 41.799458, 47.555920>,  <39.020893, 41.594757, 47.539391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.145092, 41.799458, 47.555920>,  <39.352089, 42.140621, 47.583469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145092, 41.799458, 47.555920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430296, -0.189809, -0.882507,
		0.739627, -0.486327, 0.465229,
		-0.517491, -0.852912, -0.068876,
		38.989845, 41.543583, 47.535255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799446, 41.537899, 47.314026>,  <39.352089, 42.140621, 47.583469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799446, 41.537899, 47.314026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.424355, 41.428360, 47.228546>,  <39.199299, 41.362637, 47.177258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.424355, 41.428360, 47.228546>,  <39.799446, 41.537899, 47.314026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424355, 41.428360, 47.228546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301357, -0.335412, -0.892571,
		0.172749, -0.901392, 0.397052,
		-0.937732, -0.273845, -0.213698,
		39.143036, 41.346207, 47.164436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871895, 40.998764, 46.850105>,  <39.799446, 41.537899, 47.314026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871895, 40.998764, 46.850105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488251, 41.078865, 46.770103>,  <39.258064, 41.126926, 46.722103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488251, 41.078865, 46.770103>,  <39.871895, 40.998764, 46.850105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488251, 41.078865, 46.770103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147267, -0.250348, -0.956890,
		-0.241673, -0.947223, 0.210624,
		-0.959117, 0.200236, -0.199997,
		39.200516, 41.138939, 46.710102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601822, 40.452652, 46.496399>,  <39.871895, 40.998764, 46.850105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601822, 40.452652, 46.496399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.388542, 40.769650, 46.377972>,  <39.260574, 40.959846, 46.306915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.388542, 40.769650, 46.377972>,  <39.601822, 40.452652, 46.496399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388542, 40.769650, 46.377972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003826, -0.352221, -0.935909,
		-0.845980, -0.497894, 0.190837,
		-0.533201, 0.792491, -0.296067,
		39.228580, 41.007397, 46.289150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359104, 40.272919, 45.866055>,  <39.601822, 40.452652, 46.496399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359104, 40.272919, 45.866055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246326, 40.655243, 45.832729>,  <39.178658, 40.884636, 45.812733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246326, 40.655243, 45.832729>,  <39.359104, 40.272919, 45.866055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246326, 40.655243, 45.832729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128074, -0.123553, -0.984038,
		-0.950843, -0.266777, 0.157249,
		-0.281947, 0.955806, -0.083312,
		39.161743, 40.941986, 45.807735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565453, 40.296036, 45.631035>,  <39.359104, 40.272919, 45.866055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565453, 40.296036, 45.631035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.783615, 40.619053, 45.541229>,  <38.914513, 40.812862, 45.487347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.783615, 40.619053, 45.541229>,  <38.565453, 40.296036, 45.631035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783615, 40.619053, 45.541229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051480, -0.235086, -0.970610,
		-0.836591, 0.540933, -0.086645,
		0.545404, 0.807543, -0.224517,
		38.947235, 40.861317, 45.473873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219517, 40.572777, 45.031525>,  <38.565453, 40.296036, 45.631035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219517, 40.572777, 45.031525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576691, 40.752350, 45.018147>,  <38.790997, 40.860096, 45.010120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576691, 40.752350, 45.018147>,  <38.219517, 40.572777, 45.031525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576691, 40.752350, 45.018147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112780, 0.151166, -0.982054,
		-0.435825, 0.880684, 0.185613,
		0.892938, 0.448937, -0.033441,
		38.844570, 40.887032, 45.008114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071159, 41.289040, 44.715107>,  <38.219517, 40.572777, 45.031525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071159, 41.289040, 44.715107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449184, 41.161777, 44.685078>,  <38.675999, 41.085423, 44.667061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449184, 41.161777, 44.685078>,  <38.071159, 41.289040, 44.715107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449184, 41.161777, 44.685078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056786, 0.066390, -0.996176,
		0.321919, 0.945712, 0.044677,
		0.945063, -0.318151, -0.075075,
		38.732704, 41.066334, 44.662556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286854, 41.587215, 44.057903>,  <38.071159, 41.289040, 44.715107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286854, 41.587215, 44.057903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571980, 41.320274, 44.144184>,  <38.743057, 41.160110, 44.195953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571980, 41.320274, 44.144184>,  <38.286854, 41.587215, 44.057903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571980, 41.320274, 44.144184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081977, -0.226164, -0.970634,
		0.696543, 0.709566, -0.106506,
		0.712817, -0.667357, 0.215701,
		38.785824, 41.120068, 44.208893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282360, 42.277508, 43.782623>,  <38.286854, 41.587215, 44.057903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282360, 42.277508, 43.782623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890656, 42.297100, 43.703995>,  <37.655632, 42.308857, 43.656818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890656, 42.297100, 43.703995>,  <38.282360, 42.277508, 43.782623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890656, 42.297100, 43.703995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142390, 0.523764, 0.839878,
		0.144094, 0.850454, -0.505930,
		-0.979266, 0.048982, -0.196568,
		37.596874, 42.311794, 43.645023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140949, 42.884300, 43.979191>,  <38.282360, 42.277508, 43.782623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140949, 42.884300, 43.979191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788471, 42.695225, 43.982346>,  <37.576984, 42.581779, 43.984238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788471, 42.695225, 43.982346>,  <38.140949, 42.884300, 43.979191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788471, 42.695225, 43.982346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154027, 0.302837, 0.940513,
		-0.446954, 0.827562, -0.339665,
		-0.881197, -0.472684, 0.007887,
		37.524113, 42.553421, 43.984711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692932, 43.335487, 44.343758>,  <38.140949, 42.884300, 43.979191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692932, 43.335487, 44.343758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.525963, 42.972031, 44.348148>,  <37.425781, 42.753956, 44.350784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.525963, 42.972031, 44.348148>,  <37.692932, 43.335487, 44.343758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525963, 42.972031, 44.348148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138242, 0.075438, 0.987521,
		-0.898135, 0.410697, -0.157103,
		-0.417424, -0.908646, 0.010978,
		37.400734, 42.699436, 44.351440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066032, 43.465034, 44.616783>,  <37.692932, 43.335487, 44.343758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066032, 43.465034, 44.616783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096199, 43.067810, 44.652893>,  <37.114300, 42.829475, 44.674561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096199, 43.067810, 44.652893>,  <37.066032, 43.465034, 44.616783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096199, 43.067810, 44.652893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270401, 0.066775, 0.960429,
		-0.959789, -0.096845, -0.263487,
		0.075418, -0.993057, 0.090277,
		37.118824, 42.769894, 44.679977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404049, 43.249252, 45.031490>,  <37.066032, 43.465034, 44.616783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404049, 43.249252, 45.031490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.718105, 43.003654, 45.063892>,  <36.906540, 42.856297, 45.083336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.718105, 43.003654, 45.063892>,  <36.404049, 43.249252, 45.031490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718105, 43.003654, 45.063892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102614, 0.000024, 0.994721,
		-0.610759, -0.789308, -0.062986,
		0.785139, -0.613998, 0.081009,
		36.953648, 42.819454, 45.088196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200603, 42.744114, 45.526501>,  <36.404049, 43.249252, 45.031490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200603, 42.744114, 45.526501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600193, 42.728817, 45.516838>,  <36.839947, 42.719639, 45.511040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600193, 42.728817, 45.516838>,  <36.200603, 42.744114, 45.526501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600193, 42.728817, 45.516838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025029, 0.022521, 0.999433,
		-0.037682, -0.999014, 0.023455,
		0.998976, -0.038248, -0.024156,
		36.899887, 42.717342, 45.509590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402576, 42.282059, 46.090424>,  <36.200603, 42.744114, 45.526501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402576, 42.282059, 46.090424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727386, 42.508297, 46.032841>,  <36.922272, 42.644039, 45.998291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727386, 42.508297, 46.032841>,  <36.402576, 42.282059, 46.090424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727386, 42.508297, 46.032841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165594, 0.013239, 0.986105,
		0.559639, -0.824579, -0.082908,
		0.812024, 0.565592, -0.143955,
		36.970993, 42.677975, 45.989655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086891, 41.581215, 46.293636>,  <36.402576, 42.282059, 46.090424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086891, 41.581215, 46.293636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691818, 41.639915, 46.315338>,  <35.454773, 41.675137, 46.328358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691818, 41.639915, 46.315338>,  <36.086891, 41.581215, 46.293636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691818, 41.639915, 46.315338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107235, -0.382441, -0.917736,
		-0.113928, -0.912252, 0.393468,
		-0.987684, 0.146750, 0.054254,
		35.395512, 41.683941, 46.331615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799351, 41.007965, 45.915581>,  <36.086891, 41.581215, 46.293636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799351, 41.007965, 45.915581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491035, 41.262173, 45.933472>,  <35.306046, 41.414700, 45.944206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491035, 41.262173, 45.933472>,  <35.799351, 41.007965, 45.915581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491035, 41.262173, 45.933472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199727, -0.174383, -0.964209,
		-0.604977, -0.752132, 0.261343,
		-0.770786, 0.635522, 0.044723,
		35.259800, 41.452831, 45.946888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264629, 40.679737, 45.570953>,  <35.799351, 41.007965, 45.915581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264629, 40.679737, 45.570953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164848, 41.066555, 45.591343>,  <35.104980, 41.298645, 45.603577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164848, 41.066555, 45.591343>,  <35.264629, 40.679737, 45.570953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164848, 41.066555, 45.591343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231927, -0.008554, -0.972696,
		-0.940204, -0.254464, 0.226417,
		-0.249453, 0.967044, 0.050974,
		35.090012, 41.356667, 45.606636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651531, 40.733482, 45.273872>,  <35.264629, 40.679737, 45.570953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651531, 40.733482, 45.273872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831081, 41.088402, 45.231510>,  <34.938812, 41.301353, 45.206093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831081, 41.088402, 45.231510>,  <34.651531, 40.733482, 45.273872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831081, 41.088402, 45.231510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337626, 0.058672, -0.939450,
		-0.827356, 0.457455, 0.325910,
		0.448878, 0.887295, -0.105906,
		34.965744, 41.354591, 45.199738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157143, 41.187862, 44.992531>,  <34.651531, 40.733482, 45.273872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157143, 41.187862, 44.992531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510433, 41.356575, 44.910542>,  <34.722408, 41.457802, 44.861347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510433, 41.356575, 44.910542>,  <34.157143, 41.187862, 44.992531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510433, 41.356575, 44.910542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220840, -0.011494, -0.975242,
		-0.413696, 0.906624, 0.082994,
		0.883224, 0.421782, -0.204974,
		34.775402, 41.483109, 44.849049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008224, 41.639145, 44.348270>,  <34.157143, 41.187862, 44.992531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008224, 41.639145, 44.348270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406513, 41.604492, 44.361118>,  <34.645485, 41.583702, 44.368828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406513, 41.604492, 44.361118>,  <34.008224, 41.639145, 44.348270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406513, 41.604492, 44.361118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031278, -0.011075, -0.999449,
		0.086939, 0.996179, -0.008318,
		0.995723, -0.086631, 0.032121,
		34.705231, 41.578503, 44.370754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318813, 42.247356, 43.858021>,  <34.008224, 41.639145, 44.348270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318813, 42.247356, 43.858021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596645, 41.962406, 43.898190>,  <34.763344, 41.791435, 43.922291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596645, 41.962406, 43.898190>,  <34.318813, 42.247356, 43.858021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596645, 41.962406, 43.898190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196478, 0.053560, -0.979044,
		0.692069, 0.699752, 0.177168,
		0.694577, -0.712376, 0.100419,
		34.805019, 41.748692, 43.928314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.795982, 36.418324, 50.643234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.992466, 36.755558, 50.555679>,  <36.110355, 36.957901, 50.503147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.992466, 36.755558, 50.555679>,  <35.795982, 36.418324, 50.643234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992466, 36.755558, 50.555679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001151, -0.251917, -0.967748,
		-0.871039, 0.475118, -0.124715,
		0.491212, 0.843090, -0.218883,
		36.139832, 37.008484, 50.490013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389336, 36.795471, 50.172543>,  <35.795982, 36.418324, 50.643234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389336, 36.795471, 50.172543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762466, 36.925587, 50.110542>,  <35.986343, 37.003654, 50.073341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762466, 36.925587, 50.110542>,  <35.389336, 36.795471, 50.172543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762466, 36.925587, 50.110542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089326, -0.207965, -0.974049,
		-0.349082, 0.922463, -0.164938,
		0.932825, 0.325289, -0.154997,
		36.042313, 37.023174, 50.064045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343319, 37.488373, 49.612751>,  <35.389336, 36.795471, 50.172543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343319, 37.488373, 49.612751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.688332, 37.286133, 49.604668>,  <35.895340, 37.164791, 49.599819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.688332, 37.286133, 49.604668>,  <35.343319, 37.488373, 49.612751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688332, 37.286133, 49.604668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056479, -0.056508, -0.996803,
		0.502840, 0.860916, -0.077295,
		0.862532, -0.505598, -0.020209,
		35.947090, 37.134453, 49.598606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798317, 37.833054, 49.221142>,  <35.343319, 37.488373, 49.612751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798317, 37.833054, 49.221142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968277, 37.471111, 49.210579>,  <36.070255, 37.253948, 49.204239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968277, 37.471111, 49.210579>,  <35.798317, 37.833054, 49.221142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968277, 37.471111, 49.210579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162207, 0.104806, -0.981175,
		0.890588, 0.412620, 0.191306,
		0.424903, -0.904854, -0.026409,
		36.095749, 37.199654, 49.202656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240589, 37.816166, 48.618900>,  <35.798317, 37.833054, 49.221142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240589, 37.816166, 48.618900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.203335, 37.427074, 48.703869>,  <36.180981, 37.193619, 48.754848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.203335, 37.427074, 48.703869>,  <36.240589, 37.816166, 48.618900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203335, 37.427074, 48.703869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016874, -0.214856, -0.976500,
		0.995511, -0.087362, 0.036424,
		-0.093135, -0.972731, 0.212417,
		36.175396, 37.135254, 48.767593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704403, 37.468079, 48.104481>,  <36.240589, 37.816166, 48.618900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704403, 37.468079, 48.104481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.457008, 37.181591, 48.233791>,  <36.308571, 37.009697, 48.311378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.457008, 37.181591, 48.233791>,  <36.704403, 37.468079, 48.104481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457008, 37.181591, 48.233791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071990, -0.358019, -0.930935,
		0.782494, -0.599039, 0.169867,
		-0.618482, -0.716223, 0.323272,
		36.271465, 36.966724, 48.330772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005009, 36.840496, 47.798717>,  <36.704403, 37.468079, 48.104481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005009, 36.840496, 47.798717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.618172, 36.762661, 47.864277>,  <36.386070, 36.715961, 47.903610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.618172, 36.762661, 47.864277>,  <37.005009, 36.840496, 47.798717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618172, 36.762661, 47.864277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104396, -0.283951, -0.953139,
		0.232006, -0.938887, 0.254294,
		-0.967096, -0.194586, 0.163895,
		36.328041, 36.704285, 47.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860512, 36.052189, 47.603806>,  <37.005009, 36.840496, 47.798717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860512, 36.052189, 47.603806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519222, 36.260761, 47.599457>,  <36.314449, 36.385902, 47.596848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519222, 36.260761, 47.599457>,  <36.860512, 36.052189, 47.603806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519222, 36.260761, 47.599457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152434, -0.269261, -0.950927,
		-0.498770, -0.809697, 0.309224,
		-0.853225, 0.521430, -0.010874,
		36.263256, 36.417191, 47.596195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414715, 35.647579, 47.204231>,  <36.860512, 36.052189, 47.603806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414715, 35.647579, 47.204231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.223759, 35.998989, 47.211060>,  <36.109184, 36.209835, 47.215157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.223759, 35.998989, 47.211060>,  <36.414715, 35.647579, 47.204231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223759, 35.998989, 47.211060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376930, -0.187198, -0.907128,
		-0.793737, -0.439492, 0.420509,
		-0.477394, 0.878524, 0.017072,
		36.080540, 36.262547, 47.216183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738377, 35.491322, 46.875427>,  <36.414715, 35.647579, 47.204231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738377, 35.491322, 46.875427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.799156, 35.881752, 46.813210>,  <35.835625, 36.116009, 46.775879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.799156, 35.881752, 46.813210>,  <35.738377, 35.491322, 46.875427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799156, 35.881752, 46.813210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474953, -0.065907, -0.877540,
		-0.866794, 0.207214, 0.453574,
		0.151945, 0.976073, -0.155545,
		35.844738, 36.174576, 46.766544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099525, 35.781006, 46.705559>,  <35.738377, 35.491322, 46.875427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099525, 35.781006, 46.705559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.378216, 36.023304, 46.551861>,  <35.545429, 36.168682, 46.459641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.378216, 36.023304, 46.551861>,  <35.099525, 35.781006, 46.705559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378216, 36.023304, 46.551861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436628, -0.066890, -0.897152,
		-0.569149, 0.792841, 0.217881,
		0.696725, 0.605746, -0.384247,
		35.587234, 36.205029, 46.436588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738445, 36.190945, 46.294079>,  <35.099525, 35.781006, 46.705559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738445, 36.190945, 46.294079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.123119, 36.204071, 46.185211>,  <35.353924, 36.211948, 46.119888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.123119, 36.204071, 46.185211>,  <34.738445, 36.190945, 46.294079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123119, 36.204071, 46.185211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262248, -0.179156, -0.948224,
		-0.079883, 0.983273, -0.163685,
		0.961688, 0.032820, -0.272173,
		35.411625, 36.213917, 46.103558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749954, 36.856133, 46.190697>,  <34.738445, 36.190945, 46.294079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749954, 36.856133, 46.190697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.442146, 37.046188, 46.020008>,  <34.257462, 37.160221, 45.917595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.442146, 37.046188, 46.020008>,  <34.749954, 36.856133, 46.190697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442146, 37.046188, 46.020008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052247, 0.619100, 0.783572,
		0.636487, 0.625266, -0.451583,
		-0.769516, 0.475140, -0.426717,
		34.211292, 37.188732, 45.891994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908707, 37.641933, 46.296749>,  <34.749954, 36.856133, 46.190697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908707, 37.641933, 46.296749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.512894, 37.593208, 46.265808>,  <34.275406, 37.563972, 46.247246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.512894, 37.593208, 46.265808>,  <34.908707, 37.641933, 46.296749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512894, 37.593208, 46.265808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127553, 0.487792, 0.863591,
		-0.067465, 0.864420, -0.498224,
		-0.989535, -0.121812, -0.077350,
		34.216034, 37.556664, 46.242603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649357, 38.237759, 46.525822>,  <34.908707, 37.641933, 46.296749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649357, 38.237759, 46.525822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336922, 37.989136, 46.549751>,  <34.149460, 37.839962, 46.564110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336922, 37.989136, 46.549751>,  <34.649357, 38.237759, 46.525822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336922, 37.989136, 46.549751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280234, 0.434539, 0.855947,
		-0.558011, 0.651803, -0.513592,
		-0.781084, -0.621553, 0.059820,
		34.102596, 37.802670, 46.567696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037083, 38.654018, 46.667488>,  <34.649357, 38.237759, 46.525822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037083, 38.654018, 46.667488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.909454, 38.296211, 46.792725>,  <33.832878, 38.081528, 46.867867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.909454, 38.296211, 46.792725>,  <34.037083, 38.654018, 46.667488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909454, 38.296211, 46.792725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180936, 0.381776, 0.906371,
		-0.930299, 0.232547, -0.283665,
		-0.319070, -0.894522, 0.313089,
		33.813732, 38.027855, 46.886650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310780, 38.770573, 47.024265>,  <34.037083, 38.654018, 46.667488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310780, 38.770573, 47.024265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.446949, 38.414761, 47.146145>,  <33.528652, 38.201271, 47.219273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.446949, 38.414761, 47.146145>,  <33.310780, 38.770573, 47.024265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446949, 38.414761, 47.146145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290783, 0.208570, 0.933780,
		-0.894180, -0.406481, -0.187659,
		0.340423, -0.889535, 0.304697,
		33.549076, 38.147900, 47.237553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882950, 38.659439, 47.583633>,  <33.310780, 38.770573, 47.024265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882950, 38.659439, 47.583633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191601, 38.412216, 47.643745>,  <33.376793, 38.263882, 47.679813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191601, 38.412216, 47.643745>,  <32.882950, 38.659439, 47.583633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191601, 38.412216, 47.643745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001252, 0.234794, 0.972044,
		-0.636070, -0.750247, 0.180401,
		0.771631, -0.618062, 0.150285,
		33.423092, 38.226799, 47.688831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773293, 38.479801, 48.212643>,  <32.882950, 38.659439, 47.583633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773293, 38.479801, 48.212643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156094, 38.386013, 48.144318>,  <33.385773, 38.329739, 48.103325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156094, 38.386013, 48.144318>,  <32.773293, 38.479801, 48.212643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156094, 38.386013, 48.144318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208572, 0.146913, 0.966910,
		-0.201619, -0.960957, 0.189500,
		0.956999, -0.234472, -0.170808,
		33.443192, 38.315670, 48.093075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037830, 38.045467, 48.695953>,  <32.773293, 38.479801, 48.212643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037830, 38.045467, 48.695953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376682, 38.180779, 48.532032>,  <33.579994, 38.261963, 48.433681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376682, 38.180779, 48.532032>,  <33.037830, 38.045467, 48.695953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376682, 38.180779, 48.532032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332037, 0.265134, 0.905238,
		0.414873, -0.902924, 0.112283,
		0.847132, 0.338277, -0.409802,
		33.630821, 38.282261, 48.409092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508709, 37.827980, 49.175694>,  <33.037830, 38.045467, 48.695953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508709, 37.827980, 49.175694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700432, 38.105942, 48.961266>,  <33.815468, 38.272720, 48.832607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700432, 38.105942, 48.961266>,  <33.508709, 37.827980, 49.175694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700432, 38.105942, 48.961266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169905, 0.525781, 0.833478,
		0.861043, -0.490575, 0.133945,
		0.479309, 0.694903, -0.536071,
		33.844223, 38.314411, 48.800446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198483, 37.889397, 49.405304>,  <33.508709, 37.827980, 49.175694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198483, 37.889397, 49.405304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.109001, 38.243816, 49.242889>,  <34.055313, 38.456470, 49.145443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.109001, 38.243816, 49.242889>,  <34.198483, 37.889397, 49.405304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109001, 38.243816, 49.242889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324329, 0.460525, 0.826273,
		0.919111, 0.053154, -0.390396,
		-0.223707, 0.886054, -0.406035,
		34.041889, 38.509632, 49.121078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738102, 38.429981, 49.452278>,  <34.198483, 37.889397, 49.405304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738102, 38.429981, 49.452278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.421005, 38.660980, 49.374237>,  <34.230747, 38.799580, 49.327412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.421005, 38.660980, 49.374237>,  <34.738102, 38.429981, 49.452278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421005, 38.660980, 49.374237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259565, 0.609415, 0.749159,
		0.551535, 0.543244, -0.633005,
		-0.792739, 0.577493, -0.195107,
		34.183182, 38.834229, 49.315704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978230, 39.085522, 49.533192>,  <34.738102, 38.429981, 49.452278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978230, 39.085522, 49.533192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585056, 39.151340, 49.566101>,  <34.349152, 39.190830, 49.585846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585056, 39.151340, 49.566101>,  <34.978230, 39.085522, 49.533192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585056, 39.151340, 49.566101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167811, 0.618641, 0.767543,
		0.075397, 0.768249, -0.635695,
		-0.982932, 0.164547, 0.082277,
		34.290176, 39.200703, 49.590782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846699, 39.818356, 49.562916>,  <34.978230, 39.085522, 49.533192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846699, 39.818356, 49.562916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.514206, 39.651981, 49.710461>,  <34.314709, 39.552158, 49.798988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.514206, 39.651981, 49.710461>,  <34.846699, 39.818356, 49.562916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514206, 39.651981, 49.710461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023158, 0.637017, 0.770502,
		-0.555445, 0.649007, -0.519876,
		-0.831231, -0.415932, 0.368857,
		34.264835, 39.527203, 49.821117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502106, 40.336220, 49.745087>,  <34.846699, 39.818356, 49.562916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502106, 40.336220, 49.745087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328880, 40.042946, 49.954807>,  <34.224945, 39.866982, 50.080639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328880, 40.042946, 49.954807>,  <34.502106, 40.336220, 49.745087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328880, 40.042946, 49.954807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028739, 0.592613, 0.804975,
		-0.900907, 0.333534, -0.277708,
		-0.433059, -0.733189, 0.524303,
		34.198963, 39.822990, 50.112099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463814, 40.824402, 49.170769>,  <34.502106, 40.336220, 49.745087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463814, 40.824402, 49.170769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659866, 41.171761, 49.140694>,  <34.777500, 41.380177, 49.122650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659866, 41.171761, 49.140694>,  <34.463814, 40.824402, 49.170769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659866, 41.171761, 49.140694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060265, -0.119812, -0.990966,
		-0.869562, 0.481174, -0.111058,
		0.490133, 0.868399, -0.075186,
		34.806908, 41.432281, 49.118137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099281, 41.279381, 48.713440>,  <34.463814, 40.824402, 49.170769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099281, 41.279381, 48.713440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472679, 41.422642, 48.706245>,  <34.696716, 41.508598, 48.701927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472679, 41.422642, 48.706245>,  <34.099281, 41.279381, 48.713440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472679, 41.422642, 48.706245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085842, 0.174479, -0.980912,
		-0.348176, 0.917216, 0.193619,
		0.933491, 0.358150, -0.017986,
		34.752728, 41.530087, 48.700851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081757, 41.774025, 48.192764>,  <34.099281, 41.279381, 48.713440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081757, 41.774025, 48.192764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.479065, 41.731789, 48.211761>,  <34.717449, 41.706448, 48.223160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.479065, 41.731789, 48.211761>,  <34.081757, 41.774025, 48.192764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479065, 41.731789, 48.211761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062941, 0.148175, -0.986956,
		0.097173, 0.983308, 0.153824,
		0.993275, -0.105588, 0.047492,
		34.777046, 41.700111, 48.226009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377335, 42.365704, 47.968723>,  <34.081757, 41.774025, 48.192764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377335, 42.365704, 47.968723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670826, 42.096649, 47.930359>,  <34.846920, 41.935215, 47.907341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670826, 42.096649, 47.930359>,  <34.377335, 42.365704, 47.968723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670826, 42.096649, 47.930359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104215, 0.250903, -0.962386,
		0.671403, 0.696135, 0.254194,
		0.733728, -0.672640, -0.095909,
		34.890945, 41.894855, 47.901585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875111, 42.709953, 47.606522>,  <34.377335, 42.365704, 47.968723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875111, 42.709953, 47.606522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955952, 42.322048, 47.551807>,  <35.004456, 42.089306, 47.518978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955952, 42.322048, 47.551807>,  <34.875111, 42.709953, 47.606522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955952, 42.322048, 47.551807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269819, 0.189396, -0.944101,
		0.941463, 0.153897, 0.299938,
		0.202101, -0.969765, -0.136785,
		35.016582, 42.031120, 47.510773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474827, 42.682816, 47.148628>,  <34.875111, 42.709953, 47.606522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474827, 42.682816, 47.148628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.331345, 42.309437, 47.147522>,  <35.245255, 42.085411, 47.146858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.331345, 42.309437, 47.147522>,  <35.474827, 42.682816, 47.148628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331345, 42.309437, 47.147522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252757, -0.094273, -0.962926,
		0.898578, -0.346109, 0.269752,
		-0.358708, -0.933446, -0.002770,
		35.223732, 42.029404, 47.146690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047932, 42.192642, 46.776733>,  <35.474827, 42.682816, 47.148628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047932, 42.192642, 46.776733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.682537, 42.030617, 46.761478>,  <35.463299, 41.933399, 46.752327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.682537, 42.030617, 46.761478>,  <36.047932, 42.192642, 46.776733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682537, 42.030617, 46.761478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095967, -0.123436, -0.987701,
		0.395379, -0.905916, 0.151631,
		-0.913491, -0.405068, -0.038134,
		35.408489, 41.909096, 46.750038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817310, 42.038292, 46.679695>,  <36.047932, 42.192642, 46.776733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817310, 42.038292, 46.679695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.996689, 42.377899, 46.567936>,  <37.104317, 42.581665, 46.500881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.996689, 42.377899, 46.567936>,  <36.817310, 42.038292, 46.679695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996689, 42.377899, 46.567936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014676, 0.305557, 0.952060,
		0.893690, -0.431048, 0.124566,
		0.448446, 0.849018, -0.279400,
		37.131222, 42.632607, 46.484116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424217, 42.166611, 47.129333>,  <36.817310, 42.038292, 46.679695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424217, 42.166611, 47.129333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.317623, 42.513870, 46.961857>,  <37.253666, 42.722225, 46.861370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.317623, 42.513870, 46.961857>,  <37.424217, 42.166611, 47.129333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317623, 42.513870, 46.961857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117648, 0.460449, 0.879856,
		0.956632, 0.185210, -0.224839,
		-0.266485, 0.868150, -0.418690,
		37.237679, 42.774315, 46.836250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920650, 42.580856, 47.402290>,  <37.424217, 42.166611, 47.129333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920650, 42.580856, 47.402290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.642876, 42.847294, 47.293419>,  <37.476212, 43.007156, 47.228096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.642876, 42.847294, 47.293419>,  <37.920650, 42.580856, 47.402290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642876, 42.847294, 47.293419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198429, 0.186317, 0.962243,
		0.691651, 0.722226, 0.002786,
		-0.694438, 0.666090, -0.272177,
		37.434544, 43.047119, 47.211765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088161, 43.199505, 47.795174>,  <37.920650, 42.580856, 47.402290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088161, 43.199505, 47.795174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699879, 43.198524, 47.699074>,  <37.466908, 43.197937, 47.641415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699879, 43.198524, 47.699074>,  <38.088161, 43.199505, 47.795174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699879, 43.198524, 47.699074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239772, 0.073791, 0.968021,
		0.015353, 0.997271, -0.072217,
		-0.970708, -0.002453, -0.240250,
		37.408665, 43.197788, 47.626999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807621, 43.714695, 48.236469>,  <38.088161, 43.199505, 47.795174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807621, 43.714695, 48.236469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.469059, 43.528606, 48.132797>,  <37.265923, 43.416954, 48.070595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.469059, 43.528606, 48.132797>,  <37.807621, 43.714695, 48.236469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469059, 43.528606, 48.132797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319360, 0.053945, 0.946097,
		-0.426163, 0.883549, -0.194233,
		-0.846401, -0.465222, -0.259181,
		37.215137, 43.389038, 48.055042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227974, 44.081482, 48.548004>,  <37.807621, 43.714695, 48.236469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227974, 44.081482, 48.548004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110958, 43.704582, 48.482780>,  <37.040749, 43.478443, 48.443645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110958, 43.704582, 48.482780>,  <37.227974, 44.081482, 48.548004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110958, 43.704582, 48.482780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340061, -0.056860, 0.938683,
		-0.893744, 0.330052, -0.303789,
		-0.292541, -0.942249, -0.163056,
		37.023197, 43.421909, 48.433865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729130, 44.090363, 48.948097>,  <37.227974, 44.081482, 48.548004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729130, 44.090363, 48.948097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.758053, 43.700199, 48.864811>,  <36.775406, 43.466103, 48.814838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.758053, 43.700199, 48.864811>,  <36.729130, 44.090363, 48.948097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758053, 43.700199, 48.864811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623589, -0.207136, 0.753811,
		-0.778401, 0.075336, -0.623230,
		0.072304, -0.975407, -0.208213,
		36.779743, 43.407578, 48.802345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091663, 43.826534, 49.110989>,  <36.729130, 44.090363, 48.948097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091663, 43.826534, 49.110989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.325718, 43.502193, 49.115597>,  <36.466152, 43.307590, 49.118362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.325718, 43.502193, 49.115597>,  <36.091663, 43.826534, 49.110989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325718, 43.502193, 49.115597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497156, -0.347466, 0.795049,
		-0.640665, -0.470940, -0.606436,
		0.585136, -0.810853, 0.011521,
		36.501259, 43.258938, 49.119053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764721, 43.202896, 49.045288>,  <36.091663, 43.826534, 49.110989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764721, 43.202896, 49.045288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.088570, 43.078201, 49.244221>,  <36.282879, 43.003384, 49.363579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.088570, 43.078201, 49.244221>,  <35.764721, 43.202896, 49.045288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088570, 43.078201, 49.244221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569093, -0.624350, 0.535089,
		0.143705, -0.716246, -0.682891,
		0.809619, -0.311733, 0.497333,
		36.331455, 42.984680, 49.393421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.242882, 36.685036, 35.449257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614880, 36.730862, 35.309551>,  <36.838078, 36.758358, 35.225727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614880, 36.730862, 35.309551>,  <36.242882, 36.685036, 35.449257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614880, 36.730862, 35.309551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156409, 0.736532, 0.658071,
		0.332633, -0.666630, 0.667053,
		0.929995, 0.114563, -0.349262,
		36.893879, 36.765232, 35.204773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652176, 36.711540, 35.990730>,  <36.242882, 36.685036, 35.449257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652176, 36.711540, 35.990730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822559, 36.924015, 35.697773>,  <36.924789, 37.051498, 35.521999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822559, 36.924015, 35.697773>,  <36.652176, 36.711540, 35.990730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822559, 36.924015, 35.697773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092501, 0.779695, 0.619290,
		0.900002, -0.331539, 0.282983,
		0.425959, 0.531186, -0.732394,
		36.950348, 37.083370, 35.478054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084721, 37.060452, 36.324165>,  <36.652176, 36.711540, 35.990730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084721, 37.060452, 36.324165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118324, 37.278023, 35.990200>,  <37.138489, 37.408566, 35.789822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118324, 37.278023, 35.990200>,  <37.084721, 37.060452, 36.324165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118324, 37.278023, 35.990200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158708, 0.819879, 0.550101,
		0.983745, -0.178723, -0.017446,
		0.084012, 0.543928, -0.834916,
		37.143528, 37.441200, 35.739727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770424, 37.407578, 36.370083>,  <37.084721, 37.060452, 36.324165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770424, 37.407578, 36.370083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496326, 37.589317, 36.142399>,  <37.331867, 37.698360, 36.005787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496326, 37.589317, 36.142399>,  <37.770424, 37.407578, 36.370083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496326, 37.589317, 36.142399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109887, 0.708108, 0.697501,
		0.719974, 0.540509, -0.435301,
		-0.685246, 0.454349, -0.569214,
		37.290752, 37.725620, 35.971634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968124, 38.143513, 36.321995>,  <37.770424, 37.407578, 36.370083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968124, 38.143513, 36.321995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578945, 38.135098, 36.229965>,  <37.345440, 38.130047, 36.174747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578945, 38.135098, 36.229965>,  <37.968124, 38.143513, 36.321995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578945, 38.135098, 36.229965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153513, 0.803100, 0.575729,
		0.172662, 0.595472, -0.784602,
		-0.972945, -0.021040, -0.230077,
		37.287060, 38.128784, 36.160942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921154, 38.796322, 36.400318>,  <37.968124, 38.143513, 36.321995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921154, 38.796322, 36.400318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535690, 38.692280, 36.375988>,  <37.304413, 38.629856, 36.361389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535690, 38.692280, 36.375988>,  <37.921154, 38.796322, 36.400318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535690, 38.692280, 36.375988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254871, 0.827147, 0.500868,
		-0.079963, 0.498171, -0.863383,
		-0.963663, -0.260102, -0.060828,
		37.246590, 38.614250, 36.357738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637238, 39.351810, 36.059437>,  <37.921154, 38.796322, 36.400318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637238, 39.351810, 36.059437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327446, 39.158871, 36.223156>,  <37.141571, 39.043106, 36.321388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327446, 39.158871, 36.223156>,  <37.637238, 39.351810, 36.059437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327446, 39.158871, 36.223156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152434, 0.770239, 0.619270,
		-0.613958, 0.417222, -0.670061,
		-0.774480, -0.482346, 0.409295,
		37.095100, 39.014168, 36.345943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216152, 39.801224, 36.228798>,  <37.637238, 39.351810, 36.059437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216152, 39.801224, 36.228798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088375, 39.503780, 36.463745>,  <37.011707, 39.325314, 36.604713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088375, 39.503780, 36.463745>,  <37.216152, 39.801224, 36.228798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088375, 39.503780, 36.463745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210120, 0.660001, 0.721282,
		-0.924017, 0.106989, -0.367079,
		-0.319442, -0.743607, 0.587371,
		36.992542, 39.280697, 36.639957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675709, 40.041077, 36.404583>,  <37.216152, 39.801224, 36.228798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675709, 40.041077, 36.404583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756687, 39.751797, 36.668705>,  <36.805275, 39.578232, 36.827179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756687, 39.751797, 36.668705>,  <36.675709, 40.041077, 36.404583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756687, 39.751797, 36.668705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279883, 0.603416, 0.746696,
		-0.938446, -0.335974, -0.080252,
		0.202445, -0.723195, 0.660307,
		36.817421, 39.534840, 36.866798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090584, 39.964252, 36.874687>,  <36.675709, 40.041077, 36.404583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090584, 39.964252, 36.874687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408779, 39.816235, 37.066628>,  <36.599697, 39.727425, 37.181793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408779, 39.816235, 37.066628>,  <36.090584, 39.964252, 36.874687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408779, 39.816235, 37.066628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242600, 0.531160, 0.811797,
		-0.555283, -0.762189, 0.332759,
		0.795491, -0.370049, 0.479852,
		36.647427, 39.705219, 37.210583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717354, 39.814857, 37.608364>,  <36.090584, 39.964252, 36.874687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717354, 39.814857, 37.608364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113842, 39.776882, 37.645191>,  <36.351734, 39.754097, 37.667286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113842, 39.776882, 37.645191>,  <35.717354, 39.814857, 37.608364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113842, 39.776882, 37.645191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056519, 0.325255, 0.943936,
		-0.119563, -0.940848, 0.317032,
		0.991216, -0.094941, 0.092065,
		36.411205, 39.748402, 37.672810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873150, 39.362537, 38.289074>,  <35.717354, 39.814857, 37.608364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873150, 39.362537, 38.289074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179970, 39.604630, 38.203903>,  <36.364059, 39.749886, 38.152802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179970, 39.604630, 38.203903>,  <35.873150, 39.362537, 38.289074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179970, 39.604630, 38.203903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013264, 0.346758, 0.937861,
		0.641453, -0.716560, 0.274007,
		0.767047, 0.605229, -0.212924,
		36.410084, 39.786198, 38.140026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587749, 38.686840, 38.382839>,  <35.873150, 39.362537, 38.289074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587749, 38.686840, 38.382839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255527, 38.909286, 38.370785>,  <35.056194, 39.042755, 38.363552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255527, 38.909286, 38.370785>,  <35.587749, 38.686840, 38.382839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255527, 38.909286, 38.370785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349812, -0.563019, -0.748760,
		-0.433362, -0.611348, 0.662156,
		-0.830559, 0.556114, -0.030134,
		35.006359, 39.076122, 38.361744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997116, 38.266106, 38.364769>,  <35.587749, 38.686840, 38.382839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997116, 38.266106, 38.364769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862560, 38.612514, 38.216793>,  <34.781826, 38.820358, 38.128006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862560, 38.612514, 38.216793>,  <34.997116, 38.266106, 38.364769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862560, 38.612514, 38.216793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454518, -0.493353, -0.741631,
		-0.824777, -0.081332, 0.559579,
		-0.336388, 0.866018, -0.369939,
		34.761642, 38.872318, 38.105812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310287, 38.093761, 38.218903>,  <34.997116, 38.266106, 38.364769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310287, 38.093761, 38.218903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425423, 38.406509, 37.997696>,  <34.494503, 38.594158, 37.864971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425423, 38.406509, 37.997696>,  <34.310287, 38.093761, 38.218903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425423, 38.406509, 37.997696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545814, -0.340557, -0.765576,
		-0.786915, 0.522208, 0.328730,
		0.287839, 0.781869, -0.553018,
		34.511776, 38.641071, 37.831791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610126, 38.449623, 37.926033>,  <34.310287, 38.093761, 38.218903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610126, 38.449623, 37.926033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920605, 38.569836, 37.704330>,  <34.106892, 38.641964, 37.571308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920605, 38.569836, 37.704330>,  <33.610126, 38.449623, 37.926033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920605, 38.569836, 37.704330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577147, -0.015214, -0.816499,
		-0.253813, 0.953652, 0.161640,
		0.776196, 0.300528, -0.554259,
		34.153465, 38.659992, 37.538052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349838, 39.049957, 37.453407>,  <33.610126, 38.449623, 37.926033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349838, 39.049957, 37.453407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672825, 38.885994, 37.283710>,  <33.866615, 38.787617, 37.181892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672825, 38.885994, 37.283710>,  <33.349838, 39.049957, 37.453407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672825, 38.885994, 37.283710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427164, 0.089714, -0.899713,
		0.406856, 0.907706, -0.102655,
		0.807465, -0.409904, -0.424240,
		33.915066, 38.763023, 37.156437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458752, 39.465923, 36.796902>,  <33.349838, 39.049957, 37.453407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458752, 39.465923, 36.796902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669689, 39.131557, 36.736027>,  <33.796253, 38.930939, 36.699501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669689, 39.131557, 36.736027>,  <33.458752, 39.465923, 36.796902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669689, 39.131557, 36.736027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467548, -0.135936, -0.873453,
		0.709441, 0.531765, -0.462514,
		0.527344, -0.835911, -0.152187,
		33.827892, 38.880783, 36.690369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721195, 39.425682, 36.073120>,  <33.458752, 39.465923, 36.796902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721195, 39.425682, 36.073120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749104, 39.042374, 36.184006>,  <33.765846, 38.812389, 36.250538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749104, 39.042374, 36.184006>,  <33.721195, 39.425682, 36.073120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749104, 39.042374, 36.184006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394170, -0.281759, -0.874781,
		0.916386, -0.048239, -0.397380,
		0.069767, -0.958272, 0.277214,
		33.770035, 38.754890, 36.267170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953770, 39.126785, 35.464405>,  <33.721195, 39.425682, 36.073120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953770, 39.126785, 35.464405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823597, 38.815681, 35.679508>,  <33.745495, 38.629021, 35.808571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823597, 38.815681, 35.679508>,  <33.953770, 39.126785, 35.464405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823597, 38.815681, 35.679508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283345, -0.462371, -0.840195,
		0.902114, -0.425799, -0.069903,
		-0.325433, -0.777759, 0.537760,
		33.725967, 38.582355, 35.840836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132996, 38.551567, 35.097603>,  <33.953770, 39.126785, 35.464405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132996, 38.551567, 35.097603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833366, 38.412746, 35.323326>,  <33.653587, 38.329453, 35.458759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833366, 38.412746, 35.323326>,  <34.132996, 38.551567, 35.097603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833366, 38.412746, 35.323326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326682, -0.547534, -0.770380,
		0.576340, -0.761421, 0.296767,
		-0.749073, -0.347052, 0.564308,
		33.608643, 38.308632, 35.492619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186340, 37.903229, 35.084068>,  <34.132996, 38.551567, 35.097603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186340, 37.903229, 35.084068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802982, 37.952766, 35.186943>,  <33.572968, 37.982491, 35.248669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802982, 37.952766, 35.186943>,  <34.186340, 37.903229, 35.084068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802982, 37.952766, 35.186943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279349, -0.592189, -0.755828,
		0.058696, -0.796225, 0.602147,
		-0.958394, 0.123845, 0.257184,
		33.515465, 37.989922, 35.264099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849163, 37.232979, 34.927685>,  <34.186340, 37.903229, 35.084068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849163, 37.232979, 34.927685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558937, 37.506985, 34.953964>,  <33.384800, 37.671387, 34.969734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558937, 37.506985, 34.953964>,  <33.849163, 37.232979, 34.927685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558937, 37.506985, 34.953964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453746, -0.404446, -0.794064,
		-0.517372, -0.605955, 0.604273,
		-0.725563, 0.685012, 0.065700,
		33.341267, 37.712486, 34.973675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287086, 36.772972, 34.885723>,  <33.849163, 37.232979, 34.927685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287086, 36.772972, 34.885723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177567, 37.142628, 34.779144>,  <33.111855, 37.364422, 34.715199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177567, 37.142628, 34.779144>,  <33.287086, 36.772972, 34.885723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177567, 37.142628, 34.779144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504341, -0.373844, -0.778383,
		-0.818948, -0.078738, 0.568440,
		-0.273796, 0.924143, -0.266448,
		33.095428, 37.419872, 34.699211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604588, 36.718044, 34.595245>,  <33.287086, 36.772972, 34.885723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604588, 36.718044, 34.595245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676682, 37.086575, 34.457443>,  <32.719936, 37.307693, 34.374763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676682, 37.086575, 34.457443>,  <32.604588, 36.718044, 34.595245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676682, 37.086575, 34.457443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583322, -0.181889, -0.791613,
		-0.791992, 0.343630, 0.504646,
		0.180233, 0.921323, -0.344501,
		32.730751, 37.362972, 34.354092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976759, 36.955891, 34.506435>,  <32.604588, 36.718044, 34.595245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976759, 36.955891, 34.506435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238575, 37.120541, 34.252777>,  <32.395664, 37.219330, 34.100582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238575, 37.120541, 34.252777>,  <31.976759, 36.955891, 34.506435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238575, 37.120541, 34.252777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627006, -0.173118, -0.759535,
		-0.422424, 0.894761, 0.144776,
		0.654539, 0.411621, -0.634150,
		32.434937, 37.244026, 34.062531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426401, 37.421207, 34.735386>,  <31.976759, 36.955891, 34.506435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426401, 37.421207, 34.735386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679207, 37.729656, 34.766182>,  <31.830891, 37.914726, 34.784660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679207, 37.729656, 34.766182>,  <31.426401, 37.421207, 34.735386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679207, 37.729656, 34.766182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661351, -0.484909, -0.572257,
		-0.403948, 0.412591, -0.816453,
		0.632013, 0.771124, 0.076990,
		31.868811, 37.960995, 34.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713572, 37.468929, 35.415131>,  <31.426401, 37.421207, 34.735386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713572, 37.468929, 35.415131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481558, 37.438980, 35.739586>,  <31.342350, 37.421013, 35.934261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481558, 37.438980, 35.739586>,  <31.713572, 37.468929, 35.415131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481558, 37.438980, 35.739586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814210, 0.083704, -0.574504,
		-0.024883, -0.993674, -0.109511,
		-0.580037, -0.074869, 0.811142,
		31.307547, 37.416519, 35.982929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659309, 36.851711, 35.960461>,  <31.713572, 37.468929, 35.415131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659309, 36.851711, 35.960461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956320, 36.704357, 35.736694>,  <32.134525, 36.615944, 35.602432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956320, 36.704357, 35.736694>,  <31.659309, 36.851711, 35.960461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956320, 36.704357, 35.736694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586109, 0.046956, -0.808870,
		0.324241, 0.928488, -0.181046,
		0.742525, -0.368382, -0.559420,
		32.179077, 36.593842, 35.568867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393574, 36.920761, 36.261890>,  <31.659309, 36.851711, 35.960461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393574, 36.920761, 36.261890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665569, 36.633312, 36.203659>,  <32.828766, 36.460842, 36.168720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665569, 36.633312, 36.203659>,  <32.393574, 36.920761, 36.261890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665569, 36.633312, 36.203659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003154, -0.195674, 0.980664,
		-0.733217, -0.667298, -0.130790,
		0.679987, -0.718627, -0.145577,
		32.869564, 36.417725, 36.159985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186295, 36.314732, 36.595173>,  <32.393574, 36.920761, 36.261890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186295, 36.314732, 36.595173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573677, 36.231140, 36.540882>,  <32.806107, 36.180984, 36.508308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573677, 36.231140, 36.540882>,  <32.186295, 36.314732, 36.595173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573677, 36.231140, 36.540882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087682, -0.224067, 0.970621,
		-0.233282, -0.951898, -0.198671,
		0.968448, -0.209009, -0.135735,
		32.864212, 36.168446, 36.500164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200142, 35.669586, 37.020550>,  <32.186295, 36.314732, 36.595173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200142, 35.669586, 37.020550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570705, 35.805630, 36.955944>,  <32.793045, 35.887257, 36.917179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570705, 35.805630, 36.955944>,  <32.200142, 35.669586, 37.020550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570705, 35.805630, 36.955944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201484, -0.085437, 0.975758,
		0.318067, -0.936496, -0.147677,
		0.926411, 0.340111, -0.161514,
		32.848629, 35.907661, 36.907490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635567, 35.254913, 37.392181>,  <32.200142, 35.669586, 37.020550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635567, 35.254913, 37.392181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872562, 35.571980, 37.334717>,  <33.014759, 35.762218, 37.300240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872562, 35.571980, 37.334717>,  <32.635567, 35.254913, 37.392181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872562, 35.571980, 37.334717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333605, -0.079106, 0.939388,
		0.733259, -0.604499, -0.311307,
		0.592486, 0.792668, -0.143659,
		33.050308, 35.809780, 37.291618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283604, 35.074619, 37.665501>,  <32.635567, 35.254913, 37.392181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283604, 35.074619, 37.665501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214840, 35.468552, 37.674988>,  <33.173580, 35.704910, 37.680679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214840, 35.468552, 37.674988>,  <33.283604, 35.074619, 37.665501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214840, 35.468552, 37.674988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193210, 0.010101, 0.981105,
		0.965979, 0.173245, -0.192015,
		-0.171911, 0.984827, 0.023716,
		33.163265, 35.764000, 37.682102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864120, 35.296955, 38.141434>,  <33.283604, 35.074619, 37.665501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864120, 35.296955, 38.141434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596226, 35.591816, 38.105530>,  <33.435490, 35.768734, 38.083988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596226, 35.591816, 38.105530>,  <33.864120, 35.296955, 38.141434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596226, 35.591816, 38.105530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246891, 0.335029, 0.909286,
		0.700355, 0.586822, -0.406378,
		-0.669737, 0.737154, -0.089758,
		33.395306, 35.812962, 38.078602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223980, 35.923580, 38.225330>,  <33.864120, 35.296955, 38.141434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223980, 35.923580, 38.225330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845413, 36.037239, 38.286720>,  <33.618275, 36.105434, 38.323555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845413, 36.037239, 38.286720>,  <34.223980, 35.923580, 38.225330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845413, 36.037239, 38.286720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279199, 0.481071, 0.831035,
		0.162309, 0.829354, -0.534628,
		-0.946416, 0.284152, 0.153472,
		33.561489, 36.122486, 38.332764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351578, 36.666183, 38.538956>,  <34.223980, 35.923580, 38.225330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351578, 36.666183, 38.538956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973454, 36.578064, 38.635178>,  <33.746578, 36.525192, 38.692909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973454, 36.578064, 38.635178>,  <34.351578, 36.666183, 38.538956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973454, 36.578064, 38.635178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109284, 0.480958, 0.869906,
		-0.307331, 0.848616, -0.430578,
		-0.945307, -0.220294, 0.240553,
		33.689861, 36.511974, 38.707344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962994, 37.311394, 38.791100>,  <34.351578, 36.666183, 38.538956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962994, 37.311394, 38.791100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816811, 36.978146, 38.957161>,  <33.729099, 36.778198, 39.056797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816811, 36.978146, 38.957161>,  <33.962994, 37.311394, 38.791100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816811, 36.978146, 38.957161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195180, 0.367505, 0.909310,
		-0.910135, 0.413343, 0.028302,
		-0.365456, -0.833119, 0.415155,
		33.707172, 36.728210, 39.081707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431435, 37.597466, 39.348808>,  <33.962994, 37.311394, 38.791100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431435, 37.597466, 39.348808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532528, 37.216133, 39.414871>,  <33.593185, 36.987331, 39.454510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532528, 37.216133, 39.414871>,  <33.431435, 37.597466, 39.348808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532528, 37.216133, 39.414871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065485, 0.153451, 0.985984,
		-0.965317, -0.260008, -0.023646,
		0.252735, -0.953335, 0.165155,
		33.608349, 36.930134, 39.464417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998230, 37.373863, 39.747345>,  <33.431435, 37.597466, 39.348808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998230, 37.373863, 39.747345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316532, 37.146523, 39.831001>,  <33.507515, 37.010117, 39.881195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316532, 37.146523, 39.831001>,  <32.998230, 37.373863, 39.747345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316532, 37.146523, 39.831001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137625, 0.166591, 0.976374,
		-0.589768, -0.805742, 0.054346,
		0.795759, -0.568355, 0.209140,
		33.555260, 36.976017, 39.893742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875431, 36.841740, 40.262173>,  <32.998230, 37.373863, 39.747345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875431, 36.841740, 40.262173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274715, 36.817856, 40.263607>,  <33.514286, 36.803524, 40.264469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274715, 36.817856, 40.263607>,  <32.875431, 36.841740, 40.262173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274715, 36.817856, 40.263607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005406, -0.030310, 0.999526,
		-0.059578, -0.997755, -0.030578,
		0.998209, -0.059715, 0.003588,
		33.574177, 36.799942, 40.264683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037708, 36.258766, 40.694199>,  <32.875431, 36.841740, 40.262173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037708, 36.258766, 40.694199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357109, 36.499554, 40.696297>,  <33.548748, 36.644028, 40.697556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357109, 36.499554, 40.696297>,  <33.037708, 36.258766, 40.694199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357109, 36.499554, 40.696297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060243, -0.088581, 0.994246,
		0.598971, -0.793591, -0.106997,
		0.798502, 0.601970, 0.005249,
		33.596661, 36.680145, 40.697872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439552, 36.015308, 41.172638>,  <33.037708, 36.258766, 40.694199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439552, 36.015308, 41.172638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620464, 36.370178, 41.136070>,  <33.729012, 36.583099, 41.114128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620464, 36.370178, 41.136070>,  <33.439552, 36.015308, 41.172638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620464, 36.370178, 41.136070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102554, 0.050089, 0.993466,
		0.885961, -0.458698, -0.068329,
		0.452278, 0.887179, -0.091418,
		33.756149, 36.636333, 41.108646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059933, 35.851486, 41.585625>,  <33.439552, 36.015308, 41.172638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059933, 35.851486, 41.585625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977280, 36.239601, 41.535271>,  <33.927689, 36.472469, 41.505058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977280, 36.239601, 41.535271>,  <34.059933, 35.851486, 41.585625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977280, 36.239601, 41.535271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088378, 0.109624, 0.990036,
		0.974418, 0.215702, 0.063100,
		-0.206636, 0.970286, -0.125883,
		33.915291, 36.530685, 41.497505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469963, 36.149937, 42.142776>,  <34.059933, 35.851486, 41.585625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469963, 36.149937, 42.142776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187057, 36.401585, 42.013794>,  <34.017315, 36.552574, 41.936405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187057, 36.401585, 42.013794>,  <34.469963, 36.149937, 42.142776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187057, 36.401585, 42.013794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141545, 0.320874, 0.936485,
		0.692633, 0.707987, -0.137894,
		-0.707266, 0.629122, -0.322460,
		33.974876, 36.590321, 41.917057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456596, 36.642857, 42.621864>,  <34.469963, 36.149937, 42.142776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456596, 36.642857, 42.621864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134899, 36.770969, 42.421616>,  <33.941883, 36.847836, 42.301468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134899, 36.770969, 42.421616>,  <34.456596, 36.642857, 42.621864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134899, 36.770969, 42.421616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295206, 0.515802, 0.804240,
		0.515802, 0.794587, -0.320280,
		-0.804240, 0.320280, -0.500619,
		33.893627, 36.867054, 42.271431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441486, 37.305702, 42.592854>,  <34.456596, 36.642857, 42.621864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441486, 37.305702, 42.592854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059189, 37.191536, 42.564289>,  <33.829811, 37.123035, 42.547150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059189, 37.191536, 42.564289>,  <34.441486, 37.305702, 42.592854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059189, 37.191536, 42.564289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202744, 0.463007, 0.862855,
		-0.213207, 0.839144, -0.500380,
		-0.955739, -0.285416, -0.071415,
		33.772469, 37.105911, 42.542866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000633, 37.943783, 42.838081>,  <34.441486, 37.305702, 42.592854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000633, 37.943783, 42.838081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812290, 37.592167, 42.867943>,  <33.699284, 37.381195, 42.885860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812290, 37.592167, 42.867943>,  <34.000633, 37.943783, 42.838081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812290, 37.592167, 42.867943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303234, 0.240726, 0.922009,
		-0.828456, 0.411501, -0.379904,
		-0.470860, -0.879044, 0.074650,
		33.671032, 37.328453, 42.890339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535744, 38.096188, 43.282589>,  <34.000633, 37.943783, 42.838081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535744, 38.096188, 43.282589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522228, 37.697411, 43.310776>,  <33.514118, 37.458145, 43.327690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522228, 37.697411, 43.310776>,  <33.535744, 38.096188, 43.282589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522228, 37.697411, 43.310776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201134, 0.075852, 0.976623,
		-0.978981, 0.018826, -0.203082,
		-0.033790, -0.996941, 0.070471,
		33.512093, 37.398327, 43.331917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998695, 37.908581, 43.776951>,  <33.535744, 38.096188, 43.282589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998695, 37.908581, 43.776951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233574, 37.585270, 43.759533>,  <33.374500, 37.391285, 43.749084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233574, 37.585270, 43.759533>,  <32.998695, 37.908581, 43.776951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233574, 37.585270, 43.759533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067893, -0.102784, 0.992384,
		-0.806594, -0.579766, -0.115231,
		0.587194, -0.808274, -0.043543,
		33.409733, 37.342789, 43.746471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650272, 37.462761, 44.231537>,  <32.998695, 37.908581, 43.776951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650272, 37.462761, 44.231537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020145, 37.312885, 44.204487>,  <33.242069, 37.222958, 44.188255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020145, 37.312885, 44.204487>,  <32.650272, 37.462761, 44.231537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020145, 37.312885, 44.204487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034915, -0.093423, 0.995014,
		-0.379142, -0.922430, -0.073304,
		0.924680, -0.374693, -0.067627,
		33.297550, 37.200478, 44.184200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695099, 36.809788, 44.615177>,  <32.650272, 37.462761, 44.231537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695099, 36.809788, 44.615177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064449, 36.961552, 44.591751>,  <33.286060, 37.052612, 44.577694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064449, 36.961552, 44.591751>,  <32.695099, 36.809788, 44.615177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064449, 36.961552, 44.591751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055495, 0.019041, 0.998277,
		0.379876, -0.925031, -0.003474,
		0.923371, 0.379414, -0.058568,
		33.341461, 37.075375, 44.574181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254700, 36.304234, 45.011173>,  <32.695099, 36.809788, 44.615177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254700, 36.304234, 45.011173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400772, 36.676243, 44.994682>,  <33.488415, 36.899448, 44.984787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400772, 36.676243, 44.994682>,  <33.254700, 36.304234, 45.011173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400772, 36.676243, 44.994682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150751, -0.015375, 0.988452,
		0.918649, -0.367180, -0.145816,
		0.365182, 0.930023, -0.041228,
		33.510326, 36.955250, 44.982315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994568, 36.306263, 45.156635>,  <33.254700, 36.304234, 45.011173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994568, 36.306263, 45.156635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857773, 36.676971, 45.218781>,  <33.775696, 36.899395, 45.256065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857773, 36.676971, 45.218781>,  <33.994568, 36.306263, 45.156635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857773, 36.676971, 45.218781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361606, -0.022810, 0.932052,
		0.867344, 0.374930, -0.327326,
		-0.341988, 0.926772, 0.155361,
		33.755177, 36.955002, 45.265388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695866, 36.525223, 45.455574>,  <33.994568, 36.306263, 45.156635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695866, 36.525223, 45.455574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054981, 36.366203, 45.531391>,  <35.270451, 36.270790, 45.576881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054981, 36.366203, 45.531391>,  <34.695866, 36.525223, 45.455574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054981, 36.366203, 45.531391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206322, -0.000591, -0.978484,
		0.389105, 0.917582, 0.081492,
		0.897791, -0.397547, 0.189547,
		35.324318, 36.246941, 45.588257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179035, 36.847858, 44.985836>,  <34.695866, 36.525223, 45.455574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179035, 36.847858, 44.985836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330383, 36.493736, 45.093956>,  <35.421192, 36.281261, 45.158829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330383, 36.493736, 45.093956>,  <35.179035, 36.847858, 44.985836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330383, 36.493736, 45.093956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266011, -0.175691, -0.947824,
		0.886606, 0.430534, 0.169026,
		0.378374, -0.885310, 0.270295,
		35.443897, 36.228142, 45.175045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882622, 36.747520, 44.747211>,  <35.179035, 36.847858, 44.985836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882622, 36.747520, 44.747211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799438, 36.360271, 44.803051>,  <35.749527, 36.127922, 44.836555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799438, 36.360271, 44.803051>,  <35.882622, 36.747520, 44.747211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799438, 36.360271, 44.803051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224115, -0.186081, -0.956633,
		0.952116, -0.167655, 0.255669,
		-0.207960, -0.968125, 0.139597,
		35.737049, 36.069836, 44.844929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496426, 36.321331, 44.742157>,  <35.882622, 36.747520, 44.747211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496426, 36.321331, 44.742157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201599, 36.068619, 44.646168>,  <36.024704, 35.916992, 44.588573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201599, 36.068619, 44.646168>,  <36.496426, 36.321331, 44.742157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201599, 36.068619, 44.646168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451104, -0.195515, -0.870792,
		0.503235, -0.750081, 0.429107,
		-0.737062, -0.631785, -0.239975,
		35.980480, 35.879082, 44.574177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853054, 35.691532, 44.547466>,  <36.496426, 36.321331, 44.742157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853054, 35.691532, 44.547466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481808, 35.679714, 44.399021>,  <36.259060, 35.672623, 44.309956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481808, 35.679714, 44.399021>,  <36.853054, 35.691532, 44.547466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481808, 35.679714, 44.399021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363581, -0.286269, -0.886487,
		-0.080045, -0.957693, 0.276434,
		-0.928117, -0.029547, -0.371113,
		36.203373, 35.670849, 44.287685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
