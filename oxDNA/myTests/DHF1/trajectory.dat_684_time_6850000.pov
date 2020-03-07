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
	<4.700538, 4.379035, 2.794081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.791121, 3.992776, 2.845053>,  <4.845471, 3.761020, 2.875636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.791121, 3.992776, 2.845053>,  <4.700538, 4.379035, 2.794081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.791121, 3.992776, 2.845053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095459, -0.108195, -0.989536,
		0.969332, 0.236253, 0.067679,
		0.226458, -0.965649, 0.127429,
		4.859059, 3.703081, 2.883281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.434760, 4.042572, 2.605639>,  <4.700538, 4.379035, 2.794081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.434760, 4.042572, 2.605639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.132624, 3.782306, 2.574409>,  <4.951342, 3.626146, 2.555672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.132624, 3.782306, 2.574409>,  <5.434760, 4.042572, 2.605639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.132624, 3.782306, 2.574409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005145, 0.113243, -0.993554,
		0.655312, -0.750873, -0.082190,
		-0.755340, -0.650665, -0.078073,
		4.906022, 3.587106, 2.550988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.604026, 3.561293, 2.240656>,  <5.434760, 4.042572, 2.605639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.604026, 3.561293, 2.240656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.205413, 3.544948, 2.211670>,  <4.966245, 3.535140, 2.194278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.205413, 3.544948, 2.211670>,  <5.604026, 3.561293, 2.240656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.205413, 3.544948, 2.211670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061097, 0.231690, -0.970869,
		0.056462, -0.971931, -0.228390,
		-0.996533, -0.040863, -0.072464,
		4.906453, 3.532688, 2.189931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.441588, 3.068553, 1.762528>,  <5.604026, 3.561293, 2.240656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.441588, 3.068553, 1.762528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.113675, 3.297623, 1.762005>,  <4.916927, 3.435065, 1.761691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.113675, 3.297623, 1.762005>,  <5.441588, 3.068553, 1.762528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.113675, 3.297623, 1.762005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055170, 0.076702, -0.995527,
		-0.570012, -0.816187, -0.094473,
		-0.819782, 0.572674, -0.001308,
		4.867741, 3.469425, 1.761613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.950251, 2.787979, 1.291756>,  <5.441588, 3.068553, 1.762528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.950251, 2.787979, 1.291756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.881101, 3.181022, 1.318878>,  <4.839611, 3.416847, 1.335152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.881101, 3.181022, 1.318878>,  <4.950251, 2.787979, 1.291756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.881101, 3.181022, 1.318878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140332, 0.092713, -0.985754,
		-0.974895, -0.160897, -0.153919,
		-0.172875, 0.982607, 0.067806,
		4.829238, 3.475804, 1.339220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.572176, 3.069993, 0.656712>,  <4.950251, 2.787979, 1.291756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.572176, 3.069993, 0.656712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.702005, 3.415264, 0.811413>,  <4.779903, 3.622427, 0.904233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.702005, 3.415264, 0.811413>,  <4.572176, 3.069993, 0.656712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.702005, 3.415264, 0.811413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123613, 0.366673, -0.922101,
		-0.937749, 0.347097, 0.012312,
		0.324573, 0.863177, 0.386753,
		4.799377, 3.674217, 0.927439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.119665, 3.679523, 0.443374>,  <4.572176, 3.069993, 0.656712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.119665, 3.679523, 0.443374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.492416, 3.798517, 0.526421>,  <4.716067, 3.869914, 0.576248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.492416, 3.798517, 0.526421>,  <4.119665, 3.679523, 0.443374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.492416, 3.798517, 0.526421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094491, 0.353504, -0.930648,
		-0.350248, 0.886869, 0.301313,
		0.931878, 0.297487, 0.207616,
		4.771980, 3.887763, 0.588705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.175701, 4.413886, 0.403074>,  <4.119665, 3.679523, 0.443374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.175701, 4.413886, 0.403074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.522790, 4.241536, 0.303953>,  <4.731043, 4.138126, 0.244481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.522790, 4.241536, 0.303953>,  <4.175701, 4.413886, 0.403074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.522790, 4.241536, 0.303953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088783, 0.356172, -0.930193,
		0.489056, 0.829150, 0.270804,
		0.867722, -0.430874, -0.247802,
		4.783107, 4.112274, 0.229612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.094713, 4.313652, -1.220278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.389263, 4.449500, -0.986215>,  <0.565993, 4.531009, -0.845776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.389263, 4.449500, -0.986215>,  <0.094713, 4.313652, -1.220278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.389263, 4.449500, -0.986215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419261, -0.449750, 0.788635,
		0.531012, -0.826065, -0.188795,
		0.736374, 0.339620, 0.585159,
		0.610175, 4.551386, -0.810667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.273405, 3.840026, -0.764372>,  <0.094713, 4.313652, -1.220278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.273405, 3.840026, -0.764372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.338676, 4.197380, -0.596929>,  <0.377839, 4.411793, -0.496462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.338676, 4.197380, -0.596929>,  <0.273405, 3.840026, -0.764372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.338676, 4.197380, -0.596929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328066, -0.351018, 0.877017,
		0.930454, -0.280442, 0.235811,
		0.163178, 0.893386, 0.418609,
		0.387630, 4.465396, -0.471346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.694185, 3.778984, -0.138237>,  <0.273405, 3.840026, -0.764372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.694185, 3.778984, -0.138237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.459816, 4.099830, -0.092095>,  <0.319194, 4.292337, -0.064411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.459816, 4.099830, -0.092095>,  <0.694185, 3.778984, -0.138237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.459816, 4.099830, -0.092095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151845, -0.248496, 0.956657,
		0.796013, 0.543011, 0.267396,
		-0.585923, 0.802115, 0.115353,
		0.284039, 4.340464, -0.057490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.947884, 4.149412, 0.498381>,  <0.694185, 3.778984, -0.138237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.947884, 4.149412, 0.498381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.567509, 4.237198, 0.411158>,  <0.339283, 4.289869, 0.358823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.567509, 4.237198, 0.411158>,  <0.947884, 4.149412, 0.498381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.567509, 4.237198, 0.411158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247904, -0.118858, 0.961466,
		0.185089, 0.968353, 0.167433,
		-0.950939, 0.219464, -0.218059,
		0.282227, 4.303037, 0.345740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.721366, 4.630831, 0.961746>,  <0.947884, 4.149412, 0.498381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.721366, 4.630831, 0.961746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.405582, 4.413904, 0.846752>,  <0.216112, 4.283748, 0.777756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.405582, 4.413904, 0.846752>,  <0.721366, 4.630831, 0.961746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.405582, 4.413904, 0.846752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200934, -0.214221, 0.955895,
		-0.579983, 0.812405, 0.060148,
		-0.789459, -0.542317, -0.287484,
		0.168745, 4.251209, 0.760507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.099072, 4.813732, 1.372210>,  <0.721366, 4.630831, 0.961746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.099072, 4.813732, 1.372210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.000759, 4.448857, 1.241056>,  <-0.058229, 4.229932, 1.162365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.000759, 4.448857, 1.241056>,  <0.099072, 4.813732, 1.372210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.000759, 4.448857, 1.241056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420711, -0.204350, 0.883879,
		-0.873266, 0.355185, -0.333541,
		-0.245782, -0.912186, -0.327883,
		-0.072975, 4.175201, 1.142692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.512867, 4.653212, 1.596285>,  <0.099072, 4.813732, 1.372210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.512867, 4.653212, 1.596285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.407757, 4.277955, 1.506096>,  <-0.344691, 4.052801, 1.451982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.407757, 4.277955, 1.506096>,  <-0.512867, 4.653212, 1.596285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.407757, 4.277955, 1.506096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501439, -0.332433, 0.798778,
		-0.824322, -0.096839, -0.557777,
		0.262776, -0.938142, -0.225473,
		-0.328924, 3.996512, 1.438454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.111771, 4.241537, 1.670954>,  <-0.512867, 4.653212, 1.596285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.111771, 4.241537, 1.670954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.802135, 3.989614, 1.696663>,  <-0.616354, 3.838461, 1.712088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.802135, 3.989614, 1.696663>,  <-1.111771, 4.241537, 1.670954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.802135, 3.989614, 1.696663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303616, -0.280239, 0.910650,
		-0.555521, -0.724438, -0.408149,
		0.774089, -0.629806, 0.064273,
		-0.569909, 3.800673, 1.715945>
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
