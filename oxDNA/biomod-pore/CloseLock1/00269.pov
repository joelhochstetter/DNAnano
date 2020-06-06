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
	<24.524019, 35.102531, 35.086388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164442, 35.162277, 34.921661>,  <23.948696, 35.198124, 34.822826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164442, 35.162277, 34.921661>,  <24.524019, 35.102531, 35.086388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.164442, 35.162277, 34.921661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437614, -0.348906, 0.828709,
		-0.019903, 0.925178, 0.379012,
		-0.898943, 0.149368, -0.411815,
		23.894760, 35.207088, 34.798119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.347439, 35.164165, 34.322575>,  <24.524019, 35.102531, 35.086388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.347439, 35.164165, 34.322575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740685, 35.102398, 34.283295>,  <24.976631, 35.065338, 34.259727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740685, 35.102398, 34.283295>,  <24.347439, 35.164165, 34.322575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740685, 35.102398, 34.283295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128543, -0.200774, -0.971168,
		0.130251, 0.967391, -0.217233,
		0.983113, -0.154419, -0.098200,
		25.035618, 35.056072, 34.253834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.724821, 35.671452, 33.911430>,  <24.347439, 35.164165, 34.322575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.724821, 35.671452, 33.911430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948620, 35.340942, 33.885372>,  <25.082899, 35.142639, 33.869736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948620, 35.340942, 33.885372>,  <24.724821, 35.671452, 33.911430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.948620, 35.340942, 33.885372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063883, 0.121356, -0.990551,
		0.826368, 0.550047, 0.120682,
		0.559495, -0.826269, -0.065146,
		25.116468, 35.093063, 33.865829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470219, 35.829155, 33.623573>,  <24.724821, 35.671452, 33.911430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470219, 35.829155, 33.623573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393944, 35.441723, 33.559711>,  <25.348179, 35.209263, 33.521393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393944, 35.441723, 33.559711>,  <25.470219, 35.829155, 33.623573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393944, 35.441723, 33.559711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040676, 0.154703, -0.987123,
		0.980808, -0.194724, 0.009898,
		-0.190685, -0.968581, -0.159654,
		25.336739, 35.151150, 33.511814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008989, 35.632645, 33.212646>,  <25.470219, 35.829155, 33.623573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008989, 35.632645, 33.212646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729048, 35.355457, 33.143368>,  <25.561083, 35.189144, 33.101799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729048, 35.355457, 33.143368>,  <26.008989, 35.632645, 33.212646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729048, 35.355457, 33.143368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080512, 0.164404, -0.983102,
		0.709734, -0.701972, -0.059266,
		-0.699853, -0.692969, -0.173201,
		25.519093, 35.147568, 33.091408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549593, 35.963299, 33.490383>,  <26.008989, 35.632645, 33.212646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549593, 35.963299, 33.490383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864582, 36.189964, 33.587364>,  <27.053576, 36.325962, 33.645554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864582, 36.189964, 33.587364>,  <26.549593, 35.963299, 33.490383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864582, 36.189964, 33.587364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243105, 0.647038, -0.722663,
		-0.566380, 0.510136, 0.647282,
		0.787473, 0.566660, 0.242453,
		27.100824, 36.359962, 33.660099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316090, 36.576019, 33.228153>,  <26.549593, 35.963299, 33.490383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316090, 36.576019, 33.228153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701315, 36.650848, 33.305622>,  <26.932451, 36.695747, 33.352104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701315, 36.650848, 33.305622>,  <26.316090, 36.576019, 33.228153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701315, 36.650848, 33.305622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025355, 0.779053, -0.626445,
		-0.268071, 0.598397, 0.755022,
		0.963065, 0.187075, 0.193669,
		26.990234, 36.706970, 33.363724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249172, 37.258709, 33.143661>,  <26.316090, 36.576019, 33.228153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249172, 37.258709, 33.143661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637856, 37.165424, 33.128708>,  <26.871065, 37.109451, 33.119736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637856, 37.165424, 33.128708>,  <26.249172, 37.258709, 33.143661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637856, 37.165424, 33.128708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133112, 0.671490, -0.728960,
		0.195109, 0.703358, 0.683535,
		0.971707, -0.233214, -0.037388,
		26.929367, 37.095459, 33.117493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604944, 37.959343, 33.088791>,  <26.249172, 37.258709, 33.143661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604944, 37.959343, 33.088791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873304, 37.685017, 32.975967>,  <27.034321, 37.520420, 32.908272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873304, 37.685017, 32.975967>,  <26.604944, 37.959343, 33.088791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873304, 37.685017, 32.975967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358572, 0.632965, -0.686135,
		0.649092, 0.359190, 0.670569,
		0.670899, -0.685812, -0.282057,
		27.074574, 37.479275, 32.891350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293325, 38.151012, 33.262947>,  <26.604944, 37.959343, 33.088791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293325, 38.151012, 33.262947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315203, 37.901611, 32.950985>,  <27.328329, 37.751972, 32.763805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315203, 37.901611, 32.950985>,  <27.293325, 38.151012, 33.262947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315203, 37.901611, 32.950985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342451, 0.745417, -0.571909,
		0.937942, -0.235801, 0.254288,
		0.054694, -0.623499, -0.779909,
		27.331612, 37.714561, 32.717010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825815, 38.333065, 32.995457>,  <27.293325, 38.151012, 33.262947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825815, 38.333065, 32.995457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663914, 38.109444, 32.706005>,  <27.566772, 37.975269, 32.532333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663914, 38.109444, 32.706005>,  <27.825815, 38.333065, 32.995457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663914, 38.109444, 32.706005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347314, 0.638053, -0.687212,
		0.845901, -0.529476, -0.064085,
		-0.404752, -0.559056, -0.723625,
		27.542488, 37.941727, 32.488918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367298, 38.189484, 32.527477>,  <27.825815, 38.333065, 32.995457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367298, 38.189484, 32.527477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014280, 38.173027, 32.340107>,  <27.802469, 38.163151, 32.227684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014280, 38.173027, 32.340107>,  <28.367298, 38.189484, 32.527477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014280, 38.173027, 32.340107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374084, 0.542154, -0.752416,
		0.284919, -0.839271, -0.463083,
		-0.882543, -0.041146, -0.468428,
		27.749517, 38.160683, 32.199577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522814, 38.107079, 31.899200>,  <28.367298, 38.189484, 32.527477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522814, 38.107079, 31.899200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148369, 38.245483, 31.874006>,  <27.923702, 38.328526, 31.858891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148369, 38.245483, 31.874006>,  <28.522814, 38.107079, 31.899200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148369, 38.245483, 31.874006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281500, 0.629792, -0.723961,
		-0.210833, -0.695439, -0.686960,
		-0.936113, 0.346014, -0.062985,
		27.867535, 38.349289, 31.855110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417244, 38.186100, 31.096941>,  <28.522814, 38.107079, 31.899200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417244, 38.186100, 31.096941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145189, 38.400761, 31.296709>,  <27.981956, 38.529556, 31.416571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145189, 38.400761, 31.296709>,  <28.417244, 38.186100, 31.096941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145189, 38.400761, 31.296709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208681, 0.794802, -0.569861,
		-0.702757, -0.283363, -0.652562,
		-0.680135, 0.536652, 0.499421,
		27.941149, 38.561756, 31.446535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016447, 38.520885, 30.559984>,  <28.417244, 38.186100, 31.096941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016447, 38.520885, 30.559984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951960, 38.758907, 30.874924>,  <27.913267, 38.901722, 31.063887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951960, 38.758907, 30.874924>,  <28.016447, 38.520885, 30.559984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951960, 38.758907, 30.874924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252786, 0.796067, -0.549888,
		-0.953996, 0.110378, -0.278762,
		-0.161218, 0.595058, 0.787347,
		27.903595, 38.937424, 31.111128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623936, 39.063717, 30.300699>,  <28.016447, 38.520885, 30.559984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623936, 39.063717, 30.300699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808634, 39.177433, 30.636787>,  <27.919453, 39.245663, 30.838440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808634, 39.177433, 30.636787>,  <27.623936, 39.063717, 30.300699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808634, 39.177433, 30.636787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292999, 0.845194, -0.446989,
		-0.837223, 0.452580, 0.306969,
		0.461746, 0.284288, 0.840221,
		27.947157, 39.262718, 30.888853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390085, 39.757210, 30.358742>,  <27.623936, 39.063717, 30.300699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390085, 39.757210, 30.358742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716259, 39.710903, 30.585602>,  <27.911964, 39.683121, 30.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716259, 39.710903, 30.585602>,  <27.390085, 39.757210, 30.358742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716259, 39.710903, 30.585602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310646, 0.914271, -0.260017,
		-0.488429, 0.388210, 0.781492,
		0.815436, -0.115767, 0.567152,
		27.960890, 39.676174, 30.755747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481731, 40.399757, 30.618483>,  <27.390085, 39.757210, 30.358742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481731, 40.399757, 30.618483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831942, 40.212963, 30.668091>,  <28.042068, 40.100887, 30.697857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831942, 40.212963, 30.668091>,  <27.481731, 40.399757, 30.618483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831942, 40.212963, 30.668091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483166, 0.844947, -0.229381,
		0.002325, 0.260752, 0.965403,
		0.875526, -0.466983, 0.124022,
		28.094599, 40.072868, 30.705297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954630, 40.802944, 31.052326>,  <27.481731, 40.399757, 30.618483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954630, 40.802944, 31.052326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202955, 40.559704, 30.854416>,  <28.351950, 40.413761, 30.735670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202955, 40.559704, 30.854416>,  <27.954630, 40.802944, 31.052326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202955, 40.559704, 30.854416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550070, 0.787572, -0.277763,
		0.558580, -0.099724, 0.823434,
		0.620814, -0.608099, -0.494778,
		28.389200, 40.377274, 30.705982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745731, 41.062809, 31.138996>,  <27.954630, 40.802944, 31.052326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745731, 41.062809, 31.138996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806187, 40.797031, 30.846239>,  <28.842461, 40.637566, 30.670584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806187, 40.797031, 30.846239>,  <28.745731, 41.062809, 31.138996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806187, 40.797031, 30.846239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517443, 0.684037, -0.514145,
		0.842264, -0.301007, 0.447198,
		0.151139, -0.664446, -0.731894,
		28.851528, 40.597698, 30.626671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459412, 41.081554, 30.951893>,  <28.745731, 41.062809, 31.138996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459412, 41.081554, 30.951893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225798, 40.958061, 30.651604>,  <29.085629, 40.883965, 30.471430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225798, 40.958061, 30.651604>,  <29.459412, 41.081554, 30.951893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225798, 40.958061, 30.651604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443546, 0.653191, -0.613684,
		0.679833, -0.691393, -0.244547,
		-0.584033, -0.308735, -0.750725,
		29.050587, 40.865440, 30.426386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955175, 40.999947, 30.425701>,  <29.459412, 41.081554, 30.951893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955175, 40.999947, 30.425701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590637, 41.029846, 30.263783>,  <29.371914, 41.047787, 30.166632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590637, 41.029846, 30.263783>,  <29.955175, 40.999947, 30.425701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590637, 41.029846, 30.263783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347953, 0.665316, -0.660517,
		0.219947, -0.742810, -0.632342,
		-0.911346, 0.074747, -0.404797,
		29.317234, 41.052269, 30.142344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125191, 40.938339, 29.711391>,  <29.955175, 40.999947, 30.425701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125191, 40.938339, 29.711391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770721, 41.119015, 29.752712>,  <29.558041, 41.227421, 29.777504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770721, 41.119015, 29.752712>,  <30.125191, 40.938339, 29.711391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770721, 41.119015, 29.752712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315387, 0.751333, -0.579681,
		-0.339451, -0.481118, -0.808269,
		-0.886173, 0.451691, 0.103302,
		29.504869, 41.254520, 29.783703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014280, 41.304890, 29.074802>,  <30.125191, 40.938339, 29.711391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014280, 41.304890, 29.074802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748470, 41.461853, 29.329180>,  <29.588985, 41.556030, 29.481806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748470, 41.461853, 29.329180>,  <30.014280, 41.304890, 29.074802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748470, 41.461853, 29.329180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124912, 0.897381, -0.423208,
		-0.736753, -0.201795, -0.645347,
		-0.664523, 0.392411, 0.635942,
		29.549112, 41.579575, 29.519962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484474, 41.639801, 28.672256>,  <30.014280, 41.304890, 29.074802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484474, 41.639801, 28.672256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501743, 41.813519, 29.032152>,  <29.512106, 41.917747, 29.248089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501743, 41.813519, 29.032152>,  <29.484474, 41.639801, 28.672256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501743, 41.813519, 29.032152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215683, 0.875288, -0.432841,
		-0.975509, 0.212746, -0.055879,
		0.043175, 0.434292, 0.899737,
		29.514696, 41.943806, 29.302073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350737, 42.346127, 28.513897>,  <29.484474, 41.639801, 28.672256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350737, 42.346127, 28.513897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505959, 42.337830, 28.882458>,  <29.599091, 42.332851, 29.103594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505959, 42.337830, 28.882458>,  <29.350737, 42.346127, 28.513897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505959, 42.337830, 28.882458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506921, 0.839742, -0.194587,
		-0.769705, 0.542589, 0.336380,
		0.388053, -0.020743, 0.921404,
		29.622374, 42.331608, 29.158878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034624, 42.826607, 28.908720>,  <29.350737, 42.346127, 28.513897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034624, 42.826607, 28.908720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421772, 42.750835, 28.974859>,  <29.654060, 42.705372, 29.014542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421772, 42.750835, 28.974859>,  <29.034624, 42.826607, 28.908720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421772, 42.750835, 28.974859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240963, 0.886662, -0.394674,
		-0.071843, 0.421836, 0.903821,
		0.967872, -0.189433, 0.165347,
		29.712133, 42.694004, 29.024464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426893, 43.230019, 29.433758>,  <29.034624, 42.826607, 28.908720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426893, 43.230019, 29.433758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664814, 43.116959, 29.132742>,  <29.807566, 43.049122, 28.952133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664814, 43.116959, 29.132742>,  <29.426893, 43.230019, 29.433758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664814, 43.116959, 29.132742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252083, 0.954509, -0.159270,
		0.763324, -0.094968, 0.638997,
		0.594803, -0.282654, -0.752540,
		29.843254, 43.032162, 28.906981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066238, 43.575962, 29.744431>,  <29.426893, 43.230019, 29.433758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066238, 43.575962, 29.744431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717379, 43.440941, 29.886087>,  <29.508062, 43.359928, 29.971081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717379, 43.440941, 29.886087>,  <30.066238, 43.575962, 29.744431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717379, 43.440941, 29.886087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437328, 0.862385, -0.255021,
		-0.219323, -0.377292, -0.899749,
		-0.872147, -0.337554, 0.354141,
		29.455734, 43.339676, 29.992331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583418, 44.045654, 29.701572>,  <30.066238, 43.575962, 29.744431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583418, 44.045654, 29.701572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674387, 43.932690, 29.328794>,  <30.728968, 43.864910, 29.105127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674387, 43.932690, 29.328794>,  <30.583418, 44.045654, 29.701572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674387, 43.932690, 29.328794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926380, 0.232252, -0.296443,
		0.300165, 0.930754, -0.208800,
		0.227421, -0.282410, -0.931946,
		30.742613, 43.847965, 29.049212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405041, 44.597527, 29.313129>,  <30.583418, 44.045654, 29.701572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405041, 44.597527, 29.313129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397707, 44.238640, 29.136644>,  <30.393307, 44.023308, 29.030754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397707, 44.238640, 29.136644>,  <30.405041, 44.597527, 29.313129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397707, 44.238640, 29.136644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922014, 0.185858, -0.339628,
		0.386722, 0.400576, -0.830653,
		-0.018336, -0.897216, -0.441212,
		30.392206, 43.969475, 29.004280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392721, 45.080360, 29.941565>,  <30.405041, 44.597527, 29.313129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392721, 45.080360, 29.941565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603420, 45.419834, 29.922501>,  <30.729839, 45.623520, 29.911062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603420, 45.419834, 29.922501>,  <30.392721, 45.080360, 29.941565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603420, 45.419834, 29.922501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747237, -0.435599, 0.501887,
		0.405184, -0.299980, -0.863619,
		0.526748, 0.848684, -0.047658,
		30.761444, 45.674438, 29.908203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976694, 44.991547, 29.452625>,  <30.392721, 45.080360, 29.941565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976694, 44.991547, 29.452625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007526, 45.210941, 29.785664>,  <31.026026, 45.342579, 29.985487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007526, 45.210941, 29.785664>,  <30.976694, 44.991547, 29.452625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007526, 45.210941, 29.785664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719131, -0.609002, 0.334614,
		0.690586, 0.572955, -0.441378,
		0.077082, 0.548488, 0.832598,
		31.030651, 45.375488, 30.035442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648272, 44.751556, 29.589664>,  <30.976694, 44.991547, 29.452625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648272, 44.751556, 29.589664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486288, 44.954231, 29.894104>,  <31.389097, 45.075836, 30.076767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486288, 44.954231, 29.894104>,  <31.648272, 44.751556, 29.589664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486288, 44.954231, 29.894104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607937, -0.472543, 0.638056,
		0.682949, 0.721087, -0.116675,
		-0.404960, 0.506691, 0.761099,
		31.364799, 45.106239, 30.122435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246094, 44.786694, 30.048208>,  <31.648272, 44.751556, 29.589664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246094, 44.786694, 30.048208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891264, 44.797985, 30.232515>,  <31.678366, 44.804760, 30.343100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891264, 44.797985, 30.232515>,  <32.246094, 44.786694, 30.048208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891264, 44.797985, 30.232515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269388, -0.778901, 0.566343,
		0.374876, 0.626512, 0.683338,
		-0.887073, 0.028226, 0.460766,
		31.625141, 44.806454, 30.370745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218731, 44.047043, 30.073627>,  <32.246094, 44.786694, 30.048208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218731, 44.047043, 30.073627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929136, 44.231266, 30.279047>,  <31.755381, 44.341801, 30.402300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929136, 44.231266, 30.279047>,  <32.218731, 44.047043, 30.073627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929136, 44.231266, 30.279047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014933, -0.754761, 0.655830,
		0.689656, 0.467141, 0.553311,
		-0.723983, 0.460560, 0.513550,
		31.711941, 44.369434, 30.433111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450600, 44.048153, 30.749084>,  <32.218731, 44.047043, 30.073627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450600, 44.048153, 30.749084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053413, 44.082066, 30.716043>,  <31.815102, 44.102413, 30.696218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053413, 44.082066, 30.716043>,  <32.450600, 44.048153, 30.749084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053413, 44.082066, 30.716043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116804, -0.588669, 0.799891,
		0.019192, 0.803916, 0.594433,
		-0.992970, 0.084784, -0.082603,
		31.755522, 44.107502, 30.691263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221485, 44.173794, 31.416910>,  <32.450600, 44.048153, 30.749084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221485, 44.173794, 31.416910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895842, 44.050648, 31.219957>,  <31.700455, 43.976761, 31.101786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895842, 44.050648, 31.219957>,  <32.221485, 44.173794, 31.416910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895842, 44.050648, 31.219957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297345, -0.507310, 0.808840,
		-0.498805, 0.804894, 0.321465,
		-0.814113, -0.307868, -0.492380,
		31.651608, 43.958286, 31.072243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540993, 44.135220, 31.852114>,  <32.221485, 44.173794, 31.416910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540993, 44.135220, 31.852114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446873, 43.877819, 31.560762>,  <31.390400, 43.723377, 31.385952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446873, 43.877819, 31.560762>,  <31.540993, 44.135220, 31.852114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446873, 43.877819, 31.560762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336145, -0.649292, 0.682222,
		-0.911943, 0.405368, -0.063532,
		-0.235301, -0.643503, -0.728379,
		31.376282, 43.684769, 31.342249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974573, 43.825672, 32.143738>,  <31.540993, 44.135220, 31.852114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974573, 43.825672, 32.143738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110512, 43.573132, 31.864912>,  <31.192076, 43.421608, 31.697617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110512, 43.573132, 31.864912>,  <30.974573, 43.825672, 32.143738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110512, 43.573132, 31.864912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226887, -0.774328, 0.590710,
		-0.912703, -0.042596, -0.406398,
		0.339848, -0.631349, -0.697067,
		31.212467, 43.383728, 31.655792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430809, 43.406559, 32.111683>,  <30.974573, 43.825672, 32.143738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430809, 43.406559, 32.111683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721846, 43.189346, 31.944004>,  <30.896467, 43.059017, 31.843397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721846, 43.189346, 31.944004>,  <30.430809, 43.406559, 32.111683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721846, 43.189346, 31.944004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399048, -0.832066, 0.385262,
		-0.558007, -0.113036, -0.822102,
		0.727591, -0.543036, -0.419192,
		30.940123, 43.026436, 31.818247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111195, 42.805878, 31.801416>,  <30.430809, 43.406559, 32.111683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111195, 42.805878, 31.801416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500391, 42.717968, 31.829657>,  <30.733910, 42.665222, 31.846601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500391, 42.717968, 31.829657>,  <30.111195, 42.805878, 31.801416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500391, 42.717968, 31.829657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223653, -0.821856, 0.523959,
		-0.057126, -0.525599, -0.848813,
		0.972993, -0.219771, 0.070602,
		30.792290, 42.652039, 31.850838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194183, 42.158310, 31.473688>,  <30.111195, 42.805878, 31.801416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194183, 42.158310, 31.473688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510403, 42.193253, 31.716143>,  <30.700134, 42.214218, 31.861616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510403, 42.193253, 31.716143>,  <30.194183, 42.158310, 31.473688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510403, 42.193253, 31.716143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294359, -0.813734, 0.501188,
		0.537015, -0.574635, -0.617583,
		0.790549, 0.087355, 0.606137,
		30.747568, 42.219460, 31.897984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502678, 41.494507, 31.498215>,  <30.194183, 42.158310, 31.473688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502678, 41.494507, 31.498215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608280, 41.700153, 31.824646>,  <30.671642, 41.823544, 32.020504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608280, 41.700153, 31.824646>,  <30.502678, 41.494507, 31.498215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608280, 41.700153, 31.824646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092351, -0.828734, 0.551970,
		0.960090, -0.221089, -0.171310,
		0.264005, 0.514120, 0.816077,
		30.687481, 41.854389, 32.069469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056889, 41.068417, 31.780380>,  <30.502678, 41.494507, 31.498215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056889, 41.068417, 31.780380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927349, 41.298397, 32.080929>,  <30.849627, 41.436386, 32.261257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927349, 41.298397, 32.080929>,  <31.056889, 41.068417, 31.780380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927349, 41.298397, 32.080929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111563, -0.765422, 0.633785,
		0.939508, 0.289075, 0.183737,
		-0.323848, 0.574948, 0.751371,
		30.830194, 41.470882, 32.306339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570787, 40.938629, 32.349625>,  <31.056889, 41.068417, 31.780380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570787, 40.938629, 32.349625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233496, 41.081303, 32.510494>,  <31.031120, 41.166908, 32.607018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233496, 41.081303, 32.510494>,  <31.570787, 40.938629, 32.349625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233496, 41.081303, 32.510494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053215, -0.799866, 0.597814,
		0.534917, 0.482691, 0.693450,
		-0.843227, 0.356683, 0.402176,
		30.980528, 41.188309, 32.631145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595747, 40.763355, 33.121632>,  <31.570787, 40.938629, 32.349625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595747, 40.763355, 33.121632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208315, 40.825634, 33.044060>,  <30.975855, 40.862999, 32.997517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208315, 40.825634, 33.044060>,  <31.595747, 40.763355, 33.121632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208315, 40.825634, 33.044060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248394, -0.644018, 0.723561,
		-0.012239, 0.748999, 0.662458,
		-0.968582, 0.155695, -0.193929,
		30.917740, 40.872341, 32.985882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296247, 40.642410, 33.683651>,  <31.595747, 40.763355, 33.121632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296247, 40.642410, 33.683651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968227, 40.642063, 33.454735>,  <30.771416, 40.641853, 33.317387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968227, 40.642063, 33.454735>,  <31.296247, 40.642410, 33.683651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968227, 40.642063, 33.454735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327971, -0.818783, 0.471200,
		-0.468991, 0.574103, 0.671158,
		-0.820050, -0.000868, -0.572291,
		30.722212, 40.641804, 33.283047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747360, 40.454777, 34.108475>,  <31.296247, 40.642410, 33.683651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747360, 40.454777, 34.108475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596560, 40.378811, 33.745861>,  <30.506079, 40.333229, 33.528294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596560, 40.378811, 33.745861>,  <30.747360, 40.454777, 34.108475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596560, 40.378811, 33.745861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352410, -0.875725, 0.330019,
		-0.856550, 0.443889, 0.263220,
		-0.377000, -0.189917, -0.906533,
		30.483459, 40.321835, 33.473900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025452, 40.292934, 34.227173>,  <30.747360, 40.454777, 34.108475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025452, 40.292934, 34.227173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115889, 40.139442, 33.869038>,  <30.170151, 40.047348, 33.654156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115889, 40.139442, 33.869038>,  <30.025452, 40.292934, 34.227173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115889, 40.139442, 33.869038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382335, -0.880341, 0.280750,
		-0.895938, 0.278846, -0.345747,
		0.226089, -0.383725, -0.895343,
		30.183716, 40.024326, 33.600433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469692, 39.915466, 34.052898>,  <30.025452, 40.292934, 34.227173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469692, 39.915466, 34.052898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764675, 39.765175, 33.828403>,  <29.941666, 39.674999, 33.693707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764675, 39.765175, 33.828403>,  <29.469692, 39.915466, 34.052898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764675, 39.765175, 33.828403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246354, -0.923366, 0.294458,
		-0.628860, -0.078889, -0.773506,
		0.737458, -0.375729, -0.561232,
		29.985912, 39.652454, 33.660034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103807, 39.446133, 33.642467>,  <29.469692, 39.915466, 34.052898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103807, 39.446133, 33.642467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489880, 39.342304, 33.655445>,  <29.721523, 39.280006, 33.663231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489880, 39.342304, 33.655445>,  <29.103807, 39.446133, 33.642467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489880, 39.342304, 33.655445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259625, -0.935385, 0.240103,
		-0.031974, -0.240166, -0.970205,
		0.965180, -0.259566, 0.032445,
		29.779434, 39.264435, 33.665180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145102, 38.917793, 33.273628>,  <29.103807, 39.446133, 33.642467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145102, 38.917793, 33.273628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480907, 38.884109, 33.488338>,  <29.682390, 38.863899, 33.617165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480907, 38.884109, 33.488338>,  <29.145102, 38.917793, 33.273628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480907, 38.884109, 33.488338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094190, -0.995515, -0.008861,
		0.535113, -0.043119, -0.843679,
		0.839513, -0.084208, 0.536774,
		29.732761, 38.858849, 33.649372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639442, 38.371307, 32.992085>,  <29.145102, 38.917793, 33.273628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639442, 38.371307, 32.992085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717800, 38.444714, 33.377403>,  <29.764814, 38.488758, 33.608597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717800, 38.444714, 33.377403>,  <29.639442, 38.371307, 32.992085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717800, 38.444714, 33.377403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068260, -0.977399, 0.200079,
		0.978246, -0.104950, -0.178942,
		0.195896, 0.183512, 0.963301,
		29.776569, 38.499767, 33.666393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149204, 37.905418, 33.155857>,  <29.639442, 38.371307, 32.992085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149204, 37.905418, 33.155857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006693, 37.971157, 33.523781>,  <29.921186, 38.010601, 33.744537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006693, 37.971157, 33.523781>,  <30.149204, 37.905418, 33.155857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006693, 37.971157, 33.523781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072901, -0.986298, 0.147992,
		0.931531, -0.014329, 0.363379,
		-0.356280, 0.164350, 0.919812,
		29.899809, 38.020462, 33.799725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576578, 37.458847, 33.710651>,  <30.149204, 37.905418, 33.155857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576578, 37.458847, 33.710651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236149, 37.544590, 33.902370>,  <30.031891, 37.596035, 34.017403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236149, 37.544590, 33.902370>,  <30.576578, 37.458847, 33.710651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236149, 37.544590, 33.902370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092131, -0.959669, 0.265609,
		0.516903, 0.181894, 0.836496,
		-0.851072, 0.214362, 0.479298,
		29.980827, 37.608898, 34.046162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613264, 37.106659, 34.383469>,  <30.576578, 37.458847, 33.710651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613264, 37.106659, 34.383469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225471, 37.158234, 34.300060>,  <29.992796, 37.189178, 34.250015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225471, 37.158234, 34.300060>,  <30.613264, 37.106659, 34.383469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225471, 37.158234, 34.300060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202458, -0.900723, 0.384329,
		-0.138260, 0.414816, 0.899339,
		-0.969482, 0.128941, -0.208517,
		29.934628, 37.196915, 34.237507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275108, 36.762657, 34.817085>,  <30.613264, 37.106659, 34.383469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275108, 36.762657, 34.817085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944349, 36.799973, 34.595261>,  <29.745893, 36.822361, 34.462166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944349, 36.799973, 34.595261>,  <30.275108, 36.762657, 34.817085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944349, 36.799973, 34.595261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314993, -0.893762, 0.319324,
		-0.465857, 0.438732, 0.768435,
		-0.826896, 0.093292, -0.554563,
		29.696281, 36.827961, 34.428890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510941, 36.965603, 35.476551>,  <30.275108, 36.762657, 34.817085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510941, 36.965603, 35.476551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779139, 36.789684, 35.237549>,  <30.940058, 36.684132, 35.094147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779139, 36.789684, 35.237549>,  <30.510941, 36.965603, 35.476551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779139, 36.789684, 35.237549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709767, -0.145738, -0.689196,
		0.216027, 0.886193, -0.409871,
		0.670494, -0.439798, -0.597507,
		30.980288, 36.657745, 35.058296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154367, 37.388763, 35.550316>,  <30.510941, 36.965603, 35.476551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154367, 37.388763, 35.550316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130392, 37.787861, 35.562424>,  <31.116007, 38.027321, 35.569687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130392, 37.787861, 35.562424>,  <31.154367, 37.388763, 35.550316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130392, 37.787861, 35.562424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641373, 0.015258, 0.767077,
		0.764884, 0.065392, -0.640840,
		-0.059939, 0.997743, 0.030270,
		31.112410, 38.087185, 35.571507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795383, 37.557163, 35.430687>,  <31.154367, 37.388763, 35.550316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795383, 37.557163, 35.430687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593147, 37.839752, 35.628788>,  <31.471806, 38.009304, 35.747650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593147, 37.839752, 35.628788>,  <31.795383, 37.557163, 35.430687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593147, 37.839752, 35.628788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635537, -0.083262, 0.767568,
		0.583500, 0.702828, -0.406892,
		-0.505589, 0.706470, 0.495256,
		31.441471, 38.051693, 35.777367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293694, 37.904919, 35.949448>,  <31.795383, 37.557163, 35.430687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293694, 37.904919, 35.949448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921709, 37.966328, 36.083073>,  <31.698519, 38.003174, 36.163250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921709, 37.966328, 36.083073>,  <32.293694, 37.904919, 35.949448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921709, 37.966328, 36.083073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353173, 0.120535, 0.927761,
		0.102163, 0.980767, -0.166312,
		-0.929963, 0.153519, 0.334066,
		31.642719, 38.012383, 36.183292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243393, 38.687366, 36.198418>,  <32.293694, 37.904919, 35.949448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243393, 38.687366, 36.198418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048054, 38.378334, 36.360718>,  <31.930849, 38.192913, 36.458099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048054, 38.378334, 36.360718>,  <32.243393, 38.687366, 36.198418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048054, 38.378334, 36.360718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494642, 0.137986, 0.858073,
		-0.718918, 0.619742, 0.314765,
		-0.488350, -0.772580, 0.405751,
		31.901548, 38.146561, 36.482445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020329, 38.937885, 36.868465>,  <32.243393, 38.687366, 36.198418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020329, 38.937885, 36.868465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085316, 38.543690, 36.848839>,  <32.124310, 38.307171, 36.837063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085316, 38.543690, 36.848839>,  <32.020329, 38.937885, 36.868465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085316, 38.543690, 36.848839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558628, 0.050881, 0.827857,
		-0.813351, -0.161908, 0.558790,
		0.162468, -0.985493, -0.049063,
		32.134056, 38.248043, 36.834122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812906, 38.697899, 37.465054>,  <32.020329, 38.937885, 36.868465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812906, 38.697899, 37.465054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042904, 38.399330, 37.331043>,  <32.180901, 38.220188, 37.250637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042904, 38.399330, 37.331043>,  <31.812906, 38.697899, 37.465054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042904, 38.399330, 37.331043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391356, -0.108683, 0.913799,
		-0.718488, -0.656543, 0.229623,
		0.574992, -0.746418, -0.335029,
		32.215401, 38.175404, 37.230534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743942, 38.092545, 37.930389>,  <31.812906, 38.697899, 37.465054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743942, 38.092545, 37.930389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092678, 38.021084, 37.747971>,  <32.301918, 37.978207, 37.638519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092678, 38.021084, 37.747971>,  <31.743942, 38.092545, 37.930389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092678, 38.021084, 37.747971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420739, -0.203496, 0.884063,
		-0.250746, -0.962638, -0.102248,
		0.871840, -0.178656, -0.456045,
		32.354229, 37.967487, 37.611156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009686, 37.507378, 38.209362>,  <31.743942, 38.092545, 37.930389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009686, 37.507378, 38.209362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321831, 37.698822, 38.048382>,  <32.509117, 37.813690, 37.951794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321831, 37.698822, 38.048382>,  <32.009686, 37.507378, 38.209362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321831, 37.698822, 38.048382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548562, -0.214993, 0.807996,
		0.300195, -0.851297, -0.430322,
		0.780361, 0.478614, -0.402449,
		32.555939, 37.842407, 37.927647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460453, 37.053444, 38.350079>,  <32.009686, 37.507378, 38.209362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460453, 37.053444, 38.350079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677979, 37.369827, 38.237900>,  <32.808495, 37.559658, 38.170593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677979, 37.369827, 38.237900>,  <32.460453, 37.053444, 38.350079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677979, 37.369827, 38.237900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694857, -0.236992, 0.678976,
		0.470579, -0.564107, -0.678483,
		0.543810, 0.790960, -0.280450,
		32.841122, 37.607117, 38.153763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148739, 36.782879, 38.396584>,  <32.460453, 37.053444, 38.350079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148739, 36.782879, 38.396584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165142, 37.181698, 38.422527>,  <33.174984, 37.420990, 38.438091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165142, 37.181698, 38.422527>,  <33.148739, 36.782879, 38.396584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165142, 37.181698, 38.422527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635641, -0.076113, 0.768223,
		0.770895, 0.009724, -0.636888,
		0.041005, 0.997052, 0.064857,
		33.177444, 37.480812, 38.441986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808926, 37.019344, 38.410885>,  <33.148739, 36.782879, 38.396584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808926, 37.019344, 38.410885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630337, 37.317142, 38.609436>,  <33.523182, 37.495823, 38.728565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630337, 37.317142, 38.609436>,  <33.808926, 37.019344, 38.410885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630337, 37.317142, 38.609436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660874, -0.099624, 0.743855,
		0.603248, 0.660152, -0.447539,
		-0.446472, 0.744496, 0.496376,
		33.496395, 37.540493, 38.758350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322395, 37.408524, 38.690430>,  <33.808926, 37.019344, 38.410885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322395, 37.408524, 38.690430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010731, 37.539036, 38.904510>,  <33.823730, 37.617344, 39.032959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010731, 37.539036, 38.904510>,  <34.322395, 37.408524, 38.690430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010731, 37.539036, 38.904510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518489, -0.144328, 0.842816,
		0.352240, 0.934190, -0.056718,
		-0.779164, 0.326281, 0.535205,
		33.776981, 37.636921, 39.065071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621662, 37.880089, 39.232166>,  <34.322395, 37.408524, 38.690430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621662, 37.880089, 39.232166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268963, 37.748287, 39.367191>,  <34.057343, 37.669205, 39.448204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268963, 37.748287, 39.367191>,  <34.621662, 37.880089, 39.232166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268963, 37.748287, 39.367191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391367, -0.111508, 0.913454,
		-0.263349, 0.937545, 0.227280,
		-0.881748, -0.329507, 0.337558,
		34.004440, 37.649437, 39.468460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470612, 38.210232, 39.862705>,  <34.621662, 37.880089, 39.232166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470612, 38.210232, 39.862705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227158, 37.893429, 39.881832>,  <34.081085, 37.703346, 39.893307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227158, 37.893429, 39.881832>,  <34.470612, 38.210232, 39.862705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227158, 37.893429, 39.881832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308153, -0.180411, 0.934074,
		-0.731167, 0.583246, 0.353864,
		-0.608635, -0.792008, 0.047818,
		34.044567, 37.655827, 39.896179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080353, 38.254700, 40.497810>,  <34.470612, 38.210232, 39.862705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080353, 38.254700, 40.497810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061779, 37.870190, 40.389153>,  <34.050636, 37.639484, 40.323956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061779, 37.870190, 40.389153>,  <34.080353, 38.254700, 40.497810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061779, 37.870190, 40.389153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282015, -0.273493, 0.919602,
		-0.958286, -0.033912, 0.283793,
		-0.046430, -0.961276, -0.271649,
		34.047852, 37.581806, 40.307659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556614, 37.916416, 40.991550>,  <34.080353, 38.254700, 40.497810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556614, 37.916416, 40.991550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795925, 37.637405, 40.833805>,  <33.939510, 37.470001, 40.739159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795925, 37.637405, 40.833805>,  <33.556614, 37.916416, 40.991550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795925, 37.637405, 40.833805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132034, -0.399623, 0.907121,
		-0.790337, -0.594779, -0.146988,
		0.598276, -0.697524, -0.394368,
		33.975407, 37.428150, 40.715496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291073, 37.263550, 41.202850>,  <33.556614, 37.916416, 40.991550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291073, 37.263550, 41.202850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661224, 37.170963, 41.082790>,  <33.883316, 37.115410, 41.010754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661224, 37.170963, 41.082790>,  <33.291073, 37.263550, 41.202850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661224, 37.170963, 41.082790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076757, -0.661030, 0.746423,
		-0.371181, -0.713766, -0.593938,
		0.925383, -0.231469, -0.300148,
		33.938839, 37.101521, 40.992744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211716, 36.546867, 41.190041>,  <33.291073, 37.263550, 41.202850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211716, 36.546867, 41.190041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597660, 36.650860, 41.205284>,  <33.829227, 36.713257, 41.214428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597660, 36.650860, 41.205284>,  <33.211716, 36.546867, 41.190041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597660, 36.650860, 41.205284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172454, -0.735972, 0.654680,
		0.198253, -0.625103, -0.754945,
		0.964860, 0.259985, 0.038107,
		33.887119, 36.728855, 41.216717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541492, 35.997990, 41.031845>,  <33.211716, 36.546867, 41.190041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541492, 35.997990, 41.031845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799343, 36.213066, 41.249226>,  <33.954056, 36.342110, 41.379654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799343, 36.213066, 41.249226>,  <33.541492, 35.997990, 41.031845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799343, 36.213066, 41.249226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080964, -0.754886, 0.650840,
		0.760195, -0.375551, -0.530156,
		0.644630, 0.537689, 0.543454,
		33.992733, 36.374374, 41.412262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028198, 35.463131, 41.201771>,  <33.541492, 35.997990, 41.031845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028198, 35.463131, 41.201771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053703, 35.759781, 41.468880>,  <34.069008, 35.937771, 41.629147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053703, 35.759781, 41.468880>,  <34.028198, 35.463131, 41.201771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053703, 35.759781, 41.468880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015885, -0.669804, 0.742368,
		0.997839, -0.036728, -0.054490,
		0.063763, 0.741629, 0.667773,
		34.072834, 35.982269, 41.669212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636986, 35.253593, 41.588154>,  <34.028198, 35.463131, 41.201771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636986, 35.253593, 41.588154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445084, 35.511017, 41.826706>,  <34.329941, 35.665470, 41.969837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445084, 35.511017, 41.826706>,  <34.636986, 35.253593, 41.588154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445084, 35.511017, 41.826706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026958, -0.690198, 0.723118,
		0.876987, 0.330844, 0.348476,
		-0.479757, 0.643560, 0.596376,
		34.301155, 35.704086, 42.005619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940601, 35.139324, 42.257057>,  <34.636986, 35.253593, 41.588154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940601, 35.139324, 42.257057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623592, 35.359146, 42.362816>,  <34.433388, 35.491039, 42.426273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623592, 35.359146, 42.362816>,  <34.940601, 35.139324, 42.257057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623592, 35.359146, 42.362816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036097, -0.475063, 0.879211,
		0.608779, 0.687247, 0.396333,
		-0.792518, 0.549552, 0.264401,
		34.385838, 35.524014, 42.442135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081211, 35.475307, 42.924751>,  <34.940601, 35.139324, 42.257057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081211, 35.475307, 42.924751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681927, 35.472534, 42.900990>,  <34.442356, 35.470871, 42.886734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681927, 35.472534, 42.900990>,  <35.081211, 35.475307, 42.924751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681927, 35.472534, 42.900990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054428, -0.306437, 0.950334,
		-0.024789, 0.951866, 0.305511,
		-0.998210, -0.006929, -0.059405,
		34.382465, 35.470455, 42.883167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773960, 35.714909, 43.528118>,  <35.081211, 35.475307, 42.924751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773960, 35.714909, 43.528118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470699, 35.495640, 43.386860>,  <34.288742, 35.364079, 43.302105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470699, 35.495640, 43.386860>,  <34.773960, 35.714909, 43.528118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470699, 35.495640, 43.386860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208108, -0.309837, 0.927735,
		-0.617977, 0.776856, 0.120824,
		-0.758152, -0.548175, -0.353142,
		34.243252, 35.331188, 43.280918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135746, 35.895142, 43.988430>,  <34.773960, 35.714909, 43.528118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135746, 35.895142, 43.988430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041599, 35.548042, 43.813335>,  <33.985111, 35.339783, 43.708279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041599, 35.548042, 43.813335>,  <34.135746, 35.895142, 43.988430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041599, 35.548042, 43.813335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352319, -0.343582, 0.870530,
		-0.905800, 0.359118, -0.224856,
		-0.235367, -0.867747, -0.437741,
		33.970989, 35.287720, 43.682014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410175, 35.681370, 44.229774>,  <34.135746, 35.895142, 43.988430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410175, 35.681370, 44.229774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637054, 35.374111, 44.110950>,  <33.773182, 35.189754, 44.039658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637054, 35.374111, 44.110950>,  <33.410175, 35.681370, 44.229774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637054, 35.374111, 44.110950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206131, -0.481613, 0.851797,
		-0.797372, -0.421901, -0.431507,
		0.567193, -0.768146, -0.297058,
		33.807213, 35.143669, 44.021832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051174, 35.103882, 44.587643>,  <33.410175, 35.681370, 44.229774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051174, 35.103882, 44.587643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382801, 34.931324, 44.445354>,  <33.581779, 34.827789, 44.359982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382801, 34.931324, 44.445354>,  <33.051174, 35.103882, 44.587643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382801, 34.931324, 44.445354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009369, -0.625385, 0.780260,
		-0.559063, -0.650225, -0.514448,
		0.829073, -0.431395, -0.355722,
		33.631523, 34.801907, 44.338638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982536, 34.392120, 44.722134>,  <33.051174, 35.103882, 44.587643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982536, 34.392120, 44.722134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377377, 34.418747, 44.663883>,  <33.614281, 34.434723, 44.628933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377377, 34.418747, 44.663883>,  <32.982536, 34.392120, 44.722134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377377, 34.418747, 44.663883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157805, -0.558622, 0.814272,
		-0.027146, -0.826747, -0.561919,
		0.987097, 0.066569, -0.145629,
		33.673504, 34.438717, 44.620193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244900, 33.677406, 44.741837>,  <32.982536, 34.392120, 44.722134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244900, 33.677406, 44.741837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532406, 33.935276, 44.845966>,  <33.704910, 34.090000, 44.908443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532406, 33.935276, 44.845966>,  <33.244900, 33.677406, 44.741837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532406, 33.935276, 44.845966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145692, -0.505777, 0.850273,
		0.679817, -0.573219, -0.457459,
		0.718764, 0.644678, 0.260322,
		33.748035, 34.128681, 44.924065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719391, 33.266277, 44.955254>,  <33.244900, 33.677406, 44.741837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719391, 33.266277, 44.955254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809368, 33.615917, 45.127464>,  <33.863354, 33.825703, 45.230789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809368, 33.615917, 45.127464>,  <33.719391, 33.266277, 44.955254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809368, 33.615917, 45.127464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244056, -0.478305, 0.843600,
		0.943312, -0.084690, -0.320921,
		0.224943, 0.874100, 0.430522,
		33.876850, 33.878147, 45.256622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285999, 33.092762, 45.313824>,  <33.719391, 33.266277, 44.955254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285999, 33.092762, 45.313824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149967, 33.432415, 45.475475>,  <34.068348, 33.636208, 45.572468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149967, 33.432415, 45.475475>,  <34.285999, 33.092762, 45.313824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149967, 33.432415, 45.475475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068743, -0.406149, 0.911218,
		0.937882, 0.337665, 0.079750,
		-0.340076, 0.849132, 0.404132,
		34.047943, 33.687153, 45.596714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744949, 33.236897, 45.884857>,  <34.285999, 33.092762, 45.313824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744949, 33.236897, 45.884857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401428, 33.428833, 45.956642>,  <34.195316, 33.543995, 45.999714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401428, 33.428833, 45.956642>,  <34.744949, 33.236897, 45.884857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401428, 33.428833, 45.956642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090004, -0.203533, 0.974922,
		0.504338, 0.853418, 0.131607,
		-0.858803, 0.479845, 0.179460,
		34.143787, 33.572788, 46.010479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896114, 33.751442, 46.486382>,  <34.744949, 33.236897, 45.884857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896114, 33.751442, 46.486382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502148, 33.685505, 46.465370>,  <34.265766, 33.645943, 46.452763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502148, 33.685505, 46.465370>,  <34.896114, 33.751442, 46.486382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502148, 33.685505, 46.465370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044530, -0.051829, 0.997663,
		-0.167177, 0.984958, 0.043707,
		-0.984921, -0.164840, -0.052525,
		34.206673, 33.636051, 46.449612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586498, 34.165756, 46.957333>,  <34.896114, 33.751442, 46.486382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586498, 34.165756, 46.957333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316162, 33.877903, 46.893623>,  <34.153961, 33.705189, 46.855396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316162, 33.877903, 46.893623>,  <34.586498, 34.165756, 46.957333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316162, 33.877903, 46.893623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181421, -0.047024, 0.982281,
		-0.714374, 0.692757, -0.098776,
		-0.675837, -0.719636, -0.159273,
		34.113411, 33.662014, 46.845840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032661, 34.463570, 47.383682>,  <34.586498, 34.165756, 46.957333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032661, 34.463570, 47.383682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908821, 34.087547, 47.326500>,  <33.834518, 33.861935, 47.292191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908821, 34.087547, 47.326500>,  <34.032661, 34.463570, 47.383682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908821, 34.087547, 47.326500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382861, -0.014375, 0.923694,
		-0.870382, 0.340707, -0.355462,
		-0.309599, -0.940060, -0.142956,
		33.815941, 33.805531, 47.283615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327969, 34.431820, 47.681015>,  <34.032661, 34.463570, 47.383682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327969, 34.431820, 47.681015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450905, 34.052299, 47.651852>,  <33.524666, 33.824589, 47.634354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450905, 34.052299, 47.651852>,  <33.327969, 34.431820, 47.681015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450905, 34.052299, 47.651852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323114, -0.176113, 0.929829,
		-0.895063, -0.262220, -0.360699,
		0.307344, -0.948802, -0.072905,
		33.543106, 33.767658, 47.629982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775925, 34.204708, 48.021267>,  <33.327969, 34.431820, 47.681015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775925, 34.204708, 48.021267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059566, 33.922668, 48.020611>,  <33.229752, 33.753445, 48.020218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059566, 33.922668, 48.020611>,  <32.775925, 34.204708, 48.021267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059566, 33.922668, 48.020611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296227, -0.300027, 0.906771,
		-0.639856, -0.642511, -0.421621,
		0.709108, -0.705098, -0.001645,
		33.272301, 33.711140, 48.020119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443848, 33.644901, 48.318977>,  <32.775925, 34.204708, 48.021267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443848, 33.644901, 48.318977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836151, 33.572063, 48.347137>,  <33.071533, 33.528362, 48.364033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836151, 33.572063, 48.347137>,  <32.443848, 33.644901, 48.318977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836151, 33.572063, 48.347137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125679, -0.312946, 0.941419,
		-0.149392, -0.932152, -0.329810,
		0.980758, -0.182091, 0.070401,
		33.130379, 33.517437, 48.368259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528278, 32.932674, 48.570950>,  <32.443848, 33.644901, 48.318977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528278, 32.932674, 48.570950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897007, 33.078327, 48.624100>,  <33.118244, 33.165718, 48.655991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897007, 33.078327, 48.624100>,  <32.528278, 32.932674, 48.570950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897007, 33.078327, 48.624100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082906, -0.520090, 0.850078,
		0.378652, -0.772601, -0.509617,
		0.921818, 0.364134, 0.132880,
		33.173553, 33.187569, 48.663963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030277, 32.369461, 48.627075>,  <32.528278, 32.932674, 48.570950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030277, 32.369461, 48.627075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147865, 32.678314, 48.852425>,  <33.218418, 32.863628, 48.987633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147865, 32.678314, 48.852425>,  <33.030277, 32.369461, 48.627075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147865, 32.678314, 48.852425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109482, -0.612736, 0.782668,
		0.949523, -0.168403, -0.264662,
		0.293971, 0.772137, 0.563370,
		33.236057, 32.909954, 49.021435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619144, 32.128830, 49.083023>,  <33.030277, 32.369461, 48.627075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619144, 32.128830, 49.083023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531174, 32.478249, 49.256710>,  <33.478390, 32.687901, 49.360920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531174, 32.478249, 49.256710>,  <33.619144, 32.128830, 49.083023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531174, 32.478249, 49.256710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142544, -0.411556, 0.900168,
		0.965046, 0.259867, -0.034007,
		-0.219928, 0.873551, 0.434213,
		33.465195, 32.740314, 49.386974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108421, 32.117607, 49.539757>,  <33.619144, 32.128830, 49.083023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108421, 32.117607, 49.539757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826218, 32.370113, 49.668602>,  <33.656895, 32.521618, 49.745911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826218, 32.370113, 49.668602>,  <34.108421, 32.117607, 49.539757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826218, 32.370113, 49.668602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119327, -0.342213, 0.932015,
		0.698579, 0.695985, 0.166109,
		-0.705513, 0.631265, 0.322112,
		33.614563, 32.559494, 49.765236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365124, 32.349880, 50.154793>,  <34.108421, 32.117607, 49.539757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365124, 32.349880, 50.154793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969234, 32.392891, 50.192501>,  <33.731701, 32.418697, 50.215126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969234, 32.392891, 50.192501>,  <34.365124, 32.349880, 50.154793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969234, 32.392891, 50.192501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019355, -0.552452, 0.833320,
		0.141684, 0.826580, 0.544693,
		-0.989723, 0.107526, 0.094272,
		33.672318, 32.425148, 50.220783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316738, 32.320923, 50.836414>,  <34.365124, 32.349880, 50.154793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316738, 32.320923, 50.836414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935913, 32.320667, 50.714050>,  <33.707420, 32.320515, 50.640633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935913, 32.320667, 50.714050>,  <34.316738, 32.320923, 50.836414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935913, 32.320667, 50.714050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270091, -0.467792, 0.841559,
		-0.143639, 0.883838, 0.445194,
		-0.952060, -0.000638, -0.305910,
		33.650295, 32.320477, 50.622276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947567, 32.500565, 51.437256>,  <34.316738, 32.320923, 50.836414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947567, 32.500565, 51.437256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698875, 32.316742, 51.183559>,  <33.549660, 32.206448, 51.031342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698875, 32.316742, 51.183559>,  <33.947567, 32.500565, 51.437256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698875, 32.316742, 51.183559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485170, -0.409741, 0.772479,
		-0.614873, 0.787985, 0.031783,
		-0.621724, -0.459556, -0.634245,
		33.512360, 32.178875, 50.993286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372322, 32.516949, 51.799309>,  <33.947567, 32.500565, 51.437256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372322, 32.516949, 51.799309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344490, 32.220371, 51.532352>,  <33.327789, 32.042423, 51.372177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344490, 32.220371, 51.532352>,  <33.372322, 32.516949, 51.799309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344490, 32.220371, 51.532352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400145, -0.592093, 0.699507,
		-0.913807, 0.315726, -0.255489,
		-0.069579, -0.741447, -0.667395,
		33.323616, 31.997936, 51.332134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700432, 32.215412, 52.236565>,  <33.372322, 32.516949, 51.799309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700432, 32.215412, 52.236565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497559, 31.910761, 52.075226>,  <32.375835, 31.727970, 51.978424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497559, 31.910761, 52.075226>,  <32.700432, 32.215412, 52.236565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497559, 31.910761, 52.075226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854863, -0.504004, -0.123243,
		-0.109423, -0.407313, 0.906710,
		-0.507184, -0.761627, -0.403347,
		32.345402, 31.682272, 51.954224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190773, 31.643192, 52.447994>,  <32.700432, 32.215412, 52.236565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190773, 31.643192, 52.447994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815657, 31.628113, 52.586056>,  <31.590588, 31.619066, 52.668892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815657, 31.628113, 52.586056>,  <32.190773, 31.643192, 52.447994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815657, 31.628113, 52.586056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320696, 0.475045, -0.819442,
		-0.133076, -0.879154, -0.457580,
		-0.937787, -0.037696, 0.345159,
		31.534321, 31.616804, 52.689602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602852, 31.185808, 52.050575>,  <32.190773, 31.643192, 52.447994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602852, 31.185808, 52.050575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447893, 31.505077, 52.235115>,  <31.354918, 31.696638, 52.345840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447893, 31.505077, 52.235115>,  <31.602852, 31.185808, 52.050575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447893, 31.505077, 52.235115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526156, 0.219502, -0.821571,
		-0.757023, -0.561016, 0.334929,
		-0.387396, 0.798173, 0.461350,
		31.331675, 31.744530, 52.373520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799452, 31.198589, 51.986996>,  <31.602852, 31.185808, 52.050575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799452, 31.198589, 51.986996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921690, 31.575325, 52.042923>,  <30.995033, 31.801367, 52.076477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921690, 31.575325, 52.042923>,  <30.799452, 31.198589, 51.986996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921690, 31.575325, 52.042923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634488, 0.310920, -0.707639,
		-0.709955, 0.127541, 0.692602,
		0.305597, 0.941839, 0.139816,
		31.013369, 31.857878, 52.084869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253311, 30.774035, 51.763855>,  <30.799452, 31.198589, 51.986996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253311, 30.774035, 51.763855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274357, 30.379389, 51.702118>,  <30.286983, 30.142601, 51.665077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274357, 30.379389, 51.702118>,  <30.253311, 30.774035, 51.763855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274357, 30.379389, 51.702118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601430, -0.092076, 0.793602,
		-0.797191, -0.134581, 0.588536,
		0.052613, -0.986615, -0.154344,
		30.290140, 30.083405, 51.655815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085606, 30.411961, 52.363060>,  <30.253311, 30.774035, 51.763855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085606, 30.411961, 52.363060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283289, 30.124432, 52.167488>,  <30.401899, 29.951914, 52.050144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283289, 30.124432, 52.167488>,  <30.085606, 30.411961, 52.363060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283289, 30.124432, 52.167488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456586, -0.263978, 0.849615,
		-0.739788, -0.643127, 0.197743,
		0.494210, -0.718821, -0.488930,
		30.431553, 29.908785, 52.020809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973623, 29.677711, 52.636543>,  <30.085606, 30.411961, 52.363060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973623, 29.677711, 52.636543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336596, 29.707972, 52.471210>,  <30.554379, 29.726128, 52.372009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336596, 29.707972, 52.471210>,  <29.973623, 29.677711, 52.636543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336596, 29.707972, 52.471210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374513, -0.591659, 0.713919,
		-0.190545, -0.802631, -0.565222,
		0.907432, 0.075650, -0.413333,
		30.608826, 29.730667, 52.347210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233393, 29.016127, 52.608028>,  <29.973623, 29.677711, 52.636543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233393, 29.016127, 52.608028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551561, 29.257595, 52.629524>,  <30.742462, 29.402475, 52.642422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551561, 29.257595, 52.629524>,  <30.233393, 29.016127, 52.608028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551561, 29.257595, 52.629524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317235, -0.490268, 0.811788,
		0.516399, -0.628665, -0.581475,
		0.795421, 0.603670, 0.053740,
		30.790188, 29.438696, 52.645645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007071, 28.659445, 52.593552>,  <30.233393, 29.016127, 52.608028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007071, 28.659445, 52.593552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996548, 29.009594, 52.786644>,  <30.990234, 29.219685, 52.902500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996548, 29.009594, 52.786644>,  <31.007071, 28.659445, 52.593552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996548, 29.009594, 52.786644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466241, -0.416413, 0.780526,
		0.884267, 0.245600, -0.397181,
		-0.026306, 0.875375, 0.482729,
		30.988655, 29.272207, 52.931461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652361, 28.922256, 52.983475>,  <31.007071, 28.659445, 52.593552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652361, 28.922256, 52.983475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342638, 29.085562, 53.176872>,  <31.156803, 29.183546, 53.292912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342638, 29.085562, 53.176872>,  <31.652361, 28.922256, 52.983475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342638, 29.085562, 53.176872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384643, -0.303049, 0.871901,
		0.502489, 0.861093, 0.077617,
		-0.774309, 0.408266, 0.483492,
		31.110346, 29.208042, 53.321918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863047, 28.883724, 52.327354>,  <31.652361, 28.922256, 52.983475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863047, 28.883724, 52.327354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959864, 29.267963, 52.272697>,  <32.017952, 29.498507, 52.239902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959864, 29.267963, 52.272697>,  <31.863047, 28.883724, 52.327354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959864, 29.267963, 52.272697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384328, -0.034390, -0.922556,
		-0.890903, 0.275811, 0.360860,
		0.242041, 0.960597, -0.136640,
		32.032475, 29.556143, 52.231705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345387, 29.304333, 51.892765>,  <31.863047, 28.883724, 52.327354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345387, 29.304333, 51.892765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683691, 29.517475, 51.881813>,  <31.886675, 29.645361, 51.875240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683691, 29.517475, 51.881813>,  <31.345387, 29.304333, 51.892765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683691, 29.517475, 51.881813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277705, 0.395794, -0.875344,
		-0.455594, 0.747938, 0.482725,
		0.845762, 0.532857, -0.027384,
		31.937420, 29.677332, 51.873596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192797, 29.877693, 51.558136>,  <31.345387, 29.304333, 51.892765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192797, 29.877693, 51.558136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588799, 29.899736, 51.506207>,  <31.826399, 29.912962, 51.475048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588799, 29.899736, 51.506207>,  <31.192797, 29.877693, 51.558136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588799, 29.899736, 51.506207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140737, 0.325824, -0.934897,
		-0.009218, 0.943823, 0.330323,
		0.990004, 0.055106, -0.129828,
		31.885799, 29.916267, 51.467258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317543, 30.551405, 51.107899>,  <31.192797, 29.877693, 51.558136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317543, 30.551405, 51.107899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642550, 30.324381, 51.054691>,  <31.837553, 30.188166, 51.022766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642550, 30.324381, 51.054691>,  <31.317543, 30.551405, 51.107899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642550, 30.324381, 51.054691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042599, 0.285383, -0.957466,
		0.581381, 0.772290, 0.256055,
		0.812515, -0.567561, -0.133017,
		31.886305, 30.154112, 51.014786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856489, 30.935614, 50.824650>,  <31.317543, 30.551405, 51.107899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856489, 30.935614, 50.824650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903822, 30.556986, 50.704647>,  <31.932222, 30.329809, 50.632645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903822, 30.556986, 50.704647>,  <31.856489, 30.935614, 50.824650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903822, 30.556986, 50.704647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097480, 0.311743, -0.945153,
		0.988178, 0.082598, 0.129161,
		0.118332, -0.946570, -0.300005,
		31.939322, 30.273014, 50.614647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174530, 31.025389, 50.220222>,  <31.856489, 30.935614, 50.824650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174530, 31.025389, 50.220222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114388, 30.631269, 50.187778>,  <32.078300, 30.394798, 50.168312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114388, 30.631269, 50.187778>,  <32.174530, 31.025389, 50.220222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114388, 30.631269, 50.187778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129410, 0.061725, -0.989668,
		0.980125, -0.159301, 0.118227,
		-0.150358, -0.985299, -0.081113,
		32.069279, 30.335680, 50.163445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710506, 30.730743, 49.794907>,  <32.174530, 31.025389, 50.220222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710506, 30.730743, 49.794907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383373, 30.503471, 49.758415>,  <32.187092, 30.367109, 49.736519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383373, 30.503471, 49.758415>,  <32.710506, 30.730743, 49.794907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383373, 30.503471, 49.758415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099919, 0.015924, -0.994868,
		0.566716, -0.822751, 0.043749,
		-0.817832, -0.568179, -0.091233,
		32.138023, 30.333017, 49.731045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891018, 30.253132, 49.338299>,  <32.710506, 30.730743, 49.794907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891018, 30.253132, 49.338299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491833, 30.250832, 49.312859>,  <32.252323, 30.249451, 49.297596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491833, 30.250832, 49.312859>,  <32.891018, 30.253132, 49.338299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491833, 30.250832, 49.312859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063804, -0.131573, -0.989251,
		-0.002677, -0.991290, 0.131672,
		-0.997959, -0.005753, -0.063600,
		32.192444, 30.249105, 49.293777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785362, 29.809511, 48.724651>,  <32.891018, 30.253132, 49.338299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785362, 29.809511, 48.724651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439903, 30.003567, 48.779419>,  <32.232628, 30.120001, 48.812279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439903, 30.003567, 48.779419>,  <32.785362, 29.809511, 48.724651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439903, 30.003567, 48.779419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118937, 0.067838, -0.990582,
		-0.489860, -0.871800, -0.000887,
		-0.863650, 0.485141, 0.136921,
		32.180809, 30.149109, 48.820496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213047, 29.475361, 48.403423>,  <32.785362, 29.809511, 48.724651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213047, 29.475361, 48.403423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082756, 29.851568, 48.442062>,  <32.004581, 30.077291, 48.465244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082756, 29.851568, 48.442062>,  <32.213047, 29.475361, 48.403423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082756, 29.851568, 48.442062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158796, 0.046297, -0.986225,
		-0.932034, -0.336577, 0.134271,
		-0.325724, 0.940517, 0.096598,
		31.985039, 30.133724, 48.471043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768734, 29.533220, 47.850613>,  <32.213047, 29.475361, 48.403423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768734, 29.533220, 47.850613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787758, 29.919779, 47.951660>,  <31.799171, 30.151714, 48.012287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787758, 29.919779, 47.951660>,  <31.768734, 29.533220, 47.850613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787758, 29.919779, 47.951660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242317, 0.256513, -0.935673,
		-0.969031, -0.016714, 0.246374,
		0.047559, 0.966396, 0.252620,
		31.802025, 30.209698, 48.027447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171640, 29.911469, 47.561119>,  <31.768734, 29.533220, 47.850613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171640, 29.911469, 47.561119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442896, 30.199972, 47.617561>,  <31.605650, 30.373074, 47.651428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442896, 30.199972, 47.617561>,  <31.171640, 29.911469, 47.561119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442896, 30.199972, 47.617561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168537, 0.339505, -0.925382,
		-0.715347, 0.603757, 0.351791,
		0.678141, 0.721258, 0.141109,
		31.646338, 30.416349, 47.659893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805326, 30.413248, 47.275295>,  <31.171640, 29.911469, 47.561119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805326, 30.413248, 47.275295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188965, 30.525833, 47.287403>,  <31.419147, 30.593384, 47.294666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188965, 30.525833, 47.287403>,  <30.805326, 30.413248, 47.275295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188965, 30.525833, 47.287403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101226, 0.440840, -0.891859,
		-0.264369, 0.852314, 0.451298,
		0.959094, 0.281463, 0.030268,
		31.476694, 30.610271, 47.296482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824047, 31.156574, 47.250847>,  <30.805326, 30.413248, 47.275295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824047, 31.156574, 47.250847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177734, 31.023405, 47.119808>,  <31.389946, 30.943504, 47.041183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177734, 31.023405, 47.119808>,  <30.824047, 31.156574, 47.250847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177734, 31.023405, 47.119808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104965, 0.541809, -0.833922,
		0.455126, 0.771756, 0.444132,
		0.884219, -0.332922, -0.327599,
		31.443001, 30.923529, 47.021530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095560, 31.731548, 46.921379>,  <30.824047, 31.156574, 47.250847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095560, 31.731548, 46.921379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329576, 31.450340, 46.759640>,  <31.469986, 31.281616, 46.662598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329576, 31.450340, 46.759640>,  <31.095560, 31.731548, 46.921379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329576, 31.450340, 46.759640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128627, 0.572694, -0.809615,
		0.800739, 0.421648, 0.425476,
		0.585040, -0.703018, -0.404344,
		31.505089, 31.239435, 46.638336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676258, 32.048237, 46.695122>,  <31.095560, 31.731548, 46.921379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676258, 32.048237, 46.695122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669531, 31.726082, 46.458118>,  <31.665495, 31.532789, 46.315914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669531, 31.726082, 46.458118>,  <31.676258, 32.048237, 46.695122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669531, 31.726082, 46.458118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134763, 0.585362, -0.799494,
		0.990735, -0.093296, 0.098691,
		-0.016819, -0.805387, -0.592511,
		31.664486, 31.484467, 46.280365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314121, 32.053566, 46.236252>,  <31.676258, 32.048237, 46.695122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314121, 32.053566, 46.236252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041355, 31.806219, 46.079994>,  <31.877695, 31.657810, 45.986240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041355, 31.806219, 46.079994>,  <32.314121, 32.053566, 46.236252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041355, 31.806219, 46.079994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170091, 0.385376, -0.906947,
		0.711375, -0.684910, -0.157617,
		-0.681920, -0.618371, -0.390644,
		31.836779, 31.620708, 45.962799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635330, 31.869905, 45.678925>,  <32.314121, 32.053566, 46.236252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635330, 31.869905, 45.678925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270668, 31.748241, 45.568378>,  <32.051872, 31.675243, 45.502052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270668, 31.748241, 45.568378>,  <32.635330, 31.869905, 45.678925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270668, 31.748241, 45.568378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221076, 0.203924, -0.953698,
		0.346438, -0.930537, -0.118665,
		-0.911650, -0.304163, -0.276366,
		31.997173, 31.656992, 45.485470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624203, 31.513914, 44.921246>,  <32.635330, 31.869905, 45.678925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624203, 31.513914, 44.921246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240433, 31.612879, 44.975357>,  <32.010170, 31.672258, 45.007824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240433, 31.612879, 44.975357>,  <32.624203, 31.513914, 44.921246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240433, 31.612879, 44.975357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073462, 0.243859, -0.967024,
		-0.272241, -0.937721, -0.215788,
		-0.959421, 0.247412, 0.135275,
		31.952606, 31.687101, 45.015938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392776, 31.275019, 44.336559>,  <32.624203, 31.513914, 44.921246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392776, 31.275019, 44.336559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142666, 31.553904, 44.476799>,  <31.992599, 31.721235, 44.560944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142666, 31.553904, 44.476799>,  <32.392776, 31.275019, 44.336559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142666, 31.553904, 44.476799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096589, 0.376666, -0.921300,
		-0.774403, -0.609932, -0.168177,
		-0.625277, 0.697213, 0.350604,
		31.955082, 31.763067, 44.581982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854872, 31.203312, 44.013779>,  <32.392776, 31.275019, 44.336559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854872, 31.203312, 44.013779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846331, 31.582598, 44.140545>,  <31.841206, 31.810169, 44.216606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846331, 31.582598, 44.140545>,  <31.854872, 31.203312, 44.013779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846331, 31.582598, 44.140545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135196, 0.311337, -0.940633,
		-0.990589, -0.062932, 0.121547,
		-0.021354, 0.948213, 0.316915,
		31.839924, 31.867062, 44.235619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429083, 31.576401, 43.579163>,  <31.854872, 31.203312, 44.013779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429083, 31.576401, 43.579163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558212, 31.921635, 43.734531>,  <31.635691, 32.128777, 43.827751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558212, 31.921635, 43.734531>,  <31.429083, 31.576401, 43.579163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558212, 31.921635, 43.734531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028985, 0.401184, -0.915539,
		-0.946015, 0.306816, 0.104495,
		0.322824, 0.863085, 0.388419,
		31.655060, 32.180561, 43.851059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024311, 32.100754, 43.278606>,  <31.429083, 31.576401, 43.579163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024311, 32.100754, 43.278606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374304, 32.247650, 43.404804>,  <31.584299, 32.335789, 43.480522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374304, 32.247650, 43.404804>,  <31.024311, 32.100754, 43.278606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374304, 32.247650, 43.404804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122699, 0.462169, -0.878263,
		-0.468349, 0.807175, 0.359329,
		0.874982, 0.367244, 0.315496,
		31.636799, 32.357822, 43.499454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980225, 32.846321, 43.179512>,  <31.024311, 32.100754, 43.278606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980225, 32.846321, 43.179512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363148, 32.731476, 43.192921>,  <31.592901, 32.662567, 43.200966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363148, 32.731476, 43.192921>,  <30.980225, 32.846321, 43.179512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363148, 32.731476, 43.192921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195136, 0.556320, -0.807731,
		0.213262, 0.779790, 0.588597,
		0.957309, -0.287114, 0.033523,
		31.650341, 32.645340, 43.202976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368475, 33.434929, 43.170109>,  <30.980225, 32.846321, 43.179512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368475, 33.434929, 43.170109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581223, 33.129566, 43.023506>,  <31.708872, 32.946350, 42.935543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581223, 33.129566, 43.023506>,  <31.368475, 33.434929, 43.170109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581223, 33.129566, 43.023506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198605, 0.533179, -0.822360,
		0.823207, 0.364598, 0.435198,
		0.531870, -0.763406, -0.366506,
		31.740784, 32.900543, 42.913555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853138, 33.774342, 42.788326>,  <31.368475, 33.434929, 43.170109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853138, 33.774342, 42.788326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921528, 33.402905, 42.656578>,  <31.962563, 33.180042, 42.577530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921528, 33.402905, 42.656578>,  <31.853138, 33.774342, 42.788326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921528, 33.402905, 42.656578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328646, 0.368894, -0.869430,
		0.928848, 0.040405, 0.368250,
		0.170975, -0.928593, -0.329368,
		31.972820, 33.124325, 42.557766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572178, 33.811291, 42.534702>,  <31.853138, 33.774342, 42.788326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572178, 33.811291, 42.534702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361736, 33.519726, 42.359478>,  <32.235474, 33.344788, 42.254345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361736, 33.519726, 42.359478>,  <32.572178, 33.811291, 42.534702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361736, 33.519726, 42.359478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198024, 0.395950, -0.896666,
		0.827044, -0.558485, -0.063967,
		-0.526102, -0.728916, -0.438061,
		32.203907, 33.301052, 42.228058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856873, 33.488338, 42.009598>,  <32.572178, 33.811291, 42.534702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856873, 33.488338, 42.009598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496582, 33.347336, 41.908062>,  <32.280407, 33.262733, 41.847141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496582, 33.347336, 41.908062>,  <32.856873, 33.488338, 42.009598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496582, 33.347336, 41.908062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179003, 0.231232, -0.956290,
		0.395793, -0.906792, -0.145177,
		-0.900725, -0.352506, -0.253838,
		32.226364, 33.241585, 41.831909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897583, 33.070900, 41.442013>,  <32.856873, 33.488338, 42.009598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897583, 33.070900, 41.442013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515621, 33.188240, 41.423637>,  <32.286446, 33.258644, 41.412613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515621, 33.188240, 41.423637>,  <32.897583, 33.070900, 41.442013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515621, 33.188240, 41.423637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083949, 0.118313, -0.989421,
		-0.284807, -0.948657, -0.137603,
		-0.954902, 0.293346, -0.045942,
		32.229149, 33.276245, 41.409855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525467, 32.715034, 40.869331>,  <32.897583, 33.070900, 41.442013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525467, 32.715034, 40.869331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341320, 33.063076, 40.939735>,  <32.230831, 33.271900, 40.981976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341320, 33.063076, 40.939735>,  <32.525467, 32.715034, 40.869331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341320, 33.063076, 40.939735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052657, 0.171152, -0.983836,
		-0.886167, -0.462191, -0.032975,
		-0.460364, 0.870107, 0.176007,
		32.203209, 33.324108, 40.992538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335526, 32.935719, 40.145088>,  <32.525467, 32.715034, 40.869331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335526, 32.935719, 40.145088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224586, 33.259026, 40.352852>,  <32.158024, 33.453011, 40.477509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224586, 33.259026, 40.352852>,  <32.335526, 32.935719, 40.145088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224586, 33.259026, 40.352852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074207, 0.520977, -0.850339,
		-0.957898, -0.274386, -0.084515,
		-0.277352, 0.808266, 0.519405,
		32.141380, 33.501507, 40.508675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700850, 33.206970, 39.878147>,  <32.335526, 32.935719, 40.145088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700850, 33.206970, 39.878147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890146, 33.505692, 40.065052>,  <32.003723, 33.684925, 40.177193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890146, 33.505692, 40.065052>,  <31.700850, 33.206970, 39.878147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890146, 33.505692, 40.065052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114083, 0.577902, -0.808093,
		-0.873513, 0.329118, 0.358685,
		0.473244, 0.746800, 0.467258,
		32.032120, 33.729733, 40.205231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239307, 33.801884, 39.797787>,  <31.700850, 33.206970, 39.878147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239307, 33.801884, 39.797787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593531, 33.971764, 39.873066>,  <31.806065, 34.073692, 39.918232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593531, 33.971764, 39.873066>,  <31.239307, 33.801884, 39.797787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593531, 33.971764, 39.873066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092564, 0.558343, -0.824430,
		-0.455212, 0.712661, 0.533757,
		0.885558, 0.424697, 0.188198,
		31.859198, 34.099174, 39.929523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069590, 34.432545, 39.628433>,  <31.239307, 33.801884, 39.797787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069590, 34.432545, 39.628433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468161, 34.459518, 39.608093>,  <31.707304, 34.475700, 39.595890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468161, 34.459518, 39.608093>,  <31.069590, 34.432545, 39.628433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468161, 34.459518, 39.608093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082460, 0.646538, -0.758412,
		-0.018263, 0.759896, 0.649788,
		0.996427, 0.067432, -0.050853,
		31.767088, 34.479748, 39.592838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180407, 35.151173, 39.396637>,  <31.069590, 34.432545, 39.628433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180407, 35.151173, 39.396637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531908, 34.967533, 39.344448>,  <31.742809, 34.857349, 39.313137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531908, 34.967533, 39.344448>,  <31.180407, 35.151173, 39.396637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531908, 34.967533, 39.344448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188703, 0.585292, -0.788558,
		0.438387, 0.668329, 0.600960,
		0.878754, -0.459096, -0.130469,
		31.795534, 34.829803, 39.305305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682135, 35.666458, 39.279560>,  <31.180407, 35.151173, 39.396637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682135, 35.666458, 39.279560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858194, 35.341919, 39.125683>,  <31.963831, 35.147194, 39.033356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858194, 35.341919, 39.125683>,  <31.682135, 35.666458, 39.279560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858194, 35.341919, 39.125683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254045, 0.523438, -0.813311,
		0.861238, 0.260249, 0.436509,
		0.440149, -0.811346, -0.384689,
		31.990238, 35.098515, 39.010277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166653, 35.967327, 38.823078>,  <31.682135, 35.666458, 39.279560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166653, 35.967327, 38.823078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169983, 35.587425, 38.697922>,  <32.171982, 35.359486, 38.622826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169983, 35.587425, 38.697922>,  <32.166653, 35.967327, 38.823078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169983, 35.587425, 38.697922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066807, 0.312735, -0.947488,
		0.997731, -0.013014, 0.066054,
		0.008327, -0.949751, -0.312895,
		32.172482, 35.302502, 38.604053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803627, 35.838989, 38.483143>,  <32.166653, 35.967327, 38.823078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803627, 35.838989, 38.483143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557323, 35.551468, 38.354042>,  <32.409542, 35.378956, 38.276581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557323, 35.551468, 38.354042>,  <32.803627, 35.838989, 38.483143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557323, 35.551468, 38.354042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219044, 0.237307, -0.946417,
		0.756879, -0.653457, 0.011327,
		-0.615755, -0.718804, -0.322749,
		32.372597, 35.335827, 38.257217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214798, 35.402843, 38.084183>,  <32.803627, 35.838989, 38.483143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214798, 35.402843, 38.084183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840008, 35.365852, 37.949409>,  <32.615135, 35.343658, 37.868546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840008, 35.365852, 37.949409>,  <33.214798, 35.402843, 38.084183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840008, 35.365852, 37.949409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346259, -0.116911, -0.930826,
		0.046689, -0.988828, 0.141564,
		-0.936977, -0.092477, -0.336932,
		32.558914, 35.338108, 37.848331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285969, 35.026428, 37.544556>,  <33.214798, 35.402843, 38.084183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285969, 35.026428, 37.544556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917336, 35.172550, 37.492027>,  <32.696156, 35.260223, 37.460510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917336, 35.172550, 37.492027>,  <33.285969, 35.026428, 37.544556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917336, 35.172550, 37.492027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082473, -0.146328, -0.985792,
		-0.379329, -0.919316, 0.104725,
		-0.921579, 0.365303, -0.131325,
		32.640862, 35.282143, 37.452629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467762, 34.793205, 36.831310>,  <33.285969, 35.026428, 37.544556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467762, 34.793205, 36.831310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815472, 34.677219, 36.671165>,  <34.024097, 34.607628, 36.575077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815472, 34.677219, 36.671165>,  <33.467762, 34.793205, 36.831310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815472, 34.677219, 36.671165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107589, -0.679507, 0.725737,
		-0.482486, -0.673936, -0.559479,
		0.869271, -0.289965, -0.400361,
		34.076252, 34.590229, 36.551056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586422, 33.998730, 36.740143>,  <33.467762, 34.793205, 36.831310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586422, 33.998730, 36.740143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930714, 34.192711, 36.802059>,  <34.137291, 34.309097, 36.839211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930714, 34.192711, 36.802059>,  <33.586422, 33.998730, 36.740143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930714, 34.192711, 36.802059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120959, -0.490204, 0.863173,
		0.494476, -0.724239, -0.480595,
		0.860733, 0.484951, 0.154791,
		34.188934, 34.338196, 36.848495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124367, 33.484226, 36.904465>,  <33.586422, 33.998730, 36.740143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124367, 33.484226, 36.904465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257011, 33.823944, 37.068775>,  <34.336597, 34.027775, 37.167362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257011, 33.823944, 37.068775>,  <34.124367, 33.484226, 36.904465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257011, 33.823944, 37.068775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001175, -0.435786, 0.900049,
		0.943415, -0.297985, -0.145509,
		0.331612, 0.849291, 0.410777,
		34.356495, 34.078732, 37.192009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740601, 33.286636, 37.179005>,  <34.124367, 33.484226, 36.904465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740601, 33.286636, 37.179005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617870, 33.614906, 37.371815>,  <34.544231, 33.811871, 37.487499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617870, 33.614906, 37.371815>,  <34.740601, 33.286636, 37.179005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617870, 33.614906, 37.371815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170089, -0.451021, 0.876156,
		0.936445, 0.350812, -0.001205,
		-0.306823, 0.820677, 0.482026,
		34.525822, 33.861111, 37.516422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011532, 33.272873, 37.767075>,  <34.740601, 33.286636, 37.179005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011532, 33.272873, 37.767075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756100, 33.558105, 37.882816>,  <34.602840, 33.729244, 37.952259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756100, 33.558105, 37.882816>,  <35.011532, 33.272873, 37.767075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756100, 33.558105, 37.882816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005033, -0.379864, 0.925029,
		0.769535, 0.589253, 0.246165,
		-0.638585, 0.713081, 0.289353,
		34.564526, 33.772030, 37.969624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219490, 33.369015, 38.389561>,  <35.011532, 33.272873, 37.767075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219490, 33.369015, 38.389561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854961, 33.532635, 38.370914>,  <34.636246, 33.630806, 38.359726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854961, 33.532635, 38.370914>,  <35.219490, 33.369015, 38.389561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854961, 33.532635, 38.370914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214660, -0.375498, 0.901622,
		0.351308, 0.831671, 0.430006,
		-0.911319, 0.409052, -0.046612,
		34.581566, 33.655350, 38.356930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221897, 33.849720, 38.894279>,  <35.219490, 33.369015, 38.389561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221897, 33.849720, 38.894279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848480, 33.730694, 38.814320>,  <34.624432, 33.659279, 38.766342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848480, 33.730694, 38.814320>,  <35.221897, 33.849720, 38.894279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848480, 33.730694, 38.814320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098575, -0.323061, 0.941230,
		-0.344654, 0.898381, 0.272258,
		-0.933540, -0.297561, -0.199903,
		34.568417, 33.641426, 38.754349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904213, 34.098701, 39.454811>,  <35.221897, 33.849720, 38.894279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904213, 34.098701, 39.454811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688675, 33.796001, 39.306770>,  <34.559353, 33.614380, 39.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688675, 33.796001, 39.306770>,  <34.904213, 34.098701, 39.454811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688675, 33.796001, 39.306770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207800, -0.306357, 0.928959,
		-0.816371, 0.577474, 0.007827,
		-0.538848, -0.756749, -0.370101,
		34.527020, 33.568977, 39.195740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474781, 33.971771, 40.120724>,  <34.904213, 34.098701, 39.454811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474781, 33.971771, 40.120724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412777, 33.661823, 39.875595>,  <34.375576, 33.475853, 39.728519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412777, 33.661823, 39.875595>,  <34.474781, 33.971771, 40.120724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412777, 33.661823, 39.875595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308006, -0.551491, 0.775236,
		-0.938672, 0.308917, -0.153181,
		-0.155006, -0.774873, -0.612817,
		34.366276, 33.429359, 39.691750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812660, 33.717422, 40.272038>,  <34.474781, 33.971771, 40.120724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812660, 33.717422, 40.272038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002197, 33.411007, 40.098297>,  <34.115921, 33.227158, 39.994053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002197, 33.411007, 40.098297>,  <33.812660, 33.717422, 40.272038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002197, 33.411007, 40.098297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396804, -0.626061, 0.671262,
		-0.786143, -0.145719, -0.600621,
		0.473841, -0.766037, -0.434351,
		34.144348, 33.181194, 39.967991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399643, 33.144806, 40.292583>,  <33.812660, 33.717422, 40.272038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399643, 33.144806, 40.292583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771992, 33.006996, 40.243942>,  <33.995399, 32.924309, 40.214756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771992, 33.006996, 40.243942>,  <33.399643, 33.144806, 40.292583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771992, 33.006996, 40.243942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066247, -0.486484, 0.871174,
		-0.359297, -0.802893, -0.475676,
		0.930869, -0.344523, -0.121602,
		34.051250, 32.903641, 40.207462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405197, 32.378513, 40.420120>,  <33.399643, 33.144806, 40.292583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405197, 32.378513, 40.420120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793762, 32.463867, 40.461727>,  <34.026901, 32.515079, 40.486691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793762, 32.463867, 40.461727>,  <33.405197, 32.378513, 40.420120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793762, 32.463867, 40.461727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071506, -0.680850, 0.728924,
		0.226366, -0.700649, -0.676646,
		0.971414, 0.213387, 0.104021,
		34.085186, 32.527882, 40.492935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748589, 31.773125, 40.331070>,  <33.405197, 32.378513, 40.420120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748589, 31.773125, 40.331070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983116, 31.983599, 40.577438>,  <34.123833, 32.109882, 40.725262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983116, 31.983599, 40.577438>,  <33.748589, 31.773125, 40.331070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983116, 31.983599, 40.577438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023599, -0.748907, 0.662254,
		0.809738, -0.402827, -0.426680,
		0.586317, 0.526183, 0.615925,
		34.159012, 32.141453, 40.762215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166245, 31.317135, 40.633240>,  <33.748589, 31.773125, 40.331070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166245, 31.317135, 40.633240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231453, 31.615391, 40.891678>,  <34.270580, 31.794344, 41.046741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231453, 31.615391, 40.891678>,  <34.166245, 31.317135, 40.633240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231453, 31.615391, 40.891678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023760, -0.657636, 0.752961,
		0.986336, -0.107399, -0.124927,
		0.163024, 0.745641, 0.646098,
		34.280361, 31.839083, 41.085506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604942, 31.007725, 41.098064>,  <34.166245, 31.317135, 40.633240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604942, 31.007725, 41.098064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435310, 31.336271, 41.250648>,  <34.333530, 31.533400, 41.342197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435310, 31.336271, 41.250648>,  <34.604942, 31.007725, 41.098064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435310, 31.336271, 41.250648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116519, -0.467197, 0.876442,
		0.898098, 0.327234, 0.293834,
		-0.424080, 0.821368, 0.381460,
		34.308086, 31.582682, 41.365086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896172, 31.082710, 41.755726>,  <34.604942, 31.007725, 41.098064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896172, 31.082710, 41.755726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553440, 31.288198, 41.773315>,  <34.347801, 31.411491, 41.783867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553440, 31.288198, 41.773315>,  <34.896172, 31.082710, 41.755726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553440, 31.288198, 41.773315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137912, -0.310521, 0.940509,
		0.496814, 0.799791, 0.336912,
		-0.856829, 0.513722, 0.043971,
		34.296391, 31.442316, 41.786507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980579, 31.195681, 42.429634>,  <34.896172, 31.082710, 41.755726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980579, 31.195681, 42.429634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600731, 31.278166, 42.335228>,  <34.372822, 31.327658, 42.278584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600731, 31.278166, 42.335228>,  <34.980579, 31.195681, 42.429634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600731, 31.278166, 42.335228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303242, -0.414253, 0.858160,
		0.079195, 0.886493, 0.455914,
		-0.949617, 0.206214, -0.236015,
		34.315845, 31.340031, 42.264423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703308, 31.592779, 42.961304>,  <34.980579, 31.195681, 42.429634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703308, 31.592779, 42.961304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386349, 31.415186, 42.793980>,  <34.196175, 31.308630, 42.693584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386349, 31.415186, 42.793980>,  <34.703308, 31.592779, 42.961304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386349, 31.415186, 42.793980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265807, -0.365905, 0.891885,
		-0.549044, 0.817919, 0.171930,
		-0.792400, -0.443984, -0.418307,
		34.148628, 31.281990, 42.668488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284840, 31.698568, 43.497303>,  <34.703308, 31.592779, 42.961304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284840, 31.698568, 43.497303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126041, 31.417551, 43.261055>,  <34.030762, 31.248940, 43.119308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126041, 31.417551, 43.261055>,  <34.284840, 31.698568, 43.497303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126041, 31.417551, 43.261055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337780, -0.486503, 0.805742,
		-0.853406, 0.519371, -0.044168,
		-0.396991, -0.702544, -0.590618,
		34.006943, 31.206787, 43.083870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613098, 31.540361, 43.773964>,  <34.284840, 31.698568, 43.497303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613098, 31.540361, 43.773964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678040, 31.217251, 43.547287>,  <33.717003, 31.023384, 43.411282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678040, 31.217251, 43.547287>,  <33.613098, 31.540361, 43.773964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678040, 31.217251, 43.547287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309122, -0.587040, 0.748216,
		-0.937062, 0.053702, -0.345009,
		0.162353, -0.807775, -0.566693,
		33.726746, 30.974918, 43.377277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989929, 31.236130, 43.795616>,  <33.613098, 31.540361, 43.773964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989929, 31.236130, 43.795616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288033, 30.970034, 43.777508>,  <33.466892, 30.810375, 43.766644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288033, 30.970034, 43.777508>,  <32.989929, 31.236130, 43.795616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288033, 30.970034, 43.777508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437483, -0.539078, 0.719725,
		-0.503190, -0.516578, -0.692782,
		0.745257, -0.665239, -0.045264,
		33.511608, 30.770462, 43.763927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659000, 30.682732, 44.015583>,  <32.989929, 31.236130, 43.795616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659000, 30.682732, 44.015583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036846, 30.552177, 44.029247>,  <33.263554, 30.473845, 44.037445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036846, 30.552177, 44.029247>,  <32.659000, 30.682732, 44.015583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036846, 30.552177, 44.029247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255484, -0.666073, 0.700767,
		-0.205969, -0.670685, -0.712571,
		0.944619, -0.326387, 0.034159,
		33.320232, 30.454262, 44.039494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671589, 29.942553, 44.055462>,  <32.659000, 30.682732, 44.015583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671589, 29.942553, 44.055462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014416, 30.055269, 44.227985>,  <33.220112, 30.122900, 44.331501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014416, 30.055269, 44.227985>,  <32.671589, 29.942553, 44.055462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014416, 30.055269, 44.227985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264790, -0.477203, 0.837952,
		0.441950, -0.832388, -0.334379,
		0.857068, 0.281793, 0.431308,
		33.271538, 30.139807, 44.357376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804287, 29.368204, 44.467964>,  <32.671589, 29.942553, 44.055462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804287, 29.368204, 44.467964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072926, 29.637436, 44.591850>,  <33.234108, 29.798975, 44.666183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072926, 29.637436, 44.591850>,  <32.804287, 29.368204, 44.467964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072926, 29.637436, 44.591850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163340, -0.273236, 0.947978,
		0.722691, -0.687245, -0.073563,
		0.671594, 0.673080, 0.309720,
		33.274403, 29.839359, 44.684765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253872, 28.992451, 44.842930>,  <32.804287, 29.368204, 44.467964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253872, 28.992451, 44.842930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289749, 29.365601, 44.982468>,  <33.311275, 29.589491, 45.066193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289749, 29.365601, 44.982468>,  <33.253872, 28.992451, 44.842930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289749, 29.365601, 44.982468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005735, -0.349770, 0.936818,
		0.995953, -0.086031, -0.026024,
		0.089698, 0.932877, 0.348848,
		33.316658, 29.645464, 45.087124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715912, 28.978645, 45.399002>,  <33.253872, 28.992451, 44.842930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715912, 28.978645, 45.399002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631729, 29.363752, 45.466866>,  <33.581219, 29.594816, 45.507584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631729, 29.363752, 45.466866>,  <33.715912, 28.978645, 45.399002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631729, 29.363752, 45.466866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331540, -0.092968, 0.938849,
		0.919668, 0.253834, -0.299631,
		-0.210456, 0.962770, 0.169656,
		33.568592, 29.652584, 45.517761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339584, 29.494471, 45.510422>,  <33.715912, 28.978645, 45.399002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339584, 29.494471, 45.510422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006626, 29.585272, 45.712646>,  <33.806850, 29.639751, 45.833981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006626, 29.585272, 45.712646>,  <34.339584, 29.494471, 45.510422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006626, 29.585272, 45.712646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502004, -0.077587, 0.861378,
		0.234759, 0.970799, -0.049373,
		-0.832394, 0.227002, 0.505559,
		33.756908, 29.653372, 45.864315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571712, 30.036190, 45.849575>,  <34.339584, 29.494471, 45.510422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571712, 30.036190, 45.849575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240974, 29.909872, 46.035736>,  <34.042530, 29.834082, 46.147434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240974, 29.909872, 46.035736>,  <34.571712, 30.036190, 45.849575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240974, 29.909872, 46.035736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429274, 0.180297, 0.884995,
		-0.363387, 0.931540, -0.013516,
		-0.826845, -0.315794, 0.465404,
		33.992920, 29.815134, 46.175358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455341, 30.526739, 46.357063>,  <34.571712, 30.036190, 45.849575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455341, 30.526739, 46.357063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249237, 30.212488, 46.494057>,  <34.125576, 30.023937, 46.576252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249237, 30.212488, 46.494057>,  <34.455341, 30.526739, 46.357063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249237, 30.212488, 46.494057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261215, 0.236637, 0.935826,
		-0.816256, 0.571655, 0.083289,
		-0.515260, -0.785629, 0.342482,
		34.094658, 29.976799, 46.596802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256943, 30.665625, 47.057228>,  <34.455341, 30.526739, 46.357063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256943, 30.665625, 47.057228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182297, 30.272863, 47.044331>,  <34.137508, 30.037207, 47.036591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182297, 30.272863, 47.044331>,  <34.256943, 30.665625, 47.057228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182297, 30.272863, 47.044331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148478, -0.060635, 0.987055,
		-0.971148, 0.179415, 0.157107,
		-0.186618, -0.981903, -0.032247,
		34.126312, 29.978292, 47.034657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713303, 30.520950, 47.575325>,  <34.256943, 30.665625, 47.057228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713303, 30.520950, 47.575325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895748, 30.169443, 47.519150>,  <34.005215, 29.958538, 47.485443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895748, 30.169443, 47.519150>,  <33.713303, 30.520950, 47.575325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895748, 30.169443, 47.519150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086944, -0.113057, 0.989777,
		-0.885664, -0.463662, 0.024837,
		0.456114, -0.878770, -0.140443,
		34.032581, 29.905811, 47.477016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432514, 30.105438, 47.983513>,  <33.713303, 30.520950, 47.575325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432514, 30.105438, 47.983513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757599, 29.886986, 47.902283>,  <33.952648, 29.755915, 47.853546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757599, 29.886986, 47.902283>,  <33.432514, 30.105438, 47.983513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757599, 29.886986, 47.902283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081640, -0.238353, 0.967741,
		-0.576916, -0.803075, -0.149127,
		0.812713, -0.546131, -0.203073,
		34.001411, 29.723146, 47.841362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293201, 29.488604, 48.204426>,  <33.432514, 30.105438, 47.983513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293201, 29.488604, 48.204426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692524, 29.511816, 48.202847>,  <33.932117, 29.525743, 48.201897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692524, 29.511816, 48.202847>,  <33.293201, 29.488604, 48.204426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692524, 29.511816, 48.202847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011724, -0.134228, 0.990881,
		0.056970, -0.989250, -0.134681,
		0.998308, 0.058030, -0.003951,
		33.992016, 29.529224, 48.201660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521877, 28.957037, 48.600624>,  <33.293201, 29.488604, 48.204426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521877, 28.957037, 48.600624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811287, 29.233091, 48.606606>,  <33.984932, 29.398724, 48.610195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811287, 29.233091, 48.606606>,  <33.521877, 28.957037, 48.600624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811287, 29.233091, 48.606606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065468, -0.090164, 0.993773,
		0.687189, -0.718039, -0.110418,
		0.723523, 0.690138, 0.014951,
		34.028343, 29.440132, 48.611092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073334, 28.607815, 48.932762>,  <33.521877, 28.957037, 48.600624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073334, 28.607815, 48.932762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160591, 28.997459, 48.956505>,  <34.212944, 29.231245, 48.970749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160591, 28.997459, 48.956505>,  <34.073334, 28.607815, 48.932762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160591, 28.997459, 48.956505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153445, -0.094300, 0.983648,
		0.963778, -0.205467, -0.170043,
		0.218142, 0.974111, 0.059356,
		34.226032, 29.289692, 48.974312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784832, 28.626820, 49.314823>,  <34.073334, 28.607815, 48.932762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784832, 28.626820, 49.314823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614067, 28.986595, 49.352257>,  <34.511608, 29.202461, 49.374718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614067, 28.986595, 49.352257>,  <34.784832, 28.626820, 49.314823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614067, 28.986595, 49.352257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143210, -0.034937, 0.989076,
		0.892883, 0.435648, -0.113894,
		-0.426909, 0.899439, 0.093583,
		34.485992, 29.256428, 49.380333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199566, 29.004877, 49.826462>,  <34.784832, 28.626820, 49.314823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199566, 29.004877, 49.826462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867046, 29.226553, 49.809414>,  <34.667534, 29.359558, 49.799187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867046, 29.226553, 49.809414>,  <35.199566, 29.004877, 49.826462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867046, 29.226553, 49.809414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044513, 0.142803, 0.988750,
		0.554039, 0.820050, -0.143381,
		-0.831300, 0.554188, -0.042616,
		34.617657, 29.392809, 49.796631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386230, 29.479614, 50.350056>,  <35.199566, 29.004877, 49.826462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386230, 29.479614, 50.350056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990147, 29.481615, 50.294270>,  <34.752495, 29.482815, 50.260799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990147, 29.481615, 50.294270>,  <35.386230, 29.479614, 50.350056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990147, 29.481615, 50.294270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132103, 0.288642, 0.948280,
		0.044998, 0.957424, -0.285157,
		-0.990214, 0.005001, -0.139467,
		34.693081, 29.483116, 50.252430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425571, 30.127218, 50.661747>,  <35.386230, 29.479614, 50.350056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425571, 30.127218, 50.661747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751530, 30.311852, 50.801968>,  <35.947105, 30.422632, 50.886101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751530, 30.311852, 50.801968>,  <35.425571, 30.127218, 50.661747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751530, 30.311852, 50.801968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028650, 0.571987, -0.819762,
		-0.578900, 0.678063, 0.452886,
		0.814895, 0.461585, 0.350550,
		35.995998, 30.450327, 50.907131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302757, 30.763365, 50.647198>,  <35.425571, 30.127218, 50.661747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302757, 30.763365, 50.647198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702610, 30.754557, 50.653439>,  <35.942524, 30.749271, 50.657185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702610, 30.754557, 50.653439>,  <35.302757, 30.763365, 50.647198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702610, 30.754557, 50.653439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024843, 0.524786, -0.850871,
		0.010548, 0.850949, 0.525142,
		0.999636, -0.022021, 0.015605,
		36.002502, 30.747950, 50.658119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455841, 31.356867, 50.458332>,  <35.302757, 30.763365, 50.647198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455841, 31.356867, 50.458332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798355, 31.165642, 50.380116>,  <36.003864, 31.050907, 50.333187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798355, 31.165642, 50.380116>,  <35.455841, 31.356867, 50.458332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798355, 31.165642, 50.380116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157318, 0.601990, -0.782853,
		0.491967, 0.639581, 0.590681,
		0.856282, -0.478063, -0.195542,
		36.055241, 31.022223, 50.321453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016987, 31.908703, 50.193928>,  <35.455841, 31.356867, 50.458332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016987, 31.908703, 50.193928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168770, 31.562368, 50.063488>,  <36.259838, 31.354568, 49.985226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168770, 31.562368, 50.063488>,  <36.016987, 31.908703, 50.193928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168770, 31.562368, 50.063488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000785, 0.352762, -0.935713,
		0.925210, 0.354805, 0.134537,
		0.379455, -0.865836, -0.326100,
		36.282608, 31.302618, 49.965656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529308, 32.069313, 49.749481>,  <36.016987, 31.908703, 50.193928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529308, 32.069313, 49.749481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503845, 31.683882, 49.645592>,  <36.488567, 31.452621, 49.583260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503845, 31.683882, 49.645592>,  <36.529308, 32.069313, 49.749481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503845, 31.683882, 49.645592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083594, 0.254187, -0.963536,
		0.994464, -0.083052, 0.064367,
		-0.063662, -0.963583, -0.259722,
		36.484745, 31.394808, 49.567677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104252, 31.866224, 49.197994>,  <36.529308, 32.069313, 49.749481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104252, 31.866224, 49.197994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796249, 31.615891, 49.148319>,  <36.611446, 31.465691, 49.118515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796249, 31.615891, 49.148319>,  <37.104252, 31.866224, 49.197994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796249, 31.615891, 49.148319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021199, 0.169432, -0.985314,
		0.637686, -0.761329, -0.117196,
		-0.770005, -0.625836, -0.124184,
		36.565247, 31.428141, 49.111065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301876, 31.521503, 48.647579>,  <37.104252, 31.866224, 49.197994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301876, 31.521503, 48.647579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908772, 31.451128, 48.670322>,  <36.672909, 31.408903, 48.683968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908772, 31.451128, 48.670322>,  <37.301876, 31.521503, 48.647579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908772, 31.451128, 48.670322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070358, 0.071441, -0.994960,
		0.170990, -0.981805, -0.082588,
		-0.982757, -0.175939, 0.056863,
		36.613945, 31.398348, 48.687382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208862, 31.084736, 48.068924>,  <37.301876, 31.521503, 48.647579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208862, 31.084736, 48.068924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863632, 31.249413, 48.185963>,  <36.656494, 31.348219, 48.256187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863632, 31.249413, 48.185963>,  <37.208862, 31.084736, 48.068924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863632, 31.249413, 48.185963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241493, 0.172437, -0.954959,
		-0.443603, -0.894861, -0.049405,
		-0.863075, 0.411691, 0.292596,
		36.604710, 31.372919, 48.273743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708580, 30.698410, 47.700623>,  <37.208862, 31.084736, 48.068924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708580, 30.698410, 47.700623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521698, 31.035891, 47.806370>,  <36.409569, 31.238379, 47.869816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521698, 31.035891, 47.806370>,  <36.708580, 30.698410, 47.700623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521698, 31.035891, 47.806370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268222, 0.149664, -0.951661,
		-0.842482, -0.515530, 0.156375,
		-0.467205, 0.843700, 0.264365,
		36.381535, 31.289001, 47.885681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146324, 30.735956, 47.217239>,  <36.708580, 30.698410, 47.700623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146324, 30.735956, 47.217239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184284, 31.110355, 47.352825>,  <36.207062, 31.334995, 47.434177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184284, 31.110355, 47.352825>,  <36.146324, 30.735956, 47.217239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184284, 31.110355, 47.352825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133408, 0.349390, -0.927431,
		-0.986507, 0.042792, 0.158027,
		0.094900, 0.936000, 0.338967,
		36.212753, 31.391155, 47.454514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607613, 31.105776, 46.988892>,  <36.146324, 30.735956, 47.217239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607613, 31.105776, 46.988892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853676, 31.413568, 47.057571>,  <36.001312, 31.598244, 47.098778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853676, 31.413568, 47.057571>,  <35.607613, 31.105776, 46.988892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853676, 31.413568, 47.057571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252324, 0.398478, -0.881786,
		-0.746937, 0.499113, 0.439285,
		0.615157, 0.769481, 0.171700,
		36.038223, 31.644413, 47.109081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210678, 31.769655, 46.781101>,  <35.607613, 31.105776, 46.988892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210678, 31.769655, 46.781101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606750, 31.825342, 46.786205>,  <35.844395, 31.858753, 46.789268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606750, 31.825342, 46.786205>,  <35.210678, 31.769655, 46.781101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606750, 31.825342, 46.786205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069114, 0.566836, -0.820926,
		-0.121521, 0.811982, 0.570892,
		0.990180, 0.139217, 0.012764,
		35.903805, 31.867107, 46.790035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380604, 32.486347, 46.655739>,  <35.210678, 31.769655, 46.781101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380604, 32.486347, 46.655739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734997, 32.319077, 46.575577>,  <35.947632, 32.218716, 46.527477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734997, 32.319077, 46.575577>,  <35.380604, 32.486347, 46.655739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734997, 32.319077, 46.575577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084156, 0.570002, -0.817322,
		0.456015, 0.707268, 0.540205,
		0.885984, -0.418173, -0.200409,
		36.000793, 32.193626, 46.515453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899094, 33.086121, 46.426033>,  <35.380604, 32.486347, 46.655739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899094, 33.086121, 46.426033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990696, 32.725834, 46.278378>,  <36.045658, 32.509663, 46.189785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990696, 32.725834, 46.278378>,  <35.899094, 33.086121, 46.426033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990696, 32.725834, 46.278378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135211, 0.404972, -0.904276,
		0.963989, 0.157173, 0.214528,
		0.229005, -0.900719, -0.369138,
		36.059399, 32.455620, 46.167637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601807, 33.138275, 46.116482>,  <35.899094, 33.086121, 46.426033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601807, 33.138275, 46.116482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428352, 32.817768, 45.951591>,  <36.324280, 32.625465, 45.852657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428352, 32.817768, 45.951591>,  <36.601807, 33.138275, 46.116482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428352, 32.817768, 45.951591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312828, 0.295155, -0.902786,
		0.845042, -0.520439, 0.122668,
		-0.433639, -0.801266, -0.412226,
		36.298260, 32.577389, 45.827923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096584, 32.854412, 45.513500>,  <36.601807, 33.138275, 46.116482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096584, 32.854412, 45.513500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726822, 32.719154, 45.442921>,  <36.504963, 32.638000, 45.400574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726822, 32.719154, 45.442921>,  <37.096584, 32.854412, 45.513500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726822, 32.719154, 45.442921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076041, 0.289952, -0.954015,
		0.373754, -0.895315, -0.242321,
		-0.924406, -0.338141, -0.176451,
		36.449501, 32.617714, 45.389984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160954, 32.740887, 44.913029>,  <37.096584, 32.854412, 45.513500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160954, 32.740887, 44.913029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764835, 32.691704, 44.938915>,  <36.527164, 32.662193, 44.954449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764835, 32.691704, 44.938915>,  <37.160954, 32.740887, 44.913029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764835, 32.691704, 44.938915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090176, 0.214365, -0.972582,
		0.105715, -0.968983, -0.223373,
		-0.990300, -0.122959, 0.064717,
		36.467747, 32.654816, 44.958332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942299, 32.330898, 44.355942>,  <37.160954, 32.740887, 44.913029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942299, 32.330898, 44.355942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595856, 32.493935, 44.471684>,  <36.387989, 32.591759, 44.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595856, 32.493935, 44.471684>,  <36.942299, 32.330898, 44.355942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595856, 32.493935, 44.471684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188462, 0.269870, -0.944273,
		-0.462966, -0.872375, -0.156922,
		-0.866109, 0.407593, 0.289350,
		36.336021, 32.616211, 44.558487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353886, 32.041084, 43.961044>,  <36.942299, 32.330898, 44.355942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353886, 32.041084, 43.961044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202122, 32.389839, 44.084896>,  <36.111065, 32.599091, 44.159206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202122, 32.389839, 44.084896>,  <36.353886, 32.041084, 43.961044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202122, 32.389839, 44.084896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436877, 0.126178, -0.890628,
		-0.815592, -0.473179, 0.333033,
		-0.379405, 0.871883, 0.309632,
		36.088299, 32.651405, 44.177784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732620, 32.061085, 43.655262>,  <36.353886, 32.041084, 43.961044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732620, 32.061085, 43.655262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805618, 32.447292, 43.729530>,  <35.849419, 32.679016, 43.774090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805618, 32.447292, 43.729530>,  <35.732620, 32.061085, 43.655262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805618, 32.447292, 43.729530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033633, 0.194863, -0.980254,
		-0.982632, 0.172645, 0.068034,
		0.182494, 0.965516, 0.185672,
		35.860367, 32.736946, 43.785233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216133, 32.429180, 43.301487>,  <35.732620, 32.061085, 43.655262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216133, 32.429180, 43.301487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520802, 32.678421, 43.372589>,  <35.703602, 32.827965, 43.415253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520802, 32.678421, 43.372589>,  <35.216133, 32.429180, 43.301487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520802, 32.678421, 43.372589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022761, 0.299896, -0.953700,
		-0.647561, 0.722363, 0.242605,
		0.761674, 0.623101, 0.177759,
		35.749302, 32.865353, 43.425919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018208, 32.929501, 42.834881>,  <35.216133, 32.429180, 43.301487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018208, 32.929501, 42.834881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393597, 33.024017, 42.935631>,  <35.618828, 33.080727, 42.996078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393597, 33.024017, 42.935631>,  <35.018208, 32.929501, 42.834881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393597, 33.024017, 42.935631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162092, 0.342627, -0.925383,
		-0.304961, 0.909270, 0.283244,
		0.938470, 0.236294, 0.251873,
		35.675137, 33.094906, 43.011192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024288, 33.659637, 42.754082>,  <35.018208, 32.929501, 42.834881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024288, 33.659637, 42.754082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379105, 33.475807, 42.736465>,  <35.591995, 33.365509, 42.725895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379105, 33.475807, 42.736465>,  <35.024288, 33.659637, 42.754082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379105, 33.475807, 42.736465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087722, 0.261432, -0.961228,
		0.453273, 0.848789, 0.272217,
		0.887045, -0.459578, -0.044043,
		35.645218, 33.337933, 42.723251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507282, 34.098995, 42.360844>,  <35.024288, 33.659637, 42.754082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507282, 34.098995, 42.360844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679554, 33.738289, 42.375450>,  <35.782917, 33.521866, 42.384212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679554, 33.738289, 42.375450>,  <35.507282, 34.098995, 42.360844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679554, 33.738289, 42.375450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238873, 0.074884, -0.968159,
		0.870319, 0.425687, 0.247659,
		0.430678, -0.901767, 0.036512,
		35.808758, 33.467758, 42.386402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165035, 34.258011, 41.956516>,  <35.507282, 34.098995, 42.360844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165035, 34.258011, 41.956516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130516, 33.859505, 41.955963>,  <36.109806, 33.620399, 41.955631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130516, 33.859505, 41.955963>,  <36.165035, 34.258011, 41.956516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130516, 33.859505, 41.955963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466770, -0.039201, -0.883509,
		0.880158, -0.076889, 0.468412,
		-0.086295, -0.996269, -0.001386,
		36.104626, 33.560623, 41.955547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770992, 33.941242, 41.817997>,  <36.165035, 34.258011, 41.956516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770992, 33.941242, 41.817997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515106, 33.659779, 41.694302>,  <36.361572, 33.490902, 41.620083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515106, 33.659779, 41.694302>,  <36.770992, 33.941242, 41.817997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515106, 33.659779, 41.694302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506092, -0.082817, -0.858494,
		0.578474, -0.705698, 0.409094,
		-0.639718, -0.703656, -0.309240,
		36.323193, 33.448681, 41.601528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156273, 33.459610, 41.572704>,  <36.770992, 33.941242, 41.817997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156273, 33.459610, 41.572704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797245, 33.424221, 41.399937>,  <36.581829, 33.402988, 41.296276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797245, 33.424221, 41.399937>,  <37.156273, 33.459610, 41.572704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797245, 33.424221, 41.399937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437634, -0.060080, -0.897144,
		0.053421, -0.994265, 0.092643,
		-0.897565, -0.088470, -0.431915,
		36.527977, 33.397682, 41.270363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224789, 32.989445, 41.026695>,  <37.156273, 33.459610, 41.572704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224789, 32.989445, 41.026695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878189, 33.162605, 40.927277>,  <36.670227, 33.266502, 40.867626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878189, 33.162605, 40.927277>,  <37.224789, 32.989445, 41.026695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878189, 33.162605, 40.927277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311708, 0.080342, -0.946775,
		-0.389889, -0.897855, -0.204554,
		-0.866501, 0.432898, -0.248545,
		36.618240, 33.292473, 40.852715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943233, 32.572521, 40.584492>,  <37.224789, 32.989445, 41.026695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943233, 32.572521, 40.584492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807404, 32.942341, 40.515327>,  <36.725906, 33.164234, 40.473827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807404, 32.942341, 40.515327>,  <36.943233, 32.572521, 40.584492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807404, 32.942341, 40.515327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282738, -0.074996, -0.956261,
		-0.897077, -0.373612, -0.235938,
		-0.339576, 0.924548, -0.172912,
		36.705532, 33.219704, 40.463455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393829, 32.567635, 40.048599>,  <36.943233, 32.572521, 40.584492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393829, 32.567635, 40.048599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531685, 32.942863, 40.062763>,  <36.614399, 33.167999, 40.071262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531685, 32.942863, 40.062763>,  <36.393829, 32.567635, 40.048599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531685, 32.942863, 40.062763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400321, -0.112747, -0.909413,
		-0.849099, 0.327589, -0.414385,
		0.344635, 0.938069, 0.035407,
		36.635075, 33.224285, 40.073387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278004, 32.851719, 39.394615>,  <36.393829, 32.567635, 40.048599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278004, 32.851719, 39.394615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543690, 33.120022, 39.526619>,  <36.703102, 33.281002, 39.605820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543690, 33.120022, 39.526619>,  <36.278004, 32.851719, 39.394615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543690, 33.120022, 39.526619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357729, 0.102419, -0.928192,
		-0.656388, 0.734574, -0.171920,
		0.664217, 0.670754, 0.330005,
		36.742954, 33.321247, 39.625622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306503, 33.274128, 38.847904>,  <36.278004, 32.851719, 39.394615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306503, 33.274128, 38.847904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644737, 33.358406, 39.044109>,  <36.847675, 33.408974, 39.161831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644737, 33.358406, 39.044109>,  <36.306503, 33.274128, 38.847904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644737, 33.358406, 39.044109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452496, 0.204665, -0.867963,
		-0.283266, 0.955887, 0.077722,
		0.845581, 0.210695, 0.490510,
		36.898411, 33.421616, 39.191261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589043, 33.990170, 38.639809>,  <36.306503, 33.274128, 38.847904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589043, 33.990170, 38.639809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903988, 33.788765, 38.782093>,  <37.092957, 33.667923, 38.867462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903988, 33.788765, 38.782093>,  <36.589043, 33.990170, 38.639809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903988, 33.788765, 38.782093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529075, 0.255719, -0.809128,
		0.316446, 0.825276, 0.467741,
		0.787364, -0.503515, 0.355711,
		37.140198, 33.637711, 38.888805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176567, 34.474201, 38.674046>,  <36.589043, 33.990170, 38.639809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176567, 34.474201, 38.674046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317936, 34.102825, 38.628292>,  <37.402760, 33.879997, 38.600838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317936, 34.102825, 38.628292>,  <37.176567, 34.474201, 38.674046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317936, 34.102825, 38.628292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623037, 0.324833, -0.711553,
		0.697794, 0.180212, 0.693259,
		0.353424, -0.928443, -0.114388,
		37.423962, 33.824291, 38.593975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894062, 34.625809, 38.406597>,  <37.176567, 34.474201, 38.674046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894062, 34.625809, 38.406597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823074, 34.238121, 38.338341>,  <37.780483, 34.005508, 38.297386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823074, 34.238121, 38.338341>,  <37.894062, 34.625809, 38.406597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823074, 34.238121, 38.338341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615357, 0.026024, -0.787818,
		0.768010, -0.244817, 0.591798,
		-0.177470, -0.969220, -0.170637,
		37.769833, 33.947353, 38.287151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564697, 34.339989, 38.398415>,  <37.894062, 34.625809, 38.406597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564697, 34.339989, 38.398415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314121, 34.091537, 38.210041>,  <38.163776, 33.942467, 38.097015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314121, 34.091537, 38.210041>,  <38.564697, 34.339989, 38.398415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314121, 34.091537, 38.210041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647628, -0.078529, -0.757899,
		0.433768, -0.779768, 0.451451,
		-0.626437, -0.621124, -0.470936,
		38.126190, 33.905201, 38.068760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000973, 33.724308, 38.249302>,  <38.564697, 34.339989, 38.398415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000973, 33.724308, 38.249302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681267, 33.727985, 38.008938>,  <38.489445, 33.730190, 37.864719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681267, 33.727985, 38.008938>,  <39.000973, 33.724308, 38.249302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681267, 33.727985, 38.008938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599347, -0.061433, -0.798129,
		-0.044255, -0.998069, 0.043590,
		-0.799265, 0.009196, -0.600908,
		38.441486, 33.730743, 37.828667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239544, 33.309116, 37.730698>,  <39.000973, 33.724308, 38.249302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239544, 33.309116, 37.730698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919083, 33.461044, 37.545704>,  <38.726807, 33.552200, 37.434708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919083, 33.461044, 37.545704>,  <39.239544, 33.309116, 37.730698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919083, 33.461044, 37.545704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499575, -0.001053, -0.866270,
		-0.329517, -0.925058, -0.188907,
		-0.801151, 0.379824, -0.462483,
		38.678738, 33.574993, 37.406960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066212, 32.892998, 37.140556>,  <39.239544, 33.309116, 37.730698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066212, 32.892998, 37.140556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931705, 33.265572, 37.084908>,  <38.851002, 33.489117, 37.051517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931705, 33.265572, 37.084908>,  <39.066212, 32.892998, 37.140556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931705, 33.265572, 37.084908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471000, 0.038404, -0.881297,
		-0.815526, -0.361881, -0.451619,
		-0.336268, 0.931433, -0.139127,
		38.830826, 33.545002, 37.043171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899570, 32.847172, 36.479534>,  <39.066212, 32.892998, 37.140556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899570, 32.847172, 36.479534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938313, 33.223427, 36.609657>,  <38.961559, 33.449181, 36.687733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938313, 33.223427, 36.609657>,  <38.899570, 32.847172, 36.479534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938313, 33.223427, 36.609657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634456, 0.193477, -0.748353,
		-0.766866, 0.278879, -0.578051,
		0.096860, 0.940634, 0.325308,
		38.967369, 33.505619, 36.707249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732563, 33.339020, 35.941017>,  <38.899570, 32.847172, 36.479534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732563, 33.339020, 35.941017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952469, 33.549358, 36.200630>,  <39.084412, 33.675560, 36.356400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952469, 33.549358, 36.200630>,  <38.732563, 33.339020, 35.941017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952469, 33.549358, 36.200630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709627, 0.115880, -0.694982,
		-0.440662, 0.842651, -0.309445,
		0.549769, 0.525843, 0.649032,
		39.117401, 33.707111, 36.395340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855225, 33.995167, 35.535721>,  <38.732563, 33.339020, 35.941017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855225, 33.995167, 35.535721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133095, 33.880291, 35.799522>,  <39.299816, 33.811363, 35.957802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133095, 33.880291, 35.799522>,  <38.855225, 33.995167, 35.535721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133095, 33.880291, 35.799522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704055, 0.083581, -0.705210,
		0.147409, 0.954219, 0.260261,
		0.694678, -0.287192, 0.659502,
		39.341499, 33.794132, 35.997372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442410, 34.499165, 35.536537>,  <38.855225, 33.995167, 35.535721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442410, 34.499165, 35.536537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562412, 34.135147, 35.650951>,  <39.634415, 33.916737, 35.719601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562412, 34.135147, 35.650951>,  <39.442410, 34.499165, 35.536537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562412, 34.135147, 35.650951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829638, 0.100908, -0.549108,
		0.470849, 0.402041, 0.785280,
		0.300005, -0.910044, 0.286036,
		39.652412, 33.862133, 35.736763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127682, 34.539349, 35.859707>,  <39.442410, 34.499165, 35.536537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127682, 34.539349, 35.859707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094624, 34.197754, 35.654232>,  <40.074791, 33.992798, 35.530949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094624, 34.197754, 35.654232>,  <40.127682, 34.539349, 35.859707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094624, 34.197754, 35.654232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810220, 0.242554, -0.533584,
		0.580271, -0.460296, 0.671873,
		-0.082641, -0.853988, -0.513687,
		40.069832, 33.941559, 35.500126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809135, 34.062981, 35.824574>,  <40.127682, 34.539349, 35.859707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809135, 34.062981, 35.824574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580547, 34.064594, 35.496330>,  <40.443394, 34.065563, 35.299385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580547, 34.064594, 35.496330>,  <40.809135, 34.062981, 35.824574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580547, 34.064594, 35.496330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757152, 0.388213, -0.525367,
		0.316451, -0.921561, -0.224910,
		-0.571471, 0.004038, -0.820612,
		40.409107, 34.065807, 35.250145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210934, 33.774147, 35.272442>,  <40.809135, 34.062981, 35.824574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210934, 33.774147, 35.272442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916725, 33.999680, 35.122189>,  <40.740200, 34.134998, 35.032036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916725, 33.999680, 35.122189>,  <41.210934, 33.774147, 35.272442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916725, 33.999680, 35.122189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661242, 0.476712, -0.579227,
		-0.147520, -0.674418, -0.723463,
		-0.735524, 0.563832, -0.375629,
		40.696068, 34.168831, 35.009499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588375, 33.333542, 34.756947>,  <41.210934, 33.774147, 35.272442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588375, 33.333542, 34.756947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696823, 33.066837, 34.479263>,  <41.761890, 32.906815, 34.312653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696823, 33.066837, 34.479263>,  <41.588375, 33.333542, 34.756947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696823, 33.066837, 34.479263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948381, -0.061763, -0.311061,
		0.164528, 0.742706, -0.649090,
		0.271116, -0.666763, -0.694207,
		41.778156, 32.866810, 34.271000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569145, 33.453827, 34.027115>,  <41.588375, 33.333542, 34.756947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569145, 33.453827, 34.027115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965595, 33.474129, 33.977974>,  <42.203465, 33.486309, 33.948490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965595, 33.474129, 33.977974>,  <41.569145, 33.453827, 34.027115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965595, 33.474129, 33.977974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049195, -0.998666, -0.015675,
		-0.123488, 0.009492, -0.992301,
		0.991126, 0.050752, -0.122856,
		42.262932, 33.489353, 33.941116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698002, 32.950768, 33.487511>,  <41.569145, 33.453827, 34.027115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698002, 32.950768, 33.487511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040764, 33.005238, 33.686375>,  <42.246422, 33.037918, 33.805691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040764, 33.005238, 33.686375>,  <41.698002, 32.950768, 33.487511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040764, 33.005238, 33.686375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223577, -0.967218, -0.120431,
		0.464460, 0.214351, -0.859262,
		0.856907, 0.136176, 0.497158,
		42.297836, 33.046089, 33.835522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268375, 32.501682, 33.195637>,  <41.698002, 32.950768, 33.487511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268375, 32.501682, 33.195637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436329, 32.626823, 33.536415>,  <42.537102, 32.701908, 33.740883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436329, 32.626823, 33.536415>,  <42.268375, 32.501682, 33.195637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436329, 32.626823, 33.536415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449652, -0.887110, 0.104157,
		0.788359, 0.339346, -0.513161,
		0.419885, 0.312857, 0.851949,
		42.562294, 32.720680, 33.792000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028328, 32.323708, 33.096493>,  <42.268375, 32.501682, 33.195637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028328, 32.323708, 33.096493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937527, 32.330181, 33.485996>,  <42.883045, 32.334064, 33.719700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937527, 32.330181, 33.485996>,  <43.028328, 32.323708, 33.096493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937527, 32.330181, 33.485996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389561, -0.914878, 0.106025,
		0.892587, 0.403406, 0.201376,
		-0.227006, 0.016189, 0.973759,
		42.869427, 32.335037, 33.778126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489334, 32.016354, 33.389137>,  <43.028328, 32.323708, 33.096493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489334, 32.016354, 33.389137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228329, 31.983541, 33.690468>,  <43.071724, 31.963854, 33.871265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228329, 31.983541, 33.690468>,  <43.489334, 32.016354, 33.389137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228329, 31.983541, 33.690468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365723, -0.904771, 0.218258,
		0.663681, 0.417924, 0.620376,
		-0.652513, -0.082032, 0.753324,
		43.032574, 31.958931, 33.916466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901733, 31.779196, 33.862556>,  <43.489334, 32.016354, 33.389137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901733, 31.779196, 33.862556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526367, 31.678720, 33.957451>,  <43.301147, 31.618435, 34.014385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526367, 31.678720, 33.957451>,  <43.901733, 31.779196, 33.862556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526367, 31.678720, 33.957451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302092, -0.929734, 0.210559,
		0.167674, 0.269258, 0.948360,
		-0.938417, -0.251186, 0.237232,
		43.244843, 31.603365, 34.028622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017696, 31.441769, 34.436600>,  <43.901733, 31.779196, 33.862556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017696, 31.441769, 34.436600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652958, 31.332510, 34.314007>,  <43.434116, 31.266954, 34.240452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652958, 31.332510, 34.314007>,  <44.017696, 31.441769, 34.436600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652958, 31.332510, 34.314007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159975, -0.923937, 0.347490,
		-0.378082, 0.267828, 0.886184,
		-0.911845, -0.273147, -0.306478,
		43.379406, 31.250566, 34.222065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725224, 31.011969, 34.952873>,  <44.017696, 31.441769, 34.436600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725224, 31.011969, 34.952873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511280, 30.920160, 34.627605>,  <43.382915, 30.865074, 34.432446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511280, 30.920160, 34.627605>,  <43.725224, 31.011969, 34.952873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511280, 30.920160, 34.627605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015401, -0.959590, 0.280980,
		-0.844801, 0.162808, 0.509710,
		-0.534859, -0.229522, -0.813170,
		43.350822, 30.851303, 34.383656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143166, 30.508461, 35.194759>,  <43.725224, 31.011969, 34.952873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143166, 30.508461, 35.194759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204948, 30.468071, 34.801628>,  <43.242020, 30.443836, 34.565750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204948, 30.468071, 34.801628>,  <43.143166, 30.508461, 35.194759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204948, 30.468071, 34.801628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021119, -0.994199, 0.105464,
		-0.987773, -0.037046, -0.151430,
		0.154459, -0.100977, -0.982826,
		43.251286, 30.437778, 34.506779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844143, 29.937235, 35.008427>,  <43.143166, 30.508461, 35.194759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844143, 29.937235, 35.008427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100716, 29.997320, 34.707493>,  <43.254658, 30.033371, 34.526932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100716, 29.997320, 34.707493>,  <42.844143, 29.937235, 35.008427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100716, 29.997320, 34.707493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206716, -0.978215, -0.019069,
		-0.738806, -0.143288, -0.658510,
		0.641432, 0.150213, -0.752331,
		43.293144, 30.042383, 34.481792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634579, 29.397463, 34.506653>,  <42.844143, 29.937235, 35.008427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634579, 29.397463, 34.506653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994495, 29.521194, 34.383568>,  <43.210445, 29.595434, 34.309715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994495, 29.521194, 34.383568>,  <42.634579, 29.397463, 34.506653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994495, 29.521194, 34.383568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275024, -0.949603, -0.150389,
		-0.338728, 0.050689, -0.939518,
		0.899792, 0.309331, -0.307716,
		43.264435, 29.613995, 34.291252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830025, 28.864510, 34.077663>,  <42.634579, 29.397463, 34.506653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830025, 28.864510, 34.077663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188686, 29.028149, 34.145370>,  <43.403885, 29.126331, 34.185993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188686, 29.028149, 34.145370>,  <42.830025, 28.864510, 34.077663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188686, 29.028149, 34.145370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424020, -0.903491, -0.062542,
		0.127343, 0.127851, -0.983584,
		0.896655, 0.409095, 0.169265,
		43.457684, 29.150877, 34.196152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230560, 28.658365, 33.559692>,  <42.830025, 28.864510, 34.077663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230560, 28.658365, 33.559692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490147, 28.748198, 33.850460>,  <43.645901, 28.802097, 34.024921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490147, 28.748198, 33.850460>,  <43.230560, 28.658365, 33.559692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490147, 28.748198, 33.850460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339987, -0.940340, -0.013014,
		0.680624, 0.255588, -0.686604,
		0.648968, 0.224579, 0.726915,
		43.684837, 28.815571, 34.068535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713943, 28.164255, 33.382095>,  <43.230560, 28.658365, 33.559692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713943, 28.164255, 33.382095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830376, 28.324869, 33.729439>,  <43.900234, 28.421238, 33.937843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830376, 28.324869, 33.729439>,  <43.713943, 28.164255, 33.382095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830376, 28.324869, 33.729439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668181, -0.734923, 0.115854,
		0.684695, 0.546496, -0.482219,
		0.291080, 0.401534, 0.868356,
		43.917698, 28.445330, 33.989944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486298, 28.113920, 33.373470>,  <43.713943, 28.164255, 33.382095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486298, 28.113920, 33.373470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328377, 28.121660, 33.740894>,  <44.233624, 28.126305, 33.961349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328377, 28.121660, 33.740894>,  <44.486298, 28.113920, 33.373470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328377, 28.121660, 33.740894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590760, -0.760358, 0.269924,
		0.703660, 0.649216, 0.288758,
		-0.394799, 0.019348, 0.918564,
		44.209938, 28.127464, 34.016464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038727, 28.182318, 33.901577>,  <44.486298, 28.113920, 33.373470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038727, 28.182318, 33.901577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726746, 28.041481, 34.108540>,  <44.539558, 27.956980, 34.232716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726746, 28.041481, 34.108540>,  <45.038727, 28.182318, 33.901577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726746, 28.041481, 34.108540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602162, -0.647445, 0.467135,
		0.170516, 0.675904, 0.716992,
		-0.779952, -0.352092, 0.517404,
		44.492760, 27.935854, 34.263760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224480, 28.096180, 34.656094>,  <45.038727, 28.182318, 33.901577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224480, 28.096180, 34.656094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922832, 27.837873, 34.608273>,  <44.741844, 27.682890, 34.579582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922832, 27.837873, 34.608273>,  <45.224480, 28.096180, 34.656094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922832, 27.837873, 34.608273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475138, -0.662142, 0.579493,
		-0.453374, 0.380205, 0.806161,
		-0.754119, -0.645765, -0.119548,
		44.696598, 27.644144, 34.572407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253815, 27.695459, 35.280693>,  <45.224480, 28.096180, 34.656094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253815, 27.695459, 35.280693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014584, 27.491274, 35.033554>,  <44.871044, 27.368763, 34.885269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014584, 27.491274, 35.033554>,  <45.253815, 27.695459, 35.280693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014584, 27.491274, 35.033554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271084, -0.854329, 0.443436,
		-0.754203, 0.097719, 0.649330,
		-0.598073, -0.510464, -0.617847,
		44.835163, 27.338135, 34.848202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727478, 27.330721, 35.702053>,  <45.253815, 27.695459, 35.280693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727478, 27.330721, 35.702053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734753, 27.136530, 35.352428>,  <44.739117, 27.020016, 35.142654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734753, 27.136530, 35.352428>,  <44.727478, 27.330721, 35.702053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734753, 27.136530, 35.352428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038920, -0.873885, 0.484572,
		-0.999077, 0.025205, -0.034790,
		0.018189, -0.485478, -0.874060,
		44.740208, 26.990887, 35.090210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371254, 26.833813, 35.816132>,  <44.727478, 27.330721, 35.702053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371254, 26.833813, 35.816132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570049, 26.704510, 35.494011>,  <44.689327, 26.626928, 35.300739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570049, 26.704510, 35.494011>,  <44.371254, 26.833813, 35.816132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570049, 26.704510, 35.494011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056795, -0.913917, 0.401908,
		-0.865893, -0.245483, -0.435852,
		0.496994, -0.323255, -0.805297,
		44.719147, 26.607533, 35.252422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102200, 26.223717, 35.628342>,  <44.371254, 26.833813, 35.816132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102200, 26.223717, 35.628342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461460, 26.228132, 35.452526>,  <44.677017, 26.230782, 35.347038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461460, 26.228132, 35.452526>,  <44.102200, 26.223717, 35.628342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461460, 26.228132, 35.452526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291199, -0.763934, 0.575855,
		-0.329422, -0.645201, -0.689346,
		0.898156, 0.011038, -0.439538,
		44.730907, 26.231443, 35.320663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409534, 25.542223, 35.422436>,  <44.102200, 26.223717, 35.628342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409534, 25.542223, 35.422436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734917, 25.765955, 35.486233>,  <44.930145, 25.900194, 35.524509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734917, 25.765955, 35.486233>,  <44.409534, 25.542223, 35.422436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734917, 25.765955, 35.486233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429091, -0.762237, 0.484639,
		0.392641, -0.325799, -0.860051,
		0.813458, 0.559329, 0.159489,
		44.978954, 25.933754, 35.534081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075687, 25.278233, 35.323864>,  <44.409534, 25.542223, 35.422436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075687, 25.278233, 35.323864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213921, 25.504749, 35.623169>,  <45.296860, 25.640659, 35.802750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213921, 25.504749, 35.623169>,  <45.075687, 25.278233, 35.323864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213921, 25.504749, 35.623169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405697, -0.809175, 0.425024,
		0.846159, 0.156686, -0.509377,
		0.345579, 0.566291, 0.748258,
		45.317593, 25.674637, 35.847645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323986, 25.232450, 34.567173>,  <45.075687, 25.278233, 35.323864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323986, 25.232450, 34.567173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239807, 25.428946, 34.229084>,  <45.189301, 25.546843, 34.026230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239807, 25.428946, 34.229084>,  <45.323986, 25.232450, 34.567173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239807, 25.428946, 34.229084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419959, -0.735316, -0.531925,
		-0.882805, -0.466902, -0.051552,
		-0.210450, 0.491236, -0.845221,
		45.176674, 25.576317, 33.975517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187298, 24.658096, 34.200649>,  <45.323986, 25.232450, 34.567173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187298, 24.658096, 34.200649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274570, 24.983288, 33.984699>,  <45.326935, 25.178404, 33.855129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274570, 24.983288, 33.984699>,  <45.187298, 24.658096, 34.200649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274570, 24.983288, 33.984699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716822, -0.508897, -0.476645,
		-0.662241, -0.282996, -0.693794,
		0.218181, 0.812980, -0.539871,
		45.340023, 25.227182, 33.822739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068985, 24.448082, 33.494545>,  <45.187298, 24.658096, 34.200649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068985, 24.448082, 33.494545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358425, 24.717329, 33.555626>,  <45.532089, 24.878878, 33.592278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358425, 24.717329, 33.555626>,  <45.068985, 24.448082, 33.494545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358425, 24.717329, 33.555626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683062, -0.666569, -0.298516,
		-0.099146, 0.320314, -0.942109,
		0.723599, 0.673115, 0.152707,
		45.575504, 24.919264, 33.601437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415565, 24.596579, 32.879242>,  <45.068985, 24.448082, 33.494545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415565, 24.596579, 32.879242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649502, 24.630938, 33.201878>,  <45.789864, 24.651552, 33.395458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649502, 24.630938, 33.201878>,  <45.415565, 24.596579, 32.879242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649502, 24.630938, 33.201878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672709, -0.606983, -0.423125,
		0.453240, 0.790059, -0.412771,
		0.584838, 0.085897, 0.806589,
		45.824955, 24.656706, 33.443855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163486, 24.522552, 32.586014>,  <45.415565, 24.596579, 32.879242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163486, 24.522552, 32.586014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163609, 24.446987, 32.978813>,  <46.163681, 24.401648, 33.214493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163609, 24.446987, 32.978813>,  <46.163486, 24.522552, 32.586014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163609, 24.446987, 32.978813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698218, -0.702954, -0.135451,
		0.715885, 0.685688, 0.131685,
		0.000309, -0.188912, 0.981994,
		46.163700, 24.390314, 33.273411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882519, 24.497829, 32.833694>,  <46.163486, 24.522552, 32.586014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882519, 24.497829, 32.833694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659023, 24.286610, 33.089500>,  <46.524925, 24.159878, 33.242985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659023, 24.286610, 33.089500>,  <46.882519, 24.497829, 32.833694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659023, 24.286610, 33.089500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776866, -0.603183, 0.180691,
		0.290330, 0.597775, 0.747244,
		-0.558737, -0.528049, 0.639513,
		46.491402, 24.128195, 33.281353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947750, 25.073673, 32.302261>,  <46.882519, 24.497829, 32.833694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947750, 25.073673, 32.302261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754421, 25.092974, 31.952618>,  <46.638424, 25.104555, 31.742830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754421, 25.092974, 31.952618>,  <46.947750, 25.073673, 32.302261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754421, 25.092974, 31.952618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111271, 0.986996, 0.116008,
		0.868344, 0.153333, -0.471665,
		-0.483319, 0.048252, -0.874114,
		46.609425, 25.107449, 31.690384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290344, 25.543383, 31.884321>,  <46.947750, 25.073673, 32.302261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290344, 25.543383, 31.884321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905319, 25.499189, 31.785307>,  <46.674305, 25.472673, 31.725899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905319, 25.499189, 31.785307>,  <47.290344, 25.543383, 31.884321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.905319, 25.499189, 31.785307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137996, 0.985705, 0.096654,
		0.233320, 0.127194, -0.964046,
		-0.962559, -0.110483, -0.247537,
		46.616550, 25.466043, 31.711046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239403, 25.991985, 31.212103>,  <47.290344, 25.543383, 31.884321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239403, 25.991985, 31.212103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889866, 25.938545, 31.399103>,  <46.680145, 25.906481, 31.511303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889866, 25.938545, 31.399103>,  <47.239403, 25.991985, 31.212103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889866, 25.938545, 31.399103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170910, 0.984550, -0.038095,
		-0.455187, -0.113189, -0.883172,
		-0.873839, -0.133602, 0.467500,
		46.627716, 25.898464, 31.539352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.885536, 26.508284, 30.876947>,  <47.239403, 25.991985, 31.212103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.885536, 26.508284, 30.876947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.663612, 26.432577, 31.201012>,  <46.530457, 26.387154, 31.395451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.663612, 26.432577, 31.201012>,  <46.885536, 26.508284, 30.876947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.663612, 26.432577, 31.201012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126377, 0.981652, 0.142786,
		-0.822322, -0.023166, -0.568550,
		-0.554811, -0.189268, 0.810162,
		46.497169, 26.375797, 31.444059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.368351, 27.067558, 30.872726>,  <46.885536, 26.508284, 30.876947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.368351, 27.067558, 30.872726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383766, 26.921291, 31.244705>,  <46.393013, 26.833530, 31.467892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383766, 26.921291, 31.244705>,  <46.368351, 27.067558, 30.872726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383766, 26.921291, 31.244705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207936, 0.907332, 0.365392,
		-0.977383, -0.207450, -0.041071,
		0.038535, -0.365668, 0.929947,
		46.395329, 26.811590, 31.523689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749825, 27.196798, 31.166555>,  <46.368351, 27.067558, 30.872726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749825, 27.196798, 31.166555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032558, 27.173454, 31.448544>,  <46.202198, 27.159449, 31.617737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032558, 27.173454, 31.448544>,  <45.749825, 27.196798, 31.166555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.032558, 27.173454, 31.448544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318076, 0.863937, 0.390436,
		-0.631835, -0.500206, 0.592096,
		0.706832, -0.058360, 0.704970,
		46.244610, 27.155947, 31.660034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.465179, 27.581141, 31.736120>,  <45.749825, 27.196798, 31.166555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.465179, 27.581141, 31.736120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846790, 27.526413, 31.842785>,  <46.075756, 27.493576, 31.906784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846790, 27.526413, 31.842785>,  <45.465179, 27.581141, 31.736120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846790, 27.526413, 31.842785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034591, 0.833514, 0.551414,
		-0.297710, -0.535289, 0.790464,
		0.954029, -0.136818, 0.266662,
		46.132999, 27.485367, 31.922783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482635, 28.002880, 32.359688>,  <45.465179, 27.581141, 31.736120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482635, 28.002880, 32.359688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870064, 27.920588, 32.303761>,  <46.102520, 27.871212, 32.270203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870064, 27.920588, 32.303761>,  <45.482635, 28.002880, 32.359688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870064, 27.920588, 32.303761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248736, 0.806731, 0.536019,
		0.002521, -0.553949, 0.832547,
		0.968568, -0.205733, -0.139821,
		46.160633, 27.858868, 32.261814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853828, 27.941275, 33.003410>,  <45.482635, 28.002880, 32.359688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853828, 27.941275, 33.003410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.098984, 28.064598, 32.712395>,  <46.246075, 28.138592, 32.537785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.098984, 28.064598, 32.712395>,  <45.853828, 27.941275, 33.003410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098984, 28.064598, 32.712395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109775, 0.878588, 0.464794,
		0.782510, -0.364731, 0.504628,
		0.612885, 0.308310, -0.727542,
		46.282848, 28.157091, 32.494133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474319, 28.177200, 33.334057>,  <45.853828, 27.941275, 33.003410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474319, 28.177200, 33.334057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477543, 28.364805, 32.980793>,  <46.479477, 28.477367, 32.768837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477543, 28.364805, 32.980793>,  <46.474319, 28.177200, 33.334057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477543, 28.364805, 32.980793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075380, 0.880386, 0.468227,
		0.997122, -0.070346, -0.028258,
		0.008060, 0.469010, -0.883156,
		46.479961, 28.505508, 32.715847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958408, 28.700178, 33.505318>,  <46.474319, 28.177200, 33.334057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958408, 28.700178, 33.505318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779282, 28.826782, 33.170826>,  <46.671806, 28.902744, 32.970131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779282, 28.826782, 33.170826>,  <46.958408, 28.700178, 33.505318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779282, 28.826782, 33.170826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024843, 0.930485, 0.365486,
		0.893780, 0.184446, -0.408825,
		-0.447817, 0.316508, -0.836231,
		46.644936, 28.921734, 32.919956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.251152, 29.379808, 33.301643>,  <46.958408, 28.700178, 33.505318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.251152, 29.379808, 33.301643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920803, 29.369349, 33.076344>,  <46.722595, 29.363071, 32.941162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920803, 29.369349, 33.076344>,  <47.251152, 29.379808, 33.301643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920803, 29.369349, 33.076344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109655, 0.987301, 0.114943,
		0.553092, 0.156692, -0.818252,
		-0.825872, -0.026151, -0.563251,
		46.673042, 29.361504, 32.907368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.269955, 29.963194, 32.760056>,  <47.251152, 29.379808, 33.301643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.269955, 29.963194, 32.760056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888885, 29.861580, 32.826847>,  <46.660244, 29.800611, 32.866924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888885, 29.861580, 32.826847>,  <47.269955, 29.963194, 32.760056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888885, 29.861580, 32.826847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270984, 0.958579, -0.087718,
		-0.137783, -0.128816, -0.982050,
		-0.952672, -0.254034, 0.166983,
		46.603085, 29.785370, 32.876942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.037163, 30.528648, 32.374935>,  <47.269955, 29.963194, 32.760056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.037163, 30.528648, 32.374935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.709606, 30.399015, 32.564411>,  <46.513073, 30.321236, 32.678097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.709606, 30.399015, 32.564411>,  <47.037163, 30.528648, 32.374935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.709606, 30.399015, 32.564411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284788, 0.945994, 0.154892,
		-0.498306, -0.008062, -0.866964,
		-0.818894, -0.324084, 0.473690,
		46.463940, 30.301790, 32.706520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.465313, 30.864790, 32.183620>,  <47.037163, 30.528648, 32.374935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.465313, 30.864790, 32.183620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326080, 30.744465, 32.538776>,  <46.242542, 30.672270, 32.751869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.326080, 30.744465, 32.538776>,  <46.465313, 30.864790, 32.183620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326080, 30.744465, 32.538776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391734, 0.907139, 0.153761,
		-0.851696, -0.294297, -0.433593,
		-0.348078, -0.300811, 0.887893,
		46.221657, 30.654222, 32.805145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918499, 31.205154, 32.143658>,  <46.465313, 30.864790, 32.183620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918499, 31.205154, 32.143658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968006, 31.137259, 32.534733>,  <45.997711, 31.096521, 32.769379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968006, 31.137259, 32.534733>,  <45.918499, 31.205154, 32.143658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968006, 31.137259, 32.534733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365381, 0.908243, 0.203938,
		-0.922594, -0.382468, 0.050387,
		0.123764, -0.169742, 0.977686,
		46.005135, 31.086336, 32.828037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264141, 31.338884, 32.515438>,  <45.918499, 31.205154, 32.143658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264141, 31.338884, 32.515438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502300, 31.340899, 32.836803>,  <45.645195, 31.342106, 33.029621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502300, 31.340899, 32.836803>,  <45.264141, 31.338884, 32.515438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502300, 31.340899, 32.836803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430686, 0.846164, 0.313873,
		-0.678240, -0.532899, 0.505974,
		0.595399, 0.005034, 0.803414,
		45.680920, 31.342409, 33.077827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787266, 31.490980, 33.080780>,  <45.264141, 31.338884, 32.515438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787266, 31.490980, 33.080780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141678, 31.588804, 33.238331>,  <45.354324, 31.647499, 33.332859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141678, 31.588804, 33.238331>,  <44.787266, 31.490980, 33.080780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141678, 31.588804, 33.238331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405021, 0.821741, 0.400874,
		-0.225625, -0.514714, 0.827141,
		0.886031, 0.244563, 0.393875,
		45.407486, 31.662172, 33.356495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688667, 31.676786, 33.847836>,  <44.787266, 31.490980, 33.080780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688667, 31.676786, 33.847836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024166, 31.859268, 33.728920>,  <45.225464, 31.968758, 33.657570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024166, 31.859268, 33.728920>,  <44.688667, 31.676786, 33.847836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024166, 31.859268, 33.728920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303459, 0.844935, 0.440453,
		0.452124, -0.279215, 0.847127,
		0.838748, 0.456207, -0.297285,
		45.275791, 31.996130, 33.639736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757496, 32.192204, 34.376328>,  <44.688667, 31.676786, 33.847836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757496, 32.192204, 34.376328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018982, 32.322277, 34.103001>,  <45.175873, 32.400322, 33.939007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018982, 32.322277, 34.103001>,  <44.757496, 32.192204, 34.376328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018982, 32.322277, 34.103001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409750, 0.911246, 0.041654,
		0.636212, 0.252757, 0.728937,
		0.653713, 0.325183, -0.683313,
		45.215096, 32.419830, 33.898006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038086, 32.795063, 34.675320>,  <44.757496, 32.192204, 34.376328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038086, 32.795063, 34.675320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075970, 32.811676, 34.277466>,  <45.098701, 32.821644, 34.038754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075970, 32.811676, 34.277466>,  <45.038086, 32.795063, 34.675320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075970, 32.811676, 34.277466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521616, 0.853065, -0.014048,
		0.847907, 0.520150, 0.102458,
		0.094710, 0.041532, -0.994638,
		45.104382, 32.824135, 33.979073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491776, 33.355843, 34.560917>,  <45.038086, 32.795063, 34.675320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491776, 33.355843, 34.560917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316216, 33.302055, 34.205547>,  <45.210880, 33.269783, 33.992325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316216, 33.302055, 34.205547>,  <45.491776, 33.355843, 34.560917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316216, 33.302055, 34.205547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402944, 0.913200, 0.060846,
		0.803123, 0.384688, -0.454981,
		-0.438896, -0.134465, -0.888420,
		45.184547, 33.261715, 33.939022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824165, 33.798523, 34.141354>,  <45.491776, 33.355843, 34.560917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824165, 33.798523, 34.141354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458527, 33.706348, 34.007893>,  <45.239143, 33.651043, 33.927814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458527, 33.706348, 34.007893>,  <45.824165, 33.798523, 34.141354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458527, 33.706348, 34.007893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322681, 0.911684, 0.254380,
		0.245566, 0.340191, -0.907727,
		-0.914097, -0.230439, -0.333652,
		45.184296, 33.637218, 33.907799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549263, 33.885914, 34.307018>,  <45.824165, 33.798523, 34.141354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549263, 33.885914, 34.307018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914902, 33.869255, 34.145676>,  <47.134285, 33.859261, 34.048870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914902, 33.869255, 34.145676>,  <46.549263, 33.885914, 34.307018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914902, 33.869255, 34.145676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203316, 0.813573, -0.544758,
		0.350850, 0.579969, 0.735214,
		0.914093, -0.041648, -0.403359,
		47.189129, 33.856762, 34.024670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764549, 34.561188, 34.379761>,  <46.549263, 33.885914, 34.307018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764549, 34.561188, 34.379761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914276, 34.350597, 34.074417>,  <47.004112, 34.224243, 33.891212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914276, 34.350597, 34.074417>,  <46.764549, 34.561188, 34.379761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914276, 34.350597, 34.074417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237127, 0.741489, -0.627666,
		0.896469, 0.415959, 0.152711,
		0.374317, -0.526472, -0.763357,
		47.026569, 34.192657, 33.845409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.236858, 35.062511, 34.029346>,  <46.764549, 34.561188, 34.379761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.236858, 35.062511, 34.029346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128338, 34.779530, 33.768303>,  <47.063225, 34.609741, 33.611675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128338, 34.779530, 33.768303>,  <47.236858, 35.062511, 34.029346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.128338, 34.779530, 33.768303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048956, 0.667022, -0.743428,
		0.961249, -0.233641, -0.146328,
		-0.271299, -0.707456, -0.652613,
		47.046947, 34.567291, 33.572517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.785351, 35.276863, 34.420395>,  <47.236858, 35.062511, 34.029346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.785351, 35.276863, 34.420395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646591, 34.974483, 34.642456>,  <47.563335, 34.793056, 34.775692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646591, 34.974483, 34.642456>,  <47.785351, 35.276863, 34.420395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.646591, 34.974483, 34.642456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696970, -0.188303, -0.691935,
		0.627607, -0.626958, -0.461555,
		-0.346903, -0.755954, 0.555151,
		47.542519, 34.747696, 34.809002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.135235, 36.543194, 45.644547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753742, 36.526329, 45.763615>,  <36.524845, 36.516209, 45.835056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753742, 36.526329, 45.763615>,  <37.135235, 36.543194, 45.644547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753742, 36.526329, 45.763615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287504, 0.417427, -0.862030,
		-0.087913, -0.907732, -0.410237,
		-0.953736, -0.042161, 0.297674,
		36.467621, 36.513680, 45.852917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773701, 36.148811, 45.150944>,  <37.135235, 36.543194, 45.644547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773701, 36.148811, 45.150944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467400, 36.349922, 45.311359>,  <36.283619, 36.470589, 45.407608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467400, 36.349922, 45.311359>,  <36.773701, 36.148811, 45.150944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467400, 36.349922, 45.311359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248116, 0.344343, -0.905465,
		-0.593345, -0.792868, -0.138934,
		-0.765755, 0.502781, 0.401037,
		36.237675, 36.500755, 45.431671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071201, 35.944733, 44.805035>,  <36.773701, 36.148811, 45.150944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071201, 35.944733, 44.805035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069286, 36.311211, 44.965313>,  <36.068138, 36.531097, 45.061481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069286, 36.311211, 44.965313>,  <36.071201, 35.944733, 44.805035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069286, 36.311211, 44.965313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286808, 0.382610, -0.878266,
		-0.957976, -0.119129, 0.260940,
		-0.004789, 0.916197, 0.400698,
		36.067848, 36.586071, 45.085522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519356, 36.205154, 44.469860>,  <36.071201, 35.944733, 44.805035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519356, 36.205154, 44.469860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727428, 36.509056, 44.625908>,  <35.852272, 36.691395, 44.719536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727428, 36.509056, 44.625908>,  <35.519356, 36.205154, 44.469860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727428, 36.509056, 44.625908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195035, 0.550386, -0.811811,
		-0.831488, 0.346203, 0.434479,
		0.520182, 0.759750, 0.390117,
		35.883484, 36.736980, 44.742943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205040, 36.743755, 44.175777>,  <35.519356, 36.205154, 44.469860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205040, 36.743755, 44.175777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553905, 36.894127, 44.300999>,  <35.763226, 36.984348, 44.376133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553905, 36.894127, 44.300999>,  <35.205040, 36.743755, 44.175777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553905, 36.894127, 44.300999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074831, 0.529870, -0.844771,
		-0.483449, 0.760208, 0.434005,
		0.872168, 0.375927, 0.313052,
		35.815556, 37.006905, 44.394913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168713, 37.421516, 43.952984>,  <35.205040, 36.743755, 44.175777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168713, 37.421516, 43.952984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554623, 37.334969, 44.012852>,  <35.786167, 37.283039, 44.048771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554623, 37.334969, 44.012852>,  <35.168713, 37.421516, 43.952984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554623, 37.334969, 44.012852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221160, 0.358866, -0.906809,
		0.142490, 0.907965, 0.394075,
		0.964772, -0.216365, 0.149671,
		35.844055, 37.270058, 44.057755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517384, 38.035011, 43.686504>,  <35.168713, 37.421516, 43.952984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517384, 38.035011, 43.686504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786095, 37.739986, 43.713974>,  <35.947319, 37.562969, 43.730457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786095, 37.739986, 43.713974>,  <35.517384, 38.035011, 43.686504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786095, 37.739986, 43.713974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342593, 0.227151, -0.911610,
		0.656770, 0.635926, 0.405279,
		0.671776, -0.737564, 0.068678,
		35.987629, 37.518719, 43.734577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167278, 38.310345, 43.394325>,  <35.517384, 38.035011, 43.686504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167278, 38.310345, 43.394325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208572, 37.912498, 43.390842>,  <36.233349, 37.673790, 43.388752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208572, 37.912498, 43.390842>,  <36.167278, 38.310345, 43.394325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208572, 37.912498, 43.390842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342198, 0.043732, -0.938610,
		0.933939, 0.093921, 0.344871,
		0.103237, -0.994619, -0.008703,
		36.239544, 37.614113, 43.388233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853252, 38.248409, 43.198460>,  <36.167278, 38.310345, 43.394325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853252, 38.248409, 43.198460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.662243, 37.910595, 43.101528>,  <36.547638, 37.707905, 43.043369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.662243, 37.910595, 43.101528>,  <36.853252, 38.248409, 43.198460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662243, 37.910595, 43.101528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396014, 0.039319, -0.917402,
		0.784309, -0.534050, 0.315673,
		-0.477527, -0.844538, -0.242330,
		36.518986, 37.657234, 43.028828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310070, 37.940304, 42.775974>,  <36.853252, 38.248409, 43.198460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310070, 37.940304, 42.775974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988419, 37.727413, 42.670055>,  <36.795429, 37.599678, 42.606503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988419, 37.727413, 42.670055>,  <37.310070, 37.940304, 42.775974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988419, 37.727413, 42.670055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305430, 0.012256, -0.952136,
		0.509993, -0.846516, 0.152701,
		-0.804127, -0.532222, -0.264802,
		36.747181, 37.567745, 42.590614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507339, 37.346233, 42.383709>,  <37.310070, 37.940304, 42.775974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507339, 37.346233, 42.383709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.122494, 37.382072, 42.280708>,  <36.891586, 37.403576, 42.218906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.122494, 37.382072, 42.280708>,  <37.507339, 37.346233, 42.383709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122494, 37.382072, 42.280708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252141, -0.066925, -0.965374,
		-0.103731, -0.993726, 0.041798,
		-0.962115, 0.089600, -0.257501,
		36.833858, 37.408951, 42.203457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382332, 36.786865, 41.985226>,  <37.507339, 37.346233, 42.383709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382332, 36.786865, 41.985226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093090, 37.037376, 41.868679>,  <36.919544, 37.187683, 41.798752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093090, 37.037376, 41.868679>,  <37.382332, 36.786865, 41.985226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093090, 37.037376, 41.868679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330196, -0.057092, -0.942184,
		-0.606703, -0.777507, -0.165511,
		-0.723105, 0.626278, -0.291368,
		36.876160, 37.225258, 41.781269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032063, 36.402264, 41.451542>,  <37.382332, 36.786865, 41.985226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032063, 36.402264, 41.451542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941483, 36.789566, 41.409206>,  <36.887135, 37.021946, 41.383804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941483, 36.789566, 41.409206>,  <37.032063, 36.402264, 41.451542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941483, 36.789566, 41.409206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253032, -0.046452, -0.966342,
		-0.940582, -0.245608, -0.234481,
		-0.226450, 0.968256, -0.105839,
		36.873547, 37.080044, 41.377457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734261, 36.470604, 40.811493>,  <37.032063, 36.402264, 41.451542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734261, 36.470604, 40.811493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836102, 36.850513, 40.884274>,  <36.897205, 37.078461, 40.927944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836102, 36.850513, 40.884274>,  <36.734261, 36.470604, 40.811493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836102, 36.850513, 40.884274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410921, 0.064070, -0.909417,
		-0.875397, 0.306312, -0.373969,
		0.254605, 0.949772, 0.181956,
		36.912483, 37.135445, 40.938862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416611, 36.857998, 40.301281>,  <36.734261, 36.470604, 40.811493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416611, 36.857998, 40.301281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723972, 37.078724, 40.430923>,  <36.908390, 37.211159, 40.508709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723972, 37.078724, 40.430923>,  <36.416611, 36.857998, 40.301281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723972, 37.078724, 40.430923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331904, 0.089381, -0.939069,
		-0.547166, 0.829160, -0.114470,
		0.768407, 0.551820, 0.324107,
		36.954494, 37.244270, 40.528156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502796, 37.524803, 39.837337>,  <36.416611, 36.857998, 40.301281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502796, 37.524803, 39.837337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852905, 37.528091, 40.030762>,  <37.062969, 37.530064, 40.146816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852905, 37.528091, 40.030762>,  <36.502796, 37.524803, 39.837337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852905, 37.528091, 40.030762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473279, 0.191239, -0.859904,
		-0.099545, 0.981509, 0.163495,
		0.875270, 0.008221, 0.483564,
		37.115486, 37.530556, 40.175831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882179, 38.189636, 39.718815>,  <36.502796, 37.524803, 39.837337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882179, 38.189636, 39.718815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151810, 37.904163, 39.794998>,  <37.313587, 37.732880, 39.840710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151810, 37.904163, 39.794998>,  <36.882179, 38.189636, 39.718815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151810, 37.904163, 39.794998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477693, 0.224524, -0.849352,
		0.563405, 0.663511, 0.492268,
		0.674080, -0.713682, 0.190457,
		37.354034, 37.690060, 39.852135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437038, 38.517334, 39.628197>,  <36.882179, 38.189636, 39.718815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437038, 38.517334, 39.628197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565071, 38.139118, 39.604553>,  <37.641891, 37.912189, 39.590366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565071, 38.139118, 39.604553>,  <37.437038, 38.517334, 39.628197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565071, 38.139118, 39.604553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540329, 0.233447, -0.808423,
		0.778197, 0.226827, 0.585627,
		0.320085, -0.945543, -0.059106,
		37.661095, 37.855453, 39.586823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150726, 38.567844, 39.497742>,  <37.437038, 38.517334, 39.628197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150726, 38.567844, 39.497742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038593, 38.202198, 39.380569>,  <37.971313, 37.982811, 39.310265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038593, 38.202198, 39.380569>,  <38.150726, 38.567844, 39.497742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038593, 38.202198, 39.380569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656807, 0.039879, -0.753003,
		0.700011, -0.403496, 0.589216,
		-0.280336, -0.914112, -0.292934,
		37.954491, 37.927963, 39.292690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791782, 38.228516, 39.320324>,  <38.150726, 38.567844, 39.497742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791782, 38.228516, 39.320324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512115, 38.021019, 39.123520>,  <38.344315, 37.896523, 39.005436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512115, 38.021019, 39.123520>,  <38.791782, 38.228516, 39.320324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512115, 38.021019, 39.123520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650818, -0.176893, -0.738339,
		0.295974, -0.836431, 0.461284,
		-0.699167, -0.518741, -0.492009,
		38.302364, 37.865398, 38.975918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139744, 37.733025, 39.090710>,  <38.791782, 38.228516, 39.320324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139744, 37.733025, 39.090710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819389, 37.710663, 38.852226>,  <38.627178, 37.697247, 38.709137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819389, 37.710663, 38.852226>,  <39.139744, 37.733025, 39.090710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819389, 37.710663, 38.852226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592364, -0.219765, -0.775118,
		-0.087695, -0.973950, 0.209119,
		-0.800883, -0.055901, -0.596206,
		38.579124, 37.693893, 38.673363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247295, 37.076035, 38.588715>,  <39.139744, 37.733025, 39.090710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247295, 37.076035, 38.588715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002789, 37.335003, 38.406639>,  <38.856083, 37.490383, 38.297394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002789, 37.335003, 38.406639>,  <39.247295, 37.076035, 38.588715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002789, 37.335003, 38.406639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546023, -0.071349, -0.834726,
		-0.572895, -0.758787, -0.309892,
		-0.611269, 0.647419, -0.455191,
		38.819408, 37.529228, 38.270081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031975, 36.514294, 39.054325>,  <39.247295, 37.076035, 38.588715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031975, 36.514294, 39.054325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351952, 36.322422, 38.910103>,  <39.543938, 36.207298, 38.823570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351952, 36.322422, 38.910103>,  <39.031975, 36.514294, 39.054325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351952, 36.322422, 38.910103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129482, -0.724669, 0.676822,
		-0.585939, -0.494735, -0.641805,
		0.799943, -0.479679, -0.360553,
		39.591934, 36.178516, 38.801937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759537, 35.751083, 39.054234>,  <39.031975, 36.514294, 39.054325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759537, 35.751083, 39.054234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152721, 35.743599, 38.981091>,  <39.388634, 35.739109, 38.937206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152721, 35.743599, 38.981091>,  <38.759537, 35.751083, 39.054234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152721, 35.743599, 38.981091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079562, -0.853481, 0.515015,
		-0.165698, -0.520789, -0.837451,
		0.982962, -0.018708, -0.182855,
		39.447609, 35.737988, 38.926235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910454, 35.213993, 38.644249>,  <38.759537, 35.751083, 39.054234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910454, 35.213993, 38.644249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245457, 35.313858, 38.838673>,  <39.446457, 35.373775, 38.955326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245457, 35.313858, 38.838673>,  <38.910454, 35.213993, 38.644249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245457, 35.313858, 38.838673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000931, -0.890170, 0.455627,
		0.546427, -0.381138, -0.745756,
		0.837506, 0.249661, 0.486058,
		39.496708, 35.388756, 38.984489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291378, 34.560989, 38.740852>,  <38.910454, 35.213993, 38.644249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291378, 34.560989, 38.740852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.461365, 34.820774, 38.993076>,  <39.563354, 34.976646, 39.144409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.461365, 34.820774, 38.993076>,  <39.291378, 34.560989, 38.740852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461365, 34.820774, 38.993076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165217, -0.740534, 0.651392,
		0.890005, -0.172640, -0.422003,
		0.424964, 0.649464, 0.630556,
		39.588856, 35.015614, 39.182243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933262, 34.212154, 39.070393>,  <39.291378, 34.560989, 38.740852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933262, 34.212154, 39.070393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.819405, 34.510944, 39.310726>,  <39.751091, 34.690220, 39.454926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.819405, 34.510944, 39.310726>,  <39.933262, 34.212154, 39.070393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819405, 34.510944, 39.310726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075484, -0.642279, 0.762745,
		0.955657, 0.171757, 0.239206,
		-0.284644, 0.746979, 0.600834,
		39.734013, 34.735039, 39.490974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025543, 33.997993, 39.752167>,  <39.933262, 34.212154, 39.070393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025543, 33.997993, 39.752167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784115, 34.301346, 39.850597>,  <39.639259, 34.483356, 39.909657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784115, 34.301346, 39.850597>,  <40.025543, 33.997993, 39.752167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784115, 34.301346, 39.850597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020398, -0.323219, 0.946104,
		0.797048, 0.566022, 0.210556,
		-0.603572, 0.758385, 0.246075,
		39.603043, 34.528862, 39.924419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224968, 34.227539, 40.412731>,  <40.025543, 33.997993, 39.752167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224968, 34.227539, 40.412731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851727, 34.369953, 40.392506>,  <39.627781, 34.455402, 40.380371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851727, 34.369953, 40.392506>,  <40.224968, 34.227539, 40.412731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851727, 34.369953, 40.392506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196443, -0.386880, 0.900963,
		0.301215, 0.850623, 0.430940,
		-0.933102, 0.356039, -0.050565,
		39.571796, 34.476765, 40.377335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153149, 34.759258, 40.945625>,  <40.224968, 34.227539, 40.412731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153149, 34.759258, 40.945625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.798889, 34.595764, 40.857487>,  <39.586334, 34.497665, 40.804604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.798889, 34.595764, 40.857487>,  <40.153149, 34.759258, 40.945625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798889, 34.595764, 40.857487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135457, -0.226464, 0.964555,
		-0.444151, 0.884108, 0.145202,
		-0.885653, -0.408739, -0.220343,
		39.533192, 34.473141, 40.791386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771130, 34.977570, 41.560341>,  <40.153149, 34.759258, 40.945625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771130, 34.977570, 41.560341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540977, 34.695351, 41.394863>,  <39.402885, 34.526020, 41.295578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540977, 34.695351, 41.394863>,  <39.771130, 34.977570, 41.560341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540977, 34.695351, 41.394863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265289, -0.317466, 0.910405,
		-0.773665, 0.633579, -0.004509,
		-0.575382, -0.705544, -0.413694,
		39.368362, 34.483688, 41.270756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034538, 35.020550, 41.835155>,  <39.771130, 34.977570, 41.560341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034538, 35.020550, 41.835155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091682, 34.652203, 41.690056>,  <39.125969, 34.431194, 41.602997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091682, 34.652203, 41.690056>,  <39.034538, 35.020550, 41.835155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091682, 34.652203, 41.690056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462745, -0.386131, 0.797979,
		-0.874904, 0.053861, -0.481291,
		0.142861, -0.920870, -0.362751,
		39.134541, 34.375942, 41.581230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429764, 34.557625, 41.981907>,  <39.034538, 35.020550, 41.835155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429764, 34.557625, 41.981907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715721, 34.287212, 41.910458>,  <38.887295, 34.124966, 41.867588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715721, 34.287212, 41.910458>,  <38.429764, 34.557625, 41.981907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715721, 34.287212, 41.910458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344889, -0.563142, 0.750948,
		-0.608258, -0.475241, -0.635742,
		0.714895, -0.676030, -0.178630,
		38.930191, 34.084404, 41.856869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189308, 33.883251, 42.269173>,  <38.429764, 34.557625, 41.981907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189308, 33.883251, 42.269173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580608, 33.805080, 42.241375>,  <38.815388, 33.758179, 42.224697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580608, 33.805080, 42.241375>,  <38.189308, 33.883251, 42.269173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580608, 33.805080, 42.241375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044939, -0.526800, 0.848800,
		-0.202487, -0.827219, -0.524126,
		0.978253, -0.195425, -0.069496,
		38.874084, 33.746452, 42.220528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234753, 33.163307, 42.221981>,  <38.189308, 33.883251, 42.269173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234753, 33.163307, 42.221981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583340, 33.309849, 42.352417>,  <38.792492, 33.397774, 42.430679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583340, 33.309849, 42.352417>,  <38.234753, 33.163307, 42.221981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583340, 33.309849, 42.352417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139678, -0.451950, 0.881040,
		0.470146, -0.813343, -0.342687,
		0.871465, 0.366352, 0.326089,
		38.844780, 33.419754, 42.450245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516479, 32.682617, 42.714970>,  <38.234753, 33.163307, 42.221981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516479, 32.682617, 42.714970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746681, 32.983959, 42.842247>,  <38.884804, 33.164764, 42.918613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746681, 32.983959, 42.842247>,  <38.516479, 32.682617, 42.714970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746681, 32.983959, 42.842247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095336, -0.324630, 0.941024,
		0.812223, -0.571898, -0.115003,
		0.575503, 0.753358, 0.318195,
		38.919331, 33.209965, 42.937706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888897, 32.401867, 43.403030>,  <38.516479, 32.682617, 42.714970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888897, 32.401867, 43.403030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954628, 32.796066, 43.386135>,  <38.994068, 33.032585, 43.375999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954628, 32.796066, 43.386135>,  <38.888897, 32.401867, 43.403030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954628, 32.796066, 43.386135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092801, 0.058075, 0.993990,
		0.982030, -0.159422, 0.100999,
		0.164330, 0.985501, -0.042237,
		39.003925, 33.091717, 43.373463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256954, 32.495285, 44.084076>,  <38.888897, 32.401867, 43.403030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256954, 32.495285, 44.084076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087616, 32.841812, 43.978043>,  <38.986015, 33.049728, 43.914421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087616, 32.841812, 43.978043>,  <39.256954, 32.495285, 44.084076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087616, 32.841812, 43.978043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152524, 0.220271, 0.963440,
		0.893039, 0.448296, 0.038885,
		-0.423341, 0.866321, -0.265087,
		38.960613, 33.101707, 43.898518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473282, 32.920723, 44.655994>,  <39.256954, 32.495285, 44.084076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473282, 32.920723, 44.655994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160358, 33.092400, 44.475422>,  <38.972603, 33.195404, 44.367077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160358, 33.092400, 44.475422>,  <39.473282, 32.920723, 44.655994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160358, 33.092400, 44.475422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253959, 0.441996, 0.860316,
		0.568770, 0.787677, -0.236780,
		-0.782307, 0.429190, -0.451432,
		38.925667, 33.221157, 44.339993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507961, 33.690731, 44.771118>,  <39.473282, 32.920723, 44.655994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507961, 33.690731, 44.771118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143452, 33.541069, 44.702316>,  <38.924744, 33.451271, 44.661034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143452, 33.541069, 44.702316>,  <39.507961, 33.690731, 44.771118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143452, 33.541069, 44.702316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333690, 0.426178, 0.840847,
		-0.241298, 0.823641, -0.513217,
		-0.911277, -0.374150, -0.172005,
		38.870068, 33.428825, 44.650715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.031483, 34.282272, 45.053230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796482, 33.959694, 45.026440>,  <38.655483, 33.766148, 45.010365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796482, 33.959694, 45.026440>,  <39.031483, 34.282272, 45.053230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796482, 33.959694, 45.026440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421574, 0.234362, 0.875985,
		-0.690738, 0.542879, -0.477665,
		-0.587500, -0.806447, -0.066981,
		38.620232, 33.717758, 45.006344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433033, 34.602577, 45.110676>,  <39.031483, 34.282272, 45.053230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433033, 34.602577, 45.110676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375534, 34.221050, 45.216187>,  <38.341034, 33.992134, 45.279491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375534, 34.221050, 45.216187>,  <38.433033, 34.602577, 45.110676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375534, 34.221050, 45.216187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497170, 0.300066, 0.814115,
		-0.855663, -0.014117, -0.517340,
		-0.143743, -0.953814, 0.263774,
		38.332413, 33.934906, 45.295319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781528, 34.583572, 45.394917>,  <38.433033, 34.602577, 45.110676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781528, 34.583572, 45.394917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949459, 34.241322, 45.516006>,  <38.050217, 34.035969, 45.588661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949459, 34.241322, 45.516006>,  <37.781528, 34.583572, 45.394917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949459, 34.241322, 45.516006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537136, 0.034631, 0.842785,
		-0.731596, -0.516426, -0.445051,
		0.419824, -0.855631, 0.302727,
		38.075405, 33.984631, 45.606823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214951, 34.191711, 45.608959>,  <37.781528, 34.583572, 45.394917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214951, 34.191711, 45.608959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553783, 34.079807, 45.789711>,  <37.757084, 34.012665, 45.898163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553783, 34.079807, 45.789711>,  <37.214951, 34.191711, 45.608959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553783, 34.079807, 45.789711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436838, 0.117766, 0.891798,
		-0.302706, -0.952819, -0.022453,
		0.847078, -0.279761, 0.451876,
		37.807907, 33.995880, 45.925274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026291, 33.772087, 46.133068>,  <37.214951, 34.191711, 45.608959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026291, 33.772087, 46.133068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404900, 33.846439, 46.238560>,  <37.632065, 33.891048, 46.301857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404900, 33.846439, 46.238560>,  <37.026291, 33.772087, 46.133068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404900, 33.846439, 46.238560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273611, 0.029198, 0.961397,
		0.171002, -0.982139, 0.078495,
		0.946517, 0.185878, 0.263731,
		37.688854, 33.902203, 46.317680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103340, 33.442051, 46.741814>,  <37.026291, 33.772087, 46.133068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103340, 33.442051, 46.741814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.417259, 33.689018, 46.763287>,  <37.605610, 33.837200, 46.776169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.417259, 33.689018, 46.763287>,  <37.103340, 33.442051, 46.741814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417259, 33.689018, 46.763287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028246, -0.050891, 0.998305,
		0.619108, -0.784983, -0.022499,
		0.784797, 0.617423, 0.053679,
		37.652699, 33.874245, 46.779388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619720, 33.107914, 47.124424>,  <37.103340, 33.442051, 46.741814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619720, 33.107914, 47.124424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686134, 33.501957, 47.142303>,  <37.725983, 33.738384, 47.153030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686134, 33.501957, 47.142303>,  <37.619720, 33.107914, 47.124424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686134, 33.501957, 47.142303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053426, -0.036275, 0.997913,
		0.984672, -0.168072, 0.046608,
		0.166030, 0.985107, 0.044699,
		37.735943, 33.797489, 47.155712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108551, 33.154903, 47.578888>,  <37.619720, 33.107914, 47.124424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108551, 33.154903, 47.578888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970337, 33.530254, 47.581718>,  <37.887409, 33.755466, 47.583416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970337, 33.530254, 47.581718>,  <38.108551, 33.154903, 47.578888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970337, 33.530254, 47.581718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083052, 0.023070, 0.996278,
		0.934724, 0.344835, -0.085906,
		-0.345534, 0.938380, 0.007076,
		37.866676, 33.811768, 47.583839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604404, 33.597130, 47.954510>,  <38.108551, 33.154903, 47.578888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604404, 33.597130, 47.954510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241997, 33.766167, 47.963799>,  <38.024551, 33.867588, 47.969372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241997, 33.766167, 47.963799>,  <38.604404, 33.597130, 47.954510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241997, 33.766167, 47.963799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048844, 0.049906, 0.997559,
		0.420405, 0.904944, -0.065857,
		-0.906021, 0.422595, 0.023220,
		37.970192, 33.892944, 47.970764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666992, 34.170284, 48.351383>,  <38.604404, 33.597130, 47.954510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666992, 34.170284, 48.351383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275528, 34.088230, 48.356102>,  <38.040649, 34.038998, 48.358932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275528, 34.088230, 48.356102>,  <38.666992, 34.170284, 48.351383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275528, 34.088230, 48.356102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003571, 0.040413, 0.999177,
		-0.205443, 0.977899, -0.038819,
		-0.978663, -0.205136, 0.011794,
		37.981930, 34.026688, 48.359642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494057, 34.568653, 48.936108>,  <38.666992, 34.170284, 48.351383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494057, 34.568653, 48.936108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221962, 34.282932, 48.870327>,  <38.058704, 34.111500, 48.830856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221962, 34.282932, 48.870327>,  <38.494057, 34.568653, 48.936108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221962, 34.282932, 48.870327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093881, -0.137612, 0.986027,
		-0.726956, 0.686171, 0.026549,
		-0.680236, -0.714306, -0.164456,
		38.017891, 34.068642, 48.820992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936676, 34.724571, 49.522152>,  <38.494057, 34.568653, 48.936108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936676, 34.724571, 49.522152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915043, 34.346504, 49.393322>,  <37.902061, 34.119663, 49.316025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915043, 34.346504, 49.393322>,  <37.936676, 34.724571, 49.522152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915043, 34.346504, 49.393322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050844, -0.319520, 0.946214,
		-0.997241, 0.067551, -0.030775,
		-0.054085, -0.945169, -0.322073,
		37.898819, 34.062954, 49.296700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519573, 34.455280, 49.900230>,  <37.936676, 34.724571, 49.522152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519573, 34.455280, 49.900230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698631, 34.129421, 49.752739>,  <37.806065, 33.933907, 49.664242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698631, 34.129421, 49.752739>,  <37.519573, 34.455280, 49.900230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698631, 34.129421, 49.752739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290458, -0.522462, 0.801666,
		-0.845723, -0.251760, -0.470498,
		0.447645, -0.814647, -0.368732,
		37.832924, 33.885029, 49.642120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032803, 33.964859, 49.958954>,  <37.519573, 34.455280, 49.900230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032803, 33.964859, 49.958954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381222, 33.770412, 49.930767>,  <37.590271, 33.653744, 49.913857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381222, 33.770412, 49.930767>,  <37.032803, 33.964859, 49.958954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381222, 33.770412, 49.930767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216497, -0.508717, 0.833268,
		-0.440915, -0.710560, -0.548360,
		0.871047, -0.486119, -0.070467,
		37.642536, 33.624577, 49.909626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897087, 33.322636, 50.286922>,  <37.032803, 33.964859, 49.958954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897087, 33.322636, 50.286922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296722, 33.307850, 50.295395>,  <37.536503, 33.298981, 50.300480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296722, 33.307850, 50.295395>,  <36.897087, 33.322636, 50.286922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296722, 33.307850, 50.295395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040118, -0.648905, 0.759811,
		-0.014336, -0.759971, -0.649799,
		0.999092, -0.036962, 0.021185,
		37.596451, 33.296761, 50.301750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969250, 32.701656, 50.379555>,  <36.897087, 33.322636, 50.286922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969250, 32.701656, 50.379555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307858, 32.872028, 50.507298>,  <37.511021, 32.974251, 50.583942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307858, 32.872028, 50.507298>,  <36.969250, 32.701656, 50.379555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307858, 32.872028, 50.507298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091561, -0.474466, 0.875499,
		0.524425, -0.770368, -0.362647,
		0.846520, 0.425929, 0.319358,
		37.561813, 32.999805, 50.603104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250656, 32.193314, 50.714539>,  <36.969250, 32.701656, 50.379555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250656, 32.193314, 50.714539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432903, 32.523777, 50.847126>,  <37.542252, 32.722057, 50.926678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432903, 32.523777, 50.847126>,  <37.250656, 32.193314, 50.714539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432903, 32.523777, 50.847126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128941, -0.307191, 0.942872,
		0.880790, -0.472326, -0.033434,
		0.455613, 0.826161, 0.331472,
		37.569588, 32.771626, 50.946568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689663, 31.949711, 51.251335>,  <37.250656, 32.193314, 50.714539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689663, 31.949711, 51.251335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596813, 32.336994, 51.288635>,  <37.541103, 32.569363, 51.311016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596813, 32.336994, 51.288635>,  <37.689663, 31.949711, 51.251335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596813, 32.336994, 51.288635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208153, -0.143089, 0.967573,
		0.950153, 0.205187, 0.234750,
		-0.232123, 0.968207, 0.093246,
		37.527176, 32.627457, 51.316608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022633, 32.132824, 51.830265>,  <37.689663, 31.949711, 51.251335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022633, 32.132824, 51.830265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758713, 32.430454, 51.788273>,  <37.600361, 32.609032, 51.763077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758713, 32.430454, 51.788273>,  <38.022633, 32.132824, 51.830265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758713, 32.430454, 51.788273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339339, -0.170377, 0.925106,
		0.670460, 0.646008, 0.364908,
		-0.659797, 0.744073, -0.104985,
		37.560772, 32.653675, 51.756779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975174, 32.528736, 52.532047>,  <38.022633, 32.132824, 51.830265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975174, 32.528736, 52.532047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633602, 32.613232, 52.341816>,  <37.428658, 32.663929, 52.227676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633602, 32.613232, 52.341816>,  <37.975174, 32.528736, 52.532047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633602, 32.613232, 52.341816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509951, -0.157597, 0.845644,
		0.103680, 0.964646, 0.242297,
		-0.853932, 0.211236, -0.475582,
		37.377422, 32.676601, 52.199142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600555, 32.856136, 53.016685>,  <37.975174, 32.528736, 52.532047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600555, 32.856136, 53.016685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338982, 32.750763, 52.733006>,  <37.182037, 32.687538, 52.562798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338982, 32.750763, 52.733006>,  <37.600555, 32.856136, 53.016685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338982, 32.750763, 52.733006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675758, -0.218110, 0.704116,
		-0.340170, 0.939698, -0.035385,
		-0.653938, -0.263431, -0.709203,
		37.142799, 32.671734, 52.520245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926628, 33.168705, 53.229691>,  <37.600555, 32.856136, 53.016685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926628, 33.168705, 53.229691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880836, 32.847515, 52.995728>,  <36.853359, 32.654800, 52.855347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880836, 32.847515, 52.995728>,  <36.926628, 33.168705, 53.229691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880836, 32.847515, 52.995728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570065, -0.429094, 0.700645,
		-0.813584, 0.413651, -0.408625,
		-0.114484, -0.802976, -0.584912,
		36.846493, 32.606621, 52.820255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256824, 32.960823, 53.143757>,  <36.926628, 33.168705, 53.229691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256824, 32.960823, 53.143757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467747, 32.622677, 53.109589>,  <36.594299, 32.419788, 53.089088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467747, 32.622677, 53.109589>,  <36.256824, 32.960823, 53.143757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467747, 32.622677, 53.109589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573358, -0.428214, 0.698494,
		-0.627062, -0.319347, -0.710500,
		0.527308, -0.845370, -0.085417,
		36.625938, 32.369064, 53.083965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727951, 32.535809, 53.042416>,  <36.256824, 32.960823, 53.143757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727951, 32.535809, 53.042416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.975975, 32.287025, 53.233700>,  <36.124790, 32.137756, 53.348473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.975975, 32.287025, 53.233700>,  <35.727951, 32.535809, 53.042416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975975, 32.287025, 53.233700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712651, -0.191598, 0.674847,
		-0.328102, -0.759248, -0.562043,
		0.620062, -0.621959, 0.478215,
		36.161995, 32.100437, 53.377163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197075, 33.225353, 53.062489>,  <35.727951, 32.535809, 53.042416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197075, 33.225353, 53.062489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845837, 33.416725, 53.065079>,  <34.635094, 33.531548, 53.066631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845837, 33.416725, 53.065079>,  <35.197075, 33.225353, 53.062489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845837, 33.416725, 53.065079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116422, 0.226757, -0.966968,
		-0.464097, -0.848342, -0.254815,
		-0.878100, 0.478433, 0.006471,
		34.582405, 33.560257, 53.067020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916382, 33.074234, 52.487976>,  <35.197075, 33.225353, 53.062489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916382, 33.074234, 52.487976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695370, 33.394810, 52.579552>,  <34.562763, 33.587154, 52.634499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695370, 33.394810, 52.579552>,  <34.916382, 33.074234, 52.487976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695370, 33.394810, 52.579552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034796, 0.296617, -0.954363,
		-0.832768, -0.519346, -0.191776,
		-0.552528, 0.801435, 0.228942,
		34.529610, 33.635239, 52.648235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562405, 33.145958, 51.907043>,  <34.916382, 33.074234, 52.487976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562405, 33.145958, 51.907043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508251, 33.505291, 52.074219>,  <34.475758, 33.720890, 52.174526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508251, 33.505291, 52.074219>,  <34.562405, 33.145958, 51.907043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508251, 33.505291, 52.074219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098834, 0.431967, -0.896458,
		-0.985851, -0.080060, -0.147267,
		-0.135385, 0.898329, 0.417942,
		34.467636, 33.774788, 52.199600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080254, 33.402431, 51.507877>,  <34.562405, 33.145958, 51.907043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080254, 33.402431, 51.507877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271606, 33.717434, 51.663303>,  <34.386417, 33.906437, 51.756557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271606, 33.717434, 51.663303>,  <34.080254, 33.402431, 51.507877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271606, 33.717434, 51.663303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059142, 0.412579, -0.909000,
		-0.876156, 0.457832, 0.150797,
		0.478385, 0.787507, 0.388561,
		34.415123, 33.953686, 51.779873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906651, 34.017693, 51.096405>,  <34.080254, 33.402431, 51.507877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906651, 34.017693, 51.096405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.218151, 34.156055, 51.305744>,  <34.405052, 34.239071, 51.431347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.218151, 34.156055, 51.305744>,  <33.906651, 34.017693, 51.096405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218151, 34.156055, 51.305744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326128, 0.489428, -0.808765,
		-0.535897, 0.800507, 0.268334,
		0.778752, 0.345903, 0.523351,
		34.451778, 34.259827, 51.462749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945187, 34.795456, 50.967350>,  <33.906651, 34.017693, 51.096405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945187, 34.795456, 50.967350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316803, 34.666477, 51.039917>,  <34.539772, 34.589092, 51.083458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316803, 34.666477, 51.039917>,  <33.945187, 34.795456, 50.967350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316803, 34.666477, 51.039917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334732, 0.523672, -0.783404,
		0.157601, 0.788541, 0.594445,
		0.929041, -0.322445, 0.181419,
		34.595516, 34.569744, 51.094341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361546, 35.440083, 50.847317>,  <33.945187, 34.795456, 50.967350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361546, 35.440083, 50.847317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.574867, 35.102188, 50.829403>,  <34.702858, 34.899452, 50.818653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.574867, 35.102188, 50.829403>,  <34.361546, 35.440083, 50.847317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574867, 35.102188, 50.829403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504592, 0.360159, -0.784648,
		0.678953, 0.395855, 0.618322,
		0.533301, -0.844739, -0.044785,
		34.734856, 34.848766, 50.815968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069077, 35.571751, 50.790821>,  <34.361546, 35.440083, 50.847317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069077, 35.571751, 50.790821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034489, 35.199081, 50.649681>,  <35.013737, 34.975479, 50.564999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034489, 35.199081, 50.649681>,  <35.069077, 35.571751, 50.790821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034489, 35.199081, 50.649681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593811, 0.236185, -0.769159,
		0.799945, -0.276033, 0.532817,
		-0.086470, -0.931677, -0.352846,
		35.008549, 34.919579, 50.543827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738972, 35.555885, 50.404789>,  <35.069077, 35.571751, 50.790821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738972, 35.555885, 50.404789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526920, 35.234093, 50.297626>,  <35.399689, 35.041019, 50.233330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526920, 35.234093, 50.297626>,  <35.738972, 35.555885, 50.404789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526920, 35.234093, 50.297626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323271, 0.100337, -0.940972,
		0.783872, -0.585448, 0.206873,
		-0.530133, -0.804477, -0.267910,
		35.367882, 34.992748, 50.217255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199867, 35.209133, 50.020672>,  <35.738972, 35.555885, 50.404789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199867, 35.209133, 50.020672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829655, 35.091709, 49.924988>,  <35.607529, 35.021255, 49.867577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829655, 35.091709, 49.924988>,  <36.199867, 35.209133, 50.020672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829655, 35.091709, 49.924988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191639, 0.181733, -0.964493,
		0.326608, -0.938507, -0.111942,
		-0.925528, -0.293559, -0.239210,
		35.551994, 35.003643, 49.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317657, 34.773525, 49.482620>,  <36.199867, 35.209133, 50.020672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317657, 34.773525, 49.482620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930885, 34.868069, 49.444290>,  <35.698822, 34.924793, 49.421291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930885, 34.868069, 49.444290>,  <36.317657, 34.773525, 49.482620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930885, 34.868069, 49.444290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108293, 0.040315, -0.993301,
		-0.230908, -0.970830, -0.064577,
		-0.966930, 0.236355, -0.095825,
		35.640808, 34.938976, 49.415543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145042, 34.396187, 48.930050>,  <36.317657, 34.773525, 49.482620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145042, 34.396187, 48.930050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870373, 34.685764, 48.956509>,  <35.705570, 34.859512, 48.972385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870373, 34.685764, 48.956509>,  <36.145042, 34.396187, 48.930050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870373, 34.685764, 48.956509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130524, 0.212296, -0.968449,
		-0.715151, -0.656375, -0.240271,
		-0.686675, 0.723948, 0.066151,
		35.664371, 34.902950, 48.976353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718681, 34.351246, 48.312897>,  <36.145042, 34.396187, 48.930050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718681, 34.351246, 48.312897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677280, 34.723846, 48.452374>,  <35.652439, 34.947407, 48.536060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677280, 34.723846, 48.452374>,  <35.718681, 34.351246, 48.312897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677280, 34.723846, 48.452374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099302, 0.358500, -0.928233,
		-0.989660, -0.061445, -0.129605,
		-0.103499, 0.931505, 0.348691,
		35.646233, 35.003300, 48.556980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126835, 34.609570, 47.950054>,  <35.718681, 34.351246, 48.312897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126835, 34.609570, 47.950054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330952, 34.928715, 48.078438>,  <35.453423, 35.120201, 48.155468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330952, 34.928715, 48.078438>,  <35.126835, 34.609570, 47.950054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330952, 34.928715, 48.078438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086791, 0.323527, -0.942230,
		-0.855608, 0.508673, 0.095847,
		0.510296, 0.797861, 0.320961,
		35.484039, 35.168072, 48.174725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922157, 35.141140, 47.471470>,  <35.126835, 34.609570, 47.950054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922157, 35.141140, 47.471470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250305, 35.268272, 47.661617>,  <35.447193, 35.344551, 47.775707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250305, 35.268272, 47.661617>,  <34.922157, 35.141140, 47.471470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250305, 35.268272, 47.661617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314262, 0.443934, -0.839144,
		-0.477736, 0.837800, 0.264309,
		0.820370, 0.317827, 0.475372,
		35.496418, 35.363621, 47.804230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990696, 35.907726, 47.313652>,  <34.922157, 35.141140, 47.471470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990696, 35.907726, 47.313652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.350464, 35.745972, 47.380005>,  <35.566326, 35.648918, 47.419819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.350464, 35.745972, 47.380005>,  <34.990696, 35.907726, 47.313652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350464, 35.745972, 47.380005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382512, 0.544583, -0.746401,
		0.211495, 0.734780, 0.644491,
		0.899419, -0.404386, 0.165885,
		35.620289, 35.624657, 47.429771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439339, 36.394382, 47.204849>,  <34.990696, 35.907726, 47.313652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439339, 36.394382, 47.204849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697792, 36.089119, 47.200897>,  <35.852863, 35.905960, 47.198528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697792, 36.089119, 47.200897>,  <35.439339, 36.394382, 47.204849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697792, 36.089119, 47.200897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561181, 0.483822, -0.671560,
		0.517284, 0.428378, 0.740885,
		0.646137, -0.763157, -0.009876,
		35.891632, 35.860172, 47.197933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109257, 36.711514, 47.349892>,  <35.439339, 36.394382, 47.204849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109257, 36.711514, 47.349892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139126, 36.358479, 47.164215>,  <36.157047, 36.146660, 47.052811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139126, 36.358479, 47.164215>,  <36.109257, 36.711514, 47.349892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139126, 36.358479, 47.164215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467330, 0.442177, -0.765561,
		0.880924, -0.159765, 0.445475,
		0.074669, -0.882585, -0.464187,
		36.161526, 36.093704, 47.024960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655388, 36.759277, 47.032299>,  <36.109257, 36.711514, 47.349892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655388, 36.759277, 47.032299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456245, 36.481865, 46.824009>,  <36.336761, 36.315418, 46.699036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456245, 36.481865, 46.824009>,  <36.655388, 36.759277, 47.032299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456245, 36.481865, 46.824009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138566, 0.529104, -0.837167,
		0.856120, -0.488941, -0.167316,
		-0.497853, -0.693531, -0.520727,
		36.306889, 36.273808, 46.667789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122440, 36.617271, 46.450363>,  <36.655388, 36.759277, 47.032299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122440, 36.617271, 46.450363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753128, 36.491722, 46.361786>,  <36.531540, 36.416393, 46.308640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753128, 36.491722, 46.361786>,  <37.122440, 36.617271, 46.450363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753128, 36.491722, 46.361786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073914, 0.420542, -0.904257,
		0.376949, -0.851250, -0.365079,
		-0.923280, -0.313875, -0.221443,
		36.476143, 36.397560, 46.295353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.839844, 26.460064, 34.768158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.492085, 26.293837, 34.875084>,  <45.283428, 26.194101, 34.939240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.492085, 26.293837, 34.875084>,  <45.839844, 26.460064, 34.768158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492085, 26.293837, 34.875084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493037, 0.765335, -0.413736,
		-0.032650, -0.491495, -0.870268,
		-0.869395, -0.415566, 0.267313,
		45.231266, 26.169167, 34.955276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466682, 26.388920, 34.178478>,  <45.839844, 26.460064, 34.768158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466682, 26.388920, 34.178478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.224033, 26.434553, 34.493183>,  <45.078442, 26.461933, 34.682007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.224033, 26.434553, 34.493183>,  <45.466682, 26.388920, 34.178478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.224033, 26.434553, 34.493183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434024, 0.781619, -0.447990,
		-0.666055, -0.613234, -0.424634,
		-0.606625, 0.114085, 0.786760,
		45.042046, 26.468779, 34.729210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778008, 26.385593, 33.940857>,  <45.466682, 26.388920, 34.178478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778008, 26.385593, 33.940857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.790222, 26.583220, 34.288414>,  <44.797550, 26.701796, 34.496948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.790222, 26.583220, 34.288414>,  <44.778008, 26.385593, 33.940857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790222, 26.583220, 34.288414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564424, 0.725956, -0.392955,
		-0.824920, -0.478424, 0.301028,
		0.030534, 0.494064, 0.868889,
		44.799381, 26.731438, 34.549080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082588, 26.581625, 34.041039>,  <44.778008, 26.385593, 33.940857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082588, 26.581625, 34.041039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.309772, 26.809380, 34.278767>,  <44.446083, 26.946033, 34.421402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.309772, 26.809380, 34.278767>,  <44.082588, 26.581625, 34.041039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309772, 26.809380, 34.278767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586283, 0.786682, -0.193398,
		-0.577658, -0.238596, 0.780630,
		0.567964, 0.569388, 0.594319,
		44.480160, 26.980196, 34.457062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634544, 26.905600, 34.496387>,  <44.082588, 26.581625, 34.041039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634544, 26.905600, 34.496387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960056, 27.137228, 34.516117>,  <44.155365, 27.276205, 34.527954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960056, 27.137228, 34.516117>,  <43.634544, 26.905600, 34.496387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960056, 27.137228, 34.516117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578639, 0.815228, -0.024079,
		-0.054157, -0.008948, 0.998492,
		0.813784, 0.579071, 0.049328,
		44.204193, 27.310949, 34.530914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547684, 27.470665, 35.014538>,  <43.634544, 26.905600, 34.496387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547684, 27.470665, 35.014538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848724, 27.594269, 34.781952>,  <44.029350, 27.668430, 34.642399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848724, 27.594269, 34.781952>,  <43.547684, 27.470665, 35.014538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848724, 27.594269, 34.781952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434114, 0.896811, -0.085292,
		0.495108, 0.316613, 0.809088,
		0.752604, 0.309008, -0.581465,
		44.074505, 27.686972, 34.607513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762714, 28.108641, 35.280056>,  <43.547684, 27.470665, 35.014538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762714, 28.108641, 35.280056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888081, 28.105913, 34.900219>,  <43.963299, 28.104277, 34.672318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888081, 28.105913, 34.900219>,  <43.762714, 28.108641, 35.280056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888081, 28.105913, 34.900219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205217, 0.975858, -0.074741,
		0.927177, 0.218297, 0.304449,
		0.313415, -0.006820, -0.949592,
		43.982105, 28.103867, 34.615341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136822, 28.745977, 35.242229>,  <43.762714, 28.108641, 35.280056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136822, 28.745977, 35.242229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076187, 28.664461, 34.855347>,  <44.039806, 28.615551, 34.623219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076187, 28.664461, 34.855347>,  <44.136822, 28.745977, 35.242229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076187, 28.664461, 34.855347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321508, 0.935472, -0.146716,
		0.934691, 0.288720, -0.207347,
		-0.151607, -0.203798, -0.967203,
		44.030708, 28.603323, 34.565186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382298, 29.348295, 35.038506>,  <44.136822, 28.745977, 35.242229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382298, 29.348295, 35.038506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202351, 29.173920, 34.726715>,  <44.094383, 29.069294, 34.539642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202351, 29.173920, 34.726715>,  <44.382298, 29.348295, 35.038506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202351, 29.173920, 34.726715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272844, 0.898135, -0.344834,
		0.850398, 0.057546, -0.522984,
		-0.449866, -0.435939, -0.779473,
		44.067390, 29.043139, 34.492874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645721, 29.647635, 34.519581>,  <44.382298, 29.348295, 35.038506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645721, 29.647635, 34.519581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283871, 29.503574, 34.428413>,  <44.066761, 29.417139, 34.373714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283871, 29.503574, 34.428413>,  <44.645721, 29.647635, 34.519581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283871, 29.503574, 34.428413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308022, 0.922044, -0.234432,
		0.294578, -0.141870, -0.945038,
		-0.904625, -0.360151, -0.227915,
		44.012482, 29.395529, 34.360039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549736, 30.044605, 33.994999>,  <44.645721, 29.647635, 34.519581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549736, 30.044605, 33.994999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180336, 29.908430, 34.065704>,  <43.958694, 29.826725, 34.108128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180336, 29.908430, 34.065704>,  <44.549736, 30.044605, 33.994999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180336, 29.908430, 34.065704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381192, 0.865957, -0.323745,
		-0.042856, -0.366361, -0.929485,
		-0.923502, -0.340438, 0.176766,
		43.903286, 29.806299, 34.118732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124458, 30.256540, 33.483109>,  <44.549736, 30.044605, 33.994999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124458, 30.256540, 33.483109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871918, 30.184940, 33.784931>,  <43.720394, 30.141979, 33.966026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871918, 30.184940, 33.784931>,  <44.124458, 30.256540, 33.483109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871918, 30.184940, 33.784931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446636, 0.879350, -0.165102,
		-0.633966, -0.441250, -0.635127,
		-0.631350, -0.179001, 0.754556,
		43.682514, 30.131241, 34.011299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449039, 30.425377, 33.198708>,  <44.124458, 30.256540, 33.483109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449039, 30.425377, 33.198708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396893, 30.439644, 33.595036>,  <43.365604, 30.448204, 33.832832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396893, 30.439644, 33.595036>,  <43.449039, 30.425377, 33.198708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396893, 30.439644, 33.595036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414206, 0.906005, -0.087113,
		-0.900798, -0.421762, -0.103345,
		-0.130372, 0.035665, 0.990823,
		43.357780, 30.450344, 33.892284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750381, 30.602560, 33.268921>,  <43.449039, 30.425377, 33.198708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750381, 30.602560, 33.268921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918777, 30.674314, 33.624580>,  <43.019817, 30.717367, 33.837975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918777, 30.674314, 33.624580>,  <42.750381, 30.602560, 33.268921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918777, 30.674314, 33.624580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441804, 0.896666, 0.028284,
		-0.792195, -0.404736, 0.456743,
		0.420994, 0.179384, 0.889148,
		43.045074, 30.728130, 33.891323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162128, 30.839279, 33.901875>,  <42.750381, 30.602560, 33.268921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162128, 30.839279, 33.901875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.533978, 30.966385, 33.976532>,  <42.757088, 31.042648, 34.021328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.533978, 30.966385, 33.976532>,  <42.162128, 30.839279, 33.901875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533978, 30.966385, 33.976532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332526, 0.941596, 0.053140,
		-0.158855, -0.111464, 0.980990,
		0.929619, 0.317763, 0.186642,
		42.812862, 31.061714, 34.032524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025135, 31.370104, 34.416267>,  <42.162128, 30.839279, 33.901875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025135, 31.370104, 34.416267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397285, 31.439772, 34.287235>,  <42.620575, 31.481573, 34.209816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397285, 31.439772, 34.287235>,  <42.025135, 31.370104, 34.416267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397285, 31.439772, 34.287235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168978, 0.984625, 0.044269,
		0.325331, 0.013322, 0.945506,
		0.930380, 0.174172, -0.322580,
		42.676399, 31.492023, 34.190460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234474, 31.846813, 34.967617>,  <42.025135, 31.370104, 34.416267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234474, 31.846813, 34.967617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461929, 31.894617, 34.642075>,  <42.598404, 31.923300, 34.446747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461929, 31.894617, 34.642075>,  <42.234474, 31.846813, 34.967617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461929, 31.894617, 34.642075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177364, 0.983930, 0.020558,
		0.803237, 0.132659, 0.580700,
		0.568641, 0.119508, -0.813858,
		42.632523, 31.930470, 34.397919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635105, 32.403778, 35.123535>,  <42.234474, 31.846813, 34.967617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635105, 32.403778, 35.123535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684784, 32.370991, 34.727989>,  <42.714592, 32.351318, 34.490662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684784, 32.370991, 34.727989>,  <42.635105, 32.403778, 35.123535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684784, 32.370991, 34.727989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113951, 0.988811, -0.096272,
		0.985693, 0.124639, 0.113463,
		0.124193, -0.081966, -0.988867,
		42.722042, 32.346401, 34.431328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144371, 32.977180, 34.951508>,  <42.635105, 32.403778, 35.123535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144371, 32.977180, 34.951508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967297, 32.875877, 34.607441>,  <42.861053, 32.815098, 34.401001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967297, 32.875877, 34.607441>,  <43.144371, 32.977180, 34.951508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967297, 32.875877, 34.607441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135937, 0.967153, -0.214793,
		0.886312, 0.021843, -0.462573,
		-0.442687, -0.253254, -0.860169,
		42.834492, 32.799900, 34.349392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467411, 33.358673, 34.402409>,  <43.144371, 32.977180, 34.951508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467411, 33.358673, 34.402409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131485, 33.239853, 34.220654>,  <42.929928, 33.168560, 34.111599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131485, 33.239853, 34.220654>,  <43.467411, 33.358673, 34.402409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131485, 33.239853, 34.220654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120083, 0.917930, -0.378134,
		0.529421, -0.263000, -0.806563,
		-0.839818, -0.297046, -0.454390,
		42.879539, 33.150738, 34.084335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590317, 33.602402, 33.760345>,  <43.467411, 33.358673, 34.402409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590317, 33.602402, 33.760345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.202023, 33.544262, 33.836823>,  <42.969048, 33.509377, 33.882710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.202023, 33.544262, 33.836823>,  <43.590317, 33.602402, 33.760345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202023, 33.544262, 33.836823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227516, 0.811515, -0.538219,
		-0.076924, -0.565965, -0.820833,
		-0.970731, -0.145351, 0.191191,
		42.910805, 33.500656, 33.894180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090775, 33.421024, 33.208576>,  <43.590317, 33.602402, 33.760345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090775, 33.421024, 33.208576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.433697, 33.500614, 33.398495>,  <44.639450, 33.548370, 33.512447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.433697, 33.500614, 33.398495>,  <44.090775, 33.421024, 33.208576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433697, 33.500614, 33.398495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366611, -0.883454, -0.291728,
		0.361412, 0.424166, -0.830340,
		0.857308, 0.198978, 0.474795,
		44.690887, 33.560307, 33.540932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558189, 33.094910, 32.819241>,  <44.090775, 33.421024, 33.208576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558189, 33.094910, 32.819241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770847, 33.154034, 33.152828>,  <44.898441, 33.189507, 33.352982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770847, 33.154034, 33.152828>,  <44.558189, 33.094910, 32.819241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770847, 33.154034, 33.152828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361284, -0.930156, -0.065452,
		0.766050, 0.336098, -0.547910,
		0.531640, 0.147811, 0.833973,
		44.930340, 33.198376, 33.403019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223549, 32.968754, 32.670139>,  <44.558189, 33.094910, 32.819241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223549, 32.968754, 32.670139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192905, 32.905109, 33.063854>,  <45.174519, 32.866920, 33.300083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192905, 32.905109, 33.063854>,  <45.223549, 32.968754, 32.670139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192905, 32.905109, 33.063854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517233, -0.850307, -0.097199,
		0.852409, 0.501658, 0.147439,
		-0.076608, -0.159113, 0.984284,
		45.169922, 32.857376, 33.359138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963997, 32.927780, 32.942829>,  <45.223549, 32.968754, 32.670139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963997, 32.927780, 32.942829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740284, 32.744629, 33.219250>,  <45.606056, 32.634739, 33.385101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740284, 32.744629, 33.219250>,  <45.963997, 32.927780, 32.942829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740284, 32.744629, 33.219250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515725, -0.844838, -0.142393,
		0.649024, 0.276754, 0.708643,
		-0.559281, -0.457881, 0.691050,
		45.572498, 32.607265, 33.426563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361092, 32.534336, 33.198349>,  <45.963997, 32.927780, 32.942829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361092, 32.534336, 33.198349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.031010, 32.361591, 33.343964>,  <45.832958, 32.257942, 33.431332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.031010, 32.361591, 33.343964>,  <46.361092, 32.534336, 33.198349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031010, 32.361591, 33.343964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395163, -0.901939, -0.174220,
		0.403580, 0.000087, 0.914944,
		-0.825209, -0.431864, 0.364039,
		45.783447, 32.232033, 33.453175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612614, 31.979397, 33.590565>,  <46.361092, 32.534336, 33.198349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612614, 31.979397, 33.590565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231560, 31.870424, 33.536507>,  <46.002926, 31.805040, 33.504070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231560, 31.870424, 33.536507>,  <46.612614, 31.979397, 33.590565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231560, 31.870424, 33.536507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294557, -0.937110, -0.187245,
		-0.075634, -0.218184, 0.972973,
		-0.952636, -0.272434, -0.135145,
		45.945770, 31.788694, 33.495964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.598343, 31.453247, 33.992611>,  <46.612614, 31.979397, 33.590565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.598343, 31.453247, 33.992611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322697, 31.432570, 33.703491>,  <46.157310, 31.420162, 33.530018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322697, 31.432570, 33.703491>,  <46.598343, 31.453247, 33.992611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322697, 31.432570, 33.703491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263291, -0.947146, -0.183281,
		-0.675126, -0.316610, 0.666305,
		-0.689117, -0.051694, -0.722804,
		46.115963, 31.417061, 33.486649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389538, 30.760933, 34.007393>,  <46.598343, 31.453247, 33.992611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389538, 30.760933, 34.007393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.258739, 30.876175, 33.647377>,  <46.180260, 30.945320, 33.431370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.258739, 30.876175, 33.647377>,  <46.389538, 30.760933, 34.007393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258739, 30.876175, 33.647377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041780, -0.955871, -0.290801,
		-0.944101, -0.057489, 0.324607,
		-0.327000, 0.288107, -0.900036,
		46.160641, 30.962606, 33.377365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879921, 30.324862, 33.932411>,  <46.389538, 30.760933, 34.007393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879921, 30.324862, 33.932411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.016258, 30.448631, 33.577316>,  <46.098061, 30.522892, 33.364258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.016258, 30.448631, 33.577316>,  <45.879921, 30.324862, 33.932411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016258, 30.448631, 33.577316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008655, -0.943211, -0.332080,
		-0.940081, 0.120870, -0.318806,
		0.340840, 0.309423, -0.887742,
		46.118511, 30.541458, 33.310993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568710, 29.825985, 33.625229>,  <45.879921, 30.324862, 33.932411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568710, 29.825985, 33.625229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824348, 29.985325, 33.362057>,  <45.977734, 30.080929, 33.204155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824348, 29.985325, 33.362057>,  <45.568710, 29.825985, 33.625229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824348, 29.985325, 33.362057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218751, -0.914240, -0.341047,
		-0.737362, 0.074039, -0.671428,
		0.639097, 0.398351, -0.657930,
		46.016079, 30.104830, 33.164677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332745, 29.452089, 33.072498>,  <45.568710, 29.825985, 33.625229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332745, 29.452089, 33.072498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711956, 29.564428, 33.012672>,  <45.939484, 29.631832, 32.976776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711956, 29.564428, 33.012672>,  <45.332745, 29.452089, 33.072498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711956, 29.564428, 33.012672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238331, -0.938187, -0.251005,
		-0.210812, 0.202314, -0.956362,
		0.948028, 0.280845, -0.149563,
		45.996365, 29.648682, 32.967804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524879, 29.229250, 32.347137>,  <45.332745, 29.452089, 33.072498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524879, 29.229250, 32.347137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.868778, 29.272947, 32.546700>,  <46.075115, 29.299166, 32.666435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.868778, 29.272947, 32.546700>,  <45.524879, 29.229250, 32.347137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868778, 29.272947, 32.546700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359148, -0.823846, -0.438510,
		0.363117, 0.556187, -0.747531,
		0.859743, 0.109244, 0.498906,
		46.126701, 29.305721, 32.696373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022526, 29.339661, 31.854862>,  <45.524879, 29.229250, 32.347137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022526, 29.339661, 31.854862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218327, 29.208412, 32.178028>,  <46.335808, 29.129663, 32.371929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218327, 29.208412, 32.178028>,  <46.022526, 29.339661, 31.854862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218327, 29.208412, 32.178028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310450, -0.800223, -0.513092,
		0.814868, 0.501976, -0.289845,
		0.489500, -0.328120, 0.807915,
		46.365177, 29.109976, 32.420403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754002, 29.184364, 31.668285>,  <46.022526, 29.339661, 31.854862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754002, 29.184364, 31.668285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.641525, 28.958113, 31.978382>,  <46.574039, 28.822363, 32.164440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.641525, 28.958113, 31.978382>,  <46.754002, 29.184364, 31.668285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.641525, 28.958113, 31.978382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189547, -0.824656, -0.532930,
		0.940747, -0.002910, 0.339098,
		-0.281190, -0.565627, 0.775241,
		46.557167, 28.788425, 32.210953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.029770, 28.591536, 31.519081>,  <46.754002, 29.184364, 31.668285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.029770, 28.591536, 31.519081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.822037, 28.451155, 31.830755>,  <46.697399, 28.366926, 32.017761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.822037, 28.451155, 31.830755>,  <47.029770, 28.591536, 31.519081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.822037, 28.451155, 31.830755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249793, -0.934301, -0.254332,
		0.817251, 0.062553, 0.572877,
		-0.519330, -0.350954, 0.779184,
		46.666237, 28.345869, 32.064510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.388817, 28.058676, 31.984941>,  <47.029770, 28.591536, 31.519081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.388817, 28.058676, 31.984941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.002064, 27.972433, 32.039574>,  <46.770012, 27.920689, 32.072353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.002064, 27.972433, 32.039574>,  <47.388817, 28.058676, 31.984941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.002064, 27.972433, 32.039574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196109, -0.970087, -0.143082,
		0.163344, -0.111559, 0.980241,
		-0.966882, -0.215605, 0.136580,
		46.711998, 27.907751, 32.080547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351280, 27.423479, 32.261158>,  <47.388817, 28.058676, 31.984941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351280, 27.423479, 32.261158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.968128, 27.432055, 32.146614>,  <46.738235, 27.437201, 32.077888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.968128, 27.432055, 32.146614>,  <47.351280, 27.423479, 32.261158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.968128, 27.432055, 32.146614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044532, -0.974055, -0.221886,
		-0.283688, -0.225293, 0.932075,
		-0.957882, 0.021439, -0.286360,
		46.680763, 27.438486, 32.060707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068199, 26.910563, 32.625267>,  <47.351280, 27.423479, 32.261158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068199, 26.910563, 32.625267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.813255, 26.991707, 32.327915>,  <46.660290, 27.040394, 32.149502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.813255, 26.991707, 32.327915>,  <47.068199, 26.910563, 32.625267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.813255, 26.991707, 32.327915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174431, -0.977665, -0.117243,
		-0.750564, 0.054943, 0.658510,
		-0.637360, 0.202862, -0.743383,
		46.622047, 27.052565, 32.104900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.491646, 26.517921, 32.783051>,  <47.068199, 26.910563, 32.625267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.491646, 26.517921, 32.783051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.464638, 26.600716, 32.392647>,  <46.448433, 26.650393, 32.158405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.464638, 26.600716, 32.392647>,  <46.491646, 26.517921, 32.783051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464638, 26.600716, 32.392647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184091, -0.964032, -0.191711,
		-0.980588, 0.166731, 0.103193,
		-0.067517, 0.206986, -0.976012,
		46.444382, 26.662811, 32.099842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960007, 26.059168, 32.550835>,  <46.491646, 26.517921, 32.783051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960007, 26.059168, 32.550835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.116547, 26.168064, 32.199215>,  <46.210472, 26.233402, 31.988243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.116547, 26.168064, 32.199215>,  <45.960007, 26.059168, 32.550835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.116547, 26.168064, 32.199215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247242, -0.889010, -0.385398,
		-0.886405, 0.368164, -0.280608,
		0.391353, 0.272241, -0.879049,
		46.233952, 26.249737, 31.935501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450645, 25.878019, 32.149906>,  <45.960007, 26.059168, 32.550835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450645, 25.878019, 32.149906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815041, 25.876295, 31.984943>,  <46.033676, 25.875261, 31.885965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815041, 25.876295, 31.984943>,  <45.450645, 25.878019, 32.149906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815041, 25.876295, 31.984943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129557, -0.952319, -0.276230,
		-0.391555, 0.305073, -0.868110,
		0.910988, -0.004310, -0.412410,
		46.088337, 25.875002, 31.861221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.181458, 33.572258, 42.149590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785351, 33.620365, 42.177620>,  <39.547688, 33.649231, 42.194439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785351, 33.620365, 42.177620>,  <40.181458, 33.572258, 42.149590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785351, 33.620365, 42.177620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029176, 0.312901, -0.949338,
		-0.136103, -0.942140, -0.306346,
		-0.990265, 0.120270, 0.070075,
		39.488270, 33.656445, 42.198643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826881, 33.146690, 41.656605>,  <40.181458, 33.572258, 42.149590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826881, 33.146690, 41.656605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580055, 33.456749, 41.710831>,  <39.431957, 33.642784, 41.743366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580055, 33.456749, 41.710831>,  <39.826881, 33.146690, 41.656605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580055, 33.456749, 41.710831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219204, 0.334780, -0.916445,
		-0.755762, -0.535793, -0.376496,
		-0.617068, 0.775144, 0.135566,
		39.394936, 33.689293, 41.751499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316521, 33.174927, 41.045349>,  <39.826881, 33.146690, 41.656605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316521, 33.174927, 41.045349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275173, 33.538799, 41.206242>,  <39.250366, 33.757122, 41.302776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275173, 33.538799, 41.206242>,  <39.316521, 33.174927, 41.045349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275173, 33.538799, 41.206242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083445, 0.410908, -0.907850,
		-0.991137, -0.060280, -0.118384,
		-0.103370, 0.909682, 0.402235,
		39.244164, 33.811703, 41.326912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707596, 33.478561, 40.696968>,  <39.316521, 33.174927, 41.045349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707596, 33.478561, 40.696968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901920, 33.785370, 40.864616>,  <39.018517, 33.969456, 40.965206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901920, 33.785370, 40.864616>,  <38.707596, 33.478561, 40.696968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901920, 33.785370, 40.864616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056493, 0.506065, -0.860644,
		-0.872236, 0.394432, 0.289183,
		0.485811, 0.767022, 0.419125,
		39.047665, 34.015476, 40.990353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312675, 34.030064, 40.544025>,  <38.707596, 33.478561, 40.696968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312675, 34.030064, 40.544025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683193, 34.164421, 40.612324>,  <38.905502, 34.245037, 40.653301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683193, 34.164421, 40.612324>,  <38.312675, 34.030064, 40.544025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683193, 34.164421, 40.612324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028341, 0.513957, -0.857347,
		-0.375735, 0.789317, 0.485595,
		0.926294, 0.335898, 0.170742,
		38.961082, 34.265190, 40.663548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313187, 34.758286, 40.256847>,  <38.312675, 34.030064, 40.544025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313187, 34.758286, 40.256847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688366, 34.622265, 40.284050>,  <38.913471, 34.540653, 40.300373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688366, 34.622265, 40.284050>,  <38.313187, 34.758286, 40.256847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688366, 34.622265, 40.284050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243523, 0.506254, -0.827287,
		0.246890, 0.792511, 0.557648,
		0.937946, -0.340049, 0.068006,
		38.969749, 34.520248, 40.304451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738186, 35.371090, 40.119495>,  <38.313187, 34.758286, 40.256847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738186, 35.371090, 40.119495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961021, 35.047630, 40.043873>,  <39.094723, 34.853554, 39.998501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961021, 35.047630, 40.043873>,  <38.738186, 35.371090, 40.119495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961021, 35.047630, 40.043873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444957, 0.482869, -0.754222,
		0.701189, 0.336046, 0.628814,
		0.557088, -0.808647, -0.189056,
		39.128147, 34.805035, 39.987156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448719, 35.617790, 40.383091>,  <38.738186, 35.371090, 40.119495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448719, 35.617790, 40.383091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550705, 35.357052, 40.097408>,  <39.611897, 35.200607, 39.925999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550705, 35.357052, 40.097408>,  <39.448719, 35.617790, 40.383091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550705, 35.357052, 40.097408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190179, 0.757995, -0.623919,
		0.948064, 0.023250, 0.317229,
		0.254964, -0.651846, -0.714206,
		39.627193, 35.161499, 39.883148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106697, 35.790028, 40.139175>,  <39.448719, 35.617790, 40.383091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106697, 35.790028, 40.139175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977497, 35.554764, 39.842598>,  <39.899979, 35.413605, 39.664650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977497, 35.554764, 39.842598>,  <40.106697, 35.790028, 40.139175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977497, 35.554764, 39.842598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311508, 0.673714, -0.670128,
		0.893664, -0.447417, -0.034392,
		-0.322997, -0.588156, -0.741448,
		39.880596, 35.378319, 39.620163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623268, 35.762104, 39.616905>,  <40.106697, 35.790028, 40.139175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623268, 35.762104, 39.616905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266235, 35.685089, 39.453819>,  <40.052017, 35.638882, 39.355968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266235, 35.685089, 39.453819>,  <40.623268, 35.762104, 39.616905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266235, 35.685089, 39.453819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226559, 0.590282, -0.774751,
		0.389833, -0.783899, -0.483253,
		-0.892581, -0.192538, -0.407710,
		39.998463, 35.627327, 39.331505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792786, 35.810047, 38.920460>,  <40.623268, 35.762104, 39.616905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792786, 35.810047, 38.920460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394287, 35.776543, 38.929161>,  <40.155186, 35.756439, 38.934383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394287, 35.776543, 38.929161>,  <40.792786, 35.810047, 38.920460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394287, 35.776543, 38.929161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072140, 0.664996, -0.743355,
		0.047795, -0.742135, -0.668544,
		-0.996248, -0.083758, 0.021754,
		40.095413, 35.751415, 38.935688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601398, 35.583961, 38.268673>,  <40.792786, 35.810047, 38.920460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601398, 35.583961, 38.268673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311497, 35.787132, 38.454891>,  <40.137554, 35.909035, 38.566620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311497, 35.787132, 38.454891>,  <40.601398, 35.583961, 38.268673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311497, 35.787132, 38.454891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019398, 0.660368, -0.750691,
		-0.688729, -0.553101, -0.468755,
		-0.724759, 0.507931, 0.465544,
		40.094070, 35.939510, 38.594555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117981, 34.941669, 38.067135>,  <40.601398, 35.583961, 38.268673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117981, 34.941669, 38.067135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128342, 34.914608, 38.466084>,  <40.134560, 34.898373, 38.705452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128342, 34.914608, 38.466084>,  <40.117981, 34.941669, 38.067135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128342, 34.914608, 38.466084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318692, -0.946208, -0.055907,
		0.947504, -0.316406, -0.046070,
		0.025903, -0.067654, 0.997373,
		40.136112, 34.894310, 38.765297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516968, 34.864723, 37.560154>,  <40.117981, 34.941669, 38.067135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516968, 34.864723, 37.560154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372128, 34.511017, 37.442204>,  <39.285225, 34.298794, 37.371433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372128, 34.511017, 37.442204>,  <39.516968, 34.864723, 37.560154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372128, 34.511017, 37.442204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454422, -0.443666, 0.772439,
		-0.813870, 0.145701, 0.562482,
		-0.362100, -0.884269, -0.294877,
		39.263496, 34.245735, 37.353741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157494, 34.859745, 36.884178>,  <39.516968, 34.864723, 37.560154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157494, 34.859745, 36.884178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071838, 34.472767, 36.830215>,  <39.020443, 34.240582, 36.797840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071838, 34.472767, 36.830215>,  <39.157494, 34.859745, 36.884178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071838, 34.472767, 36.830215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784846, 0.088190, 0.613383,
		-0.581515, 0.237229, -0.778179,
		-0.214140, -0.967442, -0.134905,
		39.007595, 34.182533, 36.789745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416653, 34.787880, 36.887402>,  <39.157494, 34.859745, 36.884178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416653, 34.787880, 36.887402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537369, 34.408848, 36.929401>,  <38.609798, 34.181431, 36.954601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537369, 34.408848, 36.929401>,  <38.416653, 34.787880, 36.887402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537369, 34.408848, 36.929401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696968, -0.144134, 0.702467,
		-0.650508, -0.285175, -0.703928,
		0.301786, -0.947576, 0.104997,
		38.627903, 34.124577, 36.960899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771355, 34.348301, 36.986526>,  <38.416653, 34.787880, 36.887402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771355, 34.348301, 36.986526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072605, 34.128738, 37.131580>,  <38.253357, 33.997002, 37.218613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072605, 34.128738, 37.131580>,  <37.771355, 34.348301, 36.986526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072605, 34.128738, 37.131580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607931, -0.370019, 0.702500,
		-0.251424, -0.749528, -0.612367,
		0.753130, -0.548903, 0.362629,
		38.298546, 33.964069, 37.240368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422153, 33.686340, 37.079628>,  <37.771355, 34.348301, 36.986526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422153, 33.686340, 37.079628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756187, 33.696079, 37.299461>,  <37.956608, 33.701923, 37.431362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756187, 33.696079, 37.299461>,  <37.422153, 33.686340, 37.079628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756187, 33.696079, 37.299461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497690, -0.392226, 0.773604,
		0.234399, -0.919547, -0.315423,
		0.835082, 0.024349, 0.549586,
		38.006714, 33.703384, 37.464336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478138, 32.993473, 37.335125>,  <37.422153, 33.686340, 37.079628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478138, 32.993473, 37.335125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688286, 33.248783, 37.560192>,  <37.814373, 33.401970, 37.695232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688286, 33.248783, 37.560192>,  <37.478138, 32.993473, 37.335125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688286, 33.248783, 37.560192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447774, -0.354906, 0.820695,
		0.723524, -0.683113, 0.099348,
		0.525368, 0.638277, 0.562664,
		37.845898, 33.440266, 37.728992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657169, 32.738884, 37.989616>,  <37.478138, 32.993473, 37.335125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657169, 32.738884, 37.989616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729908, 33.117840, 38.094982>,  <37.773552, 33.345211, 38.158203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729908, 33.117840, 38.094982>,  <37.657169, 32.738884, 37.989616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729908, 33.117840, 38.094982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314397, -0.197807, 0.928454,
		0.931711, -0.251656, 0.261885,
		0.181848, 0.947387, 0.263419,
		37.784462, 33.402058, 38.174007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082558, 32.755955, 38.681755>,  <37.657169, 32.738884, 37.989616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082558, 32.755955, 38.681755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869633, 33.091492, 38.636158>,  <37.741879, 33.292812, 38.608799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869633, 33.091492, 38.636158>,  <38.082558, 32.755955, 38.681755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869633, 33.091492, 38.636158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299175, -0.060445, 0.952282,
		0.791923, 0.541010, 0.283135,
		-0.532309, 0.838841, -0.113989,
		37.709942, 33.343143, 38.601963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210457, 33.042187, 39.318661>,  <38.082558, 32.755955, 38.681755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210457, 33.042187, 39.318661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874393, 33.212894, 39.184799>,  <37.672756, 33.315319, 39.104481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874393, 33.212894, 39.184799>,  <38.210457, 33.042187, 39.318661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874393, 33.212894, 39.184799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316723, 0.114807, 0.941544,
		0.440245, 0.897043, 0.038712,
		-0.840161, 0.426771, -0.334658,
		37.622345, 33.340927, 39.084400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044701, 33.598759, 39.784515>,  <38.210457, 33.042187, 39.318661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044701, 33.598759, 39.784515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693985, 33.547707, 39.599064>,  <37.483555, 33.517075, 39.487793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693985, 33.547707, 39.599064>,  <38.044701, 33.598759, 39.784515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693985, 33.547707, 39.599064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478885, 0.144045, 0.865979,
		-0.043739, 0.981307, -0.187415,
		-0.876787, -0.127628, -0.463633,
		37.430950, 33.509418, 39.459972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651550, 34.167088, 40.006580>,  <38.044701, 33.598759, 39.784515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651550, 34.167088, 40.006580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378925, 33.895065, 39.898506>,  <37.215351, 33.731853, 39.833660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378925, 33.895065, 39.898506>,  <37.651550, 34.167088, 40.006580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378925, 33.895065, 39.898506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573004, 0.266334, 0.775069,
		-0.455131, 0.683074, -0.571197,
		-0.681559, -0.680056, -0.270188,
		37.174458, 33.691048, 39.817451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978317, 34.485012, 40.014977>,  <37.651550, 34.167088, 40.006580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978317, 34.485012, 40.014977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889423, 34.097065, 40.054909>,  <36.836086, 33.864296, 40.078869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889423, 34.097065, 40.054909>,  <36.978317, 34.485012, 40.014977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889423, 34.097065, 40.054909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737790, 0.234226, 0.633091,
		-0.637398, 0.067038, -0.767613,
		-0.222237, -0.969868, 0.099835,
		36.822754, 33.806103, 40.084858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300270, 34.472816, 40.370300>,  <36.978317, 34.485012, 40.014977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300270, 34.472816, 40.370300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401936, 34.085987, 40.375633>,  <36.462933, 33.853889, 40.378834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401936, 34.085987, 40.375633>,  <36.300270, 34.472816, 40.370300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401936, 34.085987, 40.375633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711242, -0.177550, 0.680155,
		-0.655391, -0.182349, -0.732947,
		0.254160, -0.967071, 0.013330,
		36.478184, 33.795864, 40.379631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706566, 34.123127, 40.481853>,  <36.300270, 34.472816, 40.370300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706566, 34.123127, 40.481853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981392, 33.860306, 40.605938>,  <36.146286, 33.702614, 40.680389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981392, 33.860306, 40.605938>,  <35.706566, 34.123127, 40.481853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981392, 33.860306, 40.605938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635737, -0.336869, 0.694520,
		-0.351844, -0.674380, -0.649166,
		0.687054, -0.657062, 0.310204,
		36.187511, 33.663193, 40.699001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330910, 33.562813, 40.749901>,  <35.706566, 34.123127, 40.481853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330910, 33.562813, 40.749901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700844, 33.489738, 40.883354>,  <35.922802, 33.445892, 40.963428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700844, 33.489738, 40.883354>,  <35.330910, 33.562813, 40.749901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700844, 33.489738, 40.883354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379950, -0.402040, 0.833068,
		-0.018055, -0.897212, -0.441231,
		0.924831, -0.182687, 0.333637,
		35.978294, 33.434933, 40.983444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331806, 32.776928, 40.695896>,  <35.330910, 33.562813, 40.749901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331806, 32.776928, 40.695896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947662, 32.681358, 40.638462>,  <34.717175, 32.624016, 40.604000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947662, 32.681358, 40.638462>,  <35.331806, 32.776928, 40.695896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947662, 32.681358, 40.638462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034511, 0.409232, -0.911777,
		0.276603, -0.880594, -0.384767,
		-0.960364, -0.238921, -0.143584,
		34.659554, 32.609680, 40.595387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250706, 32.385376, 40.059025>,  <35.331806, 32.776928, 40.695896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250706, 32.385376, 40.059025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887077, 32.546490, 40.101635>,  <34.668900, 32.643158, 40.127201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887077, 32.546490, 40.101635>,  <35.250706, 32.385376, 40.059025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887077, 32.546490, 40.101635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080975, 0.421615, -0.903152,
		-0.408690, -0.812406, -0.415895,
		-0.909074, 0.402786, 0.106525,
		34.614357, 32.667324, 40.133591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834682, 32.174103, 39.441174>,  <35.250706, 32.385376, 40.059025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834682, 32.174103, 39.441174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684990, 32.497360, 39.623096>,  <34.595173, 32.691315, 39.732250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684990, 32.497360, 39.623096>,  <34.834682, 32.174103, 39.441174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684990, 32.497360, 39.623096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032395, 0.501537, -0.864530,
		-0.926770, -0.308800, -0.213871,
		-0.374230, 0.808148, 0.454806,
		34.572720, 32.739803, 39.759537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291233, 32.364723, 38.916401>,  <34.834682, 32.174103, 39.441174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291233, 32.364723, 38.916401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309052, 32.685070, 39.155273>,  <34.319740, 32.877277, 39.298595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309052, 32.685070, 39.155273>,  <34.291233, 32.364723, 38.916401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309052, 32.685070, 39.155273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270382, 0.585130, -0.764537,
		-0.961722, -0.127413, 0.242604,
		0.044542, 0.800868, 0.597183,
		34.322414, 32.925331, 39.334427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618294, 32.760452, 38.798111>,  <34.291233, 32.364723, 38.916401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618294, 32.760452, 38.798111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924385, 33.001183, 38.889526>,  <34.108040, 33.145618, 38.944374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924385, 33.001183, 38.889526>,  <33.618294, 32.760452, 38.798111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924385, 33.001183, 38.889526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144439, 0.506463, -0.850078,
		-0.627341, 0.617498, 0.474489,
		0.765233, 0.601823, 0.228535,
		34.153954, 33.181728, 38.958088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357635, 33.340714, 38.593887>,  <33.618294, 32.760452, 38.798111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357635, 33.340714, 38.593887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750854, 33.409084, 38.620445>,  <33.986786, 33.450108, 38.636379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750854, 33.409084, 38.620445>,  <33.357635, 33.340714, 38.593887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750854, 33.409084, 38.620445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086634, 0.752071, -0.653363,
		-0.161609, 0.636533, 0.754127,
		0.983045, 0.170922, 0.066396,
		34.045769, 33.460361, 38.640366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370590, 33.981560, 38.392857>,  <33.357635, 33.340714, 38.593887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370590, 33.981560, 38.392857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765324, 33.917049, 38.388054>,  <34.002163, 33.878342, 38.385174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765324, 33.917049, 38.388054>,  <33.370590, 33.981560, 38.392857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765324, 33.917049, 38.388054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090140, 0.610159, -0.787135,
		0.134272, 0.775691, 0.616664,
		0.986836, -0.161276, -0.012006,
		34.061375, 33.868668, 38.384453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668556, 34.620262, 38.281628>,  <33.370590, 33.981560, 38.392857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668556, 34.620262, 38.281628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952446, 34.351494, 38.196945>,  <34.122780, 34.190235, 38.146137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952446, 34.351494, 38.196945>,  <33.668556, 34.620262, 38.281628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952446, 34.351494, 38.196945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202672, 0.482546, -0.852099,
		0.674697, 0.561849, 0.478654,
		0.709724, -0.671919, -0.211702,
		34.165363, 34.149918, 38.133434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172722, 35.060753, 38.051395>,  <33.668556, 34.620262, 38.281628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172722, 35.060753, 38.051395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246994, 34.704224, 37.885952>,  <34.291557, 34.490307, 37.786686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246994, 34.704224, 37.885952>,  <34.172722, 35.060753, 38.051395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246994, 34.704224, 37.885952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359408, 0.453364, -0.815651,
		0.914520, 0.002800, 0.404530,
		0.185683, -0.891321, -0.413604,
		34.302700, 34.436829, 37.761871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843060, 35.117943, 37.779461>,  <34.172722, 35.060753, 38.051395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843060, 35.117943, 37.779461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670902, 34.805809, 37.597977>,  <34.567608, 34.618530, 37.489086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670902, 34.805809, 37.597977>,  <34.843060, 35.117943, 37.779461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670902, 34.805809, 37.597977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334539, 0.328949, -0.883106,
		0.838361, -0.531861, 0.119475,
		-0.430388, -0.780331, -0.453707,
		34.541786, 34.571709, 37.461864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293217, 34.787834, 37.271442>,  <34.843060, 35.117943, 37.779461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293217, 34.787834, 37.271442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930958, 34.686462, 37.135460>,  <34.713600, 34.625641, 37.053871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930958, 34.686462, 37.135460>,  <35.293217, 34.787834, 37.271442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930958, 34.686462, 37.135460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219641, 0.405425, -0.887349,
		0.362702, -0.878298, -0.311512,
		-0.905651, -0.253423, -0.339959,
		34.659264, 34.610435, 37.033470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384411, 34.480156, 36.529823>,  <35.293217, 34.787834, 37.271442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384411, 34.480156, 36.529823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008556, 34.591633, 36.609245>,  <34.783043, 34.658520, 36.656898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008556, 34.591633, 36.609245>,  <35.384411, 34.480156, 36.529823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008556, 34.591633, 36.609245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043269, 0.478836, -0.876837,
		-0.339441, -0.832496, -0.437871,
		-0.939632, 0.278688, 0.198558,
		34.726665, 34.675240, 36.668812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.359699, 29.769361, 43.503632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119347, 30.084700, 43.556473>,  <33.975136, 30.273903, 43.588177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119347, 30.084700, 43.556473>,  <34.359699, 29.769361, 43.503632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119347, 30.084700, 43.556473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218423, 0.320908, -0.921580,
		-0.768916, -0.524908, -0.365021,
		-0.600883, 0.788346, 0.132099,
		33.939083, 30.321203, 43.596104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095558, 29.894735, 42.799667>,  <34.359699, 29.769361, 43.503632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095558, 29.894735, 42.799667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967014, 30.227755, 42.980148>,  <33.889889, 30.427567, 43.088436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967014, 30.227755, 42.980148>,  <34.095558, 29.894735, 42.799667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967014, 30.227755, 42.980148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009904, 0.479410, -0.877535,
		-0.946904, -0.277539, -0.162310,
		-0.321363, 0.832549, 0.451207,
		33.870605, 30.477520, 43.115509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554054, 30.225779, 42.359062>,  <34.095558, 29.894735, 42.799667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554054, 30.225779, 42.359062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.658997, 30.537086, 42.587257>,  <33.721962, 30.723871, 42.724174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.658997, 30.537086, 42.587257>,  <33.554054, 30.225779, 42.359062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658997, 30.537086, 42.587257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054593, 0.578284, -0.814007,
		-0.963425, 0.244707, 0.109231,
		0.262359, 0.778271, 0.570492,
		33.737705, 30.770567, 42.758404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116787, 30.747721, 42.144188>,  <33.554054, 30.225779, 42.359062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116787, 30.747721, 42.144188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.445156, 30.910542, 42.304386>,  <33.642178, 31.008234, 42.400505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.445156, 30.910542, 42.304386>,  <33.116787, 30.747721, 42.144188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445156, 30.910542, 42.304386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111519, 0.573554, -0.811541,
		-0.560043, 0.710876, 0.425450,
		0.820924, 0.407052, 0.400491,
		33.691433, 31.032658, 42.424534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009167, 31.482101, 42.108044>,  <33.116787, 30.747721, 42.144188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009167, 31.482101, 42.108044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.405079, 31.428722, 42.128155>,  <33.642628, 31.396694, 42.140221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.405079, 31.428722, 42.128155>,  <33.009167, 31.482101, 42.108044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405079, 31.428722, 42.128155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120733, 0.596494, -0.793485,
		0.075896, 0.791446, 0.606509,
		0.989779, -0.133448, 0.050282,
		33.702011, 31.388687, 42.143238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295403, 32.054420, 42.211571>,  <33.009167, 31.482101, 42.108044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295403, 32.054420, 42.211571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.589970, 31.852148, 42.031807>,  <33.766712, 31.730783, 41.923946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.589970, 31.852148, 42.031807>,  <33.295403, 32.054420, 42.211571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589970, 31.852148, 42.031807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087952, 0.730219, -0.677528,
		0.670783, 0.459418, 0.582224,
		0.736420, -0.505683, -0.449411,
		33.810894, 31.700443, 41.896984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666828, 32.597198, 41.821724>,  <33.295403, 32.054420, 42.211571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666828, 32.597198, 41.821724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888550, 32.289185, 41.695366>,  <34.021584, 32.104378, 41.619553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888550, 32.289185, 41.695366>,  <33.666828, 32.597198, 41.821724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888550, 32.289185, 41.695366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390323, 0.575713, -0.718473,
		0.735113, 0.274954, 0.619684,
		0.554307, -0.770036, -0.315893,
		34.054840, 32.058174, 41.600597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396122, 32.892738, 41.872181>,  <33.666828, 32.597198, 41.821724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396122, 32.892738, 41.872181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.364368, 32.585365, 41.618187>,  <34.345314, 32.400940, 41.465790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.364368, 32.585365, 41.618187>,  <34.396122, 32.892738, 41.872181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364368, 32.585365, 41.618187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399331, 0.559134, -0.726570,
		0.913363, -0.311249, 0.262472,
		-0.079387, -0.768436, -0.634984,
		34.340553, 32.354836, 41.427692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989086, 32.994926, 41.375721>,  <34.396122, 32.892738, 41.872181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989086, 32.994926, 41.375721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.706879, 32.758739, 41.218960>,  <34.537556, 32.617027, 41.124901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.706879, 32.758739, 41.218960>,  <34.989086, 32.994926, 41.375721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706879, 32.758739, 41.218960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200493, 0.364110, -0.909520,
		0.679743, -0.720255, -0.138500,
		-0.705515, -0.590472, -0.391908,
		34.495224, 32.581596, 41.101387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502872, 32.502487, 41.443039>,  <34.989086, 32.994926, 41.375721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502872, 32.502487, 41.443039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763863, 32.801765, 41.491169>,  <35.920456, 32.981331, 41.520046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763863, 32.801765, 41.491169>,  <35.502872, 32.502487, 41.443039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763863, 32.801765, 41.491169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156420, -0.022386, 0.987437,
		0.741489, -0.663100, 0.102427,
		0.652477, 0.748196, 0.120322,
		35.959606, 33.026222, 41.527264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946911, 32.247654, 42.021069>,  <35.502872, 32.502487, 41.443039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946911, 32.247654, 42.021069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002213, 32.641411, 41.977520>,  <36.035393, 32.877666, 41.951393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002213, 32.641411, 41.977520>,  <35.946911, 32.247654, 42.021069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002213, 32.641411, 41.977520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045585, 0.116132, 0.992187,
		0.989347, -0.132210, 0.060929,
		0.138252, 0.984395, -0.108868,
		36.043690, 32.936729, 41.944859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539421, 32.423416, 42.390766>,  <35.946911, 32.247654, 42.021069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539421, 32.423416, 42.390766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306568, 32.748554, 42.398800>,  <36.166855, 32.943638, 42.403618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306568, 32.748554, 42.398800>,  <36.539421, 32.423416, 42.390766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306568, 32.748554, 42.398800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027499, -0.044367, 0.998637,
		0.812626, 0.580790, 0.048180,
		-0.582136, 0.812844, 0.020082,
		36.131927, 32.992409, 42.404823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848106, 32.761570, 42.911552>,  <36.539421, 32.423416, 42.390766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848106, 32.761570, 42.911552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497555, 32.937988, 42.834156>,  <36.287224, 33.043839, 42.787716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497555, 32.937988, 42.834156>,  <36.848106, 32.761570, 42.911552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497555, 32.937988, 42.834156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137597, 0.155730, 0.978169,
		0.461551, 0.883870, -0.075791,
		-0.876377, 0.441047, -0.193495,
		36.234642, 33.070301, 42.776108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906998, 33.340084, 43.344700>,  <36.848106, 32.761570, 42.911552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906998, 33.340084, 43.344700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528164, 33.263912, 43.241348>,  <36.300861, 33.218208, 43.179337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528164, 33.263912, 43.241348>,  <36.906998, 33.340084, 43.344700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528164, 33.263912, 43.241348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265234, 0.010999, 0.964121,
		-0.180759, 0.981638, -0.060926,
		-0.947089, -0.190433, -0.258376,
		36.244038, 33.206783, 43.163834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576012, 33.814445, 43.702888>,  <36.906998, 33.340084, 43.344700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576012, 33.814445, 43.702888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.318256, 33.519131, 43.623199>,  <36.163601, 33.341942, 43.575386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.318256, 33.519131, 43.623199>,  <36.576012, 33.814445, 43.702888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318256, 33.519131, 43.623199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246754, -0.045839, 0.967993,
		-0.723791, 0.672925, -0.152637,
		-0.644390, -0.738289, -0.199225,
		36.124939, 33.297646, 43.563431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040024, 33.949062, 44.191925>,  <36.576012, 33.814445, 43.702888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040024, 33.949062, 44.191925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.949627, 33.576065, 44.079220>,  <35.895390, 33.352268, 44.011597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.949627, 33.576065, 44.079220>,  <36.040024, 33.949062, 44.191925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949627, 33.576065, 44.079220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246016, -0.225232, 0.942734,
		-0.942551, 0.282369, -0.178507,
		-0.225993, -0.932490, -0.281760,
		35.881828, 33.296318, 43.994690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581680, 33.686172, 44.694901>,  <36.040024, 33.949062, 44.191925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581680, 33.686172, 44.694901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721359, 33.360821, 44.508793>,  <35.805164, 33.165607, 44.397129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721359, 33.360821, 44.508793>,  <35.581680, 33.686172, 44.694901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721359, 33.360821, 44.508793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008354, -0.499207, 0.866443,
		-0.937013, -0.298670, -0.181115,
		0.349194, -0.813381, -0.465268,
		35.826118, 33.116806, 44.369213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187283, 33.189697, 44.949028>,  <35.581680, 33.686172, 44.694901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187283, 33.189697, 44.949028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.537674, 33.034992, 44.833736>,  <35.747910, 32.942169, 44.764561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.537674, 33.034992, 44.833736>,  <35.187283, 33.189697, 44.949028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537674, 33.034992, 44.833736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099237, -0.440261, 0.892369,
		-0.472036, -0.810297, -0.347276,
		0.875976, -0.386768, -0.288231,
		35.800468, 32.918964, 44.747269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177589, 32.490768, 45.051590>,  <35.187283, 33.189697, 44.949028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177589, 32.490768, 45.051590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572056, 32.553799, 45.030987>,  <35.808735, 32.591618, 45.018627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572056, 32.553799, 45.030987>,  <35.177589, 32.490768, 45.051590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572056, 32.553799, 45.030987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133182, -0.568054, 0.812143,
		0.098714, -0.807766, -0.581180,
		0.986163, 0.157572, -0.051505,
		35.867905, 32.601070, 45.015533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358059, 31.887146, 45.309711>,  <35.177589, 32.490768, 45.051590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358059, 31.887146, 45.309711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695335, 32.102180, 45.311996>,  <35.897701, 32.231201, 45.313366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695335, 32.102180, 45.311996>,  <35.358059, 31.887146, 45.309711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695335, 32.102180, 45.311996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262221, -0.420518, 0.868565,
		0.469330, -0.730867, -0.495543,
		0.843190, 0.537585, 0.005713,
		35.948292, 32.263454, 45.313709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910831, 31.483177, 45.259880>,  <35.358059, 31.887146, 45.309711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910831, 31.483177, 45.259880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029991, 31.815660, 45.447643>,  <36.101486, 32.015152, 45.560303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029991, 31.815660, 45.447643>,  <35.910831, 31.483177, 45.259880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029991, 31.815660, 45.447643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144639, -0.525360, 0.838496,
		0.943574, -0.181896, -0.276732,
		0.297904, 0.831210, 0.469407,
		36.119362, 32.065025, 45.588467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604321, 31.376852, 45.673676>,  <35.910831, 31.483177, 45.259880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604321, 31.376852, 45.673676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434120, 31.704201, 45.828190>,  <36.332001, 31.900610, 45.920898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434120, 31.704201, 45.828190>,  <36.604321, 31.376852, 45.673676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434120, 31.704201, 45.828190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127464, -0.368399, 0.920888,
		0.895935, 0.441078, 0.052442,
		-0.425503, 0.818372, 0.386284,
		36.306469, 31.949713, 45.944077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095062, 31.624416, 46.214680>,  <36.604321, 31.376852, 45.673676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095062, 31.624416, 46.214680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758575, 31.822302, 46.301956>,  <36.556683, 31.941032, 46.354321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758575, 31.822302, 46.301956>,  <37.095062, 31.624416, 46.214680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758575, 31.822302, 46.301956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166308, -0.147229, 0.975021,
		0.514480, 0.856494, 0.041577,
		-0.841221, 0.494714, 0.218188,
		36.506210, 31.970716, 46.367413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.092827, 34.384937, 46.157608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423321, 34.160290, 46.140099>,  <33.621616, 34.025501, 46.129593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423321, 34.160290, 46.140099>,  <33.092827, 34.384937, 46.157608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423321, 34.160290, 46.140099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335038, 0.552385, -0.763296,
		0.452861, 0.615998, 0.644565,
		0.826236, -0.561620, -0.043771,
		33.671192, 33.991802, 46.126968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568195, 34.870354, 46.034916>,  <33.092827, 34.384937, 46.157608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568195, 34.870354, 46.034916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725582, 34.534641, 45.884827>,  <33.820015, 34.333214, 45.794773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725582, 34.534641, 45.884827>,  <33.568195, 34.870354, 46.034916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725582, 34.534641, 45.884827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291379, 0.500944, -0.814956,
		0.871943, 0.211325, 0.441653,
		0.393464, -0.839283, -0.375218,
		33.843620, 34.282856, 45.772263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197708, 35.047527, 45.776318>,  <33.568195, 34.870354, 46.034916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197708, 35.047527, 45.776318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096840, 34.700584, 45.604691>,  <34.036320, 34.492420, 45.501713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096840, 34.700584, 45.604691>,  <34.197708, 35.047527, 45.776318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096840, 34.700584, 45.604691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140986, 0.405737, -0.903051,
		0.957358, -0.288214, 0.019971,
		-0.252169, -0.867358, -0.429069,
		34.021191, 34.440376, 45.475971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671291, 34.979141, 45.219105>,  <34.197708, 35.047527, 45.776318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671291, 34.979141, 45.219105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394993, 34.707836, 45.118835>,  <34.229214, 34.545055, 45.058674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394993, 34.707836, 45.118835>,  <34.671291, 34.979141, 45.219105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394993, 34.707836, 45.118835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063477, 0.288450, -0.955389,
		0.720308, -0.675841, -0.156191,
		-0.690744, -0.678259, -0.250673,
		34.187771, 34.504360, 45.043633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917011, 34.644325, 44.515266>,  <34.671291, 34.979141, 45.219105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917011, 34.644325, 44.515266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526421, 34.562614, 44.542850>,  <34.292065, 34.513588, 44.559402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526421, 34.562614, 44.542850>,  <34.917011, 34.644325, 44.515266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526421, 34.562614, 44.542850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146532, 0.394152, -0.907288,
		0.158158, -0.896055, -0.414815,
		-0.976480, -0.204279, 0.068962,
		34.233475, 34.501331, 44.563538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760853, 34.240170, 43.935139>,  <34.917011, 34.644325, 44.515266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760853, 34.240170, 43.935139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.411671, 34.399315, 44.048031>,  <34.202160, 34.494801, 44.115768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.411671, 34.399315, 44.048031>,  <34.760853, 34.240170, 43.935139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411671, 34.399315, 44.048031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125872, 0.375268, -0.918330,
		-0.471279, -0.837187, -0.277513,
		-0.872956, 0.397859, 0.282234,
		34.149784, 34.518673, 44.132702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217602, 34.069576, 43.493896>,  <34.760853, 34.240170, 43.935139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217602, 34.069576, 43.493896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.077412, 34.406292, 43.658119>,  <33.993298, 34.608322, 43.756653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.077412, 34.406292, 43.658119>,  <34.217602, 34.069576, 43.493896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077412, 34.406292, 43.658119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279603, 0.324334, -0.903675,
		-0.893862, -0.431509, 0.121696,
		-0.350474, 0.841788, 0.410561,
		33.972271, 34.658829, 43.781288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633373, 34.166458, 43.103706>,  <34.217602, 34.069576, 43.493896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633373, 34.166458, 43.103706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712368, 34.514790, 43.283775>,  <33.759766, 34.723789, 43.391815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712368, 34.514790, 43.283775>,  <33.633373, 34.166458, 43.103706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712368, 34.514790, 43.283775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006498, 0.460368, -0.887704,
		-0.980284, 0.172383, 0.096575,
		0.197485, 0.870830, 0.450172,
		33.771614, 34.776039, 43.418827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198692, 34.744301, 42.807098>,  <33.633373, 34.166458, 43.103706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198692, 34.744301, 42.807098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.514736, 34.940697, 42.953880>,  <33.704361, 35.058533, 43.041950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.514736, 34.940697, 42.953880>,  <33.198692, 34.744301, 42.807098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514736, 34.940697, 42.953880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024612, 0.572762, -0.819352,
		-0.612469, 0.656411, 0.440461,
		0.790111, 0.490987, 0.366955,
		33.751770, 35.087994, 43.063969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017624, 35.466068, 42.695320>,  <33.198692, 34.744301, 42.807098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017624, 35.466068, 42.695320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.414322, 35.440212, 42.739605>,  <33.652340, 35.424698, 42.766174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.414322, 35.440212, 42.739605>,  <33.017624, 35.466068, 42.695320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414322, 35.440212, 42.739605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128040, 0.542589, -0.830183,
		-0.006405, 0.837507, 0.546388,
		0.991748, -0.064642, 0.110710,
		33.711845, 35.420818, 42.772820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242569, 36.124603, 42.597954>,  <33.017624, 35.466068, 42.695320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242569, 36.124603, 42.597954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.594357, 35.936962, 42.565746>,  <33.805428, 35.824379, 42.546421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.594357, 35.936962, 42.565746>,  <33.242569, 36.124603, 42.597954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594357, 35.936962, 42.565746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250264, 0.599670, -0.760108,
		0.404851, 0.648338, 0.644789,
		0.879467, -0.469098, -0.080521,
		33.858196, 35.796234, 42.541592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702808, 36.671711, 42.687550>,  <33.242569, 36.124603, 42.597954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702808, 36.671711, 42.687550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876945, 36.371964, 42.487984>,  <33.981426, 36.192116, 42.368244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876945, 36.371964, 42.487984>,  <33.702808, 36.671711, 42.687550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876945, 36.371964, 42.487984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244175, 0.631702, -0.735752,
		0.866520, 0.198481, 0.457984,
		0.435342, -0.749372, -0.498918,
		34.007549, 36.147152, 42.338306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274055, 36.922611, 42.555534>,  <33.702808, 36.671711, 42.687550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274055, 36.922611, 42.555534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211872, 36.641670, 42.277676>,  <34.174561, 36.473106, 42.110962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211872, 36.641670, 42.277676>,  <34.274055, 36.922611, 42.555534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211872, 36.641670, 42.277676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085500, 0.690987, -0.717793,
		0.984136, -0.170978, -0.047368,
		-0.155458, -0.702356, -0.694643,
		34.165234, 36.430962, 42.069283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841225, 37.052734, 42.096294>,  <34.274055, 36.922611, 42.555534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841225, 37.052734, 42.096294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560410, 36.855579, 41.890694>,  <34.391922, 36.737286, 41.767334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560410, 36.855579, 41.890694>,  <34.841225, 37.052734, 42.096294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560410, 36.855579, 41.890694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104911, 0.642319, -0.759223,
		0.704370, -0.586928, -0.399222,
		-0.702037, -0.492892, -0.514006,
		34.349796, 36.707714, 41.736492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567120, 37.060005, 42.360722>,  <34.841225, 37.052734, 42.096294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567120, 37.060005, 42.360722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.941025, 37.189632, 42.418953>,  <36.165367, 37.267410, 42.453892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.941025, 37.189632, 42.418953>,  <35.567120, 37.060005, 42.360722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941025, 37.189632, 42.418953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054298, -0.274627, 0.960016,
		0.351095, -0.905293, -0.239115,
		0.934764, 0.324073, 0.145576,
		36.221455, 37.286854, 42.462627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910427, 36.562340, 42.772560>,  <35.567120, 37.060005, 42.360722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910427, 36.562340, 42.772560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091984, 36.913296, 42.834747>,  <36.200920, 37.123867, 42.872059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091984, 36.913296, 42.834747>,  <35.910427, 36.562340, 42.772560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091984, 36.913296, 42.834747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072838, -0.137362, 0.987839,
		0.888073, -0.459700, 0.001560,
		0.453895, 0.877387, 0.155471,
		36.228153, 37.176514, 42.881390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479534, 36.341167, 43.239330>,  <35.910427, 36.562340, 42.772560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479534, 36.341167, 43.239330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.390347, 36.730625, 43.258530>,  <36.336834, 36.964298, 43.270050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.390347, 36.730625, 43.258530>,  <36.479534, 36.341167, 43.239330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390347, 36.730625, 43.258530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205086, -0.094986, 0.974124,
		0.953008, 0.207359, 0.220860,
		-0.222972, 0.973643, 0.047996,
		36.323456, 37.022717, 43.272930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892223, 36.595825, 43.754326>,  <36.479534, 36.341167, 43.239330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892223, 36.595825, 43.754326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596275, 36.863808, 43.729832>,  <36.418705, 37.024597, 43.715134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596275, 36.863808, 43.729832>,  <36.892223, 36.595825, 43.754326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596275, 36.863808, 43.729832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025330, 0.118701, 0.992607,
		0.672272, 0.732850, -0.104794,
		-0.739871, 0.669956, -0.061236,
		36.374313, 37.064796, 43.711460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143295, 37.109451, 44.201481>,  <36.892223, 36.595825, 43.754326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143295, 37.109451, 44.201481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.748745, 37.166992, 44.169582>,  <36.512012, 37.201519, 44.150444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.748745, 37.166992, 44.169582>,  <37.143295, 37.109451, 44.201481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748745, 37.166992, 44.169582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057260, 0.154194, 0.986380,
		0.154194, 0.977512, -0.143856,
		-0.986380, 0.143856, -0.079748,
		36.452831, 37.210148, 44.145657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975655, 37.558487, 44.780090>,  <37.143295, 37.109451, 44.201481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975655, 37.558487, 44.780090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.628738, 37.393867, 44.668068>,  <36.420589, 37.295097, 44.600853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.628738, 37.393867, 44.668068>,  <36.975655, 37.558487, 44.780090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628738, 37.393867, 44.668068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256966, -0.111712, 0.959942,
		-0.426345, 0.904517, -0.008866,
		-0.867294, -0.411545, -0.280058,
		36.368549, 37.270405, 44.584049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390911, 37.902237, 45.189724>,  <36.975655, 37.558487, 44.780090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390911, 37.902237, 45.189724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258587, 37.549767, 45.054615>,  <36.179192, 37.338284, 44.973549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258587, 37.549767, 45.054615>,  <36.390911, 37.902237, 45.189724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258587, 37.549767, 45.054615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129238, -0.312250, 0.941168,
		-0.934805, 0.355003, -0.010585,
		-0.330813, -0.881177, -0.337773,
		36.159344, 37.285412, 44.953281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973728, 37.686413, 45.779369>,  <36.390911, 37.902237, 45.189724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973728, 37.686413, 45.779369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978298, 37.362755, 45.544373>,  <35.981041, 37.168560, 45.403374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978298, 37.362755, 45.544373>,  <35.973728, 37.686413, 45.779369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978298, 37.362755, 45.544373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185873, -0.579013, 0.793848,
		-0.982507, 0.100132, -0.157013,
		0.011423, -0.809147, -0.587496,
		35.981724, 37.120010, 45.368122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398750, 37.255875, 45.951725>,  <35.973728, 37.686413, 45.779369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398750, 37.255875, 45.951725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679199, 37.018543, 45.793541>,  <35.847469, 36.876144, 45.698631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679199, 37.018543, 45.793541>,  <35.398750, 37.255875, 45.951725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679199, 37.018543, 45.793541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054140, -0.597305, 0.800185,
		-0.710987, -0.539614, -0.450904,
		0.701118, -0.593333, -0.395461,
		35.889534, 36.840542, 45.674904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163219, 36.555916, 46.047787>,  <35.398750, 37.255875, 45.951725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163219, 36.555916, 46.047787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.559216, 36.533848, 45.995819>,  <35.796814, 36.520607, 45.964638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.559216, 36.533848, 45.995819>,  <35.163219, 36.555916, 46.047787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559216, 36.533848, 45.995819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053451, -0.705335, 0.706856,
		-0.130636, -0.706723, -0.695325,
		0.989988, -0.055174, -0.129917,
		35.856213, 36.517296, 45.956844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276550, 35.898453, 46.047077>,  <35.163219, 36.555916, 46.047787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276550, 35.898453, 46.047077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.626183, 36.073456, 46.131527>,  <35.835960, 36.178455, 46.182198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.626183, 36.073456, 46.131527>,  <35.276550, 35.898453, 46.047077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626183, 36.073456, 46.131527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249000, -0.776679, 0.578592,
		0.417112, -0.453167, -0.787818,
		0.874081, 0.437504, 0.211123,
		35.888405, 36.204708, 46.194862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756702, 35.349621, 45.958012>,  <35.276550, 35.898453, 46.047077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756702, 35.349621, 45.958012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910858, 35.639229, 46.186840>,  <36.003353, 35.812996, 46.324139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910858, 35.639229, 46.186840>,  <35.756702, 35.349621, 45.958012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910858, 35.639229, 46.186840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171065, -0.665274, 0.726738,
		0.906759, -0.182215, -0.380244,
		0.385389, 0.724022, 0.572073,
		36.026474, 35.856434, 46.358463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265282, 34.990723, 46.374641>,  <35.756702, 35.349621, 45.958012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265282, 34.990723, 46.374641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.214516, 35.325817, 46.587093>,  <36.184055, 35.526875, 46.714565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.214516, 35.325817, 46.587093>,  <36.265282, 34.990723, 46.374641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214516, 35.325817, 46.587093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023141, -0.537810, 0.842749,
		0.991644, 0.094663, 0.087640,
		-0.126911, 0.837735, 0.531125,
		36.176441, 35.577137, 46.746429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592213, 34.842411, 46.901157>,  <36.265282, 34.990723, 46.374641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592213, 34.842411, 46.901157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.378235, 35.160172, 47.016235>,  <36.249847, 35.350826, 47.085281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.378235, 35.160172, 47.016235>,  <36.592213, 34.842411, 46.901157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378235, 35.160172, 47.016235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187148, -0.443464, 0.876536,
		0.823901, 0.415055, 0.385898,
		-0.534943, 0.794399, 0.287694,
		36.217751, 35.398491, 47.102543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239807, 34.933525, 47.351547>,  <36.592213, 34.842411, 46.901157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239807, 34.933525, 47.351547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.483887, 34.633667, 47.454075>,  <37.630333, 34.453754, 47.515591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.483887, 34.633667, 47.454075>,  <37.239807, 34.933525, 47.351547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483887, 34.633667, 47.454075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268322, -0.108863, -0.957158,
		0.745430, 0.652828, 0.134718,
		0.610194, -0.749643, 0.256318,
		37.666946, 34.408775, 47.530972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838352, 35.124409, 47.054108>,  <37.239807, 34.933525, 47.351547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838352, 35.124409, 47.054108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.800552, 34.728821, 47.099720>,  <37.777870, 34.491467, 47.127087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.800552, 34.728821, 47.099720>,  <37.838352, 35.124409, 47.054108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800552, 34.728821, 47.099720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078297, -0.121573, -0.989490,
		0.992441, -0.084581, 0.088922,
		-0.094502, -0.988972, 0.114031,
		37.772202, 34.432129, 47.133930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451992, 34.887657, 46.748543>,  <37.838352, 35.124409, 47.054108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451992, 34.887657, 46.748543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207649, 34.571960, 46.773682>,  <38.061043, 34.382542, 46.788765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207649, 34.571960, 46.773682>,  <38.451992, 34.887657, 46.748543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207649, 34.571960, 46.773682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176527, -0.213144, -0.960941,
		0.771811, -0.575904, 0.269523,
		-0.610857, -0.789243, 0.062844,
		38.024391, 34.335186, 46.792534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918854, 34.217472, 46.550556>,  <38.451992, 34.887657, 46.748543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918854, 34.217472, 46.550556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535500, 34.115532, 46.499100>,  <38.305489, 34.054367, 46.468224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535500, 34.115532, 46.499100>,  <38.918854, 34.217472, 46.550556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535500, 34.115532, 46.499100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214284, -0.344455, -0.914020,
		0.188627, -0.903550, 0.384731,
		-0.958385, -0.254851, -0.128643,
		38.247986, 34.039078, 46.460506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792263, 33.455788, 46.555939>,  <38.918854, 34.217472, 46.550556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792263, 33.455788, 46.555939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.511753, 33.635971, 46.334923>,  <38.343445, 33.744080, 46.202312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.511753, 33.635971, 46.334923>,  <38.792263, 33.455788, 46.555939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511753, 33.635971, 46.334923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359545, -0.445781, -0.819760,
		-0.615579, -0.773540, 0.150655,
		-0.701277, 0.450460, -0.552536,
		38.301369, 33.771111, 46.169163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614487, 32.920319, 46.125095>,  <38.792263, 33.455788, 46.555939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614487, 32.920319, 46.125095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454720, 33.247250, 45.958988>,  <38.358860, 33.443409, 45.859325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454720, 33.247250, 45.958988>,  <38.614487, 32.920319, 46.125095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454720, 33.247250, 45.958988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228756, -0.349787, -0.908471,
		-0.887772, -0.457851, -0.047259,
		-0.399414, 0.817326, -0.415267,
		38.334896, 33.492447, 45.834408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312984, 32.671032, 45.564503>,  <38.614487, 32.920319, 46.125095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312984, 32.671032, 45.564503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327972, 33.064587, 45.494576>,  <38.336967, 33.300720, 45.452618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327972, 33.064587, 45.494576>,  <38.312984, 32.671032, 45.564503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327972, 33.064587, 45.494576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233956, -0.178718, -0.955680,
		-0.971525, -0.005088, -0.236883,
		0.037473, 0.983887, -0.174819,
		38.339214, 33.359753, 45.442131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895924, 32.655289, 44.962337>,  <38.312984, 32.671032, 45.564503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895924, 32.655289, 44.962337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115574, 32.989445, 44.972076>,  <38.247364, 33.189938, 44.977921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115574, 32.989445, 44.972076>,  <37.895924, 32.655289, 44.962337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115574, 32.989445, 44.972076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149909, -0.069799, -0.986233,
		-0.822187, 0.545212, -0.163560,
		0.549122, 0.835387, 0.024345,
		38.280312, 33.240063, 44.979382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632267, 33.103184, 44.462494>,  <37.895924, 32.655289, 44.962337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632267, 33.103184, 44.462494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015270, 33.211998, 44.500793>,  <38.245071, 33.277287, 44.523773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015270, 33.211998, 44.500793>,  <37.632267, 33.103184, 44.462494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015270, 33.211998, 44.500793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120806, -0.076882, -0.989694,
		-0.261875, 0.959210, -0.106480,
		0.957511, 0.272040, 0.095744,
		38.302525, 33.293610, 44.529518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775581, 33.614193, 43.863781>,  <37.632267, 33.103184, 44.462494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775581, 33.614193, 43.863781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134930, 33.508347, 44.004009>,  <38.350540, 33.444839, 44.088146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134930, 33.508347, 44.004009>,  <37.775581, 33.614193, 43.863781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134930, 33.508347, 44.004009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340204, -0.085641, -0.936444,
		0.277822, 0.960543, 0.013086,
		0.898374, -0.264617, 0.350574,
		38.404442, 33.428963, 44.109180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260689, 34.055130, 43.442928>,  <37.775581, 33.614193, 43.863781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260689, 34.055130, 43.442928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498608, 33.764027, 43.579506>,  <38.641357, 33.589363, 43.661453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498608, 33.764027, 43.579506>,  <38.260689, 34.055130, 43.442928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498608, 33.764027, 43.579506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488843, -0.009741, -0.872317,
		0.638163, 0.685764, 0.349966,
		0.594794, -0.727759, 0.341447,
		38.677048, 33.545700, 43.681942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922955, 34.401608, 43.488419>,  <38.260689, 34.055130, 43.442928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922955, 34.401608, 43.488419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.948620, 34.006100, 43.434425>,  <38.964020, 33.768795, 43.402027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.948620, 34.006100, 43.434425>,  <38.922955, 34.401608, 43.488419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948620, 34.006100, 43.434425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481442, 0.149153, -0.863694,
		0.874126, -0.009571, 0.485605,
		0.064163, -0.988768, -0.134987,
		38.967869, 33.709469, 43.393929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601078, 34.253410, 43.278286>,  <38.922955, 34.401608, 43.488419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601078, 34.253410, 43.278286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.403172, 33.927349, 43.157799>,  <39.284428, 33.731712, 43.085506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.403172, 33.927349, 43.157799>,  <39.601078, 34.253410, 43.278286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403172, 33.927349, 43.157799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487343, 0.026725, -0.872801,
		0.719518, -0.578627, 0.384037,
		-0.494763, -0.815154, -0.301219,
		39.254742, 33.682804, 43.067432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007648, 33.960873, 42.756294>,  <39.601078, 34.253410, 43.278286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007648, 33.960873, 42.756294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.656059, 33.788494, 42.674625>,  <39.445107, 33.685066, 42.625626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.656059, 33.788494, 42.674625>,  <40.007648, 33.960873, 42.756294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656059, 33.788494, 42.674625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200805, 0.053856, -0.978150,
		0.432527, -0.900768, 0.039198,
		-0.878975, -0.430947, -0.204173,
		39.392368, 33.659210, 42.613373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.336388, 42.453377, 30.522554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.379436, 42.320446, 30.147753>,  <29.405266, 42.240688, 29.922871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.379436, 42.320446, 30.147753>,  <29.336388, 42.453377, 30.522554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379436, 42.320446, 30.147753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444322, -0.859196, 0.253693,
		-0.889380, 0.389028, -0.240127,
		0.107622, -0.332323, -0.937005,
		29.411724, 42.220749, 29.866652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679083, 42.220345, 30.277452>,  <29.336388, 42.453377, 30.522554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679083, 42.220345, 30.277452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930901, 42.022118, 30.038092>,  <29.081991, 41.903179, 29.894476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930901, 42.022118, 30.038092>,  <28.679083, 42.220345, 30.277452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930901, 42.022118, 30.038092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423929, -0.864524, 0.269968,
		-0.651119, 0.083722, -0.754344,
		0.629546, -0.495569, -0.598400,
		29.119764, 41.873447, 29.858572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232298, 41.748692, 29.882229>,  <28.679083, 42.220345, 30.277452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232298, 41.748692, 29.882229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605757, 41.610748, 29.843493>,  <28.829832, 41.527981, 29.820251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605757, 41.610748, 29.843493>,  <28.232298, 41.748692, 29.882229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605757, 41.610748, 29.843493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343888, -0.938620, 0.027088,
		-0.100237, 0.008011, -0.994931,
		0.933645, -0.344861, -0.096839,
		28.885851, 41.507290, 29.814442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218246, 41.153534, 29.466257>,  <28.232298, 41.748692, 29.882229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218246, 41.153534, 29.466257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555361, 41.119781, 29.678894>,  <28.757629, 41.099529, 29.806477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555361, 41.119781, 29.678894>,  <28.218246, 41.153534, 29.466257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555361, 41.119781, 29.678894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247212, -0.937984, 0.243049,
		0.478117, -0.336255, -0.811380,
		0.842788, -0.084377, 0.531592,
		28.808197, 41.094467, 29.838371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503767, 40.453167, 29.335844>,  <28.218246, 41.153534, 29.466257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503767, 40.453167, 29.335844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677155, 40.563961, 29.678862>,  <28.781187, 40.630436, 29.884672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677155, 40.563961, 29.678862>,  <28.503767, 40.453167, 29.335844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677155, 40.563961, 29.678862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021199, -0.948195, 0.316980,
		0.900918, -0.155581, -0.405143,
		0.433471, 0.276985, 0.857545,
		28.807196, 40.647057, 29.936125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881025, 39.845203, 29.504759>,  <28.503767, 40.453167, 29.335844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881025, 39.845203, 29.504759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839388, 40.073231, 29.830748>,  <28.814405, 40.210049, 30.026340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839388, 40.073231, 29.830748>,  <28.881025, 39.845203, 29.504759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839388, 40.073231, 29.830748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068141, -0.821587, 0.565996,
		0.992231, 0.003383, 0.124366,
		-0.104092, 0.570073, 0.814973,
		28.808161, 40.244251, 30.075239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234068, 39.534580, 30.137596>,  <28.881025, 39.845203, 29.504759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234068, 39.534580, 30.137596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969444, 39.793167, 30.289608>,  <28.810671, 39.948318, 30.380816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969444, 39.793167, 30.289608>,  <29.234068, 39.534580, 30.137596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969444, 39.793167, 30.289608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323762, -0.703339, 0.632844,
		0.676402, 0.295624, 0.674601,
		-0.661558, 0.646467, 0.380028,
		28.770977, 39.987106, 30.403616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270872, 39.426300, 30.841688>,  <29.234068, 39.534580, 30.137596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270872, 39.426300, 30.841688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921988, 39.619492, 30.810755>,  <28.712656, 39.735405, 30.792194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921988, 39.619492, 30.810755>,  <29.270872, 39.426300, 30.841688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921988, 39.619492, 30.810755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415499, -0.648175, 0.638146,
		0.258085, 0.588729, 0.766022,
		-0.872211, 0.482978, -0.077332,
		28.660324, 39.764385, 30.787556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008320, 39.552570, 31.549105>,  <29.270872, 39.426300, 30.841688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008320, 39.552570, 31.549105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684746, 39.599911, 31.318760>,  <28.490601, 39.628315, 31.180553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684746, 39.599911, 31.318760>,  <29.008320, 39.552570, 31.549105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684746, 39.599911, 31.318760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557983, -0.463044, 0.688654,
		-0.185144, 0.878398, 0.440612,
		-0.808935, 0.118354, -0.575861,
		28.442064, 39.635418, 31.146002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457836, 39.775463, 32.039604>,  <29.008320, 39.552570, 31.549105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457836, 39.775463, 32.039604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307152, 39.624741, 31.701111>,  <28.216742, 39.534309, 31.498014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307152, 39.624741, 31.701111>,  <28.457836, 39.775463, 32.039604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307152, 39.624741, 31.701111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571860, -0.624075, 0.532453,
		-0.728742, 0.684507, 0.019618,
		-0.376711, -0.376803, -0.846232,
		28.194138, 39.511700, 31.447241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646240, 39.705238, 32.143742>,  <28.457836, 39.775463, 32.039604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646240, 39.705238, 32.143742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.750443, 39.459805, 31.845573>,  <27.812963, 39.312546, 31.666672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.750443, 39.459805, 31.845573>,  <27.646240, 39.705238, 32.143742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750443, 39.459805, 31.845573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529418, -0.736434, 0.421168,
		-0.807375, 0.284923, -0.516687,
		0.260505, -0.613583, -0.745421,
		27.828594, 39.275730, 31.621946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023537, 39.327526, 32.001102>,  <27.646240, 39.705238, 32.143742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023537, 39.327526, 32.001102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304869, 39.101650, 31.828381>,  <27.473667, 38.966125, 31.724747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304869, 39.101650, 31.828381>,  <27.023537, 39.327526, 32.001102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304869, 39.101650, 31.828381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380080, -0.812045, 0.442857,
		-0.600724, -0.147352, -0.785760,
		0.703328, -0.564686, -0.431809,
		27.515867, 38.932243, 31.698837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642778, 38.686333, 31.842499>,  <27.023537, 39.327526, 32.001102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642778, 38.686333, 31.842499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.029312, 38.583965, 31.831909>,  <27.261232, 38.522545, 31.825556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.029312, 38.583965, 31.831909>,  <26.642778, 38.686333, 31.842499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029312, 38.583965, 31.831909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230398, -0.906553, 0.353664,
		-0.114509, -0.335659, -0.934998,
		0.966336, -0.255919, -0.026474,
		27.319212, 38.507191, 31.823967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703392, 37.955311, 31.542612>,  <26.642778, 38.686333, 31.842499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703392, 37.955311, 31.542612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033081, 38.021923, 31.759102>,  <27.230894, 38.061890, 31.888996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033081, 38.021923, 31.759102>,  <26.703392, 37.955311, 31.542612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033081, 38.021923, 31.759102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131751, -0.873154, 0.469301,
		0.550724, -0.458116, -0.697734,
		0.824224, 0.166528, 0.541225,
		27.280348, 38.071880, 31.921469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934654, 37.248623, 31.588684>,  <26.703392, 37.955311, 31.542612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934654, 37.248623, 31.588684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144205, 37.461281, 31.854889>,  <27.269936, 37.588875, 32.014614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144205, 37.461281, 31.854889>,  <26.934654, 37.248623, 31.588684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144205, 37.461281, 31.854889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067693, -0.804823, 0.589642,
		0.849099, -0.263850, -0.457617,
		0.523878, 0.531642, 0.665514,
		27.301369, 37.620773, 32.054543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529627, 36.802166, 31.746510>,  <26.934654, 37.248623, 31.588684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529627, 36.802166, 31.746510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466339, 37.074177, 32.032875>,  <27.428366, 37.237381, 32.204697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466339, 37.074177, 32.032875>,  <27.529627, 36.802166, 31.746510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466339, 37.074177, 32.032875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112403, -0.707931, 0.697280,
		0.980985, 0.190794, 0.035571,
		-0.158219, 0.680023, 0.715916,
		27.418873, 37.278183, 32.247650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908091, 36.568516, 32.419575>,  <27.529627, 36.802166, 31.746510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908091, 36.568516, 32.419575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.657358, 36.848812, 32.555836>,  <27.506920, 37.016991, 32.637592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.657358, 36.848812, 32.555836>,  <27.908091, 36.568516, 32.419575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657358, 36.848812, 32.555836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009526, -0.430277, 0.902646,
		0.779098, 0.569050, 0.263035,
		-0.626829, 0.700745, 0.340649,
		27.469309, 37.059036, 32.658031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235521, 36.834309, 32.912373>,  <27.908091, 36.568516, 32.419575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235521, 36.834309, 32.912373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.857788, 36.919041, 33.013062>,  <27.631147, 36.969879, 33.073475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.857788, 36.919041, 33.013062>,  <28.235521, 36.834309, 32.912373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857788, 36.919041, 33.013062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149808, -0.404330, 0.902261,
		0.292906, 0.889744, 0.350087,
		-0.944332, 0.211832, 0.251722,
		27.574488, 36.982590, 33.088577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302902, 36.809155, 33.610657>,  <28.235521, 36.834309, 32.912373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302902, 36.809155, 33.610657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.907154, 36.810673, 33.552509>,  <27.669704, 36.811584, 33.517620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.907154, 36.810673, 33.552509>,  <28.302902, 36.809155, 33.610657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907154, 36.810673, 33.552509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133772, -0.415697, 0.899612,
		-0.057012, 0.909495, 0.411786,
		-0.989371, 0.003797, -0.145364,
		27.610342, 36.811813, 33.508900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897406, 37.201283, 34.182526>,  <28.302902, 36.809155, 33.610657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897406, 37.201283, 34.182526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670385, 36.912926, 34.023430>,  <27.534172, 36.739910, 33.927975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670385, 36.912926, 34.023430>,  <27.897406, 37.201283, 34.182526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670385, 36.912926, 34.023430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251636, -0.308083, 0.917477,
		-0.783941, 0.620800, -0.006550,
		-0.567552, -0.720896, -0.397735,
		27.500120, 36.696655, 33.904110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597845, 37.567986, 34.104797>,  <27.897406, 37.201283, 34.182526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597845, 37.567986, 34.104797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.952917, 37.445423, 34.242283>,  <29.165960, 37.371887, 34.324776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.952917, 37.445423, 34.242283>,  <28.597845, 37.567986, 34.104797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952917, 37.445423, 34.242283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348666, 0.934842, -0.067110,
		-0.300757, 0.179414, 0.936673,
		0.887681, -0.306402, 0.343716,
		29.219221, 37.353504, 34.345398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914337, 37.984375, 34.599407>,  <28.597845, 37.567986, 34.104797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914337, 37.984375, 34.599407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.259842, 37.853386, 34.446213>,  <29.467144, 37.774792, 34.354298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.259842, 37.853386, 34.446213>,  <28.914337, 37.984375, 34.599407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259842, 37.853386, 34.446213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337003, 0.940470, -0.044094,
		0.374628, -0.090981, 0.922701,
		0.863761, -0.327472, -0.382987,
		29.518970, 37.755146, 34.331318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441004, 38.413467, 34.943119>,  <28.914337, 37.984375, 34.599407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441004, 38.413467, 34.943119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586210, 38.276714, 34.596401>,  <29.673334, 38.194664, 34.388371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586210, 38.276714, 34.596401>,  <29.441004, 38.413467, 34.943119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586210, 38.276714, 34.596401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515399, 0.848665, -0.118879,
		0.776262, -0.403592, 0.484283,
		0.363016, -0.341880, -0.866797,
		29.695114, 38.174149, 34.336361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123722, 38.681278, 34.947414>,  <29.441004, 38.413467, 34.943119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123722, 38.681278, 34.947414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.041471, 38.587662, 34.567322>,  <29.992121, 38.531490, 34.339268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.041471, 38.587662, 34.567322>,  <30.123722, 38.681278, 34.947414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041471, 38.587662, 34.567322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605950, 0.732013, -0.311420,
		0.768468, -0.639829, -0.008701,
		-0.205625, -0.234043, -0.950232,
		29.979784, 38.517448, 34.282253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756832, 38.818478, 34.466393>,  <30.123722, 38.681278, 34.947414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756832, 38.818478, 34.466393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.450443, 38.829117, 34.209461>,  <30.266611, 38.835499, 34.055302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.450443, 38.829117, 34.209461>,  <30.756832, 38.818478, 34.466393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450443, 38.829117, 34.209461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447317, 0.739662, -0.502800,
		0.461733, -0.672453, -0.578455,
		-0.765970, 0.026594, -0.642326,
		30.220652, 38.837093, 34.016762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046667, 39.020348, 33.846592>,  <30.756832, 38.818478, 34.466393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046667, 39.020348, 33.846592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.660246, 39.083084, 33.764481>,  <30.428392, 39.120724, 33.715214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.660246, 39.083084, 33.764481>,  <31.046667, 39.020348, 33.846592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660246, 39.083084, 33.764481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256483, 0.677355, -0.689497,
		0.030907, -0.718743, -0.694589,
		-0.966054, 0.156840, -0.205280,
		30.370430, 39.130135, 33.702896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932966, 39.132389, 33.047348>,  <31.046667, 39.020348, 33.846592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932966, 39.132389, 33.047348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.594694, 39.280159, 33.201412>,  <30.391731, 39.368820, 33.293850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.594694, 39.280159, 33.201412>,  <30.932966, 39.132389, 33.047348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594694, 39.280159, 33.201412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036749, 0.760285, -0.648549,
		-0.532421, -0.534312, -0.656535,
		-0.845682, 0.369428, 0.385156,
		30.340990, 39.390987, 33.316959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580917, 39.476597, 32.505367>,  <30.932966, 39.132389, 33.047348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580917, 39.476597, 32.505367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.451918, 39.648422, 32.842762>,  <30.374517, 39.751518, 33.045200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.451918, 39.648422, 32.842762>,  <30.580917, 39.476597, 32.505367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451918, 39.648422, 32.842762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153337, 0.903037, -0.401264,
		-0.934067, -0.000070, -0.357097,
		-0.322500, 0.429564, 0.843486,
		30.355167, 39.777290, 33.095806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039339, 39.885170, 32.351185>,  <30.580917, 39.476597, 32.505367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039339, 39.885170, 32.351185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.164320, 40.043732, 32.696491>,  <30.239309, 40.138870, 32.903675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.164320, 40.043732, 32.696491>,  <30.039339, 39.885170, 32.351185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164320, 40.043732, 32.696491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143114, 0.878753, -0.455315,
		-0.939091, 0.265811, 0.217838,
		0.312454, 0.396406, 0.863270,
		30.258057, 40.162655, 32.955471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700338, 40.573895, 32.444546>,  <30.039339, 39.885170, 32.351185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700338, 40.573895, 32.444546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.009016, 40.590256, 32.698418>,  <30.194223, 40.600075, 32.850739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.009016, 40.590256, 32.698418>,  <29.700338, 40.573895, 32.444546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009016, 40.590256, 32.698418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222519, 0.917490, -0.329693,
		-0.595795, 0.395650, 0.698920,
		0.771696, 0.040907, 0.634675,
		30.240524, 40.602528, 32.888821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674387, 41.182293, 32.992744>,  <29.700338, 40.573895, 32.444546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674387, 41.182293, 32.992744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063280, 41.093288, 32.963749>,  <30.296616, 41.039886, 32.946350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063280, 41.093288, 32.963749>,  <29.674387, 41.182293, 32.992744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063280, 41.093288, 32.963749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207666, 0.963115, -0.171124,
		0.107893, 0.151319, 0.982579,
		0.972231, -0.222511, -0.072490,
		30.354950, 41.026535, 32.942001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922903, 41.801594, 33.131081>,  <29.674387, 41.182293, 32.992744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922903, 41.801594, 33.131081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240524, 41.601330, 32.993202>,  <30.431097, 41.481171, 32.910477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240524, 41.601330, 32.993202>,  <29.922903, 41.801594, 33.131081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240524, 41.601330, 32.993202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413272, 0.860519, -0.297847,
		0.445738, 0.094054, 0.890209,
		0.794055, -0.500660, -0.344696,
		30.478741, 41.451130, 32.889793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493895, 42.284550, 33.263538>,  <29.922903, 41.801594, 33.131081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493895, 42.284550, 33.263538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577234, 42.027740, 32.968403>,  <30.627237, 41.873653, 32.791321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577234, 42.027740, 32.968403>,  <30.493895, 42.284550, 33.263538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577234, 42.027740, 32.968403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219591, 0.765836, -0.604380,
		0.953085, -0.036100, 0.300543,
		0.208348, -0.642022, -0.737834,
		30.639738, 41.835133, 32.747051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118614, 42.545303, 33.029564>,  <30.493895, 42.284550, 33.263538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118614, 42.545303, 33.029564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.003359, 42.303619, 32.732399>,  <30.934206, 42.158611, 32.554100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.003359, 42.303619, 32.732399>,  <31.118614, 42.545303, 33.029564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003359, 42.303619, 32.732399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323482, 0.668789, -0.669388,
		0.901297, -0.433193, 0.002747,
		-0.288137, -0.604206, -0.742908,
		30.916918, 42.122356, 32.509525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786039, 42.342262, 32.646072>,  <31.118614, 42.545303, 33.029564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786039, 42.342262, 32.646072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.462349, 42.301815, 32.414581>,  <31.268135, 42.277546, 32.275688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.462349, 42.301815, 32.414581>,  <31.786039, 42.342262, 32.646072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462349, 42.301815, 32.414581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417890, 0.593323, -0.687994,
		0.412939, -0.798588, -0.437879,
		-0.809228, -0.101115, -0.578728,
		31.219582, 42.271481, 32.240963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030041, 42.408360, 32.034081>,  <31.786039, 42.342262, 32.646072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030041, 42.408360, 32.034081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.637774, 42.451550, 31.968790>,  <31.402414, 42.477463, 31.929617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.637774, 42.451550, 31.968790>,  <32.030041, 42.408360, 32.034081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637774, 42.451550, 31.968790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195089, 0.605258, -0.771753,
		0.015464, -0.788673, -0.614618,
		-0.980663, 0.107971, -0.163221,
		31.343575, 42.483940, 31.919823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981422, 42.415611, 31.253572>,  <32.030041, 42.408360, 32.034081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981422, 42.415611, 31.253572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.673141, 42.611374, 31.416792>,  <31.488173, 42.728832, 31.514723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.673141, 42.611374, 31.416792>,  <31.981422, 42.415611, 31.253572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673141, 42.611374, 31.416792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031455, 0.668821, -0.742758,
		-0.636421, -0.559609, -0.530855,
		-0.770701, 0.489404, 0.408049,
		31.441931, 42.758194, 31.539207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607229, 42.559277, 30.648254>,  <31.981422, 42.415611, 31.253572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607229, 42.559277, 30.648254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481348, 42.796989, 30.944305>,  <31.405819, 42.939617, 31.121937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481348, 42.796989, 30.944305>,  <31.607229, 42.559277, 30.648254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481348, 42.796989, 30.944305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059195, 0.790515, -0.609575,
		-0.947343, -0.148023, -0.283955,
		-0.314701, 0.594286, 0.740127,
		31.386938, 42.975277, 31.166344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063795, 42.890385, 30.435835>,  <31.607229, 42.559277, 30.648254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063795, 42.890385, 30.435835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203287, 43.129898, 30.724237>,  <31.286983, 43.273605, 30.897278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203287, 43.129898, 30.724237>,  <31.063795, 42.890385, 30.435835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203287, 43.129898, 30.724237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013032, 0.772323, -0.635096,
		-0.937132, 0.212082, 0.277137,
		0.348731, 0.598781, 0.721004,
		31.307907, 43.309532, 30.940538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627668, 43.468067, 30.373074>,  <31.063795, 42.890385, 30.435835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627668, 43.468067, 30.373074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.960167, 43.594116, 30.556257>,  <31.159666, 43.669746, 30.666168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.960167, 43.594116, 30.556257>,  <30.627668, 43.468067, 30.373074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960167, 43.594116, 30.556257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050638, 0.777464, -0.626886,
		-0.553592, 0.544287, 0.630308,
		0.831247, 0.315121, 0.457959,
		31.209541, 43.688652, 30.693645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397802, 44.181683, 30.534840>,  <30.627668, 43.468067, 30.373074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397802, 44.181683, 30.534840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793068, 44.124599, 30.557341>,  <31.030228, 44.090347, 30.570841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793068, 44.124599, 30.557341>,  <30.397802, 44.181683, 30.534840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793068, 44.124599, 30.557341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147943, 0.789714, -0.595370,
		0.040543, 0.596646, 0.801480,
		0.988165, -0.142711, 0.056252,
		31.089518, 44.081787, 30.574217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598484, 44.954609, 30.629169>,  <30.397802, 44.181683, 30.534840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598484, 44.954609, 30.629169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874746, 44.709335, 30.475805>,  <31.040503, 44.562172, 30.383787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874746, 44.709335, 30.475805>,  <30.598484, 44.954609, 30.629169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874746, 44.709335, 30.475805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145373, 0.637061, -0.756981,
		0.708424, 0.467074, 0.529129,
		0.690653, -0.613185, -0.383409,
		31.081942, 44.525379, 30.360783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.220577, 32.116360, 46.879673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831985, 32.037399, 46.827118>,  <36.598831, 31.990023, 46.795586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831985, 32.037399, 46.827118>,  <37.220577, 32.116360, 46.879673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831985, 32.037399, 46.827118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074068, -0.273734, 0.958949,
		-0.225263, 0.941330, 0.251306,
		-0.971478, -0.197402, -0.131385,
		36.540543, 31.978178, 46.787701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859310, 32.587807, 47.319912>,  <37.220577, 32.116360, 46.879673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859310, 32.587807, 47.319912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608910, 32.281975, 47.258545>,  <36.458668, 32.098476, 47.221725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608910, 32.281975, 47.258545>,  <36.859310, 32.587807, 47.319912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608910, 32.281975, 47.258545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016041, -0.209323, 0.977715,
		-0.779653, 0.609594, 0.143302,
		-0.626006, -0.764578, -0.153421,
		36.421108, 32.052601, 47.212521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344940, 32.596321, 47.835625>,  <36.859310, 32.587807, 47.319912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344940, 32.596321, 47.835625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304466, 32.218376, 47.711048>,  <36.280182, 31.991610, 47.636303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304466, 32.218376, 47.711048>,  <36.344940, 32.596321, 47.835625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304466, 32.218376, 47.711048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062312, -0.306414, 0.949857,
		-0.992915, 0.115515, -0.027873,
		-0.101182, -0.944863, -0.311440,
		36.274113, 31.934917, 47.617615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776840, 32.366684, 48.259827>,  <36.344940, 32.596321, 47.835625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776840, 32.366684, 48.259827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959240, 32.033569, 48.134266>,  <36.068680, 31.833702, 48.058929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959240, 32.033569, 48.134266>,  <35.776840, 32.366684, 48.259827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959240, 32.033569, 48.134266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038602, -0.333867, 0.941830,
		-0.889141, -0.441594, -0.120097,
		0.456003, -0.832783, -0.313901,
		36.096043, 31.783735, 48.040096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367477, 31.816351, 48.508232>,  <35.776840, 32.366684, 48.259827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367477, 31.816351, 48.508232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725372, 31.654602, 48.432407>,  <35.940109, 31.557552, 48.386913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725372, 31.654602, 48.432407>,  <35.367477, 31.816351, 48.508232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725372, 31.654602, 48.432407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026083, -0.376413, 0.926085,
		-0.445839, -0.833543, -0.326242,
		0.894733, -0.404376, -0.189561,
		35.993793, 31.533291, 48.375538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353329, 31.134909, 48.772976>,  <35.367477, 31.816351, 48.508232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353329, 31.134909, 48.772976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747803, 31.182150, 48.726528>,  <35.984489, 31.210495, 48.698658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747803, 31.182150, 48.726528>,  <35.353329, 31.134909, 48.772976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747803, 31.182150, 48.726528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155105, -0.412607, 0.897606,
		0.058099, -0.903220, -0.425227,
		0.986188, 0.118105, -0.116122,
		36.043659, 31.217581, 48.691692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697739, 30.500450, 48.934185>,  <35.353329, 31.134909, 48.772976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697739, 30.500450, 48.934185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976978, 30.783560, 48.977489>,  <36.144520, 30.953426, 49.003471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976978, 30.783560, 48.977489>,  <35.697739, 30.500450, 48.934185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976978, 30.783560, 48.977489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198325, -0.336421, 0.920591,
		0.687990, -0.621190, -0.375223,
		0.698095, 0.707774, 0.108257,
		36.186405, 30.995892, 49.009968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220661, 30.163477, 49.302776>,  <35.697739, 30.500450, 48.934185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220661, 30.163477, 49.302776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285931, 30.553782, 49.361099>,  <36.325092, 30.787964, 49.396091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285931, 30.553782, 49.361099>,  <36.220661, 30.163477, 49.302776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285931, 30.553782, 49.361099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081173, -0.160563, 0.983682,
		0.983252, -0.148676, -0.105405,
		0.163175, 0.975764, 0.145805,
		36.334885, 30.846510, 49.404842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787888, 30.116163, 49.696754>,  <36.220661, 30.163477, 49.302776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787888, 30.116163, 49.696754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595665, 30.461300, 49.759457>,  <36.480331, 30.668381, 49.797077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595665, 30.461300, 49.759457>,  <36.787888, 30.116163, 49.696754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595665, 30.461300, 49.759457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032921, -0.196373, 0.979977,
		0.876347, 0.465772, 0.122773,
		-0.480555, 0.862841, 0.156758,
		36.451500, 30.720152, 49.806484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194534, 30.361610, 50.176060>,  <36.787888, 30.116163, 49.696754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194534, 30.361610, 50.176060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855942, 30.570539, 50.217335>,  <36.652786, 30.695898, 50.242100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855942, 30.570539, 50.217335>,  <37.194534, 30.361610, 50.176060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855942, 30.570539, 50.217335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057579, -0.282480, 0.957543,
		0.529297, 0.804601, 0.269189,
		-0.846481, 0.522324, 0.103187,
		36.601997, 30.727238, 50.248291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276268, 30.625484, 50.862503>,  <37.194534, 30.361610, 50.176060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276268, 30.625484, 50.862503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890583, 30.692591, 50.780384>,  <36.659172, 30.732855, 50.731113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890583, 30.692591, 50.780384>,  <37.276268, 30.625484, 50.862503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890583, 30.692591, 50.780384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241614, -0.237236, 0.940926,
		0.109151, 0.956857, 0.269280,
		-0.964214, 0.167765, -0.205295,
		36.601318, 30.742920, 50.718796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026028, 31.091225, 51.361797>,  <37.276268, 30.625484, 50.862503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026028, 31.091225, 51.361797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.730526, 30.872843, 51.203720>,  <36.553226, 30.741814, 51.108871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.730526, 30.872843, 51.203720>,  <37.026028, 31.091225, 51.361797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730526, 30.872843, 51.203720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021858, -0.605462, 0.795574,
		-0.673625, 0.579092, 0.459218,
		-0.738750, -0.545956, -0.395196,
		36.508900, 30.709055, 51.085159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470455, 30.943859, 51.849796>,  <37.026028, 31.091225, 51.361797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470455, 30.943859, 51.849796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459755, 30.625492, 51.607872>,  <36.453335, 30.434471, 51.462715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459755, 30.625492, 51.607872>,  <36.470455, 30.943859, 51.849796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459755, 30.625492, 51.607872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144737, -0.601737, 0.785471,
		-0.989109, -0.066528, 0.131296,
		-0.026750, -0.795919, -0.604812,
		36.451729, 30.386717, 51.426430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746475, 31.357141, 52.461887>,  <36.470455, 30.943859, 51.849796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746475, 31.357141, 52.461887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647938, 31.712664, 52.616467>,  <36.588814, 31.925976, 52.709213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647938, 31.712664, 52.616467>,  <36.746475, 31.357141, 52.461887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647938, 31.712664, 52.616467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481495, 0.458284, -0.747087,
		-0.841116, 0.002031, -0.540851,
		-0.246346, 0.888804, 0.386448,
		36.574036, 31.979305, 52.732399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598572, 31.704178, 51.907188>,  <36.746475, 31.357141, 52.461887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598572, 31.704178, 51.907188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663185, 31.976196, 52.193253>,  <36.701954, 32.139408, 52.364891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663185, 31.976196, 52.193253>,  <36.598572, 31.704178, 51.907188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663185, 31.976196, 52.193253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424527, 0.606312, -0.672430,
		-0.890890, 0.412220, -0.190760,
		0.161529, 0.680044, 0.715156,
		36.711643, 32.180210, 52.407799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342567, 32.215195, 51.593826>,  <36.598572, 31.704178, 51.907188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342567, 32.215195, 51.593826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570198, 32.372116, 51.882893>,  <36.706776, 32.466270, 52.056332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570198, 32.372116, 51.882893>,  <36.342567, 32.215195, 51.593826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570198, 32.372116, 51.882893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365497, 0.666586, -0.649673,
		-0.736590, 0.633847, 0.235953,
		0.569076, 0.392302, 0.722669,
		36.740921, 32.489807, 52.099693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311131, 32.912964, 51.527386>,  <36.342567, 32.215195, 51.593826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311131, 32.912964, 51.527386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647957, 32.845741, 51.732395>,  <36.850052, 32.805408, 51.855400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647957, 32.845741, 51.732395>,  <36.311131, 32.912964, 51.527386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647957, 32.845741, 51.732395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528833, 0.444174, -0.723218,
		-0.106113, 0.880039, 0.462895,
		0.842066, -0.168052, 0.512527,
		36.900578, 32.795326, 51.886154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712963, 33.600952, 51.524639>,  <36.311131, 32.912964, 51.527386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712963, 33.600952, 51.524639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963108, 33.296967, 51.595493>,  <37.113194, 33.114574, 51.638004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963108, 33.296967, 51.595493>,  <36.712963, 33.600952, 51.524639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963108, 33.296967, 51.595493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577464, 0.298023, -0.760077,
		0.524842, 0.577611, 0.625225,
		0.625361, -0.759965, 0.177134,
		37.150715, 33.068977, 51.648632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412022, 33.931778, 51.480068>,  <36.712963, 33.600952, 51.524639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412022, 33.931778, 51.480068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462662, 33.538433, 51.427948>,  <37.493046, 33.302425, 51.396675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462662, 33.538433, 51.427948>,  <37.412022, 33.931778, 51.480068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462662, 33.538433, 51.427948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439504, 0.173369, -0.881351,
		0.889274, 0.054310, 0.454139,
		0.126600, -0.983358, -0.130303,
		37.500641, 33.243427, 51.388859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061989, 33.877270, 51.314857>,  <37.412022, 33.931778, 51.480068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061989, 33.877270, 51.314857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927452, 33.515427, 51.210121>,  <37.846729, 33.298321, 51.147278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927452, 33.515427, 51.210121>,  <38.061989, 33.877270, 51.314857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927452, 33.515427, 51.210121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453330, 0.088189, -0.886969,
		0.825450, -0.417024, 0.380424,
		-0.336338, -0.904607, -0.261845,
		37.826550, 33.244045, 51.131569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655190, 33.458740, 51.052708>,  <38.061989, 33.877270, 51.314857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655190, 33.458740, 51.052708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.317741, 33.313843, 50.894169>,  <38.115273, 33.226906, 50.799046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.317741, 33.313843, 50.894169>,  <38.655190, 33.458740, 51.052708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317741, 33.313843, 50.894169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336662, 0.218203, -0.915995,
		0.418295, -0.906184, -0.062127,
		-0.843616, -0.362240, -0.396351,
		38.064655, 33.205170, 50.775265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909863, 33.305809, 50.347034>,  <38.655190, 33.458740, 51.052708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909863, 33.305809, 50.347034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.509979, 33.315296, 50.345646>,  <38.270050, 33.320988, 50.344810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.509979, 33.315296, 50.345646>,  <38.909863, 33.305809, 50.347034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509979, 33.315296, 50.345646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008974, 0.235861, -0.971745,
		-0.022230, -0.971497, -0.236006,
		-0.999713, 0.023720, -0.003475,
		38.210064, 33.322411, 50.344604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772106, 33.106289, 49.609505>,  <38.909863, 33.305809, 50.347034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772106, 33.106289, 49.609505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409073, 33.217373, 49.735470>,  <38.191254, 33.284023, 49.811050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409073, 33.217373, 49.735470>,  <38.772106, 33.106289, 49.609505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409073, 33.217373, 49.735470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252116, 0.239321, -0.937637,
		-0.335756, -0.930378, -0.147189,
		-0.907583, 0.277708, 0.314916,
		38.136799, 33.300686, 49.829945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341957, 32.804020, 49.135418>,  <38.772106, 33.106289, 49.609505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341957, 32.804020, 49.135418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151196, 33.114155, 49.301025>,  <38.036739, 33.300236, 49.400391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151196, 33.114155, 49.301025>,  <38.341957, 32.804020, 49.135418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151196, 33.114155, 49.301025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203425, 0.360887, -0.910153,
		-0.855090, -0.518279, -0.014386,
		-0.476905, 0.775337, 0.414022,
		38.008125, 33.346756, 49.425232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685802, 32.868435, 48.897583>,  <38.341957, 32.804020, 49.135418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685802, 32.868435, 48.897583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743229, 33.243515, 49.024136>,  <37.777683, 33.468563, 49.100067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743229, 33.243515, 49.024136>,  <37.685802, 32.868435, 48.897583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743229, 33.243515, 49.024136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339855, 0.346968, -0.874135,
		-0.929456, 0.017970, 0.368495,
		0.143564, 0.937705, 0.316384,
		37.786297, 33.524826, 49.119049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118126, 33.229828, 48.552082>,  <37.685802, 32.868435, 48.897583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118126, 33.229828, 48.552082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361477, 33.532303, 48.648457>,  <37.507488, 33.713787, 48.706280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361477, 33.532303, 48.648457>,  <37.118126, 33.229828, 48.552082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361477, 33.532303, 48.648457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220460, 0.452655, -0.864003,
		-0.762411, 0.472526, 0.442096,
		0.608381, 0.756190, 0.240936,
		37.543991, 33.759159, 48.720737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713734, 33.871204, 48.497478>,  <37.118126, 33.229828, 48.552082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713734, 33.871204, 48.497478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107834, 33.917278, 48.446857>,  <37.344296, 33.944923, 48.416485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107834, 33.917278, 48.446857>,  <36.713734, 33.871204, 48.497478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107834, 33.917278, 48.446857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156210, 0.303460, -0.939952,
		-0.069866, 0.945856, 0.316977,
		0.985250, 0.115185, -0.126551,
		37.403408, 33.951836, 48.408894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812035, 34.501766, 48.118069>,  <36.713734, 33.871204, 48.497478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812035, 34.501766, 48.118069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.171257, 34.339520, 48.049988>,  <37.386791, 34.242172, 48.009140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.171257, 34.339520, 48.049988>,  <36.812035, 34.501766, 48.118069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171257, 34.339520, 48.049988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030247, 0.329070, -0.943821,
		0.438841, 0.852752, 0.283254,
		0.898055, -0.405620, -0.170202,
		37.440674, 34.217834, 47.998928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802666, 35.234852, 47.906513>,  <36.812035, 34.501766, 48.118069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802666, 35.234852, 47.906513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446117, 35.340137, 47.758900>,  <36.232189, 35.403309, 47.670330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446117, 35.340137, 47.758900>,  <36.802666, 35.234852, 47.906513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446117, 35.340137, 47.758900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360132, 0.083171, 0.929186,
		0.275266, 0.961146, 0.020655,
		-0.891366, 0.263212, -0.369034,
		36.178707, 35.419102, 47.648190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646534, 35.754868, 48.280041>,  <36.802666, 35.234852, 47.906513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646534, 35.754868, 48.280041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279255, 35.662464, 48.151329>,  <36.058887, 35.607021, 48.074100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279255, 35.662464, 48.151329>,  <36.646534, 35.754868, 48.280041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279255, 35.662464, 48.151329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340046, 0.043051, 0.939423,
		-0.203158, 0.972000, -0.118081,
		-0.918202, -0.231005, -0.321778,
		36.003796, 35.593163, 48.054794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152756, 36.137897, 48.659191>,  <36.646534, 35.754868, 48.280041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152756, 36.137897, 48.659191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917999, 35.848289, 48.514217>,  <35.777145, 35.674526, 48.427235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917999, 35.848289, 48.514217>,  <36.152756, 36.137897, 48.659191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917999, 35.848289, 48.514217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326068, -0.198375, 0.924298,
		-0.741106, 0.660640, -0.119655,
		-0.586891, -0.724018, -0.362431,
		35.741932, 35.631084, 48.405487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472088, 36.245224, 48.998329>,  <36.152756, 36.137897, 48.659191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472088, 36.245224, 48.998329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516838, 35.869061, 48.869888>,  <35.543690, 35.643360, 48.792824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516838, 35.869061, 48.869888>,  <35.472088, 36.245224, 48.998329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516838, 35.869061, 48.869888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387284, -0.338845, 0.857435,
		-0.915147, 0.028430, -0.402116,
		0.111878, -0.940413, -0.321104,
		35.550400, 35.586937, 48.773556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777985, 35.886234, 49.023155>,  <35.472088, 36.245224, 48.998329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777985, 35.886234, 49.023155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044727, 35.588181, 49.019863>,  <35.204773, 35.409348, 49.017887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044727, 35.588181, 49.019863>,  <34.777985, 35.886234, 49.023155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044727, 35.588181, 49.019863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428819, -0.392760, 0.813544,
		-0.609439, -0.538987, -0.581445,
		0.666858, -0.745140, -0.008235,
		35.244785, 35.364639, 49.017391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402473, 35.289616, 49.254753>,  <34.777985, 35.886234, 49.023155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402473, 35.289616, 49.254753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777519, 35.159737, 49.304462>,  <35.002548, 35.081810, 49.334286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777519, 35.159737, 49.304462>,  <34.402473, 35.289616, 49.254753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777519, 35.159737, 49.304462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254229, -0.396519, 0.882123,
		-0.237145, -0.858689, -0.454330,
		0.937619, -0.324695, 0.124271,
		35.058804, 35.062328, 49.341743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368061, 34.521038, 49.358017>,  <34.402473, 35.289616, 49.254753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368061, 34.521038, 49.358017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699951, 34.675613, 49.519119>,  <34.899086, 34.768360, 49.615780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699951, 34.675613, 49.519119>,  <34.368061, 34.521038, 49.358017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699951, 34.675613, 49.519119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156162, -0.532038, 0.832195,
		0.535877, -0.753392, -0.381100,
		0.829729, 0.386441, 0.402758,
		34.948872, 34.791546, 49.639946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284325, 33.870865, 48.999676>,  <34.368061, 34.521038, 49.358017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284325, 33.870865, 48.999676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962692, 33.651001, 48.909054>,  <33.769714, 33.519081, 48.854679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962692, 33.651001, 48.909054>,  <34.284325, 33.870865, 48.999676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962692, 33.651001, 48.909054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209337, 0.094902, -0.973227,
		0.556444, -0.829981, 0.038755,
		-0.804082, -0.549659, -0.226554,
		33.721466, 33.486103, 48.841087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474041, 33.378620, 48.526669>,  <34.284325, 33.870865, 48.999676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474041, 33.378620, 48.526669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080872, 33.380779, 48.453091>,  <33.844971, 33.382076, 48.408943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080872, 33.380779, 48.453091>,  <34.474041, 33.378620, 48.526669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080872, 33.380779, 48.453091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184020, 0.030640, -0.982445,
		0.000330, -0.999516, -0.031110,
		-0.982922, 0.005401, -0.183941,
		33.785995, 33.382401, 48.397907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343124, 33.028526, 47.911007>,  <34.474041, 33.378620, 48.526669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343124, 33.028526, 47.911007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974617, 33.180946, 47.942146>,  <33.753513, 33.272400, 47.960831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974617, 33.180946, 47.942146>,  <34.343124, 33.028526, 47.911007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974617, 33.180946, 47.942146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063919, 0.049089, -0.996747,
		-0.383635, -0.923249, -0.020868,
		-0.921270, 0.381054, 0.077845,
		33.698235, 33.295261, 47.965500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940186, 32.524948, 47.553158>,  <34.343124, 33.028526, 47.911007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940186, 32.524948, 47.553158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797626, 32.898682, 47.553886>,  <33.712093, 33.122921, 47.554321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797626, 32.898682, 47.553886>,  <33.940186, 32.524948, 47.553158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797626, 32.898682, 47.553886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045169, -0.015286, -0.998862,
		-0.933244, -0.356070, 0.047651,
		-0.356393, 0.934334, 0.001818,
		33.690708, 33.178982, 47.554432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435520, 32.547855, 47.032520>,  <33.940186, 32.524948, 47.553158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435520, 32.547855, 47.032520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550453, 32.923355, 47.108604>,  <33.619415, 33.148655, 47.154255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550453, 32.923355, 47.108604>,  <33.435520, 32.547855, 47.032520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550453, 32.923355, 47.108604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074109, 0.176198, -0.981561,
		-0.954958, 0.296135, -0.018942,
		0.287336, 0.938754, 0.190209,
		33.636654, 33.204983, 47.165668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034958, 33.029903, 46.586449>,  <33.435520, 32.547855, 47.032520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034958, 33.029903, 46.586449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371140, 33.229275, 46.671497>,  <33.572849, 33.348896, 46.722527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371140, 33.229275, 46.671497>,  <33.034958, 33.029903, 46.586449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371140, 33.229275, 46.671497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026844, 0.430189, -0.902339,
		-0.541218, 0.752667, 0.374934,
		0.840454, 0.498427, 0.212622,
		33.623276, 33.378803, 46.735283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936565, 33.732765, 46.369019>,  <33.034958, 33.029903, 46.586449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936565, 33.732765, 46.369019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330166, 33.664791, 46.390457>,  <33.566326, 33.624008, 46.403320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330166, 33.664791, 46.390457>,  <32.936565, 33.732765, 46.369019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330166, 33.664791, 46.390457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133166, 0.501489, -0.854854,
		0.118394, 0.848310, 0.516094,
		0.983997, -0.169936, 0.053593,
		33.625366, 33.613811, 46.406536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.432022, 29.441210, 50.156101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.824078, 29.514494, 50.186440>,  <34.059311, 29.558464, 50.204643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.824078, 29.514494, 50.186440>,  <33.432022, 29.441210, 50.156101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824078, 29.514494, 50.186440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083402, -0.033889, -0.995939,
		-0.179896, 0.982489, -0.048496,
		0.980143, 0.183211, 0.075845,
		34.118122, 29.569458, 50.209194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633247, 30.175262, 49.785454>,  <33.432022, 29.441210, 50.156101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633247, 30.175262, 49.785454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.918831, 29.895580, 49.800259>,  <34.090183, 29.727772, 49.809143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.918831, 29.895580, 49.800259>,  <33.633247, 30.175262, 49.785454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918831, 29.895580, 49.800259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149543, 0.100631, -0.983621,
		0.684028, 0.707804, 0.176408,
		0.713963, -0.699205, 0.037013,
		34.133018, 29.685820, 49.811363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121941, 30.460506, 49.372490>,  <33.633247, 30.175262, 49.785454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121941, 30.460506, 49.372490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.238956, 30.078125, 49.382080>,  <34.309166, 29.848696, 49.387836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.238956, 30.078125, 49.382080>,  <34.121941, 30.460506, 49.372490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238956, 30.078125, 49.382080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029427, -0.016063, -0.999438,
		0.955800, 0.293084, 0.023432,
		0.292543, -0.955952, 0.023978,
		34.326717, 29.791340, 49.389275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669373, 30.493149, 49.045311>,  <34.121941, 30.460506, 49.372490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669373, 30.493149, 49.045311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.547405, 30.112473, 49.030811>,  <34.474224, 29.884068, 49.022110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.547405, 30.112473, 49.030811>,  <34.669373, 30.493149, 49.045311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547405, 30.112473, 49.030811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122200, -0.001346, -0.992505,
		0.944507, -0.307060, 0.116707,
		-0.304916, -0.951689, -0.036251,
		34.455929, 29.826965, 49.019936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144852, 30.146235, 48.630131>,  <34.669373, 30.493149, 49.045311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144852, 30.146235, 48.630131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.802578, 29.939470, 48.620239>,  <34.597214, 29.815413, 48.614304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.802578, 29.939470, 48.620239>,  <35.144852, 30.146235, 48.630131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802578, 29.939470, 48.620239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002566, 0.052024, -0.998642,
		0.517494, -0.854458, -0.045843,
		-0.855683, -0.516910, -0.024730,
		34.545872, 29.784397, 48.612820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290546, 29.598230, 48.089733>,  <35.144852, 30.146235, 48.630131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290546, 29.598230, 48.089733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892403, 29.580133, 48.123711>,  <34.653515, 29.569275, 48.144096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892403, 29.580133, 48.123711>,  <35.290546, 29.598230, 48.089733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892403, 29.580133, 48.123711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073853, -0.206912, -0.975568,
		0.061715, -0.977313, 0.202610,
		-0.995358, -0.045243, 0.084947,
		34.593796, 29.566561, 48.149193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116875, 29.099636, 47.581768>,  <35.290546, 29.598230, 48.089733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116875, 29.099636, 47.581768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762531, 29.254961, 47.683331>,  <34.549927, 29.348156, 47.744270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762531, 29.254961, 47.683331>,  <35.116875, 29.099636, 47.581768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762531, 29.254961, 47.683331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322263, -0.121282, -0.938849,
		-0.333774, -0.913511, 0.232578,
		-0.885856, 0.388314, 0.253910,
		34.496773, 29.371456, 47.759502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707947, 28.848600, 47.199154>,  <35.116875, 29.099636, 47.581768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707947, 28.848600, 47.199154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492981, 29.173544, 47.289719>,  <34.364002, 29.368509, 47.344059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492981, 29.173544, 47.289719>,  <34.707947, 28.848600, 47.199154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492981, 29.173544, 47.289719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375224, 0.010107, -0.926879,
		-0.755245, -0.583073, 0.299384,
		-0.537412, 0.812357, 0.226416,
		34.331757, 29.417252, 47.357643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987225, 28.671431, 47.026886>,  <34.707947, 28.848600, 47.199154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987225, 28.671431, 47.026886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.012280, 29.070642, 47.025288>,  <34.027313, 29.310169, 47.024330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.012280, 29.070642, 47.025288>,  <33.987225, 28.671431, 47.026886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012280, 29.070642, 47.025288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628394, 0.036331, -0.777046,
		-0.775369, 0.051184, 0.629431,
		0.062641, 0.998028, -0.003994,
		34.031071, 29.370050, 47.024090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344296, 28.995213, 46.972038>,  <33.987225, 28.671431, 47.026886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344296, 28.995213, 46.972038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578548, 29.289806, 46.836613>,  <33.719101, 29.466562, 46.755356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578548, 29.289806, 46.836613>,  <33.344296, 28.995213, 46.972038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578548, 29.289806, 46.836613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716354, 0.274791, -0.641348,
		-0.379307, 0.618126, 0.688510,
		0.585630, 0.736484, -0.338567,
		33.754238, 29.510752, 46.735043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802711, 29.440399, 46.773178>,  <33.344296, 28.995213, 46.972038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802711, 29.440399, 46.773178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.139153, 29.591511, 46.618343>,  <33.341015, 29.682177, 46.525444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.139153, 29.591511, 46.618343>,  <32.802711, 29.440399, 46.773178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139153, 29.591511, 46.618343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495050, 0.249379, -0.832307,
		-0.217896, 0.891680, 0.396771,
		0.841099, 0.377778, -0.387088,
		33.391483, 29.704844, 46.502216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710747, 30.120256, 46.467831>,  <32.802711, 29.440399, 46.773178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710747, 30.120256, 46.467831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.027714, 29.972719, 46.273495>,  <33.217892, 29.884197, 46.156895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.027714, 29.972719, 46.273495>,  <32.710747, 30.120256, 46.467831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027714, 29.972719, 46.273495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399067, 0.288899, -0.870220,
		0.461332, 0.883455, 0.081734,
		0.792413, -0.368843, -0.485836,
		33.265438, 29.862066, 46.127743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654602, 30.716080, 46.546890>,  <32.710747, 30.120256, 46.467831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654602, 30.716080, 46.546890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.286724, 30.768654, 46.694881>,  <32.065998, 30.800200, 46.783676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.286724, 30.768654, 46.694881>,  <32.654602, 30.716080, 46.546890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286724, 30.768654, 46.694881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349991, -0.152652, 0.924231,
		0.177956, 0.979501, 0.094392,
		-0.919694, 0.131437, 0.369982,
		32.010815, 30.808084, 46.805878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695641, 31.010004, 47.269112>,  <32.654602, 30.716080, 46.546890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695641, 31.010004, 47.269112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.311829, 30.899117, 47.288914>,  <32.081543, 30.832584, 47.300793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.311829, 30.899117, 47.288914>,  <32.695641, 31.010004, 47.269112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311829, 30.899117, 47.288914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117230, -0.233399, 0.965289,
		-0.256042, 0.932027, 0.256452,
		-0.959531, -0.277218, 0.049501,
		32.023968, 30.815950, 47.303764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350071, 31.510292, 47.786842>,  <32.695641, 31.010004, 47.269112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350071, 31.510292, 47.786842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.152939, 31.165098, 47.742352>,  <32.034660, 30.957981, 47.715656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.152939, 31.165098, 47.742352>,  <32.350071, 31.510292, 47.786842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152939, 31.165098, 47.742352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045581, -0.102047, 0.993735,
		-0.868929, 0.494816, 0.010956,
		-0.492834, -0.862985, -0.111226,
		32.005089, 30.906202, 47.708984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989140, 31.492178, 48.404118>,  <32.350071, 31.510292, 47.786842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989140, 31.492178, 48.404118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.922047, 31.116655, 48.283779>,  <31.881790, 30.891342, 48.211575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.922047, 31.116655, 48.283779>,  <31.989140, 31.492178, 48.404118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922047, 31.116655, 48.283779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091796, -0.288973, 0.952926,
		-0.981550, 0.187453, -0.037708,
		-0.167732, -0.938806, -0.300849,
		31.871727, 30.835014, 48.193523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288189, 31.206947, 48.682755>,  <31.989140, 31.492178, 48.404118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288189, 31.206947, 48.682755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.499821, 30.877903, 48.599438>,  <31.626801, 30.680477, 48.549446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.499821, 30.877903, 48.599438>,  <31.288189, 31.206947, 48.682755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499821, 30.877903, 48.599438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255283, -0.388393, 0.885427,
		-0.809262, -0.415287, -0.415490,
		0.529080, -0.822610, -0.208296,
		31.658545, 30.631121, 48.536949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948702, 30.567057, 49.017689>,  <31.288189, 31.206947, 48.682755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948702, 30.567057, 49.017689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.332972, 30.466129, 48.971317>,  <31.563534, 30.405573, 48.943497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.332972, 30.466129, 48.971317>,  <30.948702, 30.567057, 49.017689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332972, 30.466129, 48.971317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004367, -0.403702, 0.914880,
		-0.277640, -0.879408, -0.386725,
		0.960675, -0.252319, -0.115924,
		31.621174, 30.390432, 48.936539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927860, 29.945436, 49.222595>,  <30.948702, 30.567057, 49.017689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927860, 29.945436, 49.222595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.304970, 30.075605, 49.251644>,  <31.531237, 30.153708, 49.269073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.304970, 30.075605, 49.251644>,  <30.927860, 29.945436, 49.222595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304970, 30.075605, 49.251644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084285, -0.443327, 0.892388,
		0.322598, -0.835201, -0.445386,
		0.942776, 0.325422, 0.072622,
		31.587803, 30.173231, 49.273430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089201, 29.512602, 49.674034>,  <30.927860, 29.945436, 49.222595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089201, 29.512602, 49.674034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.406738, 29.755091, 49.693245>,  <31.597260, 29.900585, 49.704773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.406738, 29.755091, 49.693245>,  <31.089201, 29.512602, 49.674034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406738, 29.755091, 49.693245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256770, -0.405732, 0.877183,
		0.551257, -0.684013, -0.477747,
		0.793842, 0.606225, 0.048028,
		31.644892, 29.936958, 49.707653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635090, 29.142799, 50.037682>,  <31.089201, 29.512602, 49.674034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635090, 29.142799, 50.037682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775297, 29.515717, 50.073391>,  <31.859421, 29.739466, 50.094818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775297, 29.515717, 50.073391>,  <31.635090, 29.142799, 50.037682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775297, 29.515717, 50.073391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248089, -0.184347, 0.951035,
		0.903100, -0.311205, -0.295908,
		0.350516, 0.932292, 0.089277,
		31.880451, 29.795404, 50.100174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322300, 29.064062, 50.324718>,  <31.635090, 29.142799, 50.037682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322300, 29.064062, 50.324718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199154, 29.431982, 50.422031>,  <32.125267, 29.652735, 50.480419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199154, 29.431982, 50.422031>,  <32.322300, 29.064062, 50.324718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199154, 29.431982, 50.422031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234525, -0.174448, 0.956329,
		0.922073, 0.351475, -0.162010,
		-0.307863, 0.919800, 0.243284,
		32.106796, 29.707922, 50.495018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834015, 29.349092, 50.725185>,  <32.322300, 29.064062, 50.324718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834015, 29.349092, 50.725185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.512753, 29.568378, 50.818489>,  <32.319996, 29.699949, 50.874470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.512753, 29.568378, 50.818489>,  <32.834015, 29.349092, 50.725185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512753, 29.568378, 50.818489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214683, -0.098907, 0.971663,
		0.555750, 0.830469, -0.038255,
		-0.803152, 0.548214, 0.233255,
		32.271809, 29.732843, 50.888466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174931, 29.776184, 51.181599>,  <32.834015, 29.349092, 50.725185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174931, 29.776184, 51.181599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.787285, 29.806261, 51.275551>,  <32.554699, 29.824306, 51.331921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.787285, 29.806261, 51.275551>,  <33.174931, 29.776184, 51.181599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787285, 29.806261, 51.275551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232062, -0.044343, 0.971690,
		0.083479, 0.996183, 0.025524,
		-0.969112, 0.075193, 0.234878,
		32.496552, 29.828819, 51.346016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168465, 30.103575, 51.724159>,  <33.174931, 29.776184, 51.181599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168465, 30.103575, 51.724159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812721, 29.922171, 51.747410>,  <32.599277, 29.813328, 51.761360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812721, 29.922171, 51.747410>,  <33.168465, 30.103575, 51.724159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812721, 29.922171, 51.747410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107296, -0.083437, 0.990720,
		-0.444451, 0.887337, 0.122865,
		-0.889354, -0.453509, 0.058124,
		32.545914, 29.786118, 51.764847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110077, 30.703566, 51.086803>,  <33.168465, 30.103575, 51.724159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110077, 30.703566, 51.086803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020958, 31.080088, 51.188236>,  <32.967487, 31.306002, 51.249096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020958, 31.080088, 51.188236>,  <33.110077, 30.703566, 51.086803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020958, 31.080088, 51.188236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609654, 0.337512, -0.717222,
		-0.760712, -0.005199, -0.649069,
		-0.222797, 0.941307, 0.253580,
		32.954117, 31.362480, 51.264309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072243, 31.071699, 50.411957>,  <33.110077, 30.703566, 51.086803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072243, 31.071699, 50.411957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.112103, 31.361895, 50.684349>,  <33.136017, 31.536011, 50.847786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.112103, 31.361895, 50.684349>,  <33.072243, 31.071699, 50.411957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112103, 31.361895, 50.684349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249010, 0.644430, -0.722982,
		-0.963361, 0.241616, -0.116437,
		0.099648, 0.725487, 0.680984,
		33.141998, 31.579540, 50.888645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842758, 31.622751, 50.149643>,  <33.072243, 31.071699, 50.411957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842758, 31.622751, 50.149643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.018105, 31.822914, 50.448288>,  <33.123314, 31.943012, 50.627476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.018105, 31.822914, 50.448288>,  <32.842758, 31.622751, 50.149643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018105, 31.822914, 50.448288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141886, 0.781733, -0.607257,
		-0.887526, 0.372136, 0.271686,
		0.438368, 0.500408, 0.746609,
		33.149616, 31.973036, 50.672272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423546, 32.165321, 50.228752>,  <32.842758, 31.622751, 50.149643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423546, 32.165321, 50.228752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.799339, 32.229168, 50.350006>,  <33.024815, 32.267475, 50.422760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.799339, 32.229168, 50.350006>,  <32.423546, 32.165321, 50.228752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799339, 32.229168, 50.350006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088331, 0.742057, -0.664492,
		-0.331012, 0.651056, 0.683050,
		0.939483, 0.159620, 0.303138,
		33.081184, 32.277054, 50.440948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419430, 32.840595, 50.157112>,  <32.423546, 32.165321, 50.228752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419430, 32.840595, 50.157112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798714, 32.716476, 50.184299>,  <33.026283, 32.642006, 50.200611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798714, 32.716476, 50.184299>,  <32.419430, 32.840595, 50.157112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798714, 32.716476, 50.184299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251026, 0.600851, -0.758923,
		0.194649, 0.736679, 0.647623,
		0.948208, -0.310294, 0.067970,
		33.083176, 32.623386, 50.204689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884579, 33.472412, 50.275978>,  <32.419430, 32.840595, 50.157112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884579, 33.472412, 50.275978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.089870, 33.172848, 50.108299>,  <33.213047, 32.993111, 50.007690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.089870, 33.172848, 50.108299>,  <32.884579, 33.472412, 50.275978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089870, 33.172848, 50.108299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290911, 0.611322, -0.735973,
		0.807443, 0.255774, 0.531616,
		0.513232, -0.748909, -0.419199,
		33.243839, 32.948174, 49.982540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462173, 33.738613, 50.141422>,  <32.884579, 33.472412, 50.275978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462173, 33.738613, 50.141422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.436359, 33.451561, 49.864052>,  <33.420872, 33.279327, 49.697628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.436359, 33.451561, 49.864052>,  <33.462173, 33.738613, 50.141422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436359, 33.451561, 49.864052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233934, 0.664633, -0.709604,
		0.970109, -0.208007, 0.124989,
		-0.064531, -0.717633, -0.693426,
		33.417000, 33.236271, 49.656025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957870, 33.844254, 49.629642>,  <33.462173, 33.738613, 50.141422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957870, 33.844254, 49.629642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.743256, 33.569607, 49.433403>,  <33.614487, 33.404819, 49.315659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.743256, 33.569607, 49.433403>,  <33.957870, 33.844254, 49.629642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743256, 33.569607, 49.433403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181416, 0.473924, -0.861675,
		0.824148, -0.551321, -0.129713,
		-0.536534, -0.686616, -0.490602,
		33.582294, 33.363621, 49.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706753, 33.935741, 49.727856>,  <33.957870, 33.844254, 49.629642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706753, 33.935741, 49.727856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913666, 34.245304, 49.874001>,  <35.037815, 34.431042, 49.961689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913666, 34.245304, 49.874001>,  <34.706753, 33.935741, 49.727856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913666, 34.245304, 49.874001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261110, -0.263842, 0.928552,
		0.815007, -0.575727, 0.065591,
		0.517286, 0.773903, 0.365361,
		35.068851, 34.477474, 49.983608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065464, 33.591839, 50.286491>,  <34.706753, 33.935741, 49.727856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065464, 33.591839, 50.286491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.052845, 33.986401, 50.350994>,  <35.045273, 34.223137, 50.389694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.052845, 33.986401, 50.350994>,  <35.065464, 33.591839, 50.286491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052845, 33.986401, 50.350994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006508, -0.161132, 0.986911,
		0.999481, 0.032180, -0.001337,
		-0.031543, 0.986408, 0.161258,
		35.043381, 34.282322, 50.399372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537388, 33.856644, 50.846191>,  <35.065464, 33.591839, 50.286491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537388, 33.856644, 50.846191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291592, 34.172207, 50.848427>,  <35.144115, 34.361546, 50.849770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291592, 34.172207, 50.848427>,  <35.537388, 33.856644, 50.846191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291592, 34.172207, 50.848427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208798, -0.169463, 0.963165,
		0.760792, 0.590689, 0.268855,
		-0.614491, 0.788904, 0.005591,
		35.107243, 34.408878, 50.850105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784573, 34.360313, 51.412491>,  <35.537388, 33.856644, 50.846191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784573, 34.360313, 51.412491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395317, 34.417488, 51.340305>,  <35.161762, 34.451794, 51.296993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395317, 34.417488, 51.340305>,  <35.784573, 34.360313, 51.412491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395317, 34.417488, 51.340305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211251, -0.242882, 0.946774,
		0.091500, 0.959467, 0.266554,
		-0.973140, 0.142940, -0.180464,
		35.103374, 34.460369, 51.286167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520069, 34.678623, 51.985245>,  <35.784573, 34.360313, 51.412491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520069, 34.678623, 51.985245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186142, 34.530594, 51.822208>,  <34.985786, 34.441776, 51.724388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186142, 34.530594, 51.822208>,  <35.520069, 34.678623, 51.985245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186142, 34.530594, 51.822208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355536, -0.202861, 0.912382,
		-0.420333, 0.906583, 0.037777,
		-0.834814, -0.370074, -0.407592,
		34.935699, 34.419571, 51.699932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967842, 34.938026, 52.421345>,  <35.520069, 34.678623, 51.985245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967842, 34.938026, 52.421345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.783276, 34.645489, 52.220451>,  <34.672535, 34.469967, 52.099915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.783276, 34.645489, 52.220451>,  <34.967842, 34.938026, 52.421345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783276, 34.645489, 52.220451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363984, -0.360211, 0.858931,
		-0.809082, 0.579126, -0.099990,
		-0.461412, -0.731341, -0.502233,
		34.644852, 34.426086, 52.069782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321041, 34.984539, 52.585072>,  <34.967842, 34.938026, 52.421345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321041, 34.984539, 52.585072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.362347, 34.598949, 52.487019>,  <34.387131, 34.367596, 52.428188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.362347, 34.598949, 52.487019>,  <34.321041, 34.984539, 52.585072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362347, 34.598949, 52.487019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106947, -0.255781, 0.960801,
		-0.988888, -0.072998, -0.129506,
		0.103262, -0.963975, -0.245132,
		34.393326, 34.309757, 52.413479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831081, 34.613552, 53.007427>,  <34.321041, 34.984539, 52.585072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831081, 34.613552, 53.007427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050045, 34.299305, 52.892086>,  <34.181423, 34.110756, 52.822880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050045, 34.299305, 52.892086>,  <33.831081, 34.613552, 53.007427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050045, 34.299305, 52.892086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168871, -0.441173, 0.881391,
		-0.819649, -0.433788, -0.374170,
		0.547410, -0.785617, -0.288353,
		34.214268, 34.063622, 52.805580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362103, 34.081627, 53.121368>,  <33.831081, 34.613552, 53.007427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362103, 34.081627, 53.121368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737083, 33.943886, 53.100941>,  <33.962070, 33.861240, 53.088684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737083, 33.943886, 53.100941>,  <33.362103, 34.081627, 53.121368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737083, 33.943886, 53.100941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102847, -0.414119, 0.904394,
		-0.332585, -0.842570, -0.423631,
		0.937449, -0.344357, -0.051074,
		34.018318, 33.840580, 53.085617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.976822, 38.425755, 37.797882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203396, 38.125385, 37.933685>,  <38.339340, 37.945164, 38.015167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203396, 38.125385, 37.933685>,  <37.976822, 38.425755, 37.797882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203396, 38.125385, 37.933685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622529, -0.119937, 0.773352,
		-0.540006, -0.649410, -0.535407,
		0.566438, -0.750920, 0.339510,
		38.373325, 37.900108, 38.035538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544342, 37.731819, 37.871189>,  <37.976822, 38.425755, 37.797882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544342, 37.731819, 37.871189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862690, 37.718884, 38.113029>,  <38.053699, 37.711124, 38.258133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862690, 37.718884, 38.113029>,  <37.544342, 37.731819, 37.871189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862690, 37.718884, 38.113029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596969, -0.208648, 0.774657,
		0.101101, -0.977456, -0.185359,
		0.795868, -0.032335, 0.604605,
		38.101452, 37.709183, 38.294411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460175, 37.188473, 38.274742>,  <37.544342, 37.731819, 37.871189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460175, 37.188473, 38.274742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714268, 37.404968, 38.495121>,  <37.866722, 37.534866, 38.627346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714268, 37.404968, 38.495121>,  <37.460175, 37.188473, 38.274742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714268, 37.404968, 38.495121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506161, -0.247053, 0.826296,
		0.583337, -0.803756, 0.117019,
		0.635231, 0.541240, 0.550945,
		37.904839, 37.567341, 38.660404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639320, 36.740238, 38.915379>,  <37.460175, 37.188473, 38.274742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639320, 36.740238, 38.915379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718903, 37.115421, 39.028980>,  <37.766651, 37.340530, 39.097141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718903, 37.115421, 39.028980>,  <37.639320, 36.740238, 38.915379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718903, 37.115421, 39.028980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406700, -0.184644, 0.894707,
		0.891634, -0.293512, 0.344730,
		0.198955, 0.937954, 0.284007,
		37.778587, 37.396809, 39.114182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103367, 36.614342, 39.496159>,  <37.639320, 36.740238, 38.915379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103367, 36.614342, 39.496159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928417, 36.973331, 39.518917>,  <37.823448, 37.188725, 39.532574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928417, 36.973331, 39.518917>,  <38.103367, 36.614342, 39.496159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928417, 36.973331, 39.518917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267499, -0.190243, 0.944591,
		0.858573, 0.397920, 0.323282,
		-0.437374, 0.897478, 0.056895,
		37.797207, 37.242577, 39.535984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430218, 37.014824, 40.100037>,  <38.103367, 36.614342, 39.496159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430218, 37.014824, 40.100037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072926, 37.175739, 40.019741>,  <37.858551, 37.272289, 39.971565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072926, 37.175739, 40.019741>,  <38.430218, 37.014824, 40.100037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072926, 37.175739, 40.019741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246990, -0.066008, 0.966767,
		0.375670, 0.913130, 0.158322,
		-0.893235, 0.402289, -0.200737,
		37.804955, 37.296425, 39.959518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307762, 37.355759, 40.693897>,  <38.430218, 37.014824, 40.100037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307762, 37.355759, 40.693897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947922, 37.425037, 40.533543>,  <37.732018, 37.466606, 40.437328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947922, 37.425037, 40.533543>,  <38.307762, 37.355759, 40.693897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947922, 37.425037, 40.533543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401860, 0.030999, 0.915176,
		0.170934, 0.984399, 0.041715,
		-0.899606, 0.173198, -0.400889,
		37.678040, 37.476997, 40.413277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955460, 37.865616, 41.003868>,  <38.307762, 37.355759, 40.693897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955460, 37.865616, 41.003868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613953, 37.729774, 40.846008>,  <37.409046, 37.648270, 40.751293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613953, 37.729774, 40.846008>,  <37.955460, 37.865616, 41.003868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613953, 37.729774, 40.846008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466333, 0.161714, 0.869702,
		-0.231533, 0.926563, -0.296434,
		-0.853772, -0.339601, -0.394645,
		37.357822, 37.627895, 40.727615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348282, 38.355137, 41.177486>,  <37.955460, 37.865616, 41.003868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348282, 38.355137, 41.177486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212257, 37.987484, 41.097923>,  <37.130642, 37.766891, 41.050186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212257, 37.987484, 41.097923>,  <37.348282, 38.355137, 41.177486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212257, 37.987484, 41.097923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686796, 0.098250, 0.720179,
		-0.642395, 0.381509, -0.664665,
		-0.340058, -0.919129, -0.198904,
		37.110241, 37.711746, 41.038254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587959, 38.378975, 41.258541>,  <37.348282, 38.355137, 41.177486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587959, 38.378975, 41.258541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687019, 37.994289, 41.305489>,  <36.746456, 37.763477, 41.333656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687019, 37.994289, 41.305489>,  <36.587959, 38.378975, 41.258541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687019, 37.994289, 41.305489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494545, -0.021311, 0.868891,
		-0.833123, -0.273225, -0.480888,
		0.247651, -0.961714, 0.117367,
		36.761314, 37.705776, 41.340698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034428, 38.123558, 41.444523>,  <36.587959, 38.378975, 41.258541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034428, 38.123558, 41.444523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261238, 37.810314, 41.546673>,  <36.397324, 37.622368, 41.607964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261238, 37.810314, 41.546673>,  <36.034428, 38.123558, 41.444523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261238, 37.810314, 41.546673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576540, -0.155896, 0.802059,
		-0.588290, -0.602023, -0.539893,
		0.567025, -0.783113, 0.255378,
		36.431347, 37.575382, 41.623287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599400, 37.527515, 41.778297>,  <36.034428, 38.123558, 41.444523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599400, 37.527515, 41.778297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974422, 37.485241, 41.910854>,  <36.199436, 37.459877, 41.990387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974422, 37.485241, 41.910854>,  <35.599400, 37.527515, 41.778297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974422, 37.485241, 41.910854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347011, -0.218717, 0.912001,
		-0.023902, -0.970048, -0.241733,
		0.937556, -0.105682, 0.331390,
		36.255688, 37.453537, 42.010273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122585, 37.113533, 41.308853>,  <35.599400, 37.527515, 41.778297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122585, 37.113533, 41.308853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745392, 36.983269, 41.281353>,  <34.519077, 36.905109, 41.264851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745392, 36.983269, 41.281353>,  <35.122585, 37.113533, 41.308853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745392, 36.983269, 41.281353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037923, 0.310343, -0.949868,
		0.330682, -0.893099, -0.304998,
		-0.942980, -0.325671, -0.068756,
		34.462498, 36.885571, 41.260727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148666, 36.794834, 40.698917>,  <35.122585, 37.113533, 41.308853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148666, 36.794834, 40.698917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765480, 36.878040, 40.777950>,  <34.535568, 36.927963, 40.825371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765480, 36.878040, 40.777950>,  <35.148666, 36.794834, 40.698917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765480, 36.878040, 40.777950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155314, 0.203023, -0.966778,
		-0.241215, -0.956824, -0.162181,
		-0.957963, 0.208013, 0.197580,
		34.478092, 36.940445, 40.837223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577343, 36.388000, 40.152851>,  <35.148666, 36.794834, 40.698917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577343, 36.388000, 40.152851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407433, 36.709072, 40.320312>,  <34.305485, 36.901714, 40.420792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407433, 36.709072, 40.320312>,  <34.577343, 36.388000, 40.152851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407433, 36.709072, 40.320312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415380, 0.238090, -0.877937,
		-0.804377, -0.546830, 0.232280,
		-0.424778, 0.802677, 0.418656,
		34.279999, 36.949875, 40.445908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834171, 36.294052, 40.050907>,  <34.577343, 36.388000, 40.152851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834171, 36.294052, 40.050907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886513, 36.685116, 40.116711>,  <33.917915, 36.919754, 40.156193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886513, 36.685116, 40.116711>,  <33.834171, 36.294052, 40.050907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886513, 36.685116, 40.116711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507059, 0.208583, -0.836292,
		-0.851921, 0.026016, 0.523024,
		0.130851, 0.977659, 0.164504,
		33.925770, 36.978413, 40.166061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235970, 36.607903, 39.858574>,  <33.834171, 36.294052, 40.050907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235970, 36.607903, 39.858574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474709, 36.927158, 39.891430>,  <33.617950, 37.118713, 39.911144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474709, 36.927158, 39.891430>,  <33.235970, 36.607903, 39.858574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474709, 36.927158, 39.891430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501904, 0.451260, -0.737873,
		-0.625991, 0.399173, 0.669923,
		0.596848, 0.798139, 0.082138,
		33.653763, 37.166599, 39.916073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825283, 37.280392, 39.811962>,  <33.235970, 36.607903, 39.858574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825283, 37.280392, 39.811962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194603, 37.381306, 39.696125>,  <33.416195, 37.441853, 39.626621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194603, 37.381306, 39.696125>,  <32.825283, 37.280392, 39.811962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194603, 37.381306, 39.696125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364559, 0.338375, -0.867525,
		-0.120873, 0.906562, 0.404395,
		0.923302, 0.252286, -0.289595,
		33.471592, 37.456993, 39.609245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802727, 38.038765, 39.726429>,  <32.825283, 37.280392, 39.811962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802727, 38.038765, 39.726429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116554, 37.910336, 39.514252>,  <33.304852, 37.833279, 39.386944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116554, 37.910336, 39.514252>,  <32.802727, 38.038765, 39.726429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116554, 37.910336, 39.514252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346016, 0.483178, -0.804246,
		0.514519, 0.814526, 0.267989,
		0.784565, -0.321071, -0.530443,
		33.351925, 37.814014, 39.355118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038742, 38.627968, 39.253315>,  <32.802727, 38.038765, 39.726429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038742, 38.627968, 39.253315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178162, 38.290146, 39.090714>,  <33.261814, 38.087452, 38.993153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178162, 38.290146, 39.090714>,  <33.038742, 38.627968, 39.253315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178162, 38.290146, 39.090714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424358, 0.244514, -0.871856,
		0.835725, 0.476384, -0.273169,
		0.348545, -0.844554, -0.406504,
		33.282726, 38.036781, 38.968761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277767, 38.808201, 38.589012>,  <33.038742, 38.627968, 39.253315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277767, 38.808201, 38.589012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262520, 38.410637, 38.547653>,  <33.253372, 38.172100, 38.522839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262520, 38.410637, 38.547653>,  <33.277767, 38.808201, 38.589012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262520, 38.410637, 38.547653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422993, 0.109789, -0.899457,
		0.905331, 0.009452, -0.424601,
		-0.038115, -0.993910, -0.103393,
		33.251087, 38.112465, 38.516636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505577, 38.672798, 37.863110>,  <33.277767, 38.808201, 38.589012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505577, 38.672798, 37.863110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335629, 38.319908, 37.944271>,  <33.233658, 38.108173, 37.992966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335629, 38.319908, 37.944271>,  <33.505577, 38.672798, 37.863110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335629, 38.319908, 37.944271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336634, -0.054086, -0.940081,
		0.840334, -0.467716, -0.274007,
		-0.424871, -0.882222, 0.202900,
		33.208168, 38.055241, 38.005142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623596, 38.165878, 37.367821>,  <33.505577, 38.672798, 37.863110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623596, 38.165878, 37.367821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283134, 38.042763, 37.537907>,  <33.078857, 37.968895, 37.639957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283134, 38.042763, 37.537907>,  <33.623596, 38.165878, 37.367821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283134, 38.042763, 37.537907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414354, -0.103349, -0.904229,
		0.322257, -0.945825, -0.039568,
		-0.851153, -0.307789, 0.425211,
		33.027790, 37.950424, 37.665470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466530, 37.468250, 37.133324>,  <33.623596, 38.165878, 37.367821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466530, 37.468250, 37.133324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125275, 37.640755, 37.250740>,  <32.920521, 37.744259, 37.321190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125275, 37.640755, 37.250740>,  <33.466530, 37.468250, 37.133324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125275, 37.640755, 37.250740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439602, -0.291325, -0.849635,
		-0.280859, -0.853919, 0.438111,
		-0.853152, 0.431222, 0.293563,
		32.869331, 37.770134, 37.338802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919189, 37.143673, 36.870342>,  <33.466530, 37.468250, 37.133324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919189, 37.143673, 36.870342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706886, 37.462921, 36.984390>,  <32.579502, 37.654469, 37.052818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706886, 37.462921, 36.984390>,  <32.919189, 37.143673, 36.870342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706886, 37.462921, 36.984390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625102, -0.141478, -0.767614,
		-0.572312, -0.585649, 0.573999,
		-0.530761, 0.798122, 0.285121,
		32.547657, 37.702358, 37.069927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237057, 36.960274, 36.876266>,  <32.919189, 37.143673, 36.870342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237057, 36.960274, 36.876266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198162, 37.358257, 36.886086>,  <32.174824, 37.597046, 36.891975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198162, 37.358257, 36.886086>,  <32.237057, 36.960274, 36.876266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198162, 37.358257, 36.886086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643971, -0.044093, -0.763778,
		-0.758845, -0.090078, 0.645012,
		-0.097240, 0.994958, 0.024548,
		32.168991, 37.656746, 36.893448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555119, 36.333344, 36.694340>,  <32.237057, 36.960274, 36.876266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555119, 36.333344, 36.694340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384609, 35.984146, 36.599537>,  <32.282303, 35.774628, 36.542656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384609, 35.984146, 36.599537>,  <32.555119, 36.333344, 36.694340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384609, 35.984146, 36.599537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225890, -0.150979, 0.962382,
		-0.875938, 0.463773, -0.132843,
		-0.426271, -0.872994, -0.237010,
		32.256729, 35.722248, 36.528435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937708, 36.295666, 37.017979>,  <32.555119, 36.333344, 36.694340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937708, 36.295666, 37.017979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097477, 35.930241, 36.987354>,  <32.193336, 35.710983, 36.968979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097477, 35.930241, 36.987354>,  <31.937708, 36.295666, 37.017979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097477, 35.930241, 36.987354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188831, -0.163707, 0.968268,
		-0.897109, -0.372290, -0.237898,
		0.399422, -0.913564, -0.076563,
		32.217304, 35.656170, 36.964386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437748, 35.908947, 37.442451>,  <31.937708, 36.295666, 37.017979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437748, 35.908947, 37.442451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774656, 35.695244, 37.413761>,  <31.976801, 35.567020, 37.396549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774656, 35.695244, 37.413761>,  <31.437748, 35.908947, 37.442451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774656, 35.695244, 37.413761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153942, -0.365908, 0.917831,
		-0.516606, -0.762021, -0.390438,
		0.842271, -0.534262, -0.071723,
		32.027336, 35.534966, 37.392242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298344, 35.261288, 37.584480>,  <31.437748, 35.908947, 37.442451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298344, 35.261288, 37.584480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694328, 35.283752, 37.636360>,  <31.931919, 35.297234, 37.667488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694328, 35.283752, 37.636360>,  <31.298344, 35.261288, 37.584480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694328, 35.283752, 37.636360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076476, -0.558833, 0.825746,
		0.118857, -0.827376, -0.548928,
		0.989962, 0.056166, 0.129696,
		31.991318, 35.300602, 37.675270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428144, 34.560818, 37.824627>,  <31.298344, 35.261288, 37.584480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428144, 34.560818, 37.824627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723537, 34.802845, 37.943649>,  <31.900774, 34.948059, 38.015060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723537, 34.802845, 37.943649>,  <31.428144, 34.560818, 37.824627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723537, 34.802845, 37.943649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050270, -0.489472, 0.870568,
		0.672395, -0.627942, -0.391884,
		0.738483, 0.605066, 0.297552,
		31.945082, 34.984364, 38.032913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907221, 34.092216, 38.150177>,  <31.428144, 34.560818, 37.824627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907221, 34.092216, 38.150177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018181, 34.451141, 38.287518>,  <32.084759, 34.666496, 38.369923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018181, 34.451141, 38.287518>,  <31.907221, 34.092216, 38.150177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018181, 34.451141, 38.287518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070627, -0.375453, 0.924147,
		0.958155, -0.232109, -0.167525,
		0.277401, 0.897307, 0.343348,
		32.101402, 34.720333, 38.390522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556286, 34.022095, 38.455105>,  <31.907221, 34.092216, 38.150177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556286, 34.022095, 38.455105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393753, 34.344681, 38.626923>,  <32.296234, 34.538231, 38.730015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393753, 34.344681, 38.626923>,  <32.556286, 34.022095, 38.455105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393753, 34.344681, 38.626923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108050, -0.424395, 0.899007,
		0.907315, 0.411707, 0.085306,
		-0.406331, 0.806465, 0.429545,
		32.271854, 34.586620, 38.755787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894089, 34.103783, 39.046371>,  <32.556286, 34.022095, 38.455105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894089, 34.103783, 39.046371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576969, 34.333374, 39.128361>,  <32.386696, 34.471130, 39.177555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576969, 34.333374, 39.128361>,  <32.894089, 34.103783, 39.046371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576969, 34.333374, 39.128361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067948, -0.250970, 0.965607,
		0.605680, 0.779463, 0.159969,
		-0.792802, 0.573979, 0.204970,
		32.339130, 34.505569, 39.189854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034771, 34.467510, 39.569866>,  <32.894089, 34.103783, 39.046371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034771, 34.467510, 39.569866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635700, 34.444233, 39.584038>,  <32.396259, 34.430267, 39.592541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635700, 34.444233, 39.584038>,  <33.034771, 34.467510, 39.569866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635700, 34.444233, 39.584038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053710, -0.351828, 0.934523,
		-0.041914, 0.934254, 0.354136,
		-0.997677, -0.058191, 0.035433,
		32.336399, 34.426777, 39.594669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966927, 34.656822, 40.184628>,  <33.034771, 34.467510, 39.569866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966927, 34.656822, 40.184628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611691, 34.504761, 40.081268>,  <32.398548, 34.413525, 40.019253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611691, 34.504761, 40.081268>,  <32.966927, 34.656822, 40.184628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611691, 34.504761, 40.081268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164324, -0.262423, 0.950859,
		-0.429285, 0.886913, 0.170587,
		-0.888094, -0.380158, -0.258395,
		32.345261, 34.390713, 40.003750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514534, 34.776749, 40.776882>,  <32.966927, 34.656822, 40.184628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514534, 34.776749, 40.776882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370083, 34.450546, 40.595982>,  <32.283413, 34.254826, 40.487442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370083, 34.450546, 40.595982>,  <32.514534, 34.776749, 40.776882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370083, 34.450546, 40.595982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227455, -0.393303, 0.890829,
		-0.904352, 0.424570, -0.043460,
		-0.361126, -0.815508, -0.452255,
		32.261745, 34.205894, 40.460304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862844, 34.612453, 41.073196>,  <32.514534, 34.776749, 40.776882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862844, 34.612453, 41.073196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951597, 34.261776, 40.902470>,  <32.004848, 34.051369, 40.800034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951597, 34.261776, 40.902470>,  <31.862844, 34.612453, 41.073196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951597, 34.261776, 40.902470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309196, -0.478395, 0.821910,
		-0.924752, -0.050396, -0.377218,
		0.221880, -0.876697, -0.426815,
		32.018162, 33.998768, 40.774426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281631, 34.215546, 41.177883>,  <31.862844, 34.612453, 41.073196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281631, 34.215546, 41.177883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562052, 33.934818, 41.127308>,  <31.730303, 33.766384, 41.096962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562052, 33.934818, 41.127308>,  <31.281631, 34.215546, 41.177883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562052, 33.934818, 41.127308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354671, -0.496968, 0.791979,
		-0.618660, -0.510370, -0.597312,
		0.701048, -0.701816, -0.126441,
		31.772366, 33.724274, 41.089375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944952, 33.486984, 41.388237>,  <31.281631, 34.215546, 41.177883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944952, 33.486984, 41.388237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341360, 33.433662, 41.392452>,  <31.579205, 33.401669, 41.394981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341360, 33.433662, 41.392452>,  <30.944952, 33.486984, 41.388237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341360, 33.433662, 41.392452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081037, -0.536027, 0.840302,
		-0.106362, -0.833610, -0.542016,
		0.991020, -0.133300, 0.010541,
		31.638666, 33.393673, 41.395615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075420, 32.761086, 41.400562>,  <30.944952, 33.486984, 41.388237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075420, 32.761086, 41.400562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411419, 32.919048, 41.549400>,  <31.613018, 33.013824, 41.638702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411419, 32.919048, 41.549400>,  <31.075420, 32.761086, 41.400562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411419, 32.919048, 41.549400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017138, -0.704738, 0.709261,
		0.542318, -0.589401, -0.598746,
		0.839998, 0.394906, 0.372091,
		31.663418, 33.037521, 41.661026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459425, 32.251354, 41.728653>,  <31.075420, 32.761086, 41.400562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459425, 32.251354, 41.728653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670441, 32.554359, 41.882469>,  <31.797050, 32.736164, 41.974758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670441, 32.554359, 41.882469>,  <31.459425, 32.251354, 41.728653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670441, 32.554359, 41.882469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187636, -0.545367, 0.816925,
		0.828549, -0.358807, -0.429841,
		0.527540, 0.757517, 0.384538,
		31.828703, 32.781616, 41.997829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150089, 31.958649, 42.000908>,  <31.459425, 32.251354, 41.728653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150089, 31.958649, 42.000908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108810, 32.306118, 42.194714>,  <32.084042, 32.514599, 42.310997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108810, 32.306118, 42.194714>,  <32.150089, 31.958649, 42.000908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108810, 32.306118, 42.194714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151749, -0.467662, 0.870784,
		0.983017, 0.163387, -0.083559,
		-0.103197, 0.868675, 0.484514,
		32.077850, 32.566719, 42.340069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598194, 31.977724, 42.602383>,  <32.150089, 31.958649, 42.000908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598194, 31.977724, 42.602383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349979, 32.276367, 42.698315>,  <32.201050, 32.455551, 42.755875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349979, 32.276367, 42.698315>,  <32.598194, 31.977724, 42.602383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349979, 32.276367, 42.698315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063916, -0.352972, 0.933448,
		0.781572, 0.563906, 0.266751,
		-0.620533, 0.746606, 0.239830,
		32.163818, 32.500351, 42.770264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938320, 32.366199, 43.197853>,  <32.598194, 31.977724, 42.602383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938320, 32.366199, 43.197853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545006, 32.439018, 43.197704>,  <32.309017, 32.482712, 43.197617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545006, 32.439018, 43.197704>,  <32.938320, 32.366199, 43.197853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545006, 32.439018, 43.197704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069547, -0.373751, 0.924918,
		0.168243, 0.909488, 0.380167,
		-0.983289, 0.182051, -0.000371,
		32.250019, 32.493633, 43.197594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767101, 32.807476, 43.856441>,  <32.938320, 32.366199, 43.197853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767101, 32.807476, 43.856441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409779, 32.671543, 43.738781>,  <32.195385, 32.589981, 43.668186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409779, 32.671543, 43.738781>,  <32.767101, 32.807476, 43.856441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409779, 32.671543, 43.738781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176988, -0.335602, 0.925228,
		-0.413141, 0.878569, 0.239647,
		-0.893303, -0.339835, -0.294147,
		32.141788, 32.569592, 43.650536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341003, 33.129402, 44.386246>,  <32.767101, 32.807476, 43.856441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341003, 33.129402, 44.386246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134918, 32.828869, 44.221298>,  <32.011265, 32.648548, 44.122330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134918, 32.828869, 44.221298>,  <32.341003, 33.129402, 44.386246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134918, 32.828869, 44.221298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394450, -0.219292, 0.892368,
		-0.760895, 0.622424, -0.183380,
		-0.515217, -0.751332, -0.412373,
		31.980352, 32.603470, 44.097588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708216, 33.041718, 44.733864>,  <32.341003, 33.129402, 44.386246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708216, 33.041718, 44.733864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745037, 32.683464, 44.559799>,  <31.767130, 32.468513, 44.455360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745037, 32.683464, 44.559799>,  <31.708216, 33.041718, 44.733864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745037, 32.683464, 44.559799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320600, -0.440406, 0.838605,
		-0.942731, 0.062318, -0.327680,
		0.092052, -0.895633, -0.435164,
		31.772654, 32.414776, 44.429249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173906, 32.674973, 45.077042>,  <31.708216, 33.041718, 44.733864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173906, 32.674973, 45.077042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391762, 32.369984, 44.937328>,  <31.522474, 32.186989, 44.853500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391762, 32.369984, 44.937328>,  <31.173906, 32.674973, 45.077042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391762, 32.369984, 44.937328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077372, -0.460381, 0.884343,
		-0.835094, -0.454622, -0.309736,
		0.544638, -0.762475, -0.349286,
		31.555153, 32.141243, 44.832542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739208, 32.019211, 45.186455>,  <31.173906, 32.674973, 45.077042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739208, 32.019211, 45.186455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122772, 31.920795, 45.129951>,  <31.352911, 31.861746, 45.096050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122772, 31.920795, 45.129951>,  <30.739208, 32.019211, 45.186455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122772, 31.920795, 45.129951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050602, -0.638251, 0.768164,
		-0.279158, -0.729453, -0.624476,
		0.958911, -0.246039, -0.141261,
		31.410446, 31.846983, 45.087574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807032, 31.285851, 45.055397>,  <30.739208, 32.019211, 45.186455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807032, 31.285851, 45.055397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155525, 31.414486, 45.203735>,  <31.364622, 31.491667, 45.292740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155525, 31.414486, 45.203735>,  <30.807032, 31.285851, 45.055397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155525, 31.414486, 45.203735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054918, -0.686901, 0.724673,
		0.487783, -0.651727, -0.580792,
		0.871236, 0.321588, 0.370850,
		31.416897, 31.510962, 45.314991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021177, 30.738430, 45.348885>,  <30.807032, 31.285851, 45.055397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021177, 30.738430, 45.348885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257689, 31.010113, 45.522812>,  <31.399595, 31.173122, 45.627171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257689, 31.010113, 45.522812>,  <31.021177, 30.738430, 45.348885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257689, 31.010113, 45.522812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055123, -0.571944, 0.818438,
		0.804583, -0.459955, -0.375617,
		0.591277, 0.679206, 0.434823,
		31.435072, 31.213875, 45.653259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551685, 30.365368, 45.633533>,  <31.021177, 30.738430, 45.348885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551685, 30.365368, 45.633533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593496, 30.712658, 45.827545>,  <31.618584, 30.921032, 45.943954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593496, 30.712658, 45.827545>,  <31.551685, 30.365368, 45.633533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593496, 30.712658, 45.827545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179698, -0.496166, 0.849428,
		0.978152, -0.001631, -0.207883,
		0.104530, 0.868226, 0.485032,
		31.624855, 30.973125, 45.973057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093838, 30.243488, 45.993526>,  <31.551685, 30.365368, 45.633533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093838, 30.243488, 45.993526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948368, 30.558359, 46.192760>,  <31.861086, 30.747282, 46.312302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948368, 30.558359, 46.192760>,  <32.093838, 30.243488, 45.993526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948368, 30.558359, 46.192760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239949, -0.437496, 0.866615,
		0.900091, 0.434683, -0.029776,
		-0.363676, 0.787177, 0.498088,
		31.839266, 30.794512, 46.342186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769901, 30.584841, 45.719982>,  <32.093838, 30.243488, 45.993526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769901, 30.584841, 45.719982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049423, 30.304920, 45.660732>,  <33.217136, 30.136967, 45.625183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049423, 30.304920, 45.660732>,  <32.769901, 30.584841, 45.719982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049423, 30.304920, 45.660732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044126, 0.248858, -0.967534,
		0.713946, 0.669585, 0.204784,
		0.698809, -0.699803, -0.148125,
		33.259068, 30.094978, 45.616295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386078, 30.938614, 45.522541>,  <32.769901, 30.584841, 45.719982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386078, 30.938614, 45.522541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384830, 30.556578, 45.404022>,  <33.384083, 30.327356, 45.332912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384830, 30.556578, 45.404022>,  <33.386078, 30.938614, 45.522541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384830, 30.556578, 45.404022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272842, 0.284240, -0.919111,
		0.962054, -0.083711, 0.259702,
		-0.003122, -0.955092, -0.296294,
		33.383892, 30.270050, 45.315136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959316, 30.845299, 45.104103>,  <33.386078, 30.938614, 45.522541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959316, 30.845299, 45.104103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757900, 30.521215, 44.984097>,  <33.637051, 30.326765, 44.912090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757900, 30.521215, 44.984097>,  <33.959316, 30.845299, 45.104103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757900, 30.521215, 44.984097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333551, 0.138031, -0.932572,
		0.796989, -0.569659, 0.200742,
		-0.503540, -0.810207, -0.300020,
		33.606838, 30.278152, 44.894089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439594, 30.412189, 44.821960>,  <33.959316, 30.845299, 45.104103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439594, 30.412189, 44.821960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082191, 30.335751, 44.659420>,  <33.867748, 30.289888, 44.561897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082191, 30.335751, 44.659420>,  <34.439594, 30.412189, 44.821960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082191, 30.335751, 44.659420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342668, 0.294653, -0.892053,
		0.290166, -0.936309, -0.197809,
		-0.893523, -0.191060, -0.406341,
		33.814137, 30.278421, 44.537514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547520, 30.076178, 44.141571>,  <34.439594, 30.412189, 44.821960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547520, 30.076178, 44.141571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169548, 30.205465, 44.121021>,  <33.942764, 30.283039, 44.108692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169548, 30.205465, 44.121021>,  <34.547520, 30.076178, 44.141571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169548, 30.205465, 44.121021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150215, 0.288874, -0.945509,
		-0.290768, -0.901155, -0.321518,
		-0.944928, 0.323220, -0.051372,
		33.886070, 30.302431, 44.105610>
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
