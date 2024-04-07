/*
[Bare framework] Leave empty, this is used when exporting to verilog
*/

// SL 2023-03-24

module verilator_random(
            input              clock,
            output reg [31:0]  rnd);

  always @(posedge clock) begin
    rnd <= $c32("rand() ^ (rand()<<8) ^ (rand()<<16) ^ (rand()<<24)");
  end

endmodule


// SL 2019, MIT license
module M_frame_display__mem_inv(
input                  [10-1:0] in_addr,
output reg  [16-1:0] out_rdata,
input                                     clock
);
(* no_rw_check *) reg  [16-1:0] buffer[1024-1:0];
always @(posedge clock) begin
   out_rdata <= buffer[in_addr];
end
initial begin
 buffer[0] = 65535;
 buffer[1] = 65535;
 buffer[2] = 32768;
 buffer[3] = 21845;
 buffer[4] = 16384;
 buffer[5] = 13107;
 buffer[6] = 10922;
 buffer[7] = 9362;
 buffer[8] = 8192;
 buffer[9] = 7281;
 buffer[10] = 6553;
 buffer[11] = 5957;
 buffer[12] = 5461;
 buffer[13] = 5041;
 buffer[14] = 4681;
 buffer[15] = 4369;
 buffer[16] = 4096;
 buffer[17] = 3855;
 buffer[18] = 3640;
 buffer[19] = 3449;
 buffer[20] = 3276;
 buffer[21] = 3120;
 buffer[22] = 2978;
 buffer[23] = 2849;
 buffer[24] = 2730;
 buffer[25] = 2621;
 buffer[26] = 2520;
 buffer[27] = 2427;
 buffer[28] = 2340;
 buffer[29] = 2259;
 buffer[30] = 2184;
 buffer[31] = 2114;
 buffer[32] = 2048;
 buffer[33] = 1985;
 buffer[34] = 1927;
 buffer[35] = 1872;
 buffer[36] = 1820;
 buffer[37] = 1771;
 buffer[38] = 1724;
 buffer[39] = 1680;
 buffer[40] = 1638;
 buffer[41] = 1598;
 buffer[42] = 1560;
 buffer[43] = 1524;
 buffer[44] = 1489;
 buffer[45] = 1456;
 buffer[46] = 1424;
 buffer[47] = 1394;
 buffer[48] = 1365;
 buffer[49] = 1337;
 buffer[50] = 1310;
 buffer[51] = 1285;
 buffer[52] = 1260;
 buffer[53] = 1236;
 buffer[54] = 1213;
 buffer[55] = 1191;
 buffer[56] = 1170;
 buffer[57] = 1149;
 buffer[58] = 1129;
 buffer[59] = 1110;
 buffer[60] = 1092;
 buffer[61] = 1074;
 buffer[62] = 1057;
 buffer[63] = 1040;
 buffer[64] = 1024;
 buffer[65] = 1008;
 buffer[66] = 992;
 buffer[67] = 978;
 buffer[68] = 963;
 buffer[69] = 949;
 buffer[70] = 936;
 buffer[71] = 923;
 buffer[72] = 910;
 buffer[73] = 897;
 buffer[74] = 885;
 buffer[75] = 873;
 buffer[76] = 862;
 buffer[77] = 851;
 buffer[78] = 840;
 buffer[79] = 829;
 buffer[80] = 819;
 buffer[81] = 809;
 buffer[82] = 799;
 buffer[83] = 789;
 buffer[84] = 780;
 buffer[85] = 771;
 buffer[86] = 762;
 buffer[87] = 753;
 buffer[88] = 744;
 buffer[89] = 736;
 buffer[90] = 728;
 buffer[91] = 720;
 buffer[92] = 712;
 buffer[93] = 704;
 buffer[94] = 697;
 buffer[95] = 689;
 buffer[96] = 682;
 buffer[97] = 675;
 buffer[98] = 668;
 buffer[99] = 661;
 buffer[100] = 655;
 buffer[101] = 648;
 buffer[102] = 642;
 buffer[103] = 636;
 buffer[104] = 630;
 buffer[105] = 624;
 buffer[106] = 618;
 buffer[107] = 612;
 buffer[108] = 606;
 buffer[109] = 601;
 buffer[110] = 595;
 buffer[111] = 590;
 buffer[112] = 585;
 buffer[113] = 579;
 buffer[114] = 574;
 buffer[115] = 569;
 buffer[116] = 564;
 buffer[117] = 560;
 buffer[118] = 555;
 buffer[119] = 550;
 buffer[120] = 546;
 buffer[121] = 541;
 buffer[122] = 537;
 buffer[123] = 532;
 buffer[124] = 528;
 buffer[125] = 524;
 buffer[126] = 520;
 buffer[127] = 516;
 buffer[128] = 512;
 buffer[129] = 508;
 buffer[130] = 504;
 buffer[131] = 500;
 buffer[132] = 496;
 buffer[133] = 492;
 buffer[134] = 489;
 buffer[135] = 485;
 buffer[136] = 481;
 buffer[137] = 478;
 buffer[138] = 474;
 buffer[139] = 471;
 buffer[140] = 468;
 buffer[141] = 464;
 buffer[142] = 461;
 buffer[143] = 458;
 buffer[144] = 455;
 buffer[145] = 451;
 buffer[146] = 448;
 buffer[147] = 445;
 buffer[148] = 442;
 buffer[149] = 439;
 buffer[150] = 436;
 buffer[151] = 434;
 buffer[152] = 431;
 buffer[153] = 428;
 buffer[154] = 425;
 buffer[155] = 422;
 buffer[156] = 420;
 buffer[157] = 417;
 buffer[158] = 414;
 buffer[159] = 412;
 buffer[160] = 409;
 buffer[161] = 407;
 buffer[162] = 404;
 buffer[163] = 402;
 buffer[164] = 399;
 buffer[165] = 397;
 buffer[166] = 394;
 buffer[167] = 392;
 buffer[168] = 390;
 buffer[169] = 387;
 buffer[170] = 385;
 buffer[171] = 383;
 buffer[172] = 381;
 buffer[173] = 378;
 buffer[174] = 376;
 buffer[175] = 374;
 buffer[176] = 372;
 buffer[177] = 370;
 buffer[178] = 368;
 buffer[179] = 366;
 buffer[180] = 364;
 buffer[181] = 362;
 buffer[182] = 360;
 buffer[183] = 358;
 buffer[184] = 356;
 buffer[185] = 354;
 buffer[186] = 352;
 buffer[187] = 350;
 buffer[188] = 348;
 buffer[189] = 346;
 buffer[190] = 344;
 buffer[191] = 343;
 buffer[192] = 341;
 buffer[193] = 339;
 buffer[194] = 337;
 buffer[195] = 336;
 buffer[196] = 334;
 buffer[197] = 332;
 buffer[198] = 330;
 buffer[199] = 329;
 buffer[200] = 327;
 buffer[201] = 326;
 buffer[202] = 324;
 buffer[203] = 322;
 buffer[204] = 321;
 buffer[205] = 319;
 buffer[206] = 318;
 buffer[207] = 316;
 buffer[208] = 315;
 buffer[209] = 313;
 buffer[210] = 312;
 buffer[211] = 310;
 buffer[212] = 309;
 buffer[213] = 307;
 buffer[214] = 306;
 buffer[215] = 304;
 buffer[216] = 303;
 buffer[217] = 302;
 buffer[218] = 300;
 buffer[219] = 299;
 buffer[220] = 297;
 buffer[221] = 296;
 buffer[222] = 295;
 buffer[223] = 293;
 buffer[224] = 292;
 buffer[225] = 291;
 buffer[226] = 289;
 buffer[227] = 288;
 buffer[228] = 287;
 buffer[229] = 286;
 buffer[230] = 284;
 buffer[231] = 283;
 buffer[232] = 282;
 buffer[233] = 281;
 buffer[234] = 280;
 buffer[235] = 278;
 buffer[236] = 277;
 buffer[237] = 276;
 buffer[238] = 275;
 buffer[239] = 274;
 buffer[240] = 273;
 buffer[241] = 271;
 buffer[242] = 270;
 buffer[243] = 269;
 buffer[244] = 268;
 buffer[245] = 267;
 buffer[246] = 266;
 buffer[247] = 265;
 buffer[248] = 264;
 buffer[249] = 263;
 buffer[250] = 262;
 buffer[251] = 261;
 buffer[252] = 260;
 buffer[253] = 259;
 buffer[254] = 258;
 buffer[255] = 257;
 buffer[256] = 256;
 buffer[257] = 255;
 buffer[258] = 254;
 buffer[259] = 253;
 buffer[260] = 252;
 buffer[261] = 251;
 buffer[262] = 250;
 buffer[263] = 249;
 buffer[264] = 248;
 buffer[265] = 247;
 buffer[266] = 246;
 buffer[267] = 245;
 buffer[268] = 244;
 buffer[269] = 243;
 buffer[270] = 242;
 buffer[271] = 241;
 buffer[272] = 240;
 buffer[273] = 240;
 buffer[274] = 239;
 buffer[275] = 238;
 buffer[276] = 237;
 buffer[277] = 236;
 buffer[278] = 235;
 buffer[279] = 234;
 buffer[280] = 234;
 buffer[281] = 233;
 buffer[282] = 232;
 buffer[283] = 231;
 buffer[284] = 230;
 buffer[285] = 229;
 buffer[286] = 229;
 buffer[287] = 228;
 buffer[288] = 227;
 buffer[289] = 226;
 buffer[290] = 225;
 buffer[291] = 225;
 buffer[292] = 224;
 buffer[293] = 223;
 buffer[294] = 222;
 buffer[295] = 222;
 buffer[296] = 221;
 buffer[297] = 220;
 buffer[298] = 219;
 buffer[299] = 219;
 buffer[300] = 218;
 buffer[301] = 217;
 buffer[302] = 217;
 buffer[303] = 216;
 buffer[304] = 215;
 buffer[305] = 214;
 buffer[306] = 214;
 buffer[307] = 213;
 buffer[308] = 212;
 buffer[309] = 212;
 buffer[310] = 211;
 buffer[311] = 210;
 buffer[312] = 210;
 buffer[313] = 209;
 buffer[314] = 208;
 buffer[315] = 208;
 buffer[316] = 207;
 buffer[317] = 206;
 buffer[318] = 206;
 buffer[319] = 205;
 buffer[320] = 204;
 buffer[321] = 204;
 buffer[322] = 203;
 buffer[323] = 202;
 buffer[324] = 202;
 buffer[325] = 201;
 buffer[326] = 201;
 buffer[327] = 200;
 buffer[328] = 199;
 buffer[329] = 199;
 buffer[330] = 198;
 buffer[331] = 197;
 buffer[332] = 197;
 buffer[333] = 196;
 buffer[334] = 196;
 buffer[335] = 195;
 buffer[336] = 195;
 buffer[337] = 194;
 buffer[338] = 193;
 buffer[339] = 193;
 buffer[340] = 192;
 buffer[341] = 192;
 buffer[342] = 191;
 buffer[343] = 191;
 buffer[344] = 190;
 buffer[345] = 189;
 buffer[346] = 189;
 buffer[347] = 188;
 buffer[348] = 188;
 buffer[349] = 187;
 buffer[350] = 187;
 buffer[351] = 186;
 buffer[352] = 186;
 buffer[353] = 185;
 buffer[354] = 185;
 buffer[355] = 184;
 buffer[356] = 184;
 buffer[357] = 183;
 buffer[358] = 183;
 buffer[359] = 182;
 buffer[360] = 182;
 buffer[361] = 181;
 buffer[362] = 181;
 buffer[363] = 180;
 buffer[364] = 180;
 buffer[365] = 179;
 buffer[366] = 179;
 buffer[367] = 178;
 buffer[368] = 178;
 buffer[369] = 177;
 buffer[370] = 177;
 buffer[371] = 176;
 buffer[372] = 176;
 buffer[373] = 175;
 buffer[374] = 175;
 buffer[375] = 174;
 buffer[376] = 174;
 buffer[377] = 173;
 buffer[378] = 173;
 buffer[379] = 172;
 buffer[380] = 172;
 buffer[381] = 172;
 buffer[382] = 171;
 buffer[383] = 171;
 buffer[384] = 170;
 buffer[385] = 170;
 buffer[386] = 169;
 buffer[387] = 169;
 buffer[388] = 168;
 buffer[389] = 168;
 buffer[390] = 168;
 buffer[391] = 167;
 buffer[392] = 167;
 buffer[393] = 166;
 buffer[394] = 166;
 buffer[395] = 165;
 buffer[396] = 165;
 buffer[397] = 165;
 buffer[398] = 164;
 buffer[399] = 164;
 buffer[400] = 163;
 buffer[401] = 163;
 buffer[402] = 163;
 buffer[403] = 162;
 buffer[404] = 162;
 buffer[405] = 161;
 buffer[406] = 161;
 buffer[407] = 161;
 buffer[408] = 160;
 buffer[409] = 160;
 buffer[410] = 159;
 buffer[411] = 159;
 buffer[412] = 159;
 buffer[413] = 158;
 buffer[414] = 158;
 buffer[415] = 157;
 buffer[416] = 157;
 buffer[417] = 157;
 buffer[418] = 156;
 buffer[419] = 156;
 buffer[420] = 156;
 buffer[421] = 155;
 buffer[422] = 155;
 buffer[423] = 154;
 buffer[424] = 154;
 buffer[425] = 154;
 buffer[426] = 153;
 buffer[427] = 153;
 buffer[428] = 153;
 buffer[429] = 152;
 buffer[430] = 152;
 buffer[431] = 152;
 buffer[432] = 151;
 buffer[433] = 151;
 buffer[434] = 151;
 buffer[435] = 150;
 buffer[436] = 150;
 buffer[437] = 149;
 buffer[438] = 149;
 buffer[439] = 149;
 buffer[440] = 148;
 buffer[441] = 148;
 buffer[442] = 148;
 buffer[443] = 147;
 buffer[444] = 147;
 buffer[445] = 147;
 buffer[446] = 146;
 buffer[447] = 146;
 buffer[448] = 146;
 buffer[449] = 145;
 buffer[450] = 145;
 buffer[451] = 145;
 buffer[452] = 144;
 buffer[453] = 144;
 buffer[454] = 144;
 buffer[455] = 144;
 buffer[456] = 143;
 buffer[457] = 143;
 buffer[458] = 143;
 buffer[459] = 142;
 buffer[460] = 142;
 buffer[461] = 142;
 buffer[462] = 141;
 buffer[463] = 141;
 buffer[464] = 141;
 buffer[465] = 140;
 buffer[466] = 140;
 buffer[467] = 140;
 buffer[468] = 140;
 buffer[469] = 139;
 buffer[470] = 139;
 buffer[471] = 139;
 buffer[472] = 138;
 buffer[473] = 138;
 buffer[474] = 138;
 buffer[475] = 137;
 buffer[476] = 137;
 buffer[477] = 137;
 buffer[478] = 137;
 buffer[479] = 136;
 buffer[480] = 136;
 buffer[481] = 136;
 buffer[482] = 135;
 buffer[483] = 135;
 buffer[484] = 135;
 buffer[485] = 135;
 buffer[486] = 134;
 buffer[487] = 134;
 buffer[488] = 134;
 buffer[489] = 134;
 buffer[490] = 133;
 buffer[491] = 133;
 buffer[492] = 133;
 buffer[493] = 132;
 buffer[494] = 132;
 buffer[495] = 132;
 buffer[496] = 132;
 buffer[497] = 131;
 buffer[498] = 131;
 buffer[499] = 131;
 buffer[500] = 131;
 buffer[501] = 130;
 buffer[502] = 130;
 buffer[503] = 130;
 buffer[504] = 130;
 buffer[505] = 129;
 buffer[506] = 129;
 buffer[507] = 129;
 buffer[508] = 129;
 buffer[509] = 128;
 buffer[510] = 128;
 buffer[511] = 128;
 buffer[512] = 128;
 buffer[513] = 127;
 buffer[514] = 127;
 buffer[515] = 127;
 buffer[516] = 127;
 buffer[517] = 126;
 buffer[518] = 126;
 buffer[519] = 126;
 buffer[520] = 126;
 buffer[521] = 125;
 buffer[522] = 125;
 buffer[523] = 125;
 buffer[524] = 125;
 buffer[525] = 124;
 buffer[526] = 124;
 buffer[527] = 124;
 buffer[528] = 124;
 buffer[529] = 123;
 buffer[530] = 123;
 buffer[531] = 123;
 buffer[532] = 123;
 buffer[533] = 122;
 buffer[534] = 122;
 buffer[535] = 122;
 buffer[536] = 122;
 buffer[537] = 122;
 buffer[538] = 121;
 buffer[539] = 121;
 buffer[540] = 121;
 buffer[541] = 121;
 buffer[542] = 120;
 buffer[543] = 120;
 buffer[544] = 120;
 buffer[545] = 120;
 buffer[546] = 120;
 buffer[547] = 119;
 buffer[548] = 119;
 buffer[549] = 119;
 buffer[550] = 119;
 buffer[551] = 118;
 buffer[552] = 118;
 buffer[553] = 118;
 buffer[554] = 118;
 buffer[555] = 118;
 buffer[556] = 117;
 buffer[557] = 117;
 buffer[558] = 117;
 buffer[559] = 117;
 buffer[560] = 117;
 buffer[561] = 116;
 buffer[562] = 116;
 buffer[563] = 116;
 buffer[564] = 116;
 buffer[565] = 115;
 buffer[566] = 115;
 buffer[567] = 115;
 buffer[568] = 115;
 buffer[569] = 115;
 buffer[570] = 114;
 buffer[571] = 114;
 buffer[572] = 114;
 buffer[573] = 114;
 buffer[574] = 114;
 buffer[575] = 113;
 buffer[576] = 113;
 buffer[577] = 113;
 buffer[578] = 113;
 buffer[579] = 113;
 buffer[580] = 112;
 buffer[581] = 112;
 buffer[582] = 112;
 buffer[583] = 112;
 buffer[584] = 112;
 buffer[585] = 112;
 buffer[586] = 111;
 buffer[587] = 111;
 buffer[588] = 111;
 buffer[589] = 111;
 buffer[590] = 111;
 buffer[591] = 110;
 buffer[592] = 110;
 buffer[593] = 110;
 buffer[594] = 110;
 buffer[595] = 110;
 buffer[596] = 109;
 buffer[597] = 109;
 buffer[598] = 109;
 buffer[599] = 109;
 buffer[600] = 109;
 buffer[601] = 109;
 buffer[602] = 108;
 buffer[603] = 108;
 buffer[604] = 108;
 buffer[605] = 108;
 buffer[606] = 108;
 buffer[607] = 107;
 buffer[608] = 107;
 buffer[609] = 107;
 buffer[610] = 107;
 buffer[611] = 107;
 buffer[612] = 107;
 buffer[613] = 106;
 buffer[614] = 106;
 buffer[615] = 106;
 buffer[616] = 106;
 buffer[617] = 106;
 buffer[618] = 106;
 buffer[619] = 105;
 buffer[620] = 105;
 buffer[621] = 105;
 buffer[622] = 105;
 buffer[623] = 105;
 buffer[624] = 105;
 buffer[625] = 104;
 buffer[626] = 104;
 buffer[627] = 104;
 buffer[628] = 104;
 buffer[629] = 104;
 buffer[630] = 104;
 buffer[631] = 103;
 buffer[632] = 103;
 buffer[633] = 103;
 buffer[634] = 103;
 buffer[635] = 103;
 buffer[636] = 103;
 buffer[637] = 102;
 buffer[638] = 102;
 buffer[639] = 102;
 buffer[640] = 102;
 buffer[641] = 102;
 buffer[642] = 102;
 buffer[643] = 101;
 buffer[644] = 101;
 buffer[645] = 101;
 buffer[646] = 101;
 buffer[647] = 101;
 buffer[648] = 101;
 buffer[649] = 100;
 buffer[650] = 100;
 buffer[651] = 100;
 buffer[652] = 100;
 buffer[653] = 100;
 buffer[654] = 100;
 buffer[655] = 100;
 buffer[656] = 99;
 buffer[657] = 99;
 buffer[658] = 99;
 buffer[659] = 99;
 buffer[660] = 99;
 buffer[661] = 99;
 buffer[662] = 98;
 buffer[663] = 98;
 buffer[664] = 98;
 buffer[665] = 98;
 buffer[666] = 98;
 buffer[667] = 98;
 buffer[668] = 98;
 buffer[669] = 97;
 buffer[670] = 97;
 buffer[671] = 97;
 buffer[672] = 97;
 buffer[673] = 97;
 buffer[674] = 97;
 buffer[675] = 97;
 buffer[676] = 96;
 buffer[677] = 96;
 buffer[678] = 96;
 buffer[679] = 96;
 buffer[680] = 96;
 buffer[681] = 96;
 buffer[682] = 96;
 buffer[683] = 95;
 buffer[684] = 95;
 buffer[685] = 95;
 buffer[686] = 95;
 buffer[687] = 95;
 buffer[688] = 95;
 buffer[689] = 95;
 buffer[690] = 94;
 buffer[691] = 94;
 buffer[692] = 94;
 buffer[693] = 94;
 buffer[694] = 94;
 buffer[695] = 94;
 buffer[696] = 94;
 buffer[697] = 94;
 buffer[698] = 93;
 buffer[699] = 93;
 buffer[700] = 93;
 buffer[701] = 93;
 buffer[702] = 93;
 buffer[703] = 93;
 buffer[704] = 93;
 buffer[705] = 92;
 buffer[706] = 92;
 buffer[707] = 92;
 buffer[708] = 92;
 buffer[709] = 92;
 buffer[710] = 92;
 buffer[711] = 92;
 buffer[712] = 92;
 buffer[713] = 91;
 buffer[714] = 91;
 buffer[715] = 91;
 buffer[716] = 91;
 buffer[717] = 91;
 buffer[718] = 91;
 buffer[719] = 91;
 buffer[720] = 91;
 buffer[721] = 90;
 buffer[722] = 90;
 buffer[723] = 90;
 buffer[724] = 90;
 buffer[725] = 90;
 buffer[726] = 90;
 buffer[727] = 90;
 buffer[728] = 90;
 buffer[729] = 89;
 buffer[730] = 89;
 buffer[731] = 89;
 buffer[732] = 89;
 buffer[733] = 89;
 buffer[734] = 89;
 buffer[735] = 89;
 buffer[736] = 89;
 buffer[737] = 88;
 buffer[738] = 88;
 buffer[739] = 88;
 buffer[740] = 88;
 buffer[741] = 88;
 buffer[742] = 88;
 buffer[743] = 88;
 buffer[744] = 88;
 buffer[745] = 87;
 buffer[746] = 87;
 buffer[747] = 87;
 buffer[748] = 87;
 buffer[749] = 87;
 buffer[750] = 87;
 buffer[751] = 87;
 buffer[752] = 87;
 buffer[753] = 87;
 buffer[754] = 86;
 buffer[755] = 86;
 buffer[756] = 86;
 buffer[757] = 86;
 buffer[758] = 86;
 buffer[759] = 86;
 buffer[760] = 86;
 buffer[761] = 86;
 buffer[762] = 86;
 buffer[763] = 85;
 buffer[764] = 85;
 buffer[765] = 85;
 buffer[766] = 85;
 buffer[767] = 85;
 buffer[768] = 85;
 buffer[769] = 85;
 buffer[770] = 85;
 buffer[771] = 85;
 buffer[772] = 84;
 buffer[773] = 84;
 buffer[774] = 84;
 buffer[775] = 84;
 buffer[776] = 84;
 buffer[777] = 84;
 buffer[778] = 84;
 buffer[779] = 84;
 buffer[780] = 84;
 buffer[781] = 83;
 buffer[782] = 83;
 buffer[783] = 83;
 buffer[784] = 83;
 buffer[785] = 83;
 buffer[786] = 83;
 buffer[787] = 83;
 buffer[788] = 83;
 buffer[789] = 83;
 buffer[790] = 82;
 buffer[791] = 82;
 buffer[792] = 82;
 buffer[793] = 82;
 buffer[794] = 82;
 buffer[795] = 82;
 buffer[796] = 82;
 buffer[797] = 82;
 buffer[798] = 82;
 buffer[799] = 82;
 buffer[800] = 81;
 buffer[801] = 81;
 buffer[802] = 81;
 buffer[803] = 81;
 buffer[804] = 81;
 buffer[805] = 81;
 buffer[806] = 81;
 buffer[807] = 81;
 buffer[808] = 81;
 buffer[809] = 81;
 buffer[810] = 80;
 buffer[811] = 80;
 buffer[812] = 80;
 buffer[813] = 80;
 buffer[814] = 80;
 buffer[815] = 80;
 buffer[816] = 80;
 buffer[817] = 80;
 buffer[818] = 80;
 buffer[819] = 80;
 buffer[820] = 79;
 buffer[821] = 79;
 buffer[822] = 79;
 buffer[823] = 79;
 buffer[824] = 79;
 buffer[825] = 79;
 buffer[826] = 79;
 buffer[827] = 79;
 buffer[828] = 79;
 buffer[829] = 79;
 buffer[830] = 78;
 buffer[831] = 78;
 buffer[832] = 78;
 buffer[833] = 78;
 buffer[834] = 78;
 buffer[835] = 78;
 buffer[836] = 78;
 buffer[837] = 78;
 buffer[838] = 78;
 buffer[839] = 78;
 buffer[840] = 78;
 buffer[841] = 77;
 buffer[842] = 77;
 buffer[843] = 77;
 buffer[844] = 77;
 buffer[845] = 77;
 buffer[846] = 77;
 buffer[847] = 77;
 buffer[848] = 77;
 buffer[849] = 77;
 buffer[850] = 77;
 buffer[851] = 77;
 buffer[852] = 76;
 buffer[853] = 76;
 buffer[854] = 76;
 buffer[855] = 76;
 buffer[856] = 76;
 buffer[857] = 76;
 buffer[858] = 76;
 buffer[859] = 76;
 buffer[860] = 76;
 buffer[861] = 76;
 buffer[862] = 76;
 buffer[863] = 75;
 buffer[864] = 75;
 buffer[865] = 75;
 buffer[866] = 75;
 buffer[867] = 75;
 buffer[868] = 75;
 buffer[869] = 75;
 buffer[870] = 75;
 buffer[871] = 75;
 buffer[872] = 75;
 buffer[873] = 75;
 buffer[874] = 74;
 buffer[875] = 74;
 buffer[876] = 74;
 buffer[877] = 74;
 buffer[878] = 74;
 buffer[879] = 74;
 buffer[880] = 74;
 buffer[881] = 74;
 buffer[882] = 74;
 buffer[883] = 74;
 buffer[884] = 74;
 buffer[885] = 74;
 buffer[886] = 73;
 buffer[887] = 73;
 buffer[888] = 73;
 buffer[889] = 73;
 buffer[890] = 73;
 buffer[891] = 73;
 buffer[892] = 73;
 buffer[893] = 73;
 buffer[894] = 73;
 buffer[895] = 73;
 buffer[896] = 73;
 buffer[897] = 73;
 buffer[898] = 72;
 buffer[899] = 72;
 buffer[900] = 72;
 buffer[901] = 72;
 buffer[902] = 72;
 buffer[903] = 72;
 buffer[904] = 72;
 buffer[905] = 72;
 buffer[906] = 72;
 buffer[907] = 72;
 buffer[908] = 72;
 buffer[909] = 72;
 buffer[910] = 72;
 buffer[911] = 71;
 buffer[912] = 71;
 buffer[913] = 71;
 buffer[914] = 71;
 buffer[915] = 71;
 buffer[916] = 71;
 buffer[917] = 71;
 buffer[918] = 71;
 buffer[919] = 71;
 buffer[920] = 71;
 buffer[921] = 71;
 buffer[922] = 71;
 buffer[923] = 71;
 buffer[924] = 70;
 buffer[925] = 70;
 buffer[926] = 70;
 buffer[927] = 70;
 buffer[928] = 70;
 buffer[929] = 70;
 buffer[930] = 70;
 buffer[931] = 70;
 buffer[932] = 70;
 buffer[933] = 70;
 buffer[934] = 70;
 buffer[935] = 70;
 buffer[936] = 70;
 buffer[937] = 69;
 buffer[938] = 69;
 buffer[939] = 69;
 buffer[940] = 69;
 buffer[941] = 69;
 buffer[942] = 69;
 buffer[943] = 69;
 buffer[944] = 69;
 buffer[945] = 69;
 buffer[946] = 69;
 buffer[947] = 69;
 buffer[948] = 69;
 buffer[949] = 69;
 buffer[950] = 68;
 buffer[951] = 68;
 buffer[952] = 68;
 buffer[953] = 68;
 buffer[954] = 68;
 buffer[955] = 68;
 buffer[956] = 68;
 buffer[957] = 68;
 buffer[958] = 68;
 buffer[959] = 68;
 buffer[960] = 68;
 buffer[961] = 68;
 buffer[962] = 68;
 buffer[963] = 68;
 buffer[964] = 67;
 buffer[965] = 67;
 buffer[966] = 67;
 buffer[967] = 67;
 buffer[968] = 67;
 buffer[969] = 67;
 buffer[970] = 67;
 buffer[971] = 67;
 buffer[972] = 67;
 buffer[973] = 67;
 buffer[974] = 67;
 buffer[975] = 67;
 buffer[976] = 67;
 buffer[977] = 67;
 buffer[978] = 67;
 buffer[979] = 66;
 buffer[980] = 66;
 buffer[981] = 66;
 buffer[982] = 66;
 buffer[983] = 66;
 buffer[984] = 66;
 buffer[985] = 66;
 buffer[986] = 66;
 buffer[987] = 66;
 buffer[988] = 66;
 buffer[989] = 66;
 buffer[990] = 66;
 buffer[991] = 66;
 buffer[992] = 66;
 buffer[993] = 65;
 buffer[994] = 65;
 buffer[995] = 65;
 buffer[996] = 65;
 buffer[997] = 65;
 buffer[998] = 65;
 buffer[999] = 65;
 buffer[1000] = 65;
 buffer[1001] = 65;
 buffer[1002] = 65;
 buffer[1003] = 65;
 buffer[1004] = 65;
 buffer[1005] = 65;
 buffer[1006] = 65;
 buffer[1007] = 65;
 buffer[1008] = 65;
 buffer[1009] = 64;
 buffer[1010] = 64;
 buffer[1011] = 64;
 buffer[1012] = 64;
 buffer[1013] = 64;
 buffer[1014] = 64;
 buffer[1015] = 64;
 buffer[1016] = 64;
 buffer[1017] = 64;
 buffer[1018] = 64;
 buffer[1019] = 64;
 buffer[1020] = 64;
 buffer[1021] = 64;
 buffer[1022] = 64;
 buffer[1023] = 64;
end

endmodule

// SL 2019, MIT license
module M_frame_display__mem_cos(
input                  [1-1:0] in_wenable,
input      signed [12-1:0]    in_wdata,
input                  [9-1:0]    in_addr,
output reg signed [12-1:0]    out_rdata,
input                                        clock
);
  (* no_rw_check *) reg signed [12-1:0] buffer[512-1:0];
`ifdef SIMULATION
  // in simulation we use a different code that matches yosys output with
  // no_rw_check enabled (which we use to preserve compact LUT designs)
  always @(posedge clock) begin
    if (in_wenable) begin
      buffer[in_addr] <= in_wdata;
      out_rdata       <= in_wdata;
    end else begin
      out_rdata       <= buffer[in_addr];
    end
  end
`else
  always @(posedge clock) begin
    if (in_wenable) begin
      buffer[in_addr] <= in_wdata;
    end
    out_rdata <= buffer[in_addr];
  end
`endif
initial begin
 buffer[0] = 1200;
 buffer[1] = 1199;
 buffer[2] = 1199;
 buffer[3] = 1199;
 buffer[4] = 1198;
 buffer[5] = 1197;
 buffer[6] = 1196;
 buffer[7] = 1195;
 buffer[8] = 1194;
 buffer[9] = 1192;
 buffer[10] = 1190;
 buffer[11] = 1189;
 buffer[12] = 1187;
 buffer[13] = 1184;
 buffer[14] = 1182;
 buffer[15] = 1179;
 buffer[16] = 1176;
 buffer[17] = 1173;
 buffer[18] = 1170;
 buffer[19] = 1167;
 buffer[20] = 1164;
 buffer[21] = 1160;
 buffer[22] = 1156;
 buffer[23] = 1152;
 buffer[24] = 1148;
 buffer[25] = 1143;
 buffer[26] = 1139;
 buffer[27] = 1134;
 buffer[28] = 1129;
 buffer[29] = 1124;
 buffer[30] = 1119;
 buffer[31] = 1114;
 buffer[32] = 1108;
 buffer[33] = 1102;
 buffer[34] = 1097;
 buffer[35] = 1091;
 buffer[36] = 1084;
 buffer[37] = 1078;
 buffer[38] = 1071;
 buffer[39] = 1065;
 buffer[40] = 1058;
 buffer[41] = 1051;
 buffer[42] = 1044;
 buffer[43] = 1036;
 buffer[44] = 1029;
 buffer[45] = 1021;
 buffer[46] = 1013;
 buffer[47] = 1005;
 buffer[48] = 997;
 buffer[49] = 989;
 buffer[50] = 981;
 buffer[51] = 972;
 buffer[52] = 963;
 buffer[53] = 955;
 buffer[54] = 946;
 buffer[55] = 936;
 buffer[56] = 927;
 buffer[57] = 918;
 buffer[58] = 908;
 buffer[59] = 898;
 buffer[60] = 889;
 buffer[61] = 879;
 buffer[62] = 869;
 buffer[63] = 858;
 buffer[64] = 848;
 buffer[65] = 838;
 buffer[66] = 827;
 buffer[67] = 816;
 buffer[68] = 805;
 buffer[69] = 794;
 buffer[70] = 783;
 buffer[71] = 772;
 buffer[72] = 761;
 buffer[73] = 749;
 buffer[74] = 738;
 buffer[75] = 726;
 buffer[76] = 714;
 buffer[77] = 702;
 buffer[78] = 690;
 buffer[79] = 678;
 buffer[80] = 666;
 buffer[81] = 654;
 buffer[82] = 641;
 buffer[83] = 629;
 buffer[84] = 616;
 buffer[85] = 604;
 buffer[86] = 591;
 buffer[87] = 578;
 buffer[88] = 565;
 buffer[89] = 552;
 buffer[90] = 539;
 buffer[91] = 526;
 buffer[92] = 513;
 buffer[93] = 499;
 buffer[94] = 486;
 buffer[95] = 472;
 buffer[96] = 459;
 buffer[97] = 445;
 buffer[98] = 431;
 buffer[99] = 418;
 buffer[100] = 404;
 buffer[101] = 390;
 buffer[102] = 376;
 buffer[103] = 362;
 buffer[104] = 348;
 buffer[105] = 334;
 buffer[106] = 320;
 buffer[107] = 305;
 buffer[108] = 291;
 buffer[109] = 277;
 buffer[110] = 262;
 buffer[111] = 248;
 buffer[112] = 234;
 buffer[113] = 219;
 buffer[114] = 205;
 buffer[115] = 190;
 buffer[116] = 176;
 buffer[117] = 161;
 buffer[118] = 146;
 buffer[119] = 132;
 buffer[120] = 117;
 buffer[121] = 102;
 buffer[122] = 88;
 buffer[123] = 73;
 buffer[124] = 58;
 buffer[125] = 44;
 buffer[126] = 29;
 buffer[127] = 14;
 buffer[128] = 0;
 buffer[129] = -15;
 buffer[130] = -30;
 buffer[131] = -45;
 buffer[132] = -59;
 buffer[133] = -74;
 buffer[134] = -89;
 buffer[135] = -103;
 buffer[136] = -118;
 buffer[137] = -133;
 buffer[138] = -147;
 buffer[139] = -162;
 buffer[140] = -177;
 buffer[141] = -191;
 buffer[142] = -206;
 buffer[143] = -220;
 buffer[144] = -235;
 buffer[145] = -249;
 buffer[146] = -263;
 buffer[147] = -278;
 buffer[148] = -292;
 buffer[149] = -306;
 buffer[150] = -321;
 buffer[151] = -335;
 buffer[152] = -349;
 buffer[153] = -363;
 buffer[154] = -377;
 buffer[155] = -391;
 buffer[156] = -405;
 buffer[157] = -419;
 buffer[158] = -432;
 buffer[159] = -446;
 buffer[160] = -460;
 buffer[161] = -473;
 buffer[162] = -487;
 buffer[163] = -500;
 buffer[164] = -514;
 buffer[165] = -527;
 buffer[166] = -540;
 buffer[167] = -553;
 buffer[168] = -566;
 buffer[169] = -579;
 buffer[170] = -592;
 buffer[171] = -605;
 buffer[172] = -617;
 buffer[173] = -630;
 buffer[174] = -642;
 buffer[175] = -655;
 buffer[176] = -667;
 buffer[177] = -679;
 buffer[178] = -691;
 buffer[179] = -703;
 buffer[180] = -715;
 buffer[181] = -727;
 buffer[182] = -739;
 buffer[183] = -750;
 buffer[184] = -762;
 buffer[185] = -773;
 buffer[186] = -784;
 buffer[187] = -795;
 buffer[188] = -806;
 buffer[189] = -817;
 buffer[190] = -828;
 buffer[191] = -839;
 buffer[192] = -849;
 buffer[193] = -859;
 buffer[194] = -870;
 buffer[195] = -880;
 buffer[196] = -890;
 buffer[197] = -899;
 buffer[198] = -909;
 buffer[199] = -919;
 buffer[200] = -928;
 buffer[201] = -937;
 buffer[202] = -947;
 buffer[203] = -956;
 buffer[204] = -964;
 buffer[205] = -973;
 buffer[206] = -982;
 buffer[207] = -990;
 buffer[208] = -998;
 buffer[209] = -1006;
 buffer[210] = -1014;
 buffer[211] = -1022;
 buffer[212] = -1030;
 buffer[213] = -1037;
 buffer[214] = -1045;
 buffer[215] = -1052;
 buffer[216] = -1059;
 buffer[217] = -1066;
 buffer[218] = -1072;
 buffer[219] = -1079;
 buffer[220] = -1085;
 buffer[221] = -1092;
 buffer[222] = -1098;
 buffer[223] = -1103;
 buffer[224] = -1109;
 buffer[225] = -1115;
 buffer[226] = -1120;
 buffer[227] = -1125;
 buffer[228] = -1130;
 buffer[229] = -1135;
 buffer[230] = -1140;
 buffer[231] = -1144;
 buffer[232] = -1149;
 buffer[233] = -1153;
 buffer[234] = -1157;
 buffer[235] = -1161;
 buffer[236] = -1165;
 buffer[237] = -1168;
 buffer[238] = -1171;
 buffer[239] = -1174;
 buffer[240] = -1177;
 buffer[241] = -1180;
 buffer[242] = -1183;
 buffer[243] = -1185;
 buffer[244] = -1188;
 buffer[245] = -1190;
 buffer[246] = -1191;
 buffer[247] = -1193;
 buffer[248] = -1195;
 buffer[249] = -1196;
 buffer[250] = -1197;
 buffer[251] = -1198;
 buffer[252] = -1199;
 buffer[253] = -1200;
 buffer[254] = -1200;
 buffer[255] = -1200;
 buffer[256] = -1200;
 buffer[257] = -1200;
 buffer[258] = -1200;
 buffer[259] = -1200;
 buffer[260] = -1199;
 buffer[261] = -1198;
 buffer[262] = -1197;
 buffer[263] = -1196;
 buffer[264] = -1195;
 buffer[265] = -1193;
 buffer[266] = -1191;
 buffer[267] = -1190;
 buffer[268] = -1188;
 buffer[269] = -1185;
 buffer[270] = -1183;
 buffer[271] = -1180;
 buffer[272] = -1177;
 buffer[273] = -1174;
 buffer[274] = -1171;
 buffer[275] = -1168;
 buffer[276] = -1165;
 buffer[277] = -1161;
 buffer[278] = -1157;
 buffer[279] = -1153;
 buffer[280] = -1149;
 buffer[281] = -1144;
 buffer[282] = -1140;
 buffer[283] = -1135;
 buffer[284] = -1130;
 buffer[285] = -1125;
 buffer[286] = -1120;
 buffer[287] = -1115;
 buffer[288] = -1109;
 buffer[289] = -1103;
 buffer[290] = -1098;
 buffer[291] = -1092;
 buffer[292] = -1085;
 buffer[293] = -1079;
 buffer[294] = -1072;
 buffer[295] = -1066;
 buffer[296] = -1059;
 buffer[297] = -1052;
 buffer[298] = -1045;
 buffer[299] = -1037;
 buffer[300] = -1030;
 buffer[301] = -1022;
 buffer[302] = -1014;
 buffer[303] = -1006;
 buffer[304] = -998;
 buffer[305] = -990;
 buffer[306] = -982;
 buffer[307] = -973;
 buffer[308] = -964;
 buffer[309] = -956;
 buffer[310] = -947;
 buffer[311] = -937;
 buffer[312] = -928;
 buffer[313] = -919;
 buffer[314] = -909;
 buffer[315] = -899;
 buffer[316] = -890;
 buffer[317] = -880;
 buffer[318] = -870;
 buffer[319] = -859;
 buffer[320] = -849;
 buffer[321] = -839;
 buffer[322] = -828;
 buffer[323] = -817;
 buffer[324] = -806;
 buffer[325] = -795;
 buffer[326] = -784;
 buffer[327] = -773;
 buffer[328] = -762;
 buffer[329] = -750;
 buffer[330] = -739;
 buffer[331] = -727;
 buffer[332] = -715;
 buffer[333] = -703;
 buffer[334] = -691;
 buffer[335] = -679;
 buffer[336] = -667;
 buffer[337] = -655;
 buffer[338] = -642;
 buffer[339] = -630;
 buffer[340] = -617;
 buffer[341] = -605;
 buffer[342] = -592;
 buffer[343] = -579;
 buffer[344] = -566;
 buffer[345] = -553;
 buffer[346] = -540;
 buffer[347] = -527;
 buffer[348] = -514;
 buffer[349] = -500;
 buffer[350] = -487;
 buffer[351] = -473;
 buffer[352] = -460;
 buffer[353] = -446;
 buffer[354] = -432;
 buffer[355] = -419;
 buffer[356] = -405;
 buffer[357] = -391;
 buffer[358] = -377;
 buffer[359] = -363;
 buffer[360] = -349;
 buffer[361] = -335;
 buffer[362] = -321;
 buffer[363] = -306;
 buffer[364] = -292;
 buffer[365] = -278;
 buffer[366] = -263;
 buffer[367] = -249;
 buffer[368] = -235;
 buffer[369] = -220;
 buffer[370] = -206;
 buffer[371] = -191;
 buffer[372] = -177;
 buffer[373] = -162;
 buffer[374] = -147;
 buffer[375] = -133;
 buffer[376] = -118;
 buffer[377] = -103;
 buffer[378] = -89;
 buffer[379] = -74;
 buffer[380] = -59;
 buffer[381] = -45;
 buffer[382] = -30;
 buffer[383] = -15;
 buffer[384] = -1;
 buffer[385] = 14;
 buffer[386] = 29;
 buffer[387] = 44;
 buffer[388] = 58;
 buffer[389] = 73;
 buffer[390] = 88;
 buffer[391] = 102;
 buffer[392] = 117;
 buffer[393] = 132;
 buffer[394] = 146;
 buffer[395] = 161;
 buffer[396] = 176;
 buffer[397] = 190;
 buffer[398] = 205;
 buffer[399] = 219;
 buffer[400] = 234;
 buffer[401] = 248;
 buffer[402] = 262;
 buffer[403] = 277;
 buffer[404] = 291;
 buffer[405] = 305;
 buffer[406] = 320;
 buffer[407] = 334;
 buffer[408] = 348;
 buffer[409] = 362;
 buffer[410] = 376;
 buffer[411] = 390;
 buffer[412] = 404;
 buffer[413] = 418;
 buffer[414] = 431;
 buffer[415] = 445;
 buffer[416] = 459;
 buffer[417] = 472;
 buffer[418] = 486;
 buffer[419] = 499;
 buffer[420] = 513;
 buffer[421] = 526;
 buffer[422] = 539;
 buffer[423] = 552;
 buffer[424] = 565;
 buffer[425] = 578;
 buffer[426] = 591;
 buffer[427] = 604;
 buffer[428] = 616;
 buffer[429] = 629;
 buffer[430] = 641;
 buffer[431] = 654;
 buffer[432] = 666;
 buffer[433] = 678;
 buffer[434] = 690;
 buffer[435] = 702;
 buffer[436] = 714;
 buffer[437] = 726;
 buffer[438] = 738;
 buffer[439] = 749;
 buffer[440] = 761;
 buffer[441] = 772;
 buffer[442] = 783;
 buffer[443] = 794;
 buffer[444] = 805;
 buffer[445] = 816;
 buffer[446] = 827;
 buffer[447] = 838;
 buffer[448] = 848;
 buffer[449] = 858;
 buffer[450] = 869;
 buffer[451] = 879;
 buffer[452] = 889;
 buffer[453] = 898;
 buffer[454] = 908;
 buffer[455] = 918;
 buffer[456] = 927;
 buffer[457] = 936;
 buffer[458] = 946;
 buffer[459] = 955;
 buffer[460] = 963;
 buffer[461] = 972;
 buffer[462] = 981;
 buffer[463] = 989;
 buffer[464] = 997;
 buffer[465] = 1005;
 buffer[466] = 1013;
 buffer[467] = 1021;
 buffer[468] = 1029;
 buffer[469] = 1036;
 buffer[470] = 1044;
 buffer[471] = 1051;
 buffer[472] = 1058;
 buffer[473] = 1065;
 buffer[474] = 1071;
 buffer[475] = 1078;
 buffer[476] = 1084;
 buffer[477] = 1091;
 buffer[478] = 1097;
 buffer[479] = 1102;
 buffer[480] = 1108;
 buffer[481] = 1114;
 buffer[482] = 1119;
 buffer[483] = 1124;
 buffer[484] = 1129;
 buffer[485] = 1134;
 buffer[486] = 1139;
 buffer[487] = 1143;
 buffer[488] = 1148;
 buffer[489] = 1152;
 buffer[490] = 1156;
 buffer[491] = 1160;
 buffer[492] = 1164;
 buffer[493] = 1167;
 buffer[494] = 1170;
 buffer[495] = 1173;
 buffer[496] = 1176;
 buffer[497] = 1179;
 buffer[498] = 1182;
 buffer[499] = 1184;
 buffer[500] = 1187;
 buffer[501] = 1189;
 buffer[502] = 1190;
 buffer[503] = 1192;
 buffer[504] = 1194;
 buffer[505] = 1195;
 buffer[506] = 1196;
 buffer[507] = 1197;
 buffer[508] = 1198;
 buffer[509] = 1199;
 buffer[510] = 1199;
 buffer[511] = 1199;
end

endmodule

module M_frame_display (
in_pix_x,
in_pix_y,
in_pix_active,
in_pix_vblank,
in_vga_hs,
in_vga_vs,
out_pix_r,
out_pix_g,
out_pix_b,
in_run,
out_done,
reset,
out_clock,
clock
);
input  [10:0] in_pix_x;
input  [10:0] in_pix_y;
input  [0:0] in_pix_active;
input  [0:0] in_pix_vblank;
input  [0:0] in_vga_hs;
input  [0:0] in_vga_vs;
output  [7:0] out_pix_r;
output  [7:0] out_pix_g;
output  [7:0] out_pix_b;
input in_run;
output out_done;
input reset;
output out_clock;
input clock;
assign out_clock = clock;
wire  [31:0] _w_rng1_rnd;
wire  [31:0] _w_rng2_rnd;
wire  [31:0] _w_rng3_rnd;
wire  [31:0] _w_rng4_rnd;
wire  [31:0] _w_rng5_rnd;
wire  [31:0] _w_rng6_rnd;
wire  [31:0] _w_rng7_rnd;
wire  [31:0] _w_rng8_rnd;
wire  [31:0] _w_rng9_rnd;
wire  [31:0] _w_rng10_rnd;
wire  [31:0] _w_rng11_rnd;
wire  [31:0] _w_rng12_rnd;
wire  [31:0] _w_rng13_rnd;
wire  [31:0] _w_rng14_rnd;
wire  [31:0] _w_rng15_rnd;
wire  [31:0] _w_rng16_rnd;
wire  [31:0] _w_rng17_rnd;
wire  [31:0] _w_rng18_rnd;
wire  [31:0] _w_rng19_rnd;
wire  [31:0] _w_rng20_rnd;
wire  [31:0] _w_rng21_rnd;
wire  [31:0] _w_rng22_rnd;
wire  [31:0] _w_rng23_rnd;
wire  [31:0] _w_rng24_rnd;
wire  [31:0] _w_rng25_rnd;
wire  [31:0] _w_rng26_rnd;
wire  [31:0] _w_rng27_rnd;
wire  [31:0] _w_rng28_rnd;
wire  [31:0] _w_rng29_rnd;
wire  [31:0] _w_rng30_rnd;
wire  [31:0] _w_rng31_rnd;
wire  [31:0] _w_rng32_rnd;
wire  [31:0] _w_rng33_rnd;
wire  [31:0] _w_rng34_rnd;
wire  [31:0] _w_rng35_rnd;
wire  [31:0] _w_rng36_rnd;
wire  [31:0] _w_rng37_rnd;
wire  [31:0] _w_rng38_rnd;
wire  [31:0] _w_rng39_rnd;
wire  [31:0] _w_rng40_rnd;
wire  [31:0] _w_rng41_rnd;
wire  [31:0] _w_rng42_rnd;
wire  [31:0] _w_rng43_rnd;
wire  [31:0] _w_rng44_rnd;
wire  [31:0] _w_rng45_rnd;
wire  [31:0] _w_rng46_rnd;
wire  [15:0] _w_mem_inv_rdata;
wire signed [11:0] _w_mem_cos_rdata;
wire  [19:0] _c___stage___block_8_accum_r;
assign _c___stage___block_8_accum_r = 0;
wire  [19:0] _c___stage___block_8_accum_g;
assign _c___stage___block_8_accum_g = 0;
wire  [19:0] _c___stage___block_8_accum_b;
assign _c___stage___block_8_accum_b = 0;
wire  [9:0] _c___stage___block_8_num;
assign _c___stage___block_8_num = 0;
reg  [0:0] _t_cos_wenable;
reg signed [11:0] _t_cos_wdata;
reg signed [23:0] _t___stage___block_8_q_x;
reg signed [23:0] _t___stage___block_8_q_y;
reg signed [23:0] _t___stage___block_8_p_x;
reg signed [23:0] _t___stage___block_8_p_y;
reg signed [23:0] _t___stage___block_9_a_x;
reg signed [23:0] _t___stage___block_9_a_y;
reg signed [23:0] _t___stage___block_9_len_sq;
reg signed [23:0] _t___stage___block_9_len_brd;
reg  [0:0] _t___stage___block_9_onsq;
reg signed [23:0] _t___stage___block_9_len;
reg  [23:0] _t___stage___block_9_rnd;
reg signed [23:0] _t___stage___block_9_d_x;
reg signed [23:0] _t___stage___block_9_d_y;
reg  [0:0] _t___block_16_side;
reg  [0:0] _t___block_16_checker;
reg signed [23:0] _t___stage___block_31_a_x;
reg signed [23:0] _t___stage___block_31_a_y;
reg signed [23:0] _t___stage___block_31_len_sq;
reg signed [23:0] _t___stage___block_31_len_brd;
reg  [0:0] _t___stage___block_31_onsq;
reg signed [23:0] _t___stage___block_31_len;
reg  [23:0] _t___stage___block_31_rnd;
reg signed [23:0] _t___stage___block_31_d_x;
reg signed [23:0] _t___stage___block_31_d_y;
reg  [0:0] _t___block_38_side;
reg  [0:0] _t___block_38_checker;
reg signed [23:0] _t___stage___block_53_a_x;
reg signed [23:0] _t___stage___block_53_a_y;
reg signed [23:0] _t___stage___block_53_len_sq;
reg signed [23:0] _t___stage___block_53_len_brd;
reg  [0:0] _t___stage___block_53_onsq;
reg signed [23:0] _t___stage___block_53_len;
reg  [23:0] _t___stage___block_53_rnd;
reg signed [23:0] _t___stage___block_53_d_x;
reg signed [23:0] _t___stage___block_53_d_y;
reg  [0:0] _t___block_60_side;
reg  [0:0] _t___block_60_checker;
reg signed [23:0] _t___stage___block_75_a_x;
reg signed [23:0] _t___stage___block_75_a_y;
reg signed [23:0] _t___stage___block_75_len_sq;
reg signed [23:0] _t___stage___block_75_len_brd;
reg  [0:0] _t___stage___block_75_onsq;
reg signed [23:0] _t___stage___block_75_len;
reg  [23:0] _t___stage___block_75_rnd;
reg signed [23:0] _t___stage___block_75_d_x;
reg signed [23:0] _t___stage___block_75_d_y;
reg  [0:0] _t___block_82_side;
reg  [0:0] _t___block_82_checker;
reg signed [23:0] _t___stage___block_97_a_x;
reg signed [23:0] _t___stage___block_97_a_y;
reg signed [23:0] _t___stage___block_97_len_sq;
reg signed [23:0] _t___stage___block_97_len_brd;
reg  [0:0] _t___stage___block_97_onsq;
reg signed [23:0] _t___stage___block_97_len;
reg  [23:0] _t___stage___block_97_rnd;
reg signed [23:0] _t___stage___block_97_d_x;
reg signed [23:0] _t___stage___block_97_d_y;
reg  [0:0] _t___block_104_side;
reg  [0:0] _t___block_104_checker;
reg signed [23:0] _t___stage___block_119_a_x;
reg signed [23:0] _t___stage___block_119_a_y;
reg signed [23:0] _t___stage___block_119_len_sq;
reg signed [23:0] _t___stage___block_119_len_brd;
reg  [0:0] _t___stage___block_119_onsq;
reg signed [23:0] _t___stage___block_119_len;
reg  [23:0] _t___stage___block_119_rnd;
reg signed [23:0] _t___stage___block_119_d_x;
reg signed [23:0] _t___stage___block_119_d_y;
reg  [0:0] _t___block_126_side;
reg  [0:0] _t___block_126_checker;
reg signed [23:0] _t___stage___block_141_a_x;
reg signed [23:0] _t___stage___block_141_a_y;
reg signed [23:0] _t___stage___block_141_len_sq;
reg signed [23:0] _t___stage___block_141_len_brd;
reg  [0:0] _t___stage___block_141_onsq;
reg signed [23:0] _t___stage___block_141_len;
reg  [23:0] _t___stage___block_141_rnd;
reg signed [23:0] _t___stage___block_141_d_x;
reg signed [23:0] _t___stage___block_141_d_y;
reg  [0:0] _t___block_148_side;
reg  [0:0] _t___block_148_checker;
reg signed [23:0] _t___stage___block_163_a_x;
reg signed [23:0] _t___stage___block_163_a_y;
reg signed [23:0] _t___stage___block_163_len_sq;
reg signed [23:0] _t___stage___block_163_len_brd;
reg  [0:0] _t___stage___block_163_onsq;
reg signed [23:0] _t___stage___block_163_len;
reg  [23:0] _t___stage___block_163_rnd;
reg signed [23:0] _t___stage___block_163_d_x;
reg signed [23:0] _t___stage___block_163_d_y;
reg  [0:0] _t___block_170_side;
reg  [0:0] _t___block_170_checker;
reg signed [23:0] _t___stage___block_185_a_x;
reg signed [23:0] _t___stage___block_185_a_y;
reg signed [23:0] _t___stage___block_185_len_sq;
reg signed [23:0] _t___stage___block_185_len_brd;
reg  [0:0] _t___stage___block_185_onsq;
reg signed [23:0] _t___stage___block_185_len;
reg  [23:0] _t___stage___block_185_rnd;
reg signed [23:0] _t___stage___block_185_d_x;
reg signed [23:0] _t___stage___block_185_d_y;
reg  [0:0] _t___block_192_side;
reg  [0:0] _t___block_192_checker;
reg signed [23:0] _t___stage___block_207_a_x;
reg signed [23:0] _t___stage___block_207_a_y;
reg signed [23:0] _t___stage___block_207_len_sq;
reg signed [23:0] _t___stage___block_207_len_brd;
reg  [0:0] _t___stage___block_207_onsq;
reg signed [23:0] _t___stage___block_207_len;
reg  [23:0] _t___stage___block_207_rnd;
reg signed [23:0] _t___stage___block_207_d_x;
reg signed [23:0] _t___stage___block_207_d_y;
reg  [0:0] _t___block_214_side;
reg  [0:0] _t___block_214_checker;
reg signed [23:0] _t___stage___block_229_a_x;
reg signed [23:0] _t___stage___block_229_a_y;
reg signed [23:0] _t___stage___block_229_len_sq;
reg signed [23:0] _t___stage___block_229_len_brd;
reg  [0:0] _t___stage___block_229_onsq;
reg signed [23:0] _t___stage___block_229_len;
reg  [23:0] _t___stage___block_229_rnd;
reg signed [23:0] _t___stage___block_229_d_x;
reg signed [23:0] _t___stage___block_229_d_y;
reg  [0:0] _t___block_236_side;
reg  [0:0] _t___block_236_checker;
reg signed [23:0] _t___stage___block_251_a_x;
reg signed [23:0] _t___stage___block_251_a_y;
reg signed [23:0] _t___stage___block_251_len_sq;
reg signed [23:0] _t___stage___block_251_len_brd;
reg  [0:0] _t___stage___block_251_onsq;
reg signed [23:0] _t___stage___block_251_len;
reg  [23:0] _t___stage___block_251_rnd;
reg signed [23:0] _t___stage___block_251_d_x;
reg signed [23:0] _t___stage___block_251_d_y;
reg  [0:0] _t___block_258_side;
reg  [0:0] _t___block_258_checker;
reg signed [23:0] _t___stage___block_273_a_x;
reg signed [23:0] _t___stage___block_273_a_y;
reg signed [23:0] _t___stage___block_273_len_sq;
reg signed [23:0] _t___stage___block_273_len_brd;
reg  [0:0] _t___stage___block_273_onsq;
reg signed [23:0] _t___stage___block_273_len;
reg  [23:0] _t___stage___block_273_rnd;
reg signed [23:0] _t___stage___block_273_d_x;
reg signed [23:0] _t___stage___block_273_d_y;
reg  [0:0] _t___block_280_side;
reg  [0:0] _t___block_280_checker;
reg signed [23:0] _t___stage___block_295_a_x;
reg signed [23:0] _t___stage___block_295_a_y;
reg signed [23:0] _t___stage___block_295_len_sq;
reg signed [23:0] _t___stage___block_295_len_brd;
reg  [0:0] _t___stage___block_295_onsq;
reg signed [23:0] _t___stage___block_295_len;
reg  [23:0] _t___stage___block_295_rnd;
reg signed [23:0] _t___stage___block_295_d_x;
reg signed [23:0] _t___stage___block_295_d_y;
reg  [0:0] _t___block_302_side;
reg  [0:0] _t___block_302_checker;
reg signed [23:0] _t___stage___block_317_a_x;
reg signed [23:0] _t___stage___block_317_a_y;
reg signed [23:0] _t___stage___block_317_len_sq;
reg signed [23:0] _t___stage___block_317_len_brd;
reg  [0:0] _t___stage___block_317_onsq;
reg signed [23:0] _t___stage___block_317_len;
reg  [23:0] _t___stage___block_317_rnd;
reg signed [23:0] _t___stage___block_317_d_x;
reg signed [23:0] _t___stage___block_317_d_y;
reg  [0:0] _t___block_324_side;
reg  [0:0] _t___block_324_checker;
reg signed [23:0] _t___stage___block_339_a_x;
reg signed [23:0] _t___stage___block_339_a_y;
reg signed [23:0] _t___stage___block_339_len_sq;
reg signed [23:0] _t___stage___block_339_len_brd;
reg  [0:0] _t___stage___block_339_onsq;
reg signed [23:0] _t___stage___block_339_len;
reg  [23:0] _t___stage___block_339_rnd;
reg signed [23:0] _t___stage___block_339_d_x;
reg signed [23:0] _t___stage___block_339_d_y;
reg  [0:0] _t___block_346_side;
reg  [0:0] _t___block_346_checker;
reg signed [23:0] _t___stage___block_361_a_x;
reg signed [23:0] _t___stage___block_361_a_y;
reg signed [23:0] _t___stage___block_361_len_sq;
reg signed [23:0] _t___stage___block_361_len_brd;
reg  [0:0] _t___stage___block_361_onsq;
reg signed [23:0] _t___stage___block_361_len;
reg  [23:0] _t___stage___block_361_rnd;
reg signed [23:0] _t___stage___block_361_d_x;
reg signed [23:0] _t___stage___block_361_d_y;
reg  [0:0] _t___block_368_side;
reg  [0:0] _t___block_368_checker;
reg signed [23:0] _t___stage___block_383_a_x;
reg signed [23:0] _t___stage___block_383_a_y;
reg signed [23:0] _t___stage___block_383_len_sq;
reg signed [23:0] _t___stage___block_383_len_brd;
reg  [0:0] _t___stage___block_383_onsq;
reg signed [23:0] _t___stage___block_383_len;
reg  [23:0] _t___stage___block_383_rnd;
reg signed [23:0] _t___stage___block_383_d_x;
reg signed [23:0] _t___stage___block_383_d_y;
reg  [0:0] _t___block_390_side;
reg  [0:0] _t___block_390_checker;
reg signed [23:0] _t___stage___block_405_a_x;
reg signed [23:0] _t___stage___block_405_a_y;
reg signed [23:0] _t___stage___block_405_len_sq;
reg signed [23:0] _t___stage___block_405_len_brd;
reg  [0:0] _t___stage___block_405_onsq;
reg signed [23:0] _t___stage___block_405_len;
reg  [23:0] _t___stage___block_405_rnd;
reg signed [23:0] _t___stage___block_405_d_x;
reg signed [23:0] _t___stage___block_405_d_y;
reg  [0:0] _t___block_412_side;
reg  [0:0] _t___block_412_checker;
reg signed [23:0] _t___stage___block_427_a_x;
reg signed [23:0] _t___stage___block_427_a_y;
reg signed [23:0] _t___stage___block_427_len_sq;
reg signed [23:0] _t___stage___block_427_len_brd;
reg  [0:0] _t___stage___block_427_onsq;
reg signed [23:0] _t___stage___block_427_len;
reg  [23:0] _t___stage___block_427_rnd;
reg signed [23:0] _t___stage___block_427_d_x;
reg signed [23:0] _t___stage___block_427_d_y;
reg  [0:0] _t___block_434_side;
reg  [0:0] _t___block_434_checker;
reg signed [23:0] _t___stage___block_449_a_x;
reg signed [23:0] _t___stage___block_449_a_y;
reg signed [23:0] _t___stage___block_449_len_sq;
reg signed [23:0] _t___stage___block_449_len_brd;
reg  [0:0] _t___stage___block_449_onsq;
reg signed [23:0] _t___stage___block_449_len;
reg  [23:0] _t___stage___block_449_rnd;
reg signed [23:0] _t___stage___block_449_d_x;
reg signed [23:0] _t___stage___block_449_d_y;
reg  [0:0] _t___block_456_side;
reg  [0:0] _t___block_456_checker;
reg signed [23:0] _t___stage___block_471_a_x;
reg signed [23:0] _t___stage___block_471_a_y;
reg signed [23:0] _t___stage___block_471_len_sq;
reg signed [23:0] _t___stage___block_471_len_brd;
reg  [0:0] _t___stage___block_471_onsq;
reg signed [23:0] _t___stage___block_471_len;
reg  [23:0] _t___stage___block_471_rnd;
reg signed [23:0] _t___stage___block_471_d_x;
reg signed [23:0] _t___stage___block_471_d_y;
reg  [0:0] _t___block_478_side;
reg  [0:0] _t___block_478_checker;
reg signed [23:0] _t___stage___block_493_a_x;
reg signed [23:0] _t___stage___block_493_a_y;
reg signed [23:0] _t___stage___block_493_len_sq;
reg signed [23:0] _t___stage___block_493_len_brd;
reg  [0:0] _t___stage___block_493_onsq;
reg signed [23:0] _t___stage___block_493_len;
reg  [23:0] _t___stage___block_493_rnd;
reg signed [23:0] _t___stage___block_493_d_x;
reg signed [23:0] _t___stage___block_493_d_y;
reg  [0:0] _t___block_500_side;
reg  [0:0] _t___block_500_checker;
reg signed [23:0] _t___stage___block_515_a_x;
reg signed [23:0] _t___stage___block_515_a_y;
reg signed [23:0] _t___stage___block_515_len_sq;
reg signed [23:0] _t___stage___block_515_len_brd;
reg  [0:0] _t___stage___block_515_onsq;
reg signed [23:0] _t___stage___block_515_len;
reg  [23:0] _t___stage___block_515_rnd;
reg signed [23:0] _t___stage___block_515_d_x;
reg signed [23:0] _t___stage___block_515_d_y;
reg  [0:0] _t___block_522_side;
reg  [0:0] _t___block_522_checker;
reg signed [23:0] _t___stage___block_537_a_x;
reg signed [23:0] _t___stage___block_537_a_y;
reg signed [23:0] _t___stage___block_537_len_sq;
reg signed [23:0] _t___stage___block_537_len_brd;
reg  [0:0] _t___stage___block_537_onsq;
reg signed [23:0] _t___stage___block_537_len;
reg  [23:0] _t___stage___block_537_rnd;
reg signed [23:0] _t___stage___block_537_d_x;
reg signed [23:0] _t___stage___block_537_d_y;
reg  [0:0] _t___block_544_side;
reg  [0:0] _t___block_544_checker;
reg signed [23:0] _t___stage___block_559_a_x;
reg signed [23:0] _t___stage___block_559_a_y;
reg signed [23:0] _t___stage___block_559_len_sq;
reg signed [23:0] _t___stage___block_559_len_brd;
reg  [0:0] _t___stage___block_559_onsq;
reg signed [23:0] _t___stage___block_559_len;
reg  [23:0] _t___stage___block_559_rnd;
reg signed [23:0] _t___stage___block_559_d_x;
reg signed [23:0] _t___stage___block_559_d_y;
reg  [0:0] _t___block_566_side;
reg  [0:0] _t___block_566_checker;
reg signed [23:0] _t___stage___block_581_a_x;
reg signed [23:0] _t___stage___block_581_a_y;
reg signed [23:0] _t___stage___block_581_len_sq;
reg signed [23:0] _t___stage___block_581_len_brd;
reg  [0:0] _t___stage___block_581_onsq;
reg signed [23:0] _t___stage___block_581_len;
reg  [23:0] _t___stage___block_581_rnd;
reg signed [23:0] _t___stage___block_581_d_x;
reg signed [23:0] _t___stage___block_581_d_y;
reg  [0:0] _t___block_588_side;
reg  [0:0] _t___block_588_checker;
reg signed [23:0] _t___stage___block_603_a_x;
reg signed [23:0] _t___stage___block_603_a_y;
reg signed [23:0] _t___stage___block_603_len_sq;
reg signed [23:0] _t___stage___block_603_len_brd;
reg  [0:0] _t___stage___block_603_onsq;
reg signed [23:0] _t___stage___block_603_len;
reg  [23:0] _t___stage___block_603_rnd;
reg signed [23:0] _t___stage___block_603_d_x;
reg signed [23:0] _t___stage___block_603_d_y;
reg  [0:0] _t___block_610_side;
reg  [0:0] _t___block_610_checker;
reg signed [23:0] _t___stage___block_625_a_x;
reg signed [23:0] _t___stage___block_625_a_y;
reg signed [23:0] _t___stage___block_625_len_sq;
reg signed [23:0] _t___stage___block_625_len_brd;
reg  [0:0] _t___stage___block_625_onsq;
reg signed [23:0] _t___stage___block_625_len;
reg  [23:0] _t___stage___block_625_rnd;
reg signed [23:0] _t___stage___block_625_d_x;
reg signed [23:0] _t___stage___block_625_d_y;
reg  [0:0] _t___block_632_side;
reg  [0:0] _t___block_632_checker;
reg signed [23:0] _t___stage___block_647_a_x;
reg signed [23:0] _t___stage___block_647_a_y;
reg signed [23:0] _t___stage___block_647_len_sq;
reg signed [23:0] _t___stage___block_647_len_brd;
reg  [0:0] _t___stage___block_647_onsq;
reg signed [23:0] _t___stage___block_647_len;
reg  [23:0] _t___stage___block_647_rnd;
reg signed [23:0] _t___stage___block_647_d_x;
reg signed [23:0] _t___stage___block_647_d_y;
reg  [0:0] _t___block_654_side;
reg  [0:0] _t___block_654_checker;
reg signed [23:0] _t___stage___block_669_a_x;
reg signed [23:0] _t___stage___block_669_a_y;
reg signed [23:0] _t___stage___block_669_len_sq;
reg signed [23:0] _t___stage___block_669_len_brd;
reg  [0:0] _t___stage___block_669_onsq;
reg signed [23:0] _t___stage___block_669_len;
reg  [23:0] _t___stage___block_669_rnd;
reg signed [23:0] _t___stage___block_669_d_x;
reg signed [23:0] _t___stage___block_669_d_y;
reg  [0:0] _t___block_676_side;
reg  [0:0] _t___block_676_checker;
reg signed [23:0] _t___stage___block_691_a_x;
reg signed [23:0] _t___stage___block_691_a_y;
reg signed [23:0] _t___stage___block_691_len_sq;
reg signed [23:0] _t___stage___block_691_len_brd;
reg  [0:0] _t___stage___block_691_onsq;
reg signed [23:0] _t___stage___block_691_len;
reg  [23:0] _t___stage___block_691_rnd;
reg signed [23:0] _t___stage___block_691_d_x;
reg signed [23:0] _t___stage___block_691_d_y;
reg  [0:0] _t___block_698_side;
reg  [0:0] _t___block_698_checker;
reg signed [23:0] _t___stage___block_713_a_x;
reg signed [23:0] _t___stage___block_713_a_y;
reg signed [23:0] _t___stage___block_713_len_sq;
reg signed [23:0] _t___stage___block_713_len_brd;
reg  [0:0] _t___stage___block_713_onsq;
reg signed [23:0] _t___stage___block_713_len;
reg  [23:0] _t___stage___block_713_rnd;
reg signed [23:0] _t___stage___block_713_d_x;
reg signed [23:0] _t___stage___block_713_d_y;
reg  [0:0] _t___block_720_side;
reg  [0:0] _t___block_720_checker;
reg signed [23:0] _t___stage___block_735_a_x;
reg signed [23:0] _t___stage___block_735_a_y;
reg signed [23:0] _t___stage___block_735_len_sq;
reg signed [23:0] _t___stage___block_735_len_brd;
reg  [0:0] _t___stage___block_735_onsq;
reg signed [23:0] _t___stage___block_735_len;
reg  [23:0] _t___stage___block_735_rnd;
reg signed [23:0] _t___stage___block_735_d_x;
reg signed [23:0] _t___stage___block_735_d_y;
reg  [0:0] _t___block_742_side;
reg  [0:0] _t___block_742_checker;
reg signed [23:0] _t___stage___block_757_a_x;
reg signed [23:0] _t___stage___block_757_a_y;
reg signed [23:0] _t___stage___block_757_len_sq;
reg signed [23:0] _t___stage___block_757_len_brd;
reg  [0:0] _t___stage___block_757_onsq;
reg signed [23:0] _t___stage___block_757_len;
reg  [23:0] _t___stage___block_757_rnd;
reg signed [23:0] _t___stage___block_757_d_x;
reg signed [23:0] _t___stage___block_757_d_y;
reg  [0:0] _t___block_764_side;
reg  [0:0] _t___block_764_checker;
reg signed [23:0] _t___stage___block_779_a_x;
reg signed [23:0] _t___stage___block_779_a_y;
reg signed [23:0] _t___stage___block_779_len_sq;
reg signed [23:0] _t___stage___block_779_len_brd;
reg  [0:0] _t___stage___block_779_onsq;
reg signed [23:0] _t___stage___block_779_len;
reg  [23:0] _t___stage___block_779_rnd;
reg signed [23:0] _t___stage___block_779_d_x;
reg signed [23:0] _t___stage___block_779_d_y;
reg  [0:0] _t___block_786_side;
reg  [0:0] _t___block_786_checker;
reg signed [23:0] _t___stage___block_801_a_x;
reg signed [23:0] _t___stage___block_801_a_y;
reg signed [23:0] _t___stage___block_801_len_sq;
reg signed [23:0] _t___stage___block_801_len_brd;
reg  [0:0] _t___stage___block_801_onsq;
reg signed [23:0] _t___stage___block_801_len;
reg  [23:0] _t___stage___block_801_rnd;
reg signed [23:0] _t___stage___block_801_d_x;
reg signed [23:0] _t___stage___block_801_d_y;
reg  [0:0] _t___block_808_side;
reg  [0:0] _t___block_808_checker;
reg signed [23:0] _t___stage___block_823_a_x;
reg signed [23:0] _t___stage___block_823_a_y;
reg signed [23:0] _t___stage___block_823_len_sq;
reg signed [23:0] _t___stage___block_823_len_brd;
reg  [0:0] _t___stage___block_823_onsq;
reg signed [23:0] _t___stage___block_823_len;
reg  [23:0] _t___stage___block_823_rnd;
reg signed [23:0] _t___stage___block_823_d_x;
reg signed [23:0] _t___stage___block_823_d_y;
reg  [0:0] _t___block_830_side;
reg  [0:0] _t___block_830_checker;
reg signed [23:0] _t___stage___block_845_a_x;
reg signed [23:0] _t___stage___block_845_a_y;
reg signed [23:0] _t___stage___block_845_len_sq;
reg signed [23:0] _t___stage___block_845_len_brd;
reg  [0:0] _t___stage___block_845_onsq;
reg signed [23:0] _t___stage___block_845_len;
reg  [23:0] _t___stage___block_845_rnd;
reg signed [23:0] _t___stage___block_845_d_x;
reg signed [23:0] _t___stage___block_845_d_y;
reg  [0:0] _t___block_852_side;
reg  [0:0] _t___block_852_checker;
reg signed [23:0] _t___stage___block_867_a_x;
reg signed [23:0] _t___stage___block_867_a_y;
reg signed [23:0] _t___stage___block_867_len_sq;
reg signed [23:0] _t___stage___block_867_len_brd;
reg  [0:0] _t___stage___block_867_onsq;
reg signed [23:0] _t___stage___block_867_len;
reg  [23:0] _t___stage___block_867_rnd;
reg signed [23:0] _t___stage___block_867_d_x;
reg signed [23:0] _t___stage___block_867_d_y;
reg  [0:0] _t___block_874_side;
reg  [0:0] _t___block_874_checker;
reg signed [23:0] _t___stage___block_889_a_x;
reg signed [23:0] _t___stage___block_889_a_y;
reg signed [23:0] _t___stage___block_889_len_sq;
reg signed [23:0] _t___stage___block_889_len_brd;
reg  [0:0] _t___stage___block_889_onsq;
reg signed [23:0] _t___stage___block_889_len;
reg  [23:0] _t___stage___block_889_rnd;
reg signed [23:0] _t___stage___block_889_d_x;
reg signed [23:0] _t___stage___block_889_d_y;
reg  [0:0] _t___block_896_side;
reg  [0:0] _t___block_896_checker;
reg signed [23:0] _t___stage___block_911_a_x;
reg signed [23:0] _t___stage___block_911_a_y;
reg signed [23:0] _t___stage___block_911_len_sq;
reg signed [23:0] _t___stage___block_911_len_brd;
reg  [0:0] _t___stage___block_911_onsq;
reg signed [23:0] _t___stage___block_911_len;
reg  [23:0] _t___stage___block_911_rnd;
reg signed [23:0] _t___stage___block_911_d_x;
reg signed [23:0] _t___stage___block_911_d_y;
reg  [0:0] _t___block_918_side;
reg  [0:0] _t___block_918_checker;
reg signed [23:0] _t___stage___block_933_a_x;
reg signed [23:0] _t___stage___block_933_a_y;
reg signed [23:0] _t___stage___block_933_len_sq;
reg signed [23:0] _t___stage___block_933_len_brd;
reg  [0:0] _t___stage___block_933_onsq;
reg signed [23:0] _t___stage___block_933_len;
reg  [23:0] _t___stage___block_933_rnd;
reg signed [23:0] _t___stage___block_933_d_x;
reg signed [23:0] _t___stage___block_933_d_y;
reg  [0:0] _t___block_940_side;
reg  [0:0] _t___block_940_checker;
reg signed [23:0] _t___stage___block_955_a_x;
reg signed [23:0] _t___stage___block_955_a_y;
reg signed [23:0] _t___stage___block_955_len_sq;
reg signed [23:0] _t___stage___block_955_len_brd;
reg  [0:0] _t___stage___block_955_onsq;
reg signed [23:0] _t___stage___block_955_len;
reg  [23:0] _t___stage___block_955_rnd;
reg signed [23:0] _t___stage___block_955_d_x;
reg signed [23:0] _t___stage___block_955_d_y;
reg  [0:0] _t___block_962_side;
reg  [0:0] _t___block_962_checker;
reg signed [23:0] _t___stage___block_977_a_x;
reg signed [23:0] _t___stage___block_977_a_y;
reg signed [23:0] _t___stage___block_977_len_sq;
reg signed [23:0] _t___stage___block_977_len_brd;
reg  [0:0] _t___stage___block_977_onsq;
reg signed [23:0] _t___stage___block_977_len;
reg  [23:0] _t___stage___block_977_rnd;
reg signed [23:0] _t___stage___block_977_d_x;
reg signed [23:0] _t___stage___block_977_d_y;
reg  [0:0] _t___block_984_side;
reg  [0:0] _t___block_984_checker;
reg signed [23:0] _t___stage___block_999_a_x;
reg signed [23:0] _t___stage___block_999_a_y;
reg signed [23:0] _t___stage___block_999_len_sq;
reg signed [23:0] _t___stage___block_999_len_brd;
reg  [0:0] _t___stage___block_999_onsq;
reg signed [23:0] _t___stage___block_999_len;
reg  [23:0] _t___stage___block_999_rnd;
reg signed [23:0] _t___stage___block_999_d_x;
reg signed [23:0] _t___stage___block_999_d_y;
reg  [0:0] _t___block_1006_side;
reg  [0:0] _t___block_1006_checker;
reg  [23:0] _t___stage___block_1022_r;
reg  [23:0] _t___stage___block_1022_g;
reg  [23:0] _t___stage___block_1022_b;

reg  [31:0] _d_cycle = 0;
reg  [31:0] _q_cycle = 0;
reg  [9:0] _d_inv_addr = 0;
reg  [9:0] _q_inv_addr = 0;
reg  [8:0] _d_cos_addr = 0;
reg  [8:0] _q_cos_addr = 0;
reg  [8:0] _d___block_3_cursor = 0;
reg  [8:0] _q___block_3_cursor = 0;
reg  [19:0] _d___pip_1598_1_0___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_0___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_1___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_1___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_2___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_2___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_3___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_3___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_4___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_4___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_5___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_5___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_6___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_6___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_7___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_7___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_8___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_8___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_9___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_9___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_10___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_10___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_11___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_11___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_12___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_12___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_13___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_13___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_14___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_14___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_15___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_15___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_16___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_16___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_17___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_17___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_18___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_18___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_19___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_19___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_20___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_20___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_21___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_21___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_22___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_22___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_23___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_23___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_24___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_24___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_25___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_25___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_26___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_26___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_27___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_27___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_28___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_28___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_29___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_29___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_30___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_30___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_31___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_31___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_32___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_32___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_33___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_33___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_34___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_34___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_35___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_35___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_36___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_36___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_37___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_37___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_38___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_38___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_39___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_39___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_40___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_40___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_41___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_41___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_42___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_42___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_43___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_43___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_44___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_44___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_45___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_45___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_46___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_46___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_47___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_47___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_48___stage___block_8_accum_b;
reg  [19:0] _q___pip_1598_1_48___stage___block_8_accum_b;
reg  [19:0] _d___pip_1598_1_0___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_0___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_1___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_1___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_2___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_2___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_3___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_3___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_4___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_4___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_5___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_5___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_6___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_6___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_7___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_7___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_8___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_8___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_9___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_9___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_10___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_10___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_11___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_11___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_12___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_12___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_13___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_13___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_14___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_14___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_15___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_15___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_16___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_16___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_17___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_17___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_18___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_18___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_19___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_19___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_20___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_20___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_21___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_21___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_22___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_22___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_23___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_23___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_24___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_24___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_25___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_25___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_26___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_26___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_27___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_27___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_28___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_28___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_29___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_29___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_30___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_30___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_31___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_31___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_32___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_32___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_33___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_33___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_34___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_34___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_35___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_35___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_36___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_36___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_37___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_37___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_38___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_38___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_39___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_39___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_40___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_40___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_41___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_41___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_42___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_42___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_43___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_43___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_44___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_44___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_45___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_45___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_46___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_46___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_47___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_47___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_48___stage___block_8_accum_g;
reg  [19:0] _q___pip_1598_1_48___stage___block_8_accum_g;
reg  [19:0] _d___pip_1598_1_0___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_0___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_1___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_1___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_2___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_2___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_3___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_3___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_4___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_4___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_5___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_5___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_6___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_6___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_7___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_7___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_8___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_8___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_9___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_9___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_10___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_10___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_11___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_11___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_12___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_12___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_13___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_13___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_14___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_14___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_15___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_15___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_16___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_16___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_17___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_17___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_18___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_18___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_19___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_19___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_20___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_20___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_21___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_21___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_22___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_22___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_23___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_23___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_24___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_24___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_25___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_25___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_26___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_26___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_27___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_27___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_28___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_28___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_29___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_29___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_30___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_30___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_31___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_31___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_32___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_32___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_33___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_33___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_34___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_34___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_35___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_35___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_36___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_36___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_37___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_37___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_38___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_38___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_39___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_39___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_40___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_40___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_41___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_41___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_42___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_42___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_43___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_43___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_44___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_44___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_45___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_45___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_46___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_46___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_47___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_47___stage___block_8_accum_r;
reg  [19:0] _d___pip_1598_1_48___stage___block_8_accum_r;
reg  [19:0] _q___pip_1598_1_48___stage___block_8_accum_r;
reg  [9:0] _d___pip_1598_1_0___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_0___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_1___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_1___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_2___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_2___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_3___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_3___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_4___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_4___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_5___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_5___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_6___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_6___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_7___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_7___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_8___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_8___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_9___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_9___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_10___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_10___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_11___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_11___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_12___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_12___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_13___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_13___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_14___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_14___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_15___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_15___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_16___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_16___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_17___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_17___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_18___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_18___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_19___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_19___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_20___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_20___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_21___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_21___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_22___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_22___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_23___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_23___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_24___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_24___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_25___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_25___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_26___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_26___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_27___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_27___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_28___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_28___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_29___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_29___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_30___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_30___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_31___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_31___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_32___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_32___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_33___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_33___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_34___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_34___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_35___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_35___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_36___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_36___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_37___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_37___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_38___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_38___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_39___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_39___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_40___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_40___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_41___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_41___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_42___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_42___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_43___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_43___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_44___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_44___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_45___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_45___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_46___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_46___stage___block_8_num;
reg  [9:0] _d___pip_1598_1_47___stage___block_8_num;
reg  [9:0] _q___pip_1598_1_47___stage___block_8_num;
reg signed [23:0] _d___pip_1598_1_0___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_0___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_1___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_1___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_2___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_2___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_3___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_3___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_4___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_4___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_5___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_5___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_6___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_6___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_7___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_7___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_8___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_8___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_9___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_9___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_10___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_10___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_11___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_11___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_12___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_12___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_13___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_13___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_14___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_14___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_15___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_15___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_16___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_16___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_17___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_17___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_18___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_18___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_19___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_19___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_20___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_20___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_21___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_21___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_22___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_22___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_23___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_23___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_24___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_24___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_25___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_25___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_26___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_26___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_27___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_27___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_28___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_28___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_29___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_29___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_30___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_30___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_31___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_31___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_32___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_32___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_33___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_33___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_34___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_34___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_35___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_35___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_36___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_36___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_37___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_37___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_38___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_38___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_39___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_39___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_40___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_40___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_41___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_41___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_42___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_42___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_43___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_43___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_44___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_44___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_45___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_45___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_46___stage___block_8_p_x;
reg signed [23:0] _q___pip_1598_1_46___stage___block_8_p_x;
reg signed [23:0] _d___pip_1598_1_0___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_0___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_1___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_1___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_2___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_2___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_3___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_3___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_4___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_4___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_5___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_5___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_6___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_6___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_7___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_7___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_8___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_8___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_9___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_9___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_10___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_10___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_11___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_11___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_12___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_12___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_13___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_13___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_14___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_14___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_15___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_15___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_16___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_16___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_17___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_17___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_18___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_18___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_19___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_19___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_20___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_20___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_21___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_21___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_22___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_22___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_23___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_23___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_24___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_24___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_25___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_25___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_26___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_26___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_27___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_27___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_28___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_28___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_29___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_29___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_30___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_30___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_31___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_31___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_32___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_32___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_33___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_33___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_34___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_34___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_35___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_35___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_36___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_36___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_37___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_37___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_38___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_38___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_39___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_39___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_40___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_40___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_41___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_41___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_42___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_42___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_43___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_43___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_44___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_44___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_45___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_45___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_46___stage___block_8_p_y;
reg signed [23:0] _q___pip_1598_1_46___stage___block_8_p_y;
reg signed [23:0] _d___pip_1598_1_0___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_0___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_1___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_1___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_2___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_2___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_3___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_3___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_4___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_4___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_5___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_5___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_6___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_6___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_7___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_7___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_8___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_8___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_9___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_9___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_10___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_10___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_11___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_11___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_12___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_12___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_13___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_13___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_14___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_14___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_15___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_15___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_16___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_16___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_17___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_17___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_18___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_18___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_19___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_19___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_20___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_20___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_21___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_21___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_22___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_22___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_23___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_23___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_24___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_24___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_25___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_25___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_26___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_26___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_27___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_27___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_28___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_28___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_29___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_29___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_30___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_30___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_31___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_31___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_32___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_32___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_33___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_33___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_34___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_34___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_35___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_35___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_36___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_36___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_37___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_37___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_38___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_38___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_39___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_39___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_40___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_40___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_41___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_41___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_42___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_42___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_43___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_43___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_44___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_44___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_45___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_45___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_46___stage___block_8_q_x;
reg signed [23:0] _q___pip_1598_1_46___stage___block_8_q_x;
reg signed [23:0] _d___pip_1598_1_0___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_0___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_1___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_1___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_2___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_2___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_3___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_3___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_4___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_4___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_5___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_5___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_6___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_6___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_7___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_7___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_8___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_8___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_9___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_9___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_10___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_10___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_11___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_11___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_12___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_12___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_13___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_13___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_14___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_14___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_15___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_15___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_16___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_16___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_17___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_17___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_18___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_18___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_19___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_19___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_20___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_20___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_21___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_21___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_22___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_22___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_23___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_23___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_24___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_24___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_25___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_25___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_26___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_26___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_27___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_27___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_28___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_28___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_29___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_29___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_30___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_30___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_31___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_31___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_32___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_32___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_33___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_33___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_34___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_34___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_35___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_35___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_36___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_36___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_37___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_37___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_38___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_38___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_39___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_39___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_40___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_40___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_41___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_41___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_42___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_42___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_43___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_43___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_44___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_44___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_45___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_45___stage___block_8_q_y;
reg signed [23:0] _d___pip_1598_1_46___stage___block_8_q_y;
reg signed [23:0] _q___pip_1598_1_46___stage___block_8_q_y;
reg  [7:0] _d_pix_r;
reg  [7:0] _q_pix_r;
reg  [7:0] _d_pix_g;
reg  [7:0] _q_pix_g;
reg  [7:0] _d_pix_b;
reg  [7:0] _q_pix_b;
reg  [1:0] _d__idx_fsm0,_q__idx_fsm0;
reg  _autorun = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_0,_q__idx_fsm___pip_1598_1_0;
wire _ready_fsm___pip_1598_1_0 = (_q__idx_fsm___pip_1598_1_0 == 1) || (_q__idx_fsm___pip_1598_1_0 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_0 = 0,_q__full_fsm___pip_1598_1_0 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_0 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_0 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_1,_q__idx_fsm___pip_1598_1_1;
wire _ready_fsm___pip_1598_1_1 = (_q__idx_fsm___pip_1598_1_1 == 1) || (_q__idx_fsm___pip_1598_1_1 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_1 = 0,_q__full_fsm___pip_1598_1_1 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_1 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_1 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_2,_q__idx_fsm___pip_1598_1_2;
wire _ready_fsm___pip_1598_1_2 = (_q__idx_fsm___pip_1598_1_2 == 1) || (_q__idx_fsm___pip_1598_1_2 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_2 = 0,_q__full_fsm___pip_1598_1_2 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_2 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_2 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_3,_q__idx_fsm___pip_1598_1_3;
wire _ready_fsm___pip_1598_1_3 = (_q__idx_fsm___pip_1598_1_3 == 1) || (_q__idx_fsm___pip_1598_1_3 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_3 = 0,_q__full_fsm___pip_1598_1_3 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_3 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_3 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_4,_q__idx_fsm___pip_1598_1_4;
wire _ready_fsm___pip_1598_1_4 = (_q__idx_fsm___pip_1598_1_4 == 1) || (_q__idx_fsm___pip_1598_1_4 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_4 = 0,_q__full_fsm___pip_1598_1_4 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_4 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_4 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_5,_q__idx_fsm___pip_1598_1_5;
wire _ready_fsm___pip_1598_1_5 = (_q__idx_fsm___pip_1598_1_5 == 1) || (_q__idx_fsm___pip_1598_1_5 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_5 = 0,_q__full_fsm___pip_1598_1_5 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_5 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_5 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_6,_q__idx_fsm___pip_1598_1_6;
wire _ready_fsm___pip_1598_1_6 = (_q__idx_fsm___pip_1598_1_6 == 1) || (_q__idx_fsm___pip_1598_1_6 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_6 = 0,_q__full_fsm___pip_1598_1_6 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_6 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_6 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_7,_q__idx_fsm___pip_1598_1_7;
wire _ready_fsm___pip_1598_1_7 = (_q__idx_fsm___pip_1598_1_7 == 1) || (_q__idx_fsm___pip_1598_1_7 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_7 = 0,_q__full_fsm___pip_1598_1_7 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_7 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_7 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_8,_q__idx_fsm___pip_1598_1_8;
wire _ready_fsm___pip_1598_1_8 = (_q__idx_fsm___pip_1598_1_8 == 1) || (_q__idx_fsm___pip_1598_1_8 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_8 = 0,_q__full_fsm___pip_1598_1_8 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_8 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_8 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_9,_q__idx_fsm___pip_1598_1_9;
wire _ready_fsm___pip_1598_1_9 = (_q__idx_fsm___pip_1598_1_9 == 1) || (_q__idx_fsm___pip_1598_1_9 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_9 = 0,_q__full_fsm___pip_1598_1_9 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_9 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_9 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_10,_q__idx_fsm___pip_1598_1_10;
wire _ready_fsm___pip_1598_1_10 = (_q__idx_fsm___pip_1598_1_10 == 1) || (_q__idx_fsm___pip_1598_1_10 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_10 = 0,_q__full_fsm___pip_1598_1_10 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_10 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_10 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_11,_q__idx_fsm___pip_1598_1_11;
wire _ready_fsm___pip_1598_1_11 = (_q__idx_fsm___pip_1598_1_11 == 1) || (_q__idx_fsm___pip_1598_1_11 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_11 = 0,_q__full_fsm___pip_1598_1_11 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_11 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_11 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_12,_q__idx_fsm___pip_1598_1_12;
wire _ready_fsm___pip_1598_1_12 = (_q__idx_fsm___pip_1598_1_12 == 1) || (_q__idx_fsm___pip_1598_1_12 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_12 = 0,_q__full_fsm___pip_1598_1_12 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_12 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_12 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_13,_q__idx_fsm___pip_1598_1_13;
wire _ready_fsm___pip_1598_1_13 = (_q__idx_fsm___pip_1598_1_13 == 1) || (_q__idx_fsm___pip_1598_1_13 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_13 = 0,_q__full_fsm___pip_1598_1_13 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_13 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_13 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_14,_q__idx_fsm___pip_1598_1_14;
wire _ready_fsm___pip_1598_1_14 = (_q__idx_fsm___pip_1598_1_14 == 1) || (_q__idx_fsm___pip_1598_1_14 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_14 = 0,_q__full_fsm___pip_1598_1_14 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_14 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_14 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_15,_q__idx_fsm___pip_1598_1_15;
wire _ready_fsm___pip_1598_1_15 = (_q__idx_fsm___pip_1598_1_15 == 1) || (_q__idx_fsm___pip_1598_1_15 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_15 = 0,_q__full_fsm___pip_1598_1_15 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_15 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_15 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_16,_q__idx_fsm___pip_1598_1_16;
wire _ready_fsm___pip_1598_1_16 = (_q__idx_fsm___pip_1598_1_16 == 1) || (_q__idx_fsm___pip_1598_1_16 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_16 = 0,_q__full_fsm___pip_1598_1_16 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_16 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_16 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_17,_q__idx_fsm___pip_1598_1_17;
wire _ready_fsm___pip_1598_1_17 = (_q__idx_fsm___pip_1598_1_17 == 1) || (_q__idx_fsm___pip_1598_1_17 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_17 = 0,_q__full_fsm___pip_1598_1_17 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_17 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_17 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_18,_q__idx_fsm___pip_1598_1_18;
wire _ready_fsm___pip_1598_1_18 = (_q__idx_fsm___pip_1598_1_18 == 1) || (_q__idx_fsm___pip_1598_1_18 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_18 = 0,_q__full_fsm___pip_1598_1_18 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_18 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_18 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_19,_q__idx_fsm___pip_1598_1_19;
wire _ready_fsm___pip_1598_1_19 = (_q__idx_fsm___pip_1598_1_19 == 1) || (_q__idx_fsm___pip_1598_1_19 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_19 = 0,_q__full_fsm___pip_1598_1_19 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_19 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_19 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_20,_q__idx_fsm___pip_1598_1_20;
wire _ready_fsm___pip_1598_1_20 = (_q__idx_fsm___pip_1598_1_20 == 1) || (_q__idx_fsm___pip_1598_1_20 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_20 = 0,_q__full_fsm___pip_1598_1_20 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_20 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_20 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_21,_q__idx_fsm___pip_1598_1_21;
wire _ready_fsm___pip_1598_1_21 = (_q__idx_fsm___pip_1598_1_21 == 1) || (_q__idx_fsm___pip_1598_1_21 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_21 = 0,_q__full_fsm___pip_1598_1_21 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_21 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_21 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_22,_q__idx_fsm___pip_1598_1_22;
wire _ready_fsm___pip_1598_1_22 = (_q__idx_fsm___pip_1598_1_22 == 1) || (_q__idx_fsm___pip_1598_1_22 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_22 = 0,_q__full_fsm___pip_1598_1_22 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_22 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_22 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_23,_q__idx_fsm___pip_1598_1_23;
wire _ready_fsm___pip_1598_1_23 = (_q__idx_fsm___pip_1598_1_23 == 1) || (_q__idx_fsm___pip_1598_1_23 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_23 = 0,_q__full_fsm___pip_1598_1_23 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_23 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_23 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_24,_q__idx_fsm___pip_1598_1_24;
wire _ready_fsm___pip_1598_1_24 = (_q__idx_fsm___pip_1598_1_24 == 1) || (_q__idx_fsm___pip_1598_1_24 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_24 = 0,_q__full_fsm___pip_1598_1_24 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_24 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_24 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_25,_q__idx_fsm___pip_1598_1_25;
wire _ready_fsm___pip_1598_1_25 = (_q__idx_fsm___pip_1598_1_25 == 1) || (_q__idx_fsm___pip_1598_1_25 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_25 = 0,_q__full_fsm___pip_1598_1_25 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_25 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_25 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_26,_q__idx_fsm___pip_1598_1_26;
wire _ready_fsm___pip_1598_1_26 = (_q__idx_fsm___pip_1598_1_26 == 1) || (_q__idx_fsm___pip_1598_1_26 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_26 = 0,_q__full_fsm___pip_1598_1_26 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_26 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_26 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_27,_q__idx_fsm___pip_1598_1_27;
wire _ready_fsm___pip_1598_1_27 = (_q__idx_fsm___pip_1598_1_27 == 1) || (_q__idx_fsm___pip_1598_1_27 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_27 = 0,_q__full_fsm___pip_1598_1_27 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_27 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_27 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_28,_q__idx_fsm___pip_1598_1_28;
wire _ready_fsm___pip_1598_1_28 = (_q__idx_fsm___pip_1598_1_28 == 1) || (_q__idx_fsm___pip_1598_1_28 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_28 = 0,_q__full_fsm___pip_1598_1_28 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_28 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_28 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_29,_q__idx_fsm___pip_1598_1_29;
wire _ready_fsm___pip_1598_1_29 = (_q__idx_fsm___pip_1598_1_29 == 1) || (_q__idx_fsm___pip_1598_1_29 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_29 = 0,_q__full_fsm___pip_1598_1_29 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_29 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_29 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_30,_q__idx_fsm___pip_1598_1_30;
wire _ready_fsm___pip_1598_1_30 = (_q__idx_fsm___pip_1598_1_30 == 1) || (_q__idx_fsm___pip_1598_1_30 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_30 = 0,_q__full_fsm___pip_1598_1_30 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_30 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_30 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_31,_q__idx_fsm___pip_1598_1_31;
wire _ready_fsm___pip_1598_1_31 = (_q__idx_fsm___pip_1598_1_31 == 1) || (_q__idx_fsm___pip_1598_1_31 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_31 = 0,_q__full_fsm___pip_1598_1_31 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_31 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_31 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_32,_q__idx_fsm___pip_1598_1_32;
wire _ready_fsm___pip_1598_1_32 = (_q__idx_fsm___pip_1598_1_32 == 1) || (_q__idx_fsm___pip_1598_1_32 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_32 = 0,_q__full_fsm___pip_1598_1_32 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_32 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_32 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_33,_q__idx_fsm___pip_1598_1_33;
wire _ready_fsm___pip_1598_1_33 = (_q__idx_fsm___pip_1598_1_33 == 1) || (_q__idx_fsm___pip_1598_1_33 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_33 = 0,_q__full_fsm___pip_1598_1_33 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_33 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_33 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_34,_q__idx_fsm___pip_1598_1_34;
wire _ready_fsm___pip_1598_1_34 = (_q__idx_fsm___pip_1598_1_34 == 1) || (_q__idx_fsm___pip_1598_1_34 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_34 = 0,_q__full_fsm___pip_1598_1_34 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_34 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_34 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_35,_q__idx_fsm___pip_1598_1_35;
wire _ready_fsm___pip_1598_1_35 = (_q__idx_fsm___pip_1598_1_35 == 1) || (_q__idx_fsm___pip_1598_1_35 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_35 = 0,_q__full_fsm___pip_1598_1_35 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_35 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_35 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_36,_q__idx_fsm___pip_1598_1_36;
wire _ready_fsm___pip_1598_1_36 = (_q__idx_fsm___pip_1598_1_36 == 1) || (_q__idx_fsm___pip_1598_1_36 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_36 = 0,_q__full_fsm___pip_1598_1_36 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_36 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_36 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_37,_q__idx_fsm___pip_1598_1_37;
wire _ready_fsm___pip_1598_1_37 = (_q__idx_fsm___pip_1598_1_37 == 1) || (_q__idx_fsm___pip_1598_1_37 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_37 = 0,_q__full_fsm___pip_1598_1_37 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_37 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_37 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_38,_q__idx_fsm___pip_1598_1_38;
wire _ready_fsm___pip_1598_1_38 = (_q__idx_fsm___pip_1598_1_38 == 1) || (_q__idx_fsm___pip_1598_1_38 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_38 = 0,_q__full_fsm___pip_1598_1_38 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_38 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_38 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_39,_q__idx_fsm___pip_1598_1_39;
wire _ready_fsm___pip_1598_1_39 = (_q__idx_fsm___pip_1598_1_39 == 1) || (_q__idx_fsm___pip_1598_1_39 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_39 = 0,_q__full_fsm___pip_1598_1_39 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_39 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_39 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_40,_q__idx_fsm___pip_1598_1_40;
wire _ready_fsm___pip_1598_1_40 = (_q__idx_fsm___pip_1598_1_40 == 1) || (_q__idx_fsm___pip_1598_1_40 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_40 = 0,_q__full_fsm___pip_1598_1_40 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_40 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_40 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_41,_q__idx_fsm___pip_1598_1_41;
wire _ready_fsm___pip_1598_1_41 = (_q__idx_fsm___pip_1598_1_41 == 1) || (_q__idx_fsm___pip_1598_1_41 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_41 = 0,_q__full_fsm___pip_1598_1_41 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_41 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_41 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_42,_q__idx_fsm___pip_1598_1_42;
wire _ready_fsm___pip_1598_1_42 = (_q__idx_fsm___pip_1598_1_42 == 1) || (_q__idx_fsm___pip_1598_1_42 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_42 = 0,_q__full_fsm___pip_1598_1_42 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_42 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_42 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_43,_q__idx_fsm___pip_1598_1_43;
wire _ready_fsm___pip_1598_1_43 = (_q__idx_fsm___pip_1598_1_43 == 1) || (_q__idx_fsm___pip_1598_1_43 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_43 = 0,_q__full_fsm___pip_1598_1_43 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_43 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_43 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_44,_q__idx_fsm___pip_1598_1_44;
wire _ready_fsm___pip_1598_1_44 = (_q__idx_fsm___pip_1598_1_44 == 1) || (_q__idx_fsm___pip_1598_1_44 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_44 = 0,_q__full_fsm___pip_1598_1_44 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_44 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_44 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_45,_q__idx_fsm___pip_1598_1_45;
wire _ready_fsm___pip_1598_1_45 = (_q__idx_fsm___pip_1598_1_45 == 1) || (_q__idx_fsm___pip_1598_1_45 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_45 = 0,_q__full_fsm___pip_1598_1_45 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_45 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_45 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_46,_q__idx_fsm___pip_1598_1_46;
wire _ready_fsm___pip_1598_1_46 = (_q__idx_fsm___pip_1598_1_46 == 1) || (_q__idx_fsm___pip_1598_1_46 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_46 = 0,_q__full_fsm___pip_1598_1_46 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_46 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_46 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_47,_q__idx_fsm___pip_1598_1_47;
wire _ready_fsm___pip_1598_1_47 = (_q__idx_fsm___pip_1598_1_47 == 1) || (_q__idx_fsm___pip_1598_1_47 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_47 = 0,_q__full_fsm___pip_1598_1_47 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_47 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_47 = 0;
reg  [0:0] _d__idx_fsm___pip_1598_1_48,_q__idx_fsm___pip_1598_1_48;
wire _ready_fsm___pip_1598_1_48 = (_q__idx_fsm___pip_1598_1_48 == 1) || (_q__idx_fsm___pip_1598_1_48 == 0);
reg  [0:0] _d__full_fsm___pip_1598_1_48 = 0,_q__full_fsm___pip_1598_1_48 = 0;
reg  [0:0] _t__stall_fsm___pip_1598_1_48 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_1598_1_48 = 0;
assign out_pix_r = _d_pix_r;
assign out_pix_g = _d_pix_g;
assign out_pix_b = _d_pix_b;
assign out_done = (_q__idx_fsm0 == 0) && _autorun
 &&   _q__idx_fsm___pip_1598_1_0 == 0 && ~ _q__full_fsm___pip_1598_1_0
 &&   _q__idx_fsm___pip_1598_1_1 == 0 && ~ _q__full_fsm___pip_1598_1_1
 &&   _q__idx_fsm___pip_1598_1_2 == 0 && ~ _q__full_fsm___pip_1598_1_2
 &&   _q__idx_fsm___pip_1598_1_3 == 0 && ~ _q__full_fsm___pip_1598_1_3
 &&   _q__idx_fsm___pip_1598_1_4 == 0 && ~ _q__full_fsm___pip_1598_1_4
 &&   _q__idx_fsm___pip_1598_1_5 == 0 && ~ _q__full_fsm___pip_1598_1_5
 &&   _q__idx_fsm___pip_1598_1_6 == 0 && ~ _q__full_fsm___pip_1598_1_6
 &&   _q__idx_fsm___pip_1598_1_7 == 0 && ~ _q__full_fsm___pip_1598_1_7
 &&   _q__idx_fsm___pip_1598_1_8 == 0 && ~ _q__full_fsm___pip_1598_1_8
 &&   _q__idx_fsm___pip_1598_1_9 == 0 && ~ _q__full_fsm___pip_1598_1_9
 &&   _q__idx_fsm___pip_1598_1_10 == 0 && ~ _q__full_fsm___pip_1598_1_10
 &&   _q__idx_fsm___pip_1598_1_11 == 0 && ~ _q__full_fsm___pip_1598_1_11
 &&   _q__idx_fsm___pip_1598_1_12 == 0 && ~ _q__full_fsm___pip_1598_1_12
 &&   _q__idx_fsm___pip_1598_1_13 == 0 && ~ _q__full_fsm___pip_1598_1_13
 &&   _q__idx_fsm___pip_1598_1_14 == 0 && ~ _q__full_fsm___pip_1598_1_14
 &&   _q__idx_fsm___pip_1598_1_15 == 0 && ~ _q__full_fsm___pip_1598_1_15
 &&   _q__idx_fsm___pip_1598_1_16 == 0 && ~ _q__full_fsm___pip_1598_1_16
 &&   _q__idx_fsm___pip_1598_1_17 == 0 && ~ _q__full_fsm___pip_1598_1_17
 &&   _q__idx_fsm___pip_1598_1_18 == 0 && ~ _q__full_fsm___pip_1598_1_18
 &&   _q__idx_fsm___pip_1598_1_19 == 0 && ~ _q__full_fsm___pip_1598_1_19
 &&   _q__idx_fsm___pip_1598_1_20 == 0 && ~ _q__full_fsm___pip_1598_1_20
 &&   _q__idx_fsm___pip_1598_1_21 == 0 && ~ _q__full_fsm___pip_1598_1_21
 &&   _q__idx_fsm___pip_1598_1_22 == 0 && ~ _q__full_fsm___pip_1598_1_22
 &&   _q__idx_fsm___pip_1598_1_23 == 0 && ~ _q__full_fsm___pip_1598_1_23
 &&   _q__idx_fsm___pip_1598_1_24 == 0 && ~ _q__full_fsm___pip_1598_1_24
 &&   _q__idx_fsm___pip_1598_1_25 == 0 && ~ _q__full_fsm___pip_1598_1_25
 &&   _q__idx_fsm___pip_1598_1_26 == 0 && ~ _q__full_fsm___pip_1598_1_26
 &&   _q__idx_fsm___pip_1598_1_27 == 0 && ~ _q__full_fsm___pip_1598_1_27
 &&   _q__idx_fsm___pip_1598_1_28 == 0 && ~ _q__full_fsm___pip_1598_1_28
 &&   _q__idx_fsm___pip_1598_1_29 == 0 && ~ _q__full_fsm___pip_1598_1_29
 &&   _q__idx_fsm___pip_1598_1_30 == 0 && ~ _q__full_fsm___pip_1598_1_30
 &&   _q__idx_fsm___pip_1598_1_31 == 0 && ~ _q__full_fsm___pip_1598_1_31
 &&   _q__idx_fsm___pip_1598_1_32 == 0 && ~ _q__full_fsm___pip_1598_1_32
 &&   _q__idx_fsm___pip_1598_1_33 == 0 && ~ _q__full_fsm___pip_1598_1_33
 &&   _q__idx_fsm___pip_1598_1_34 == 0 && ~ _q__full_fsm___pip_1598_1_34
 &&   _q__idx_fsm___pip_1598_1_35 == 0 && ~ _q__full_fsm___pip_1598_1_35
 &&   _q__idx_fsm___pip_1598_1_36 == 0 && ~ _q__full_fsm___pip_1598_1_36
 &&   _q__idx_fsm___pip_1598_1_37 == 0 && ~ _q__full_fsm___pip_1598_1_37
 &&   _q__idx_fsm___pip_1598_1_38 == 0 && ~ _q__full_fsm___pip_1598_1_38
 &&   _q__idx_fsm___pip_1598_1_39 == 0 && ~ _q__full_fsm___pip_1598_1_39
 &&   _q__idx_fsm___pip_1598_1_40 == 0 && ~ _q__full_fsm___pip_1598_1_40
 &&   _q__idx_fsm___pip_1598_1_41 == 0 && ~ _q__full_fsm___pip_1598_1_41
 &&   _q__idx_fsm___pip_1598_1_42 == 0 && ~ _q__full_fsm___pip_1598_1_42
 &&   _q__idx_fsm___pip_1598_1_43 == 0 && ~ _q__full_fsm___pip_1598_1_43
 &&   _q__idx_fsm___pip_1598_1_44 == 0 && ~ _q__full_fsm___pip_1598_1_44
 &&   _q__idx_fsm___pip_1598_1_45 == 0 && ~ _q__full_fsm___pip_1598_1_45
 &&   _q__idx_fsm___pip_1598_1_46 == 0 && ~ _q__full_fsm___pip_1598_1_46
 &&   _q__idx_fsm___pip_1598_1_47 == 0 && ~ _q__full_fsm___pip_1598_1_47
 &&   _q__idx_fsm___pip_1598_1_48 == 0
;
verilator_random rng1 (
.clock(clock),
.rnd(_w_rng1_rnd));
verilator_random rng2 (
.clock(clock),
.rnd(_w_rng2_rnd));
verilator_random rng3 (
.clock(clock),
.rnd(_w_rng3_rnd));
verilator_random rng4 (
.clock(clock),
.rnd(_w_rng4_rnd));
verilator_random rng5 (
.clock(clock),
.rnd(_w_rng5_rnd));
verilator_random rng6 (
.clock(clock),
.rnd(_w_rng6_rnd));
verilator_random rng7 (
.clock(clock),
.rnd(_w_rng7_rnd));
verilator_random rng8 (
.clock(clock),
.rnd(_w_rng8_rnd));
verilator_random rng9 (
.clock(clock),
.rnd(_w_rng9_rnd));
verilator_random rng10 (
.clock(clock),
.rnd(_w_rng10_rnd));
verilator_random rng11 (
.clock(clock),
.rnd(_w_rng11_rnd));
verilator_random rng12 (
.clock(clock),
.rnd(_w_rng12_rnd));
verilator_random rng13 (
.clock(clock),
.rnd(_w_rng13_rnd));
verilator_random rng14 (
.clock(clock),
.rnd(_w_rng14_rnd));
verilator_random rng15 (
.clock(clock),
.rnd(_w_rng15_rnd));
verilator_random rng16 (
.clock(clock),
.rnd(_w_rng16_rnd));
verilator_random rng17 (
.clock(clock),
.rnd(_w_rng17_rnd));
verilator_random rng18 (
.clock(clock),
.rnd(_w_rng18_rnd));
verilator_random rng19 (
.clock(clock),
.rnd(_w_rng19_rnd));
verilator_random rng20 (
.clock(clock),
.rnd(_w_rng20_rnd));
verilator_random rng21 (
.clock(clock),
.rnd(_w_rng21_rnd));
verilator_random rng22 (
.clock(clock),
.rnd(_w_rng22_rnd));
verilator_random rng23 (
.clock(clock),
.rnd(_w_rng23_rnd));
verilator_random rng24 (
.clock(clock),
.rnd(_w_rng24_rnd));
verilator_random rng25 (
.clock(clock),
.rnd(_w_rng25_rnd));
verilator_random rng26 (
.clock(clock),
.rnd(_w_rng26_rnd));
verilator_random rng27 (
.clock(clock),
.rnd(_w_rng27_rnd));
verilator_random rng28 (
.clock(clock),
.rnd(_w_rng28_rnd));
verilator_random rng29 (
.clock(clock),
.rnd(_w_rng29_rnd));
verilator_random rng30 (
.clock(clock),
.rnd(_w_rng30_rnd));
verilator_random rng31 (
.clock(clock),
.rnd(_w_rng31_rnd));
verilator_random rng32 (
.clock(clock),
.rnd(_w_rng32_rnd));
verilator_random rng33 (
.clock(clock),
.rnd(_w_rng33_rnd));
verilator_random rng34 (
.clock(clock),
.rnd(_w_rng34_rnd));
verilator_random rng35 (
.clock(clock),
.rnd(_w_rng35_rnd));
verilator_random rng36 (
.clock(clock),
.rnd(_w_rng36_rnd));
verilator_random rng37 (
.clock(clock),
.rnd(_w_rng37_rnd));
verilator_random rng38 (
.clock(clock),
.rnd(_w_rng38_rnd));
verilator_random rng39 (
.clock(clock),
.rnd(_w_rng39_rnd));
verilator_random rng40 (
.clock(clock),
.rnd(_w_rng40_rnd));
verilator_random rng41 (
.clock(clock),
.rnd(_w_rng41_rnd));
verilator_random rng42 (
.clock(clock),
.rnd(_w_rng42_rnd));
verilator_random rng43 (
.clock(clock),
.rnd(_w_rng43_rnd));
verilator_random rng44 (
.clock(clock),
.rnd(_w_rng44_rnd));
verilator_random rng45 (
.clock(clock),
.rnd(_w_rng45_rnd));
verilator_random rng46 (
.clock(clock),
.rnd(_w_rng46_rnd));

M_frame_display__mem_inv __mem__inv(
.clock(clock),
.in_addr(_d_inv_addr),
.out_rdata(_w_mem_inv_rdata)
);
M_frame_display__mem_cos __mem__cos(
.clock(clock),
.in_wenable(_t_cos_wenable),
.in_wdata(_t_cos_wdata),
.in_addr(_d_cos_addr),
.out_rdata(_w_mem_cos_rdata)
);


`ifdef FORMAL
initial begin
assume(reset);
end
assume property($initstate || (out_done));
`endif
always @* begin
_d_cycle = _q_cycle;
_d_inv_addr = _q_inv_addr;
_d_cos_addr = _q_cos_addr;
_d___block_3_cursor = _q___block_3_cursor;
_d___pip_1598_1_0___stage___block_8_accum_b = _q___pip_1598_1_0___stage___block_8_accum_b;
_d___pip_1598_1_1___stage___block_8_accum_b = _q___pip_1598_1_1___stage___block_8_accum_b;
_d___pip_1598_1_2___stage___block_8_accum_b = _q___pip_1598_1_2___stage___block_8_accum_b;
_d___pip_1598_1_3___stage___block_8_accum_b = _q___pip_1598_1_3___stage___block_8_accum_b;
_d___pip_1598_1_4___stage___block_8_accum_b = _q___pip_1598_1_4___stage___block_8_accum_b;
_d___pip_1598_1_5___stage___block_8_accum_b = _q___pip_1598_1_5___stage___block_8_accum_b;
_d___pip_1598_1_6___stage___block_8_accum_b = _q___pip_1598_1_6___stage___block_8_accum_b;
_d___pip_1598_1_7___stage___block_8_accum_b = _q___pip_1598_1_7___stage___block_8_accum_b;
_d___pip_1598_1_8___stage___block_8_accum_b = _q___pip_1598_1_8___stage___block_8_accum_b;
_d___pip_1598_1_9___stage___block_8_accum_b = _q___pip_1598_1_9___stage___block_8_accum_b;
_d___pip_1598_1_10___stage___block_8_accum_b = _q___pip_1598_1_10___stage___block_8_accum_b;
_d___pip_1598_1_11___stage___block_8_accum_b = _q___pip_1598_1_11___stage___block_8_accum_b;
_d___pip_1598_1_12___stage___block_8_accum_b = _q___pip_1598_1_12___stage___block_8_accum_b;
_d___pip_1598_1_13___stage___block_8_accum_b = _q___pip_1598_1_13___stage___block_8_accum_b;
_d___pip_1598_1_14___stage___block_8_accum_b = _q___pip_1598_1_14___stage___block_8_accum_b;
_d___pip_1598_1_15___stage___block_8_accum_b = _q___pip_1598_1_15___stage___block_8_accum_b;
_d___pip_1598_1_16___stage___block_8_accum_b = _q___pip_1598_1_16___stage___block_8_accum_b;
_d___pip_1598_1_17___stage___block_8_accum_b = _q___pip_1598_1_17___stage___block_8_accum_b;
_d___pip_1598_1_18___stage___block_8_accum_b = _q___pip_1598_1_18___stage___block_8_accum_b;
_d___pip_1598_1_19___stage___block_8_accum_b = _q___pip_1598_1_19___stage___block_8_accum_b;
_d___pip_1598_1_20___stage___block_8_accum_b = _q___pip_1598_1_20___stage___block_8_accum_b;
_d___pip_1598_1_21___stage___block_8_accum_b = _q___pip_1598_1_21___stage___block_8_accum_b;
_d___pip_1598_1_22___stage___block_8_accum_b = _q___pip_1598_1_22___stage___block_8_accum_b;
_d___pip_1598_1_23___stage___block_8_accum_b = _q___pip_1598_1_23___stage___block_8_accum_b;
_d___pip_1598_1_24___stage___block_8_accum_b = _q___pip_1598_1_24___stage___block_8_accum_b;
_d___pip_1598_1_25___stage___block_8_accum_b = _q___pip_1598_1_25___stage___block_8_accum_b;
_d___pip_1598_1_26___stage___block_8_accum_b = _q___pip_1598_1_26___stage___block_8_accum_b;
_d___pip_1598_1_27___stage___block_8_accum_b = _q___pip_1598_1_27___stage___block_8_accum_b;
_d___pip_1598_1_28___stage___block_8_accum_b = _q___pip_1598_1_28___stage___block_8_accum_b;
_d___pip_1598_1_29___stage___block_8_accum_b = _q___pip_1598_1_29___stage___block_8_accum_b;
_d___pip_1598_1_30___stage___block_8_accum_b = _q___pip_1598_1_30___stage___block_8_accum_b;
_d___pip_1598_1_31___stage___block_8_accum_b = _q___pip_1598_1_31___stage___block_8_accum_b;
_d___pip_1598_1_32___stage___block_8_accum_b = _q___pip_1598_1_32___stage___block_8_accum_b;
_d___pip_1598_1_33___stage___block_8_accum_b = _q___pip_1598_1_33___stage___block_8_accum_b;
_d___pip_1598_1_34___stage___block_8_accum_b = _q___pip_1598_1_34___stage___block_8_accum_b;
_d___pip_1598_1_35___stage___block_8_accum_b = _q___pip_1598_1_35___stage___block_8_accum_b;
_d___pip_1598_1_36___stage___block_8_accum_b = _q___pip_1598_1_36___stage___block_8_accum_b;
_d___pip_1598_1_37___stage___block_8_accum_b = _q___pip_1598_1_37___stage___block_8_accum_b;
_d___pip_1598_1_38___stage___block_8_accum_b = _q___pip_1598_1_38___stage___block_8_accum_b;
_d___pip_1598_1_39___stage___block_8_accum_b = _q___pip_1598_1_39___stage___block_8_accum_b;
_d___pip_1598_1_40___stage___block_8_accum_b = _q___pip_1598_1_40___stage___block_8_accum_b;
_d___pip_1598_1_41___stage___block_8_accum_b = _q___pip_1598_1_41___stage___block_8_accum_b;
_d___pip_1598_1_42___stage___block_8_accum_b = _q___pip_1598_1_42___stage___block_8_accum_b;
_d___pip_1598_1_43___stage___block_8_accum_b = _q___pip_1598_1_43___stage___block_8_accum_b;
_d___pip_1598_1_44___stage___block_8_accum_b = _q___pip_1598_1_44___stage___block_8_accum_b;
_d___pip_1598_1_45___stage___block_8_accum_b = _q___pip_1598_1_45___stage___block_8_accum_b;
_d___pip_1598_1_46___stage___block_8_accum_b = _q___pip_1598_1_46___stage___block_8_accum_b;
_d___pip_1598_1_47___stage___block_8_accum_b = _q___pip_1598_1_47___stage___block_8_accum_b;
_d___pip_1598_1_48___stage___block_8_accum_b = _q___pip_1598_1_48___stage___block_8_accum_b;
_d___pip_1598_1_0___stage___block_8_accum_g = _q___pip_1598_1_0___stage___block_8_accum_g;
_d___pip_1598_1_1___stage___block_8_accum_g = _q___pip_1598_1_1___stage___block_8_accum_g;
_d___pip_1598_1_2___stage___block_8_accum_g = _q___pip_1598_1_2___stage___block_8_accum_g;
_d___pip_1598_1_3___stage___block_8_accum_g = _q___pip_1598_1_3___stage___block_8_accum_g;
_d___pip_1598_1_4___stage___block_8_accum_g = _q___pip_1598_1_4___stage___block_8_accum_g;
_d___pip_1598_1_5___stage___block_8_accum_g = _q___pip_1598_1_5___stage___block_8_accum_g;
_d___pip_1598_1_6___stage___block_8_accum_g = _q___pip_1598_1_6___stage___block_8_accum_g;
_d___pip_1598_1_7___stage___block_8_accum_g = _q___pip_1598_1_7___stage___block_8_accum_g;
_d___pip_1598_1_8___stage___block_8_accum_g = _q___pip_1598_1_8___stage___block_8_accum_g;
_d___pip_1598_1_9___stage___block_8_accum_g = _q___pip_1598_1_9___stage___block_8_accum_g;
_d___pip_1598_1_10___stage___block_8_accum_g = _q___pip_1598_1_10___stage___block_8_accum_g;
_d___pip_1598_1_11___stage___block_8_accum_g = _q___pip_1598_1_11___stage___block_8_accum_g;
_d___pip_1598_1_12___stage___block_8_accum_g = _q___pip_1598_1_12___stage___block_8_accum_g;
_d___pip_1598_1_13___stage___block_8_accum_g = _q___pip_1598_1_13___stage___block_8_accum_g;
_d___pip_1598_1_14___stage___block_8_accum_g = _q___pip_1598_1_14___stage___block_8_accum_g;
_d___pip_1598_1_15___stage___block_8_accum_g = _q___pip_1598_1_15___stage___block_8_accum_g;
_d___pip_1598_1_16___stage___block_8_accum_g = _q___pip_1598_1_16___stage___block_8_accum_g;
_d___pip_1598_1_17___stage___block_8_accum_g = _q___pip_1598_1_17___stage___block_8_accum_g;
_d___pip_1598_1_18___stage___block_8_accum_g = _q___pip_1598_1_18___stage___block_8_accum_g;
_d___pip_1598_1_19___stage___block_8_accum_g = _q___pip_1598_1_19___stage___block_8_accum_g;
_d___pip_1598_1_20___stage___block_8_accum_g = _q___pip_1598_1_20___stage___block_8_accum_g;
_d___pip_1598_1_21___stage___block_8_accum_g = _q___pip_1598_1_21___stage___block_8_accum_g;
_d___pip_1598_1_22___stage___block_8_accum_g = _q___pip_1598_1_22___stage___block_8_accum_g;
_d___pip_1598_1_23___stage___block_8_accum_g = _q___pip_1598_1_23___stage___block_8_accum_g;
_d___pip_1598_1_24___stage___block_8_accum_g = _q___pip_1598_1_24___stage___block_8_accum_g;
_d___pip_1598_1_25___stage___block_8_accum_g = _q___pip_1598_1_25___stage___block_8_accum_g;
_d___pip_1598_1_26___stage___block_8_accum_g = _q___pip_1598_1_26___stage___block_8_accum_g;
_d___pip_1598_1_27___stage___block_8_accum_g = _q___pip_1598_1_27___stage___block_8_accum_g;
_d___pip_1598_1_28___stage___block_8_accum_g = _q___pip_1598_1_28___stage___block_8_accum_g;
_d___pip_1598_1_29___stage___block_8_accum_g = _q___pip_1598_1_29___stage___block_8_accum_g;
_d___pip_1598_1_30___stage___block_8_accum_g = _q___pip_1598_1_30___stage___block_8_accum_g;
_d___pip_1598_1_31___stage___block_8_accum_g = _q___pip_1598_1_31___stage___block_8_accum_g;
_d___pip_1598_1_32___stage___block_8_accum_g = _q___pip_1598_1_32___stage___block_8_accum_g;
_d___pip_1598_1_33___stage___block_8_accum_g = _q___pip_1598_1_33___stage___block_8_accum_g;
_d___pip_1598_1_34___stage___block_8_accum_g = _q___pip_1598_1_34___stage___block_8_accum_g;
_d___pip_1598_1_35___stage___block_8_accum_g = _q___pip_1598_1_35___stage___block_8_accum_g;
_d___pip_1598_1_36___stage___block_8_accum_g = _q___pip_1598_1_36___stage___block_8_accum_g;
_d___pip_1598_1_37___stage___block_8_accum_g = _q___pip_1598_1_37___stage___block_8_accum_g;
_d___pip_1598_1_38___stage___block_8_accum_g = _q___pip_1598_1_38___stage___block_8_accum_g;
_d___pip_1598_1_39___stage___block_8_accum_g = _q___pip_1598_1_39___stage___block_8_accum_g;
_d___pip_1598_1_40___stage___block_8_accum_g = _q___pip_1598_1_40___stage___block_8_accum_g;
_d___pip_1598_1_41___stage___block_8_accum_g = _q___pip_1598_1_41___stage___block_8_accum_g;
_d___pip_1598_1_42___stage___block_8_accum_g = _q___pip_1598_1_42___stage___block_8_accum_g;
_d___pip_1598_1_43___stage___block_8_accum_g = _q___pip_1598_1_43___stage___block_8_accum_g;
_d___pip_1598_1_44___stage___block_8_accum_g = _q___pip_1598_1_44___stage___block_8_accum_g;
_d___pip_1598_1_45___stage___block_8_accum_g = _q___pip_1598_1_45___stage___block_8_accum_g;
_d___pip_1598_1_46___stage___block_8_accum_g = _q___pip_1598_1_46___stage___block_8_accum_g;
_d___pip_1598_1_47___stage___block_8_accum_g = _q___pip_1598_1_47___stage___block_8_accum_g;
_d___pip_1598_1_48___stage___block_8_accum_g = _q___pip_1598_1_48___stage___block_8_accum_g;
_d___pip_1598_1_0___stage___block_8_accum_r = _q___pip_1598_1_0___stage___block_8_accum_r;
_d___pip_1598_1_1___stage___block_8_accum_r = _q___pip_1598_1_1___stage___block_8_accum_r;
_d___pip_1598_1_2___stage___block_8_accum_r = _q___pip_1598_1_2___stage___block_8_accum_r;
_d___pip_1598_1_3___stage___block_8_accum_r = _q___pip_1598_1_3___stage___block_8_accum_r;
_d___pip_1598_1_4___stage___block_8_accum_r = _q___pip_1598_1_4___stage___block_8_accum_r;
_d___pip_1598_1_5___stage___block_8_accum_r = _q___pip_1598_1_5___stage___block_8_accum_r;
_d___pip_1598_1_6___stage___block_8_accum_r = _q___pip_1598_1_6___stage___block_8_accum_r;
_d___pip_1598_1_7___stage___block_8_accum_r = _q___pip_1598_1_7___stage___block_8_accum_r;
_d___pip_1598_1_8___stage___block_8_accum_r = _q___pip_1598_1_8___stage___block_8_accum_r;
_d___pip_1598_1_9___stage___block_8_accum_r = _q___pip_1598_1_9___stage___block_8_accum_r;
_d___pip_1598_1_10___stage___block_8_accum_r = _q___pip_1598_1_10___stage___block_8_accum_r;
_d___pip_1598_1_11___stage___block_8_accum_r = _q___pip_1598_1_11___stage___block_8_accum_r;
_d___pip_1598_1_12___stage___block_8_accum_r = _q___pip_1598_1_12___stage___block_8_accum_r;
_d___pip_1598_1_13___stage___block_8_accum_r = _q___pip_1598_1_13___stage___block_8_accum_r;
_d___pip_1598_1_14___stage___block_8_accum_r = _q___pip_1598_1_14___stage___block_8_accum_r;
_d___pip_1598_1_15___stage___block_8_accum_r = _q___pip_1598_1_15___stage___block_8_accum_r;
_d___pip_1598_1_16___stage___block_8_accum_r = _q___pip_1598_1_16___stage___block_8_accum_r;
_d___pip_1598_1_17___stage___block_8_accum_r = _q___pip_1598_1_17___stage___block_8_accum_r;
_d___pip_1598_1_18___stage___block_8_accum_r = _q___pip_1598_1_18___stage___block_8_accum_r;
_d___pip_1598_1_19___stage___block_8_accum_r = _q___pip_1598_1_19___stage___block_8_accum_r;
_d___pip_1598_1_20___stage___block_8_accum_r = _q___pip_1598_1_20___stage___block_8_accum_r;
_d___pip_1598_1_21___stage___block_8_accum_r = _q___pip_1598_1_21___stage___block_8_accum_r;
_d___pip_1598_1_22___stage___block_8_accum_r = _q___pip_1598_1_22___stage___block_8_accum_r;
_d___pip_1598_1_23___stage___block_8_accum_r = _q___pip_1598_1_23___stage___block_8_accum_r;
_d___pip_1598_1_24___stage___block_8_accum_r = _q___pip_1598_1_24___stage___block_8_accum_r;
_d___pip_1598_1_25___stage___block_8_accum_r = _q___pip_1598_1_25___stage___block_8_accum_r;
_d___pip_1598_1_26___stage___block_8_accum_r = _q___pip_1598_1_26___stage___block_8_accum_r;
_d___pip_1598_1_27___stage___block_8_accum_r = _q___pip_1598_1_27___stage___block_8_accum_r;
_d___pip_1598_1_28___stage___block_8_accum_r = _q___pip_1598_1_28___stage___block_8_accum_r;
_d___pip_1598_1_29___stage___block_8_accum_r = _q___pip_1598_1_29___stage___block_8_accum_r;
_d___pip_1598_1_30___stage___block_8_accum_r = _q___pip_1598_1_30___stage___block_8_accum_r;
_d___pip_1598_1_31___stage___block_8_accum_r = _q___pip_1598_1_31___stage___block_8_accum_r;
_d___pip_1598_1_32___stage___block_8_accum_r = _q___pip_1598_1_32___stage___block_8_accum_r;
_d___pip_1598_1_33___stage___block_8_accum_r = _q___pip_1598_1_33___stage___block_8_accum_r;
_d___pip_1598_1_34___stage___block_8_accum_r = _q___pip_1598_1_34___stage___block_8_accum_r;
_d___pip_1598_1_35___stage___block_8_accum_r = _q___pip_1598_1_35___stage___block_8_accum_r;
_d___pip_1598_1_36___stage___block_8_accum_r = _q___pip_1598_1_36___stage___block_8_accum_r;
_d___pip_1598_1_37___stage___block_8_accum_r = _q___pip_1598_1_37___stage___block_8_accum_r;
_d___pip_1598_1_38___stage___block_8_accum_r = _q___pip_1598_1_38___stage___block_8_accum_r;
_d___pip_1598_1_39___stage___block_8_accum_r = _q___pip_1598_1_39___stage___block_8_accum_r;
_d___pip_1598_1_40___stage___block_8_accum_r = _q___pip_1598_1_40___stage___block_8_accum_r;
_d___pip_1598_1_41___stage___block_8_accum_r = _q___pip_1598_1_41___stage___block_8_accum_r;
_d___pip_1598_1_42___stage___block_8_accum_r = _q___pip_1598_1_42___stage___block_8_accum_r;
_d___pip_1598_1_43___stage___block_8_accum_r = _q___pip_1598_1_43___stage___block_8_accum_r;
_d___pip_1598_1_44___stage___block_8_accum_r = _q___pip_1598_1_44___stage___block_8_accum_r;
_d___pip_1598_1_45___stage___block_8_accum_r = _q___pip_1598_1_45___stage___block_8_accum_r;
_d___pip_1598_1_46___stage___block_8_accum_r = _q___pip_1598_1_46___stage___block_8_accum_r;
_d___pip_1598_1_47___stage___block_8_accum_r = _q___pip_1598_1_47___stage___block_8_accum_r;
_d___pip_1598_1_48___stage___block_8_accum_r = _q___pip_1598_1_48___stage___block_8_accum_r;
_d___pip_1598_1_0___stage___block_8_num = _q___pip_1598_1_0___stage___block_8_num;
_d___pip_1598_1_1___stage___block_8_num = _q___pip_1598_1_1___stage___block_8_num;
_d___pip_1598_1_2___stage___block_8_num = _q___pip_1598_1_2___stage___block_8_num;
_d___pip_1598_1_3___stage___block_8_num = _q___pip_1598_1_3___stage___block_8_num;
_d___pip_1598_1_4___stage___block_8_num = _q___pip_1598_1_4___stage___block_8_num;
_d___pip_1598_1_5___stage___block_8_num = _q___pip_1598_1_5___stage___block_8_num;
_d___pip_1598_1_6___stage___block_8_num = _q___pip_1598_1_6___stage___block_8_num;
_d___pip_1598_1_7___stage___block_8_num = _q___pip_1598_1_7___stage___block_8_num;
_d___pip_1598_1_8___stage___block_8_num = _q___pip_1598_1_8___stage___block_8_num;
_d___pip_1598_1_9___stage___block_8_num = _q___pip_1598_1_9___stage___block_8_num;
_d___pip_1598_1_10___stage___block_8_num = _q___pip_1598_1_10___stage___block_8_num;
_d___pip_1598_1_11___stage___block_8_num = _q___pip_1598_1_11___stage___block_8_num;
_d___pip_1598_1_12___stage___block_8_num = _q___pip_1598_1_12___stage___block_8_num;
_d___pip_1598_1_13___stage___block_8_num = _q___pip_1598_1_13___stage___block_8_num;
_d___pip_1598_1_14___stage___block_8_num = _q___pip_1598_1_14___stage___block_8_num;
_d___pip_1598_1_15___stage___block_8_num = _q___pip_1598_1_15___stage___block_8_num;
_d___pip_1598_1_16___stage___block_8_num = _q___pip_1598_1_16___stage___block_8_num;
_d___pip_1598_1_17___stage___block_8_num = _q___pip_1598_1_17___stage___block_8_num;
_d___pip_1598_1_18___stage___block_8_num = _q___pip_1598_1_18___stage___block_8_num;
_d___pip_1598_1_19___stage___block_8_num = _q___pip_1598_1_19___stage___block_8_num;
_d___pip_1598_1_20___stage___block_8_num = _q___pip_1598_1_20___stage___block_8_num;
_d___pip_1598_1_21___stage___block_8_num = _q___pip_1598_1_21___stage___block_8_num;
_d___pip_1598_1_22___stage___block_8_num = _q___pip_1598_1_22___stage___block_8_num;
_d___pip_1598_1_23___stage___block_8_num = _q___pip_1598_1_23___stage___block_8_num;
_d___pip_1598_1_24___stage___block_8_num = _q___pip_1598_1_24___stage___block_8_num;
_d___pip_1598_1_25___stage___block_8_num = _q___pip_1598_1_25___stage___block_8_num;
_d___pip_1598_1_26___stage___block_8_num = _q___pip_1598_1_26___stage___block_8_num;
_d___pip_1598_1_27___stage___block_8_num = _q___pip_1598_1_27___stage___block_8_num;
_d___pip_1598_1_28___stage___block_8_num = _q___pip_1598_1_28___stage___block_8_num;
_d___pip_1598_1_29___stage___block_8_num = _q___pip_1598_1_29___stage___block_8_num;
_d___pip_1598_1_30___stage___block_8_num = _q___pip_1598_1_30___stage___block_8_num;
_d___pip_1598_1_31___stage___block_8_num = _q___pip_1598_1_31___stage___block_8_num;
_d___pip_1598_1_32___stage___block_8_num = _q___pip_1598_1_32___stage___block_8_num;
_d___pip_1598_1_33___stage___block_8_num = _q___pip_1598_1_33___stage___block_8_num;
_d___pip_1598_1_34___stage___block_8_num = _q___pip_1598_1_34___stage___block_8_num;
_d___pip_1598_1_35___stage___block_8_num = _q___pip_1598_1_35___stage___block_8_num;
_d___pip_1598_1_36___stage___block_8_num = _q___pip_1598_1_36___stage___block_8_num;
_d___pip_1598_1_37___stage___block_8_num = _q___pip_1598_1_37___stage___block_8_num;
_d___pip_1598_1_38___stage___block_8_num = _q___pip_1598_1_38___stage___block_8_num;
_d___pip_1598_1_39___stage___block_8_num = _q___pip_1598_1_39___stage___block_8_num;
_d___pip_1598_1_40___stage___block_8_num = _q___pip_1598_1_40___stage___block_8_num;
_d___pip_1598_1_41___stage___block_8_num = _q___pip_1598_1_41___stage___block_8_num;
_d___pip_1598_1_42___stage___block_8_num = _q___pip_1598_1_42___stage___block_8_num;
_d___pip_1598_1_43___stage___block_8_num = _q___pip_1598_1_43___stage___block_8_num;
_d___pip_1598_1_44___stage___block_8_num = _q___pip_1598_1_44___stage___block_8_num;
_d___pip_1598_1_45___stage___block_8_num = _q___pip_1598_1_45___stage___block_8_num;
_d___pip_1598_1_46___stage___block_8_num = _q___pip_1598_1_46___stage___block_8_num;
_d___pip_1598_1_47___stage___block_8_num = _q___pip_1598_1_47___stage___block_8_num;
_d___pip_1598_1_0___stage___block_8_p_x = _q___pip_1598_1_0___stage___block_8_p_x;
_d___pip_1598_1_1___stage___block_8_p_x = _q___pip_1598_1_1___stage___block_8_p_x;
_d___pip_1598_1_2___stage___block_8_p_x = _q___pip_1598_1_2___stage___block_8_p_x;
_d___pip_1598_1_3___stage___block_8_p_x = _q___pip_1598_1_3___stage___block_8_p_x;
_d___pip_1598_1_4___stage___block_8_p_x = _q___pip_1598_1_4___stage___block_8_p_x;
_d___pip_1598_1_5___stage___block_8_p_x = _q___pip_1598_1_5___stage___block_8_p_x;
_d___pip_1598_1_6___stage___block_8_p_x = _q___pip_1598_1_6___stage___block_8_p_x;
_d___pip_1598_1_7___stage___block_8_p_x = _q___pip_1598_1_7___stage___block_8_p_x;
_d___pip_1598_1_8___stage___block_8_p_x = _q___pip_1598_1_8___stage___block_8_p_x;
_d___pip_1598_1_9___stage___block_8_p_x = _q___pip_1598_1_9___stage___block_8_p_x;
_d___pip_1598_1_10___stage___block_8_p_x = _q___pip_1598_1_10___stage___block_8_p_x;
_d___pip_1598_1_11___stage___block_8_p_x = _q___pip_1598_1_11___stage___block_8_p_x;
_d___pip_1598_1_12___stage___block_8_p_x = _q___pip_1598_1_12___stage___block_8_p_x;
_d___pip_1598_1_13___stage___block_8_p_x = _q___pip_1598_1_13___stage___block_8_p_x;
_d___pip_1598_1_14___stage___block_8_p_x = _q___pip_1598_1_14___stage___block_8_p_x;
_d___pip_1598_1_15___stage___block_8_p_x = _q___pip_1598_1_15___stage___block_8_p_x;
_d___pip_1598_1_16___stage___block_8_p_x = _q___pip_1598_1_16___stage___block_8_p_x;
_d___pip_1598_1_17___stage___block_8_p_x = _q___pip_1598_1_17___stage___block_8_p_x;
_d___pip_1598_1_18___stage___block_8_p_x = _q___pip_1598_1_18___stage___block_8_p_x;
_d___pip_1598_1_19___stage___block_8_p_x = _q___pip_1598_1_19___stage___block_8_p_x;
_d___pip_1598_1_20___stage___block_8_p_x = _q___pip_1598_1_20___stage___block_8_p_x;
_d___pip_1598_1_21___stage___block_8_p_x = _q___pip_1598_1_21___stage___block_8_p_x;
_d___pip_1598_1_22___stage___block_8_p_x = _q___pip_1598_1_22___stage___block_8_p_x;
_d___pip_1598_1_23___stage___block_8_p_x = _q___pip_1598_1_23___stage___block_8_p_x;
_d___pip_1598_1_24___stage___block_8_p_x = _q___pip_1598_1_24___stage___block_8_p_x;
_d___pip_1598_1_25___stage___block_8_p_x = _q___pip_1598_1_25___stage___block_8_p_x;
_d___pip_1598_1_26___stage___block_8_p_x = _q___pip_1598_1_26___stage___block_8_p_x;
_d___pip_1598_1_27___stage___block_8_p_x = _q___pip_1598_1_27___stage___block_8_p_x;
_d___pip_1598_1_28___stage___block_8_p_x = _q___pip_1598_1_28___stage___block_8_p_x;
_d___pip_1598_1_29___stage___block_8_p_x = _q___pip_1598_1_29___stage___block_8_p_x;
_d___pip_1598_1_30___stage___block_8_p_x = _q___pip_1598_1_30___stage___block_8_p_x;
_d___pip_1598_1_31___stage___block_8_p_x = _q___pip_1598_1_31___stage___block_8_p_x;
_d___pip_1598_1_32___stage___block_8_p_x = _q___pip_1598_1_32___stage___block_8_p_x;
_d___pip_1598_1_33___stage___block_8_p_x = _q___pip_1598_1_33___stage___block_8_p_x;
_d___pip_1598_1_34___stage___block_8_p_x = _q___pip_1598_1_34___stage___block_8_p_x;
_d___pip_1598_1_35___stage___block_8_p_x = _q___pip_1598_1_35___stage___block_8_p_x;
_d___pip_1598_1_36___stage___block_8_p_x = _q___pip_1598_1_36___stage___block_8_p_x;
_d___pip_1598_1_37___stage___block_8_p_x = _q___pip_1598_1_37___stage___block_8_p_x;
_d___pip_1598_1_38___stage___block_8_p_x = _q___pip_1598_1_38___stage___block_8_p_x;
_d___pip_1598_1_39___stage___block_8_p_x = _q___pip_1598_1_39___stage___block_8_p_x;
_d___pip_1598_1_40___stage___block_8_p_x = _q___pip_1598_1_40___stage___block_8_p_x;
_d___pip_1598_1_41___stage___block_8_p_x = _q___pip_1598_1_41___stage___block_8_p_x;
_d___pip_1598_1_42___stage___block_8_p_x = _q___pip_1598_1_42___stage___block_8_p_x;
_d___pip_1598_1_43___stage___block_8_p_x = _q___pip_1598_1_43___stage___block_8_p_x;
_d___pip_1598_1_44___stage___block_8_p_x = _q___pip_1598_1_44___stage___block_8_p_x;
_d___pip_1598_1_45___stage___block_8_p_x = _q___pip_1598_1_45___stage___block_8_p_x;
_d___pip_1598_1_46___stage___block_8_p_x = _q___pip_1598_1_46___stage___block_8_p_x;
_d___pip_1598_1_0___stage___block_8_p_y = _q___pip_1598_1_0___stage___block_8_p_y;
_d___pip_1598_1_1___stage___block_8_p_y = _q___pip_1598_1_1___stage___block_8_p_y;
_d___pip_1598_1_2___stage___block_8_p_y = _q___pip_1598_1_2___stage___block_8_p_y;
_d___pip_1598_1_3___stage___block_8_p_y = _q___pip_1598_1_3___stage___block_8_p_y;
_d___pip_1598_1_4___stage___block_8_p_y = _q___pip_1598_1_4___stage___block_8_p_y;
_d___pip_1598_1_5___stage___block_8_p_y = _q___pip_1598_1_5___stage___block_8_p_y;
_d___pip_1598_1_6___stage___block_8_p_y = _q___pip_1598_1_6___stage___block_8_p_y;
_d___pip_1598_1_7___stage___block_8_p_y = _q___pip_1598_1_7___stage___block_8_p_y;
_d___pip_1598_1_8___stage___block_8_p_y = _q___pip_1598_1_8___stage___block_8_p_y;
_d___pip_1598_1_9___stage___block_8_p_y = _q___pip_1598_1_9___stage___block_8_p_y;
_d___pip_1598_1_10___stage___block_8_p_y = _q___pip_1598_1_10___stage___block_8_p_y;
_d___pip_1598_1_11___stage___block_8_p_y = _q___pip_1598_1_11___stage___block_8_p_y;
_d___pip_1598_1_12___stage___block_8_p_y = _q___pip_1598_1_12___stage___block_8_p_y;
_d___pip_1598_1_13___stage___block_8_p_y = _q___pip_1598_1_13___stage___block_8_p_y;
_d___pip_1598_1_14___stage___block_8_p_y = _q___pip_1598_1_14___stage___block_8_p_y;
_d___pip_1598_1_15___stage___block_8_p_y = _q___pip_1598_1_15___stage___block_8_p_y;
_d___pip_1598_1_16___stage___block_8_p_y = _q___pip_1598_1_16___stage___block_8_p_y;
_d___pip_1598_1_17___stage___block_8_p_y = _q___pip_1598_1_17___stage___block_8_p_y;
_d___pip_1598_1_18___stage___block_8_p_y = _q___pip_1598_1_18___stage___block_8_p_y;
_d___pip_1598_1_19___stage___block_8_p_y = _q___pip_1598_1_19___stage___block_8_p_y;
_d___pip_1598_1_20___stage___block_8_p_y = _q___pip_1598_1_20___stage___block_8_p_y;
_d___pip_1598_1_21___stage___block_8_p_y = _q___pip_1598_1_21___stage___block_8_p_y;
_d___pip_1598_1_22___stage___block_8_p_y = _q___pip_1598_1_22___stage___block_8_p_y;
_d___pip_1598_1_23___stage___block_8_p_y = _q___pip_1598_1_23___stage___block_8_p_y;
_d___pip_1598_1_24___stage___block_8_p_y = _q___pip_1598_1_24___stage___block_8_p_y;
_d___pip_1598_1_25___stage___block_8_p_y = _q___pip_1598_1_25___stage___block_8_p_y;
_d___pip_1598_1_26___stage___block_8_p_y = _q___pip_1598_1_26___stage___block_8_p_y;
_d___pip_1598_1_27___stage___block_8_p_y = _q___pip_1598_1_27___stage___block_8_p_y;
_d___pip_1598_1_28___stage___block_8_p_y = _q___pip_1598_1_28___stage___block_8_p_y;
_d___pip_1598_1_29___stage___block_8_p_y = _q___pip_1598_1_29___stage___block_8_p_y;
_d___pip_1598_1_30___stage___block_8_p_y = _q___pip_1598_1_30___stage___block_8_p_y;
_d___pip_1598_1_31___stage___block_8_p_y = _q___pip_1598_1_31___stage___block_8_p_y;
_d___pip_1598_1_32___stage___block_8_p_y = _q___pip_1598_1_32___stage___block_8_p_y;
_d___pip_1598_1_33___stage___block_8_p_y = _q___pip_1598_1_33___stage___block_8_p_y;
_d___pip_1598_1_34___stage___block_8_p_y = _q___pip_1598_1_34___stage___block_8_p_y;
_d___pip_1598_1_35___stage___block_8_p_y = _q___pip_1598_1_35___stage___block_8_p_y;
_d___pip_1598_1_36___stage___block_8_p_y = _q___pip_1598_1_36___stage___block_8_p_y;
_d___pip_1598_1_37___stage___block_8_p_y = _q___pip_1598_1_37___stage___block_8_p_y;
_d___pip_1598_1_38___stage___block_8_p_y = _q___pip_1598_1_38___stage___block_8_p_y;
_d___pip_1598_1_39___stage___block_8_p_y = _q___pip_1598_1_39___stage___block_8_p_y;
_d___pip_1598_1_40___stage___block_8_p_y = _q___pip_1598_1_40___stage___block_8_p_y;
_d___pip_1598_1_41___stage___block_8_p_y = _q___pip_1598_1_41___stage___block_8_p_y;
_d___pip_1598_1_42___stage___block_8_p_y = _q___pip_1598_1_42___stage___block_8_p_y;
_d___pip_1598_1_43___stage___block_8_p_y = _q___pip_1598_1_43___stage___block_8_p_y;
_d___pip_1598_1_44___stage___block_8_p_y = _q___pip_1598_1_44___stage___block_8_p_y;
_d___pip_1598_1_45___stage___block_8_p_y = _q___pip_1598_1_45___stage___block_8_p_y;
_d___pip_1598_1_46___stage___block_8_p_y = _q___pip_1598_1_46___stage___block_8_p_y;
_d___pip_1598_1_0___stage___block_8_q_x = _q___pip_1598_1_0___stage___block_8_q_x;
_d___pip_1598_1_1___stage___block_8_q_x = _q___pip_1598_1_1___stage___block_8_q_x;
_d___pip_1598_1_2___stage___block_8_q_x = _q___pip_1598_1_2___stage___block_8_q_x;
_d___pip_1598_1_3___stage___block_8_q_x = _q___pip_1598_1_3___stage___block_8_q_x;
_d___pip_1598_1_4___stage___block_8_q_x = _q___pip_1598_1_4___stage___block_8_q_x;
_d___pip_1598_1_5___stage___block_8_q_x = _q___pip_1598_1_5___stage___block_8_q_x;
_d___pip_1598_1_6___stage___block_8_q_x = _q___pip_1598_1_6___stage___block_8_q_x;
_d___pip_1598_1_7___stage___block_8_q_x = _q___pip_1598_1_7___stage___block_8_q_x;
_d___pip_1598_1_8___stage___block_8_q_x = _q___pip_1598_1_8___stage___block_8_q_x;
_d___pip_1598_1_9___stage___block_8_q_x = _q___pip_1598_1_9___stage___block_8_q_x;
_d___pip_1598_1_10___stage___block_8_q_x = _q___pip_1598_1_10___stage___block_8_q_x;
_d___pip_1598_1_11___stage___block_8_q_x = _q___pip_1598_1_11___stage___block_8_q_x;
_d___pip_1598_1_12___stage___block_8_q_x = _q___pip_1598_1_12___stage___block_8_q_x;
_d___pip_1598_1_13___stage___block_8_q_x = _q___pip_1598_1_13___stage___block_8_q_x;
_d___pip_1598_1_14___stage___block_8_q_x = _q___pip_1598_1_14___stage___block_8_q_x;
_d___pip_1598_1_15___stage___block_8_q_x = _q___pip_1598_1_15___stage___block_8_q_x;
_d___pip_1598_1_16___stage___block_8_q_x = _q___pip_1598_1_16___stage___block_8_q_x;
_d___pip_1598_1_17___stage___block_8_q_x = _q___pip_1598_1_17___stage___block_8_q_x;
_d___pip_1598_1_18___stage___block_8_q_x = _q___pip_1598_1_18___stage___block_8_q_x;
_d___pip_1598_1_19___stage___block_8_q_x = _q___pip_1598_1_19___stage___block_8_q_x;
_d___pip_1598_1_20___stage___block_8_q_x = _q___pip_1598_1_20___stage___block_8_q_x;
_d___pip_1598_1_21___stage___block_8_q_x = _q___pip_1598_1_21___stage___block_8_q_x;
_d___pip_1598_1_22___stage___block_8_q_x = _q___pip_1598_1_22___stage___block_8_q_x;
_d___pip_1598_1_23___stage___block_8_q_x = _q___pip_1598_1_23___stage___block_8_q_x;
_d___pip_1598_1_24___stage___block_8_q_x = _q___pip_1598_1_24___stage___block_8_q_x;
_d___pip_1598_1_25___stage___block_8_q_x = _q___pip_1598_1_25___stage___block_8_q_x;
_d___pip_1598_1_26___stage___block_8_q_x = _q___pip_1598_1_26___stage___block_8_q_x;
_d___pip_1598_1_27___stage___block_8_q_x = _q___pip_1598_1_27___stage___block_8_q_x;
_d___pip_1598_1_28___stage___block_8_q_x = _q___pip_1598_1_28___stage___block_8_q_x;
_d___pip_1598_1_29___stage___block_8_q_x = _q___pip_1598_1_29___stage___block_8_q_x;
_d___pip_1598_1_30___stage___block_8_q_x = _q___pip_1598_1_30___stage___block_8_q_x;
_d___pip_1598_1_31___stage___block_8_q_x = _q___pip_1598_1_31___stage___block_8_q_x;
_d___pip_1598_1_32___stage___block_8_q_x = _q___pip_1598_1_32___stage___block_8_q_x;
_d___pip_1598_1_33___stage___block_8_q_x = _q___pip_1598_1_33___stage___block_8_q_x;
_d___pip_1598_1_34___stage___block_8_q_x = _q___pip_1598_1_34___stage___block_8_q_x;
_d___pip_1598_1_35___stage___block_8_q_x = _q___pip_1598_1_35___stage___block_8_q_x;
_d___pip_1598_1_36___stage___block_8_q_x = _q___pip_1598_1_36___stage___block_8_q_x;
_d___pip_1598_1_37___stage___block_8_q_x = _q___pip_1598_1_37___stage___block_8_q_x;
_d___pip_1598_1_38___stage___block_8_q_x = _q___pip_1598_1_38___stage___block_8_q_x;
_d___pip_1598_1_39___stage___block_8_q_x = _q___pip_1598_1_39___stage___block_8_q_x;
_d___pip_1598_1_40___stage___block_8_q_x = _q___pip_1598_1_40___stage___block_8_q_x;
_d___pip_1598_1_41___stage___block_8_q_x = _q___pip_1598_1_41___stage___block_8_q_x;
_d___pip_1598_1_42___stage___block_8_q_x = _q___pip_1598_1_42___stage___block_8_q_x;
_d___pip_1598_1_43___stage___block_8_q_x = _q___pip_1598_1_43___stage___block_8_q_x;
_d___pip_1598_1_44___stage___block_8_q_x = _q___pip_1598_1_44___stage___block_8_q_x;
_d___pip_1598_1_45___stage___block_8_q_x = _q___pip_1598_1_45___stage___block_8_q_x;
_d___pip_1598_1_46___stage___block_8_q_x = _q___pip_1598_1_46___stage___block_8_q_x;
_d___pip_1598_1_0___stage___block_8_q_y = _q___pip_1598_1_0___stage___block_8_q_y;
_d___pip_1598_1_1___stage___block_8_q_y = _q___pip_1598_1_1___stage___block_8_q_y;
_d___pip_1598_1_2___stage___block_8_q_y = _q___pip_1598_1_2___stage___block_8_q_y;
_d___pip_1598_1_3___stage___block_8_q_y = _q___pip_1598_1_3___stage___block_8_q_y;
_d___pip_1598_1_4___stage___block_8_q_y = _q___pip_1598_1_4___stage___block_8_q_y;
_d___pip_1598_1_5___stage___block_8_q_y = _q___pip_1598_1_5___stage___block_8_q_y;
_d___pip_1598_1_6___stage___block_8_q_y = _q___pip_1598_1_6___stage___block_8_q_y;
_d___pip_1598_1_7___stage___block_8_q_y = _q___pip_1598_1_7___stage___block_8_q_y;
_d___pip_1598_1_8___stage___block_8_q_y = _q___pip_1598_1_8___stage___block_8_q_y;
_d___pip_1598_1_9___stage___block_8_q_y = _q___pip_1598_1_9___stage___block_8_q_y;
_d___pip_1598_1_10___stage___block_8_q_y = _q___pip_1598_1_10___stage___block_8_q_y;
_d___pip_1598_1_11___stage___block_8_q_y = _q___pip_1598_1_11___stage___block_8_q_y;
_d___pip_1598_1_12___stage___block_8_q_y = _q___pip_1598_1_12___stage___block_8_q_y;
_d___pip_1598_1_13___stage___block_8_q_y = _q___pip_1598_1_13___stage___block_8_q_y;
_d___pip_1598_1_14___stage___block_8_q_y = _q___pip_1598_1_14___stage___block_8_q_y;
_d___pip_1598_1_15___stage___block_8_q_y = _q___pip_1598_1_15___stage___block_8_q_y;
_d___pip_1598_1_16___stage___block_8_q_y = _q___pip_1598_1_16___stage___block_8_q_y;
_d___pip_1598_1_17___stage___block_8_q_y = _q___pip_1598_1_17___stage___block_8_q_y;
_d___pip_1598_1_18___stage___block_8_q_y = _q___pip_1598_1_18___stage___block_8_q_y;
_d___pip_1598_1_19___stage___block_8_q_y = _q___pip_1598_1_19___stage___block_8_q_y;
_d___pip_1598_1_20___stage___block_8_q_y = _q___pip_1598_1_20___stage___block_8_q_y;
_d___pip_1598_1_21___stage___block_8_q_y = _q___pip_1598_1_21___stage___block_8_q_y;
_d___pip_1598_1_22___stage___block_8_q_y = _q___pip_1598_1_22___stage___block_8_q_y;
_d___pip_1598_1_23___stage___block_8_q_y = _q___pip_1598_1_23___stage___block_8_q_y;
_d___pip_1598_1_24___stage___block_8_q_y = _q___pip_1598_1_24___stage___block_8_q_y;
_d___pip_1598_1_25___stage___block_8_q_y = _q___pip_1598_1_25___stage___block_8_q_y;
_d___pip_1598_1_26___stage___block_8_q_y = _q___pip_1598_1_26___stage___block_8_q_y;
_d___pip_1598_1_27___stage___block_8_q_y = _q___pip_1598_1_27___stage___block_8_q_y;
_d___pip_1598_1_28___stage___block_8_q_y = _q___pip_1598_1_28___stage___block_8_q_y;
_d___pip_1598_1_29___stage___block_8_q_y = _q___pip_1598_1_29___stage___block_8_q_y;
_d___pip_1598_1_30___stage___block_8_q_y = _q___pip_1598_1_30___stage___block_8_q_y;
_d___pip_1598_1_31___stage___block_8_q_y = _q___pip_1598_1_31___stage___block_8_q_y;
_d___pip_1598_1_32___stage___block_8_q_y = _q___pip_1598_1_32___stage___block_8_q_y;
_d___pip_1598_1_33___stage___block_8_q_y = _q___pip_1598_1_33___stage___block_8_q_y;
_d___pip_1598_1_34___stage___block_8_q_y = _q___pip_1598_1_34___stage___block_8_q_y;
_d___pip_1598_1_35___stage___block_8_q_y = _q___pip_1598_1_35___stage___block_8_q_y;
_d___pip_1598_1_36___stage___block_8_q_y = _q___pip_1598_1_36___stage___block_8_q_y;
_d___pip_1598_1_37___stage___block_8_q_y = _q___pip_1598_1_37___stage___block_8_q_y;
_d___pip_1598_1_38___stage___block_8_q_y = _q___pip_1598_1_38___stage___block_8_q_y;
_d___pip_1598_1_39___stage___block_8_q_y = _q___pip_1598_1_39___stage___block_8_q_y;
_d___pip_1598_1_40___stage___block_8_q_y = _q___pip_1598_1_40___stage___block_8_q_y;
_d___pip_1598_1_41___stage___block_8_q_y = _q___pip_1598_1_41___stage___block_8_q_y;
_d___pip_1598_1_42___stage___block_8_q_y = _q___pip_1598_1_42___stage___block_8_q_y;
_d___pip_1598_1_43___stage___block_8_q_y = _q___pip_1598_1_43___stage___block_8_q_y;
_d___pip_1598_1_44___stage___block_8_q_y = _q___pip_1598_1_44___stage___block_8_q_y;
_d___pip_1598_1_45___stage___block_8_q_y = _q___pip_1598_1_45___stage___block_8_q_y;
_d___pip_1598_1_46___stage___block_8_q_y = _q___pip_1598_1_46___stage___block_8_q_y;
_d_pix_r = _q_pix_r;
_d_pix_g = _q_pix_g;
_d_pix_b = _q_pix_b;
_d__idx_fsm0 = _q__idx_fsm0;
_d__idx_fsm___pip_1598_1_0 = _q__idx_fsm___pip_1598_1_0;
_d__full_fsm___pip_1598_1_0 = _q__full_fsm___pip_1598_1_0;
_t__stall_fsm___pip_1598_1_0 = 0;
_t__1stdisable_fsm___pip_1598_1_0 = 0;
_d__idx_fsm___pip_1598_1_1 = _q__idx_fsm___pip_1598_1_1;
_d__full_fsm___pip_1598_1_1 = _q__full_fsm___pip_1598_1_1;
_t__stall_fsm___pip_1598_1_1 = 0;
_t__1stdisable_fsm___pip_1598_1_1 = 0;
_d__idx_fsm___pip_1598_1_2 = _q__idx_fsm___pip_1598_1_2;
_d__full_fsm___pip_1598_1_2 = _q__full_fsm___pip_1598_1_2;
_t__stall_fsm___pip_1598_1_2 = 0;
_t__1stdisable_fsm___pip_1598_1_2 = 0;
_d__idx_fsm___pip_1598_1_3 = _q__idx_fsm___pip_1598_1_3;
_d__full_fsm___pip_1598_1_3 = _q__full_fsm___pip_1598_1_3;
_t__stall_fsm___pip_1598_1_3 = 0;
_t__1stdisable_fsm___pip_1598_1_3 = 0;
_d__idx_fsm___pip_1598_1_4 = _q__idx_fsm___pip_1598_1_4;
_d__full_fsm___pip_1598_1_4 = _q__full_fsm___pip_1598_1_4;
_t__stall_fsm___pip_1598_1_4 = 0;
_t__1stdisable_fsm___pip_1598_1_4 = 0;
_d__idx_fsm___pip_1598_1_5 = _q__idx_fsm___pip_1598_1_5;
_d__full_fsm___pip_1598_1_5 = _q__full_fsm___pip_1598_1_5;
_t__stall_fsm___pip_1598_1_5 = 0;
_t__1stdisable_fsm___pip_1598_1_5 = 0;
_d__idx_fsm___pip_1598_1_6 = _q__idx_fsm___pip_1598_1_6;
_d__full_fsm___pip_1598_1_6 = _q__full_fsm___pip_1598_1_6;
_t__stall_fsm___pip_1598_1_6 = 0;
_t__1stdisable_fsm___pip_1598_1_6 = 0;
_d__idx_fsm___pip_1598_1_7 = _q__idx_fsm___pip_1598_1_7;
_d__full_fsm___pip_1598_1_7 = _q__full_fsm___pip_1598_1_7;
_t__stall_fsm___pip_1598_1_7 = 0;
_t__1stdisable_fsm___pip_1598_1_7 = 0;
_d__idx_fsm___pip_1598_1_8 = _q__idx_fsm___pip_1598_1_8;
_d__full_fsm___pip_1598_1_8 = _q__full_fsm___pip_1598_1_8;
_t__stall_fsm___pip_1598_1_8 = 0;
_t__1stdisable_fsm___pip_1598_1_8 = 0;
_d__idx_fsm___pip_1598_1_9 = _q__idx_fsm___pip_1598_1_9;
_d__full_fsm___pip_1598_1_9 = _q__full_fsm___pip_1598_1_9;
_t__stall_fsm___pip_1598_1_9 = 0;
_t__1stdisable_fsm___pip_1598_1_9 = 0;
_d__idx_fsm___pip_1598_1_10 = _q__idx_fsm___pip_1598_1_10;
_d__full_fsm___pip_1598_1_10 = _q__full_fsm___pip_1598_1_10;
_t__stall_fsm___pip_1598_1_10 = 0;
_t__1stdisable_fsm___pip_1598_1_10 = 0;
_d__idx_fsm___pip_1598_1_11 = _q__idx_fsm___pip_1598_1_11;
_d__full_fsm___pip_1598_1_11 = _q__full_fsm___pip_1598_1_11;
_t__stall_fsm___pip_1598_1_11 = 0;
_t__1stdisable_fsm___pip_1598_1_11 = 0;
_d__idx_fsm___pip_1598_1_12 = _q__idx_fsm___pip_1598_1_12;
_d__full_fsm___pip_1598_1_12 = _q__full_fsm___pip_1598_1_12;
_t__stall_fsm___pip_1598_1_12 = 0;
_t__1stdisable_fsm___pip_1598_1_12 = 0;
_d__idx_fsm___pip_1598_1_13 = _q__idx_fsm___pip_1598_1_13;
_d__full_fsm___pip_1598_1_13 = _q__full_fsm___pip_1598_1_13;
_t__stall_fsm___pip_1598_1_13 = 0;
_t__1stdisable_fsm___pip_1598_1_13 = 0;
_d__idx_fsm___pip_1598_1_14 = _q__idx_fsm___pip_1598_1_14;
_d__full_fsm___pip_1598_1_14 = _q__full_fsm___pip_1598_1_14;
_t__stall_fsm___pip_1598_1_14 = 0;
_t__1stdisable_fsm___pip_1598_1_14 = 0;
_d__idx_fsm___pip_1598_1_15 = _q__idx_fsm___pip_1598_1_15;
_d__full_fsm___pip_1598_1_15 = _q__full_fsm___pip_1598_1_15;
_t__stall_fsm___pip_1598_1_15 = 0;
_t__1stdisable_fsm___pip_1598_1_15 = 0;
_d__idx_fsm___pip_1598_1_16 = _q__idx_fsm___pip_1598_1_16;
_d__full_fsm___pip_1598_1_16 = _q__full_fsm___pip_1598_1_16;
_t__stall_fsm___pip_1598_1_16 = 0;
_t__1stdisable_fsm___pip_1598_1_16 = 0;
_d__idx_fsm___pip_1598_1_17 = _q__idx_fsm___pip_1598_1_17;
_d__full_fsm___pip_1598_1_17 = _q__full_fsm___pip_1598_1_17;
_t__stall_fsm___pip_1598_1_17 = 0;
_t__1stdisable_fsm___pip_1598_1_17 = 0;
_d__idx_fsm___pip_1598_1_18 = _q__idx_fsm___pip_1598_1_18;
_d__full_fsm___pip_1598_1_18 = _q__full_fsm___pip_1598_1_18;
_t__stall_fsm___pip_1598_1_18 = 0;
_t__1stdisable_fsm___pip_1598_1_18 = 0;
_d__idx_fsm___pip_1598_1_19 = _q__idx_fsm___pip_1598_1_19;
_d__full_fsm___pip_1598_1_19 = _q__full_fsm___pip_1598_1_19;
_t__stall_fsm___pip_1598_1_19 = 0;
_t__1stdisable_fsm___pip_1598_1_19 = 0;
_d__idx_fsm___pip_1598_1_20 = _q__idx_fsm___pip_1598_1_20;
_d__full_fsm___pip_1598_1_20 = _q__full_fsm___pip_1598_1_20;
_t__stall_fsm___pip_1598_1_20 = 0;
_t__1stdisable_fsm___pip_1598_1_20 = 0;
_d__idx_fsm___pip_1598_1_21 = _q__idx_fsm___pip_1598_1_21;
_d__full_fsm___pip_1598_1_21 = _q__full_fsm___pip_1598_1_21;
_t__stall_fsm___pip_1598_1_21 = 0;
_t__1stdisable_fsm___pip_1598_1_21 = 0;
_d__idx_fsm___pip_1598_1_22 = _q__idx_fsm___pip_1598_1_22;
_d__full_fsm___pip_1598_1_22 = _q__full_fsm___pip_1598_1_22;
_t__stall_fsm___pip_1598_1_22 = 0;
_t__1stdisable_fsm___pip_1598_1_22 = 0;
_d__idx_fsm___pip_1598_1_23 = _q__idx_fsm___pip_1598_1_23;
_d__full_fsm___pip_1598_1_23 = _q__full_fsm___pip_1598_1_23;
_t__stall_fsm___pip_1598_1_23 = 0;
_t__1stdisable_fsm___pip_1598_1_23 = 0;
_d__idx_fsm___pip_1598_1_24 = _q__idx_fsm___pip_1598_1_24;
_d__full_fsm___pip_1598_1_24 = _q__full_fsm___pip_1598_1_24;
_t__stall_fsm___pip_1598_1_24 = 0;
_t__1stdisable_fsm___pip_1598_1_24 = 0;
_d__idx_fsm___pip_1598_1_25 = _q__idx_fsm___pip_1598_1_25;
_d__full_fsm___pip_1598_1_25 = _q__full_fsm___pip_1598_1_25;
_t__stall_fsm___pip_1598_1_25 = 0;
_t__1stdisable_fsm___pip_1598_1_25 = 0;
_d__idx_fsm___pip_1598_1_26 = _q__idx_fsm___pip_1598_1_26;
_d__full_fsm___pip_1598_1_26 = _q__full_fsm___pip_1598_1_26;
_t__stall_fsm___pip_1598_1_26 = 0;
_t__1stdisable_fsm___pip_1598_1_26 = 0;
_d__idx_fsm___pip_1598_1_27 = _q__idx_fsm___pip_1598_1_27;
_d__full_fsm___pip_1598_1_27 = _q__full_fsm___pip_1598_1_27;
_t__stall_fsm___pip_1598_1_27 = 0;
_t__1stdisable_fsm___pip_1598_1_27 = 0;
_d__idx_fsm___pip_1598_1_28 = _q__idx_fsm___pip_1598_1_28;
_d__full_fsm___pip_1598_1_28 = _q__full_fsm___pip_1598_1_28;
_t__stall_fsm___pip_1598_1_28 = 0;
_t__1stdisable_fsm___pip_1598_1_28 = 0;
_d__idx_fsm___pip_1598_1_29 = _q__idx_fsm___pip_1598_1_29;
_d__full_fsm___pip_1598_1_29 = _q__full_fsm___pip_1598_1_29;
_t__stall_fsm___pip_1598_1_29 = 0;
_t__1stdisable_fsm___pip_1598_1_29 = 0;
_d__idx_fsm___pip_1598_1_30 = _q__idx_fsm___pip_1598_1_30;
_d__full_fsm___pip_1598_1_30 = _q__full_fsm___pip_1598_1_30;
_t__stall_fsm___pip_1598_1_30 = 0;
_t__1stdisable_fsm___pip_1598_1_30 = 0;
_d__idx_fsm___pip_1598_1_31 = _q__idx_fsm___pip_1598_1_31;
_d__full_fsm___pip_1598_1_31 = _q__full_fsm___pip_1598_1_31;
_t__stall_fsm___pip_1598_1_31 = 0;
_t__1stdisable_fsm___pip_1598_1_31 = 0;
_d__idx_fsm___pip_1598_1_32 = _q__idx_fsm___pip_1598_1_32;
_d__full_fsm___pip_1598_1_32 = _q__full_fsm___pip_1598_1_32;
_t__stall_fsm___pip_1598_1_32 = 0;
_t__1stdisable_fsm___pip_1598_1_32 = 0;
_d__idx_fsm___pip_1598_1_33 = _q__idx_fsm___pip_1598_1_33;
_d__full_fsm___pip_1598_1_33 = _q__full_fsm___pip_1598_1_33;
_t__stall_fsm___pip_1598_1_33 = 0;
_t__1stdisable_fsm___pip_1598_1_33 = 0;
_d__idx_fsm___pip_1598_1_34 = _q__idx_fsm___pip_1598_1_34;
_d__full_fsm___pip_1598_1_34 = _q__full_fsm___pip_1598_1_34;
_t__stall_fsm___pip_1598_1_34 = 0;
_t__1stdisable_fsm___pip_1598_1_34 = 0;
_d__idx_fsm___pip_1598_1_35 = _q__idx_fsm___pip_1598_1_35;
_d__full_fsm___pip_1598_1_35 = _q__full_fsm___pip_1598_1_35;
_t__stall_fsm___pip_1598_1_35 = 0;
_t__1stdisable_fsm___pip_1598_1_35 = 0;
_d__idx_fsm___pip_1598_1_36 = _q__idx_fsm___pip_1598_1_36;
_d__full_fsm___pip_1598_1_36 = _q__full_fsm___pip_1598_1_36;
_t__stall_fsm___pip_1598_1_36 = 0;
_t__1stdisable_fsm___pip_1598_1_36 = 0;
_d__idx_fsm___pip_1598_1_37 = _q__idx_fsm___pip_1598_1_37;
_d__full_fsm___pip_1598_1_37 = _q__full_fsm___pip_1598_1_37;
_t__stall_fsm___pip_1598_1_37 = 0;
_t__1stdisable_fsm___pip_1598_1_37 = 0;
_d__idx_fsm___pip_1598_1_38 = _q__idx_fsm___pip_1598_1_38;
_d__full_fsm___pip_1598_1_38 = _q__full_fsm___pip_1598_1_38;
_t__stall_fsm___pip_1598_1_38 = 0;
_t__1stdisable_fsm___pip_1598_1_38 = 0;
_d__idx_fsm___pip_1598_1_39 = _q__idx_fsm___pip_1598_1_39;
_d__full_fsm___pip_1598_1_39 = _q__full_fsm___pip_1598_1_39;
_t__stall_fsm___pip_1598_1_39 = 0;
_t__1stdisable_fsm___pip_1598_1_39 = 0;
_d__idx_fsm___pip_1598_1_40 = _q__idx_fsm___pip_1598_1_40;
_d__full_fsm___pip_1598_1_40 = _q__full_fsm___pip_1598_1_40;
_t__stall_fsm___pip_1598_1_40 = 0;
_t__1stdisable_fsm___pip_1598_1_40 = 0;
_d__idx_fsm___pip_1598_1_41 = _q__idx_fsm___pip_1598_1_41;
_d__full_fsm___pip_1598_1_41 = _q__full_fsm___pip_1598_1_41;
_t__stall_fsm___pip_1598_1_41 = 0;
_t__1stdisable_fsm___pip_1598_1_41 = 0;
_d__idx_fsm___pip_1598_1_42 = _q__idx_fsm___pip_1598_1_42;
_d__full_fsm___pip_1598_1_42 = _q__full_fsm___pip_1598_1_42;
_t__stall_fsm___pip_1598_1_42 = 0;
_t__1stdisable_fsm___pip_1598_1_42 = 0;
_d__idx_fsm___pip_1598_1_43 = _q__idx_fsm___pip_1598_1_43;
_d__full_fsm___pip_1598_1_43 = _q__full_fsm___pip_1598_1_43;
_t__stall_fsm___pip_1598_1_43 = 0;
_t__1stdisable_fsm___pip_1598_1_43 = 0;
_d__idx_fsm___pip_1598_1_44 = _q__idx_fsm___pip_1598_1_44;
_d__full_fsm___pip_1598_1_44 = _q__full_fsm___pip_1598_1_44;
_t__stall_fsm___pip_1598_1_44 = 0;
_t__1stdisable_fsm___pip_1598_1_44 = 0;
_d__idx_fsm___pip_1598_1_45 = _q__idx_fsm___pip_1598_1_45;
_d__full_fsm___pip_1598_1_45 = _q__full_fsm___pip_1598_1_45;
_t__stall_fsm___pip_1598_1_45 = 0;
_t__1stdisable_fsm___pip_1598_1_45 = 0;
_d__idx_fsm___pip_1598_1_46 = _q__idx_fsm___pip_1598_1_46;
_d__full_fsm___pip_1598_1_46 = _q__full_fsm___pip_1598_1_46;
_t__stall_fsm___pip_1598_1_46 = 0;
_t__1stdisable_fsm___pip_1598_1_46 = 0;
_d__idx_fsm___pip_1598_1_47 = _q__idx_fsm___pip_1598_1_47;
_d__full_fsm___pip_1598_1_47 = _q__full_fsm___pip_1598_1_47;
_t__stall_fsm___pip_1598_1_47 = 0;
_t__1stdisable_fsm___pip_1598_1_47 = 0;
_d__idx_fsm___pip_1598_1_48 = _q__idx_fsm___pip_1598_1_48;
_d__full_fsm___pip_1598_1_48 = _q__full_fsm___pip_1598_1_48;
_t__stall_fsm___pip_1598_1_48 = 0;
_t__1stdisable_fsm___pip_1598_1_48 = 0;
_t_cos_wenable = 0;
_t_cos_wdata = 0;
_t___stage___block_8_q_x = 0;
_t___stage___block_8_q_y = 0;
_t___stage___block_8_p_x = 0;
_t___stage___block_8_p_y = 0;
_t___stage___block_9_a_x = 0;
_t___stage___block_9_a_y = 0;
_t___stage___block_9_len_sq = 0;
_t___stage___block_9_len_brd = 0;
_t___stage___block_9_onsq = 0;
_t___stage___block_9_len = 0;
_t___stage___block_9_rnd = 0;
_t___stage___block_9_d_x = 0;
_t___stage___block_9_d_y = 0;
_t___block_16_side = 0;
_t___block_16_checker = 0;
_t___stage___block_31_a_x = 0;
_t___stage___block_31_a_y = 0;
_t___stage___block_31_len_sq = 0;
_t___stage___block_31_len_brd = 0;
_t___stage___block_31_onsq = 0;
_t___stage___block_31_len = 0;
_t___stage___block_31_rnd = 0;
_t___stage___block_31_d_x = 0;
_t___stage___block_31_d_y = 0;
_t___block_38_side = 0;
_t___block_38_checker = 0;
_t___stage___block_53_a_x = 0;
_t___stage___block_53_a_y = 0;
_t___stage___block_53_len_sq = 0;
_t___stage___block_53_len_brd = 0;
_t___stage___block_53_onsq = 0;
_t___stage___block_53_len = 0;
_t___stage___block_53_rnd = 0;
_t___stage___block_53_d_x = 0;
_t___stage___block_53_d_y = 0;
_t___block_60_side = 0;
_t___block_60_checker = 0;
_t___stage___block_75_a_x = 0;
_t___stage___block_75_a_y = 0;
_t___stage___block_75_len_sq = 0;
_t___stage___block_75_len_brd = 0;
_t___stage___block_75_onsq = 0;
_t___stage___block_75_len = 0;
_t___stage___block_75_rnd = 0;
_t___stage___block_75_d_x = 0;
_t___stage___block_75_d_y = 0;
_t___block_82_side = 0;
_t___block_82_checker = 0;
_t___stage___block_97_a_x = 0;
_t___stage___block_97_a_y = 0;
_t___stage___block_97_len_sq = 0;
_t___stage___block_97_len_brd = 0;
_t___stage___block_97_onsq = 0;
_t___stage___block_97_len = 0;
_t___stage___block_97_rnd = 0;
_t___stage___block_97_d_x = 0;
_t___stage___block_97_d_y = 0;
_t___block_104_side = 0;
_t___block_104_checker = 0;
_t___stage___block_119_a_x = 0;
_t___stage___block_119_a_y = 0;
_t___stage___block_119_len_sq = 0;
_t___stage___block_119_len_brd = 0;
_t___stage___block_119_onsq = 0;
_t___stage___block_119_len = 0;
_t___stage___block_119_rnd = 0;
_t___stage___block_119_d_x = 0;
_t___stage___block_119_d_y = 0;
_t___block_126_side = 0;
_t___block_126_checker = 0;
_t___stage___block_141_a_x = 0;
_t___stage___block_141_a_y = 0;
_t___stage___block_141_len_sq = 0;
_t___stage___block_141_len_brd = 0;
_t___stage___block_141_onsq = 0;
_t___stage___block_141_len = 0;
_t___stage___block_141_rnd = 0;
_t___stage___block_141_d_x = 0;
_t___stage___block_141_d_y = 0;
_t___block_148_side = 0;
_t___block_148_checker = 0;
_t___stage___block_163_a_x = 0;
_t___stage___block_163_a_y = 0;
_t___stage___block_163_len_sq = 0;
_t___stage___block_163_len_brd = 0;
_t___stage___block_163_onsq = 0;
_t___stage___block_163_len = 0;
_t___stage___block_163_rnd = 0;
_t___stage___block_163_d_x = 0;
_t___stage___block_163_d_y = 0;
_t___block_170_side = 0;
_t___block_170_checker = 0;
_t___stage___block_185_a_x = 0;
_t___stage___block_185_a_y = 0;
_t___stage___block_185_len_sq = 0;
_t___stage___block_185_len_brd = 0;
_t___stage___block_185_onsq = 0;
_t___stage___block_185_len = 0;
_t___stage___block_185_rnd = 0;
_t___stage___block_185_d_x = 0;
_t___stage___block_185_d_y = 0;
_t___block_192_side = 0;
_t___block_192_checker = 0;
_t___stage___block_207_a_x = 0;
_t___stage___block_207_a_y = 0;
_t___stage___block_207_len_sq = 0;
_t___stage___block_207_len_brd = 0;
_t___stage___block_207_onsq = 0;
_t___stage___block_207_len = 0;
_t___stage___block_207_rnd = 0;
_t___stage___block_207_d_x = 0;
_t___stage___block_207_d_y = 0;
_t___block_214_side = 0;
_t___block_214_checker = 0;
_t___stage___block_229_a_x = 0;
_t___stage___block_229_a_y = 0;
_t___stage___block_229_len_sq = 0;
_t___stage___block_229_len_brd = 0;
_t___stage___block_229_onsq = 0;
_t___stage___block_229_len = 0;
_t___stage___block_229_rnd = 0;
_t___stage___block_229_d_x = 0;
_t___stage___block_229_d_y = 0;
_t___block_236_side = 0;
_t___block_236_checker = 0;
_t___stage___block_251_a_x = 0;
_t___stage___block_251_a_y = 0;
_t___stage___block_251_len_sq = 0;
_t___stage___block_251_len_brd = 0;
_t___stage___block_251_onsq = 0;
_t___stage___block_251_len = 0;
_t___stage___block_251_rnd = 0;
_t___stage___block_251_d_x = 0;
_t___stage___block_251_d_y = 0;
_t___block_258_side = 0;
_t___block_258_checker = 0;
_t___stage___block_273_a_x = 0;
_t___stage___block_273_a_y = 0;
_t___stage___block_273_len_sq = 0;
_t___stage___block_273_len_brd = 0;
_t___stage___block_273_onsq = 0;
_t___stage___block_273_len = 0;
_t___stage___block_273_rnd = 0;
_t___stage___block_273_d_x = 0;
_t___stage___block_273_d_y = 0;
_t___block_280_side = 0;
_t___block_280_checker = 0;
_t___stage___block_295_a_x = 0;
_t___stage___block_295_a_y = 0;
_t___stage___block_295_len_sq = 0;
_t___stage___block_295_len_brd = 0;
_t___stage___block_295_onsq = 0;
_t___stage___block_295_len = 0;
_t___stage___block_295_rnd = 0;
_t___stage___block_295_d_x = 0;
_t___stage___block_295_d_y = 0;
_t___block_302_side = 0;
_t___block_302_checker = 0;
_t___stage___block_317_a_x = 0;
_t___stage___block_317_a_y = 0;
_t___stage___block_317_len_sq = 0;
_t___stage___block_317_len_brd = 0;
_t___stage___block_317_onsq = 0;
_t___stage___block_317_len = 0;
_t___stage___block_317_rnd = 0;
_t___stage___block_317_d_x = 0;
_t___stage___block_317_d_y = 0;
_t___block_324_side = 0;
_t___block_324_checker = 0;
_t___stage___block_339_a_x = 0;
_t___stage___block_339_a_y = 0;
_t___stage___block_339_len_sq = 0;
_t___stage___block_339_len_brd = 0;
_t___stage___block_339_onsq = 0;
_t___stage___block_339_len = 0;
_t___stage___block_339_rnd = 0;
_t___stage___block_339_d_x = 0;
_t___stage___block_339_d_y = 0;
_t___block_346_side = 0;
_t___block_346_checker = 0;
_t___stage___block_361_a_x = 0;
_t___stage___block_361_a_y = 0;
_t___stage___block_361_len_sq = 0;
_t___stage___block_361_len_brd = 0;
_t___stage___block_361_onsq = 0;
_t___stage___block_361_len = 0;
_t___stage___block_361_rnd = 0;
_t___stage___block_361_d_x = 0;
_t___stage___block_361_d_y = 0;
_t___block_368_side = 0;
_t___block_368_checker = 0;
_t___stage___block_383_a_x = 0;
_t___stage___block_383_a_y = 0;
_t___stage___block_383_len_sq = 0;
_t___stage___block_383_len_brd = 0;
_t___stage___block_383_onsq = 0;
_t___stage___block_383_len = 0;
_t___stage___block_383_rnd = 0;
_t___stage___block_383_d_x = 0;
_t___stage___block_383_d_y = 0;
_t___block_390_side = 0;
_t___block_390_checker = 0;
_t___stage___block_405_a_x = 0;
_t___stage___block_405_a_y = 0;
_t___stage___block_405_len_sq = 0;
_t___stage___block_405_len_brd = 0;
_t___stage___block_405_onsq = 0;
_t___stage___block_405_len = 0;
_t___stage___block_405_rnd = 0;
_t___stage___block_405_d_x = 0;
_t___stage___block_405_d_y = 0;
_t___block_412_side = 0;
_t___block_412_checker = 0;
_t___stage___block_427_a_x = 0;
_t___stage___block_427_a_y = 0;
_t___stage___block_427_len_sq = 0;
_t___stage___block_427_len_brd = 0;
_t___stage___block_427_onsq = 0;
_t___stage___block_427_len = 0;
_t___stage___block_427_rnd = 0;
_t___stage___block_427_d_x = 0;
_t___stage___block_427_d_y = 0;
_t___block_434_side = 0;
_t___block_434_checker = 0;
_t___stage___block_449_a_x = 0;
_t___stage___block_449_a_y = 0;
_t___stage___block_449_len_sq = 0;
_t___stage___block_449_len_brd = 0;
_t___stage___block_449_onsq = 0;
_t___stage___block_449_len = 0;
_t___stage___block_449_rnd = 0;
_t___stage___block_449_d_x = 0;
_t___stage___block_449_d_y = 0;
_t___block_456_side = 0;
_t___block_456_checker = 0;
_t___stage___block_471_a_x = 0;
_t___stage___block_471_a_y = 0;
_t___stage___block_471_len_sq = 0;
_t___stage___block_471_len_brd = 0;
_t___stage___block_471_onsq = 0;
_t___stage___block_471_len = 0;
_t___stage___block_471_rnd = 0;
_t___stage___block_471_d_x = 0;
_t___stage___block_471_d_y = 0;
_t___block_478_side = 0;
_t___block_478_checker = 0;
_t___stage___block_493_a_x = 0;
_t___stage___block_493_a_y = 0;
_t___stage___block_493_len_sq = 0;
_t___stage___block_493_len_brd = 0;
_t___stage___block_493_onsq = 0;
_t___stage___block_493_len = 0;
_t___stage___block_493_rnd = 0;
_t___stage___block_493_d_x = 0;
_t___stage___block_493_d_y = 0;
_t___block_500_side = 0;
_t___block_500_checker = 0;
_t___stage___block_515_a_x = 0;
_t___stage___block_515_a_y = 0;
_t___stage___block_515_len_sq = 0;
_t___stage___block_515_len_brd = 0;
_t___stage___block_515_onsq = 0;
_t___stage___block_515_len = 0;
_t___stage___block_515_rnd = 0;
_t___stage___block_515_d_x = 0;
_t___stage___block_515_d_y = 0;
_t___block_522_side = 0;
_t___block_522_checker = 0;
_t___stage___block_537_a_x = 0;
_t___stage___block_537_a_y = 0;
_t___stage___block_537_len_sq = 0;
_t___stage___block_537_len_brd = 0;
_t___stage___block_537_onsq = 0;
_t___stage___block_537_len = 0;
_t___stage___block_537_rnd = 0;
_t___stage___block_537_d_x = 0;
_t___stage___block_537_d_y = 0;
_t___block_544_side = 0;
_t___block_544_checker = 0;
_t___stage___block_559_a_x = 0;
_t___stage___block_559_a_y = 0;
_t___stage___block_559_len_sq = 0;
_t___stage___block_559_len_brd = 0;
_t___stage___block_559_onsq = 0;
_t___stage___block_559_len = 0;
_t___stage___block_559_rnd = 0;
_t___stage___block_559_d_x = 0;
_t___stage___block_559_d_y = 0;
_t___block_566_side = 0;
_t___block_566_checker = 0;
_t___stage___block_581_a_x = 0;
_t___stage___block_581_a_y = 0;
_t___stage___block_581_len_sq = 0;
_t___stage___block_581_len_brd = 0;
_t___stage___block_581_onsq = 0;
_t___stage___block_581_len = 0;
_t___stage___block_581_rnd = 0;
_t___stage___block_581_d_x = 0;
_t___stage___block_581_d_y = 0;
_t___block_588_side = 0;
_t___block_588_checker = 0;
_t___stage___block_603_a_x = 0;
_t___stage___block_603_a_y = 0;
_t___stage___block_603_len_sq = 0;
_t___stage___block_603_len_brd = 0;
_t___stage___block_603_onsq = 0;
_t___stage___block_603_len = 0;
_t___stage___block_603_rnd = 0;
_t___stage___block_603_d_x = 0;
_t___stage___block_603_d_y = 0;
_t___block_610_side = 0;
_t___block_610_checker = 0;
_t___stage___block_625_a_x = 0;
_t___stage___block_625_a_y = 0;
_t___stage___block_625_len_sq = 0;
_t___stage___block_625_len_brd = 0;
_t___stage___block_625_onsq = 0;
_t___stage___block_625_len = 0;
_t___stage___block_625_rnd = 0;
_t___stage___block_625_d_x = 0;
_t___stage___block_625_d_y = 0;
_t___block_632_side = 0;
_t___block_632_checker = 0;
_t___stage___block_647_a_x = 0;
_t___stage___block_647_a_y = 0;
_t___stage___block_647_len_sq = 0;
_t___stage___block_647_len_brd = 0;
_t___stage___block_647_onsq = 0;
_t___stage___block_647_len = 0;
_t___stage___block_647_rnd = 0;
_t___stage___block_647_d_x = 0;
_t___stage___block_647_d_y = 0;
_t___block_654_side = 0;
_t___block_654_checker = 0;
_t___stage___block_669_a_x = 0;
_t___stage___block_669_a_y = 0;
_t___stage___block_669_len_sq = 0;
_t___stage___block_669_len_brd = 0;
_t___stage___block_669_onsq = 0;
_t___stage___block_669_len = 0;
_t___stage___block_669_rnd = 0;
_t___stage___block_669_d_x = 0;
_t___stage___block_669_d_y = 0;
_t___block_676_side = 0;
_t___block_676_checker = 0;
_t___stage___block_691_a_x = 0;
_t___stage___block_691_a_y = 0;
_t___stage___block_691_len_sq = 0;
_t___stage___block_691_len_brd = 0;
_t___stage___block_691_onsq = 0;
_t___stage___block_691_len = 0;
_t___stage___block_691_rnd = 0;
_t___stage___block_691_d_x = 0;
_t___stage___block_691_d_y = 0;
_t___block_698_side = 0;
_t___block_698_checker = 0;
_t___stage___block_713_a_x = 0;
_t___stage___block_713_a_y = 0;
_t___stage___block_713_len_sq = 0;
_t___stage___block_713_len_brd = 0;
_t___stage___block_713_onsq = 0;
_t___stage___block_713_len = 0;
_t___stage___block_713_rnd = 0;
_t___stage___block_713_d_x = 0;
_t___stage___block_713_d_y = 0;
_t___block_720_side = 0;
_t___block_720_checker = 0;
_t___stage___block_735_a_x = 0;
_t___stage___block_735_a_y = 0;
_t___stage___block_735_len_sq = 0;
_t___stage___block_735_len_brd = 0;
_t___stage___block_735_onsq = 0;
_t___stage___block_735_len = 0;
_t___stage___block_735_rnd = 0;
_t___stage___block_735_d_x = 0;
_t___stage___block_735_d_y = 0;
_t___block_742_side = 0;
_t___block_742_checker = 0;
_t___stage___block_757_a_x = 0;
_t___stage___block_757_a_y = 0;
_t___stage___block_757_len_sq = 0;
_t___stage___block_757_len_brd = 0;
_t___stage___block_757_onsq = 0;
_t___stage___block_757_len = 0;
_t___stage___block_757_rnd = 0;
_t___stage___block_757_d_x = 0;
_t___stage___block_757_d_y = 0;
_t___block_764_side = 0;
_t___block_764_checker = 0;
_t___stage___block_779_a_x = 0;
_t___stage___block_779_a_y = 0;
_t___stage___block_779_len_sq = 0;
_t___stage___block_779_len_brd = 0;
_t___stage___block_779_onsq = 0;
_t___stage___block_779_len = 0;
_t___stage___block_779_rnd = 0;
_t___stage___block_779_d_x = 0;
_t___stage___block_779_d_y = 0;
_t___block_786_side = 0;
_t___block_786_checker = 0;
_t___stage___block_801_a_x = 0;
_t___stage___block_801_a_y = 0;
_t___stage___block_801_len_sq = 0;
_t___stage___block_801_len_brd = 0;
_t___stage___block_801_onsq = 0;
_t___stage___block_801_len = 0;
_t___stage___block_801_rnd = 0;
_t___stage___block_801_d_x = 0;
_t___stage___block_801_d_y = 0;
_t___block_808_side = 0;
_t___block_808_checker = 0;
_t___stage___block_823_a_x = 0;
_t___stage___block_823_a_y = 0;
_t___stage___block_823_len_sq = 0;
_t___stage___block_823_len_brd = 0;
_t___stage___block_823_onsq = 0;
_t___stage___block_823_len = 0;
_t___stage___block_823_rnd = 0;
_t___stage___block_823_d_x = 0;
_t___stage___block_823_d_y = 0;
_t___block_830_side = 0;
_t___block_830_checker = 0;
_t___stage___block_845_a_x = 0;
_t___stage___block_845_a_y = 0;
_t___stage___block_845_len_sq = 0;
_t___stage___block_845_len_brd = 0;
_t___stage___block_845_onsq = 0;
_t___stage___block_845_len = 0;
_t___stage___block_845_rnd = 0;
_t___stage___block_845_d_x = 0;
_t___stage___block_845_d_y = 0;
_t___block_852_side = 0;
_t___block_852_checker = 0;
_t___stage___block_867_a_x = 0;
_t___stage___block_867_a_y = 0;
_t___stage___block_867_len_sq = 0;
_t___stage___block_867_len_brd = 0;
_t___stage___block_867_onsq = 0;
_t___stage___block_867_len = 0;
_t___stage___block_867_rnd = 0;
_t___stage___block_867_d_x = 0;
_t___stage___block_867_d_y = 0;
_t___block_874_side = 0;
_t___block_874_checker = 0;
_t___stage___block_889_a_x = 0;
_t___stage___block_889_a_y = 0;
_t___stage___block_889_len_sq = 0;
_t___stage___block_889_len_brd = 0;
_t___stage___block_889_onsq = 0;
_t___stage___block_889_len = 0;
_t___stage___block_889_rnd = 0;
_t___stage___block_889_d_x = 0;
_t___stage___block_889_d_y = 0;
_t___block_896_side = 0;
_t___block_896_checker = 0;
_t___stage___block_911_a_x = 0;
_t___stage___block_911_a_y = 0;
_t___stage___block_911_len_sq = 0;
_t___stage___block_911_len_brd = 0;
_t___stage___block_911_onsq = 0;
_t___stage___block_911_len = 0;
_t___stage___block_911_rnd = 0;
_t___stage___block_911_d_x = 0;
_t___stage___block_911_d_y = 0;
_t___block_918_side = 0;
_t___block_918_checker = 0;
_t___stage___block_933_a_x = 0;
_t___stage___block_933_a_y = 0;
_t___stage___block_933_len_sq = 0;
_t___stage___block_933_len_brd = 0;
_t___stage___block_933_onsq = 0;
_t___stage___block_933_len = 0;
_t___stage___block_933_rnd = 0;
_t___stage___block_933_d_x = 0;
_t___stage___block_933_d_y = 0;
_t___block_940_side = 0;
_t___block_940_checker = 0;
_t___stage___block_955_a_x = 0;
_t___stage___block_955_a_y = 0;
_t___stage___block_955_len_sq = 0;
_t___stage___block_955_len_brd = 0;
_t___stage___block_955_onsq = 0;
_t___stage___block_955_len = 0;
_t___stage___block_955_rnd = 0;
_t___stage___block_955_d_x = 0;
_t___stage___block_955_d_y = 0;
_t___block_962_side = 0;
_t___block_962_checker = 0;
_t___stage___block_977_a_x = 0;
_t___stage___block_977_a_y = 0;
_t___stage___block_977_len_sq = 0;
_t___stage___block_977_len_brd = 0;
_t___stage___block_977_onsq = 0;
_t___stage___block_977_len = 0;
_t___stage___block_977_rnd = 0;
_t___stage___block_977_d_x = 0;
_t___stage___block_977_d_y = 0;
_t___block_984_side = 0;
_t___block_984_checker = 0;
_t___stage___block_999_a_x = 0;
_t___stage___block_999_a_y = 0;
_t___stage___block_999_len_sq = 0;
_t___stage___block_999_len_brd = 0;
_t___stage___block_999_onsq = 0;
_t___stage___block_999_len = 0;
_t___stage___block_999_rnd = 0;
_t___stage___block_999_d_x = 0;
_t___stage___block_999_d_y = 0;
_t___block_1006_side = 0;
_t___block_1006_checker = 0;
_t___stage___block_1022_r = 0;
_t___stage___block_1022_g = 0;
_t___stage___block_1022_b = 0;
// _always_pre
(* full_case *)
case (_q__idx_fsm0)
1: begin
// _top
// __block_3
_d__idx_fsm0 = 2;
end
2: begin
// __while__block_4
if (1) begin
// __block_5
// __block_7
// --> pipeline __pip_1598_1 starts here
_t__1stdisable_fsm___pip_1598_1_0 = 0;
// __block_1028
// __block_1029
_d__idx_fsm0 = 2;
end else begin
// __block_6
// __block_1030
_d__idx_fsm0 = 0;
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
end
0: begin 
end
default: begin 
_d__idx_fsm0 = {2{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// ==== pipelines ====
// pipeline
// -------- stage 0
(* full_case *)
case (_q__idx_fsm___pip_1598_1_0)
1: begin
if (~_t__1stdisable_fsm___pip_1598_1_0) begin 
// __stage___block_8
// var inits
// --
_t___stage___block_8_q_x = (($signed(in_pix_x)-$signed(24'd320)));

_t___stage___block_8_q_y = (($signed(in_pix_y)-$signed(24'd240)));

_t___stage___block_8_p_x = _t___stage___block_8_q_x;

_t___stage___block_8_p_y = _t___stage___block_8_q_y;

// end of pipeline stage
_d__full_fsm___pip_1598_1_0 = 1;
end // 7
_d__idx_fsm___pip_1598_1_0 = _t__stall_fsm___pip_1598_1_0 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_0 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_1598_1_0 == 1  ) begin
_d___pip_1598_1_0___stage___block_8_p_x = _t___stage___block_8_p_x;
end else begin
_d___pip_1598_1_0___stage___block_8_p_x = _q___pip_1598_1_0___stage___block_8_p_x;
end
if (_q__idx_fsm___pip_1598_1_0 == 1  ) begin
_d___pip_1598_1_0___stage___block_8_p_y = _t___stage___block_8_p_y;
end else begin
_d___pip_1598_1_0___stage___block_8_p_y = _q___pip_1598_1_0___stage___block_8_p_y;
end
if (_q__idx_fsm___pip_1598_1_0 == 1  ) begin
_d___pip_1598_1_0___stage___block_8_num = _c___stage___block_8_num;
end else begin
_d___pip_1598_1_0___stage___block_8_num = _q___pip_1598_1_0___stage___block_8_num;
end
if (_q__idx_fsm___pip_1598_1_0 == 1  ) begin
_d___pip_1598_1_0___stage___block_8_q_y = _t___stage___block_8_q_y;
end else begin
_d___pip_1598_1_0___stage___block_8_q_y = _q___pip_1598_1_0___stage___block_8_q_y;
end
if (_q__idx_fsm___pip_1598_1_0 == 1  ) begin
_d___pip_1598_1_0___stage___block_8_accum_r = _c___stage___block_8_accum_r;
end else begin
_d___pip_1598_1_0___stage___block_8_accum_r = _q___pip_1598_1_0___stage___block_8_accum_r;
end
if (_q__idx_fsm___pip_1598_1_0 == 1  ) begin
_d___pip_1598_1_0___stage___block_8_accum_g = _c___stage___block_8_accum_g;
end else begin
_d___pip_1598_1_0___stage___block_8_accum_g = _q___pip_1598_1_0___stage___block_8_accum_g;
end
if (_q__idx_fsm___pip_1598_1_0 == 1  ) begin
_d___pip_1598_1_0___stage___block_8_q_x = _t___stage___block_8_q_x;
end else begin
_d___pip_1598_1_0___stage___block_8_q_x = _q___pip_1598_1_0___stage___block_8_q_x;
end
if (_q__idx_fsm___pip_1598_1_0 == 1  ) begin
_d___pip_1598_1_0___stage___block_8_accum_b = _c___stage___block_8_accum_b;
end else begin
_d___pip_1598_1_0___stage___block_8_accum_b = _q___pip_1598_1_0___stage___block_8_accum_b;
end
// -------- stage 1
(* full_case *)
case (_q__idx_fsm___pip_1598_1_1)
1: begin
// __stage___block_9
// var inits
_t___stage___block_9_d_x = 0;
_t___stage___block_9_d_y = 0;
// --
_t___stage___block_9_a_x = _q___pip_1598_1_1___stage___block_8_p_x<0 ? -_q___pip_1598_1_1___stage___block_8_p_x:_q___pip_1598_1_1___stage___block_8_p_x;

_t___stage___block_9_a_y = _q___pip_1598_1_1___stage___block_8_p_y<0 ? -_q___pip_1598_1_1___stage___block_8_p_y:_q___pip_1598_1_1___stage___block_8_p_y;

_t___stage___block_9_len_sq = $signed(_t___stage___block_9_a_y>_t___stage___block_9_a_x ? _t___stage___block_9_a_y:_t___stage___block_9_a_x)-$signed(24'd128);

_t___stage___block_9_len_brd = 24'd260-$signed(_t___stage___block_9_a_y>_t___stage___block_9_a_x ? _t___stage___block_9_a_y:_t___stage___block_9_a_x);

_t___stage___block_9_onsq = _t___stage___block_9_len_sq<_t___stage___block_9_len_brd;

_t___stage___block_9_len = _t___stage___block_9_onsq ? _t___stage___block_9_len_sq:_t___stage___block_9_len_brd;

_t___stage___block_9_rnd = _w_rng1_rnd;

if (_t___stage___block_9_rnd[11+:1]) begin
// __block_10
// __block_12
_t___stage___block_9_d_x = _t___stage___block_9_rnd[10+:1] ? -_t___stage___block_9_len+1:_t___stage___block_9_len-1;

_t___stage___block_9_d_y = _t___stage___block_9_rnd[9+:1] ? (($signed(_t___stage___block_9_rnd[0+:8])*_t___stage___block_9_len)>>>8):-(($signed(_t___stage___block_9_rnd[0+:8])*_t___stage___block_9_len)>>>8);

// __block_13
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_11
// __block_14
_t___stage___block_9_d_y = _t___stage___block_9_rnd[10+:1] ? -_t___stage___block_9_len+1:_t___stage___block_9_len-1;

_t___stage___block_9_d_x = _t___stage___block_9_rnd[9+:1] ? (($signed(_t___stage___block_9_rnd[0+:8])*_t___stage___block_9_len)>>>8):-(($signed(_t___stage___block_9_rnd[0+:8])*_t___stage___block_9_len)>>>8);

// __block_15
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_16
_t___block_16_side = (_q___pip_1598_1_1___stage___block_8_p_x+_q___pip_1598_1_1___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_16_checker = (_q___pip_1598_1_1___stage___block_8_p_x[6+:1]^_q___pip_1598_1_1___stage___block_8_p_y[6+:1]);

if (_t___stage___block_9_len>-2&&_t___stage___block_9_len<2) begin
// __block_17
// __block_19
_d___pip_1598_1_1___stage___block_8_num = _q___pip_1598_1_1___stage___block_8_num+1;

if (_t___stage___block_9_onsq) begin
// __block_20
// __block_22
_d___pip_1598_1_1___stage___block_8_accum_r = _q___pip_1598_1_1___stage___block_8_accum_r+3;

_d___pip_1598_1_1___stage___block_8_accum_g = _q___pip_1598_1_1___stage___block_8_accum_g+(_t___block_16_side ? 3:0);

_d___pip_1598_1_1___stage___block_8_accum_b = _q___pip_1598_1_1___stage___block_8_accum_b+(_t___block_16_side ? 3:0);

// __block_23
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_21
// __block_24
_d___pip_1598_1_1___stage___block_8_accum_r = _q___pip_1598_1_1___stage___block_8_accum_r+(_t___block_16_checker ? 1:0);

_d___pip_1598_1_1___stage___block_8_accum_g = _q___pip_1598_1_1___stage___block_8_accum_g+(_t___block_16_checker ? 1:0);

_d___pip_1598_1_1___stage___block_8_accum_b = _q___pip_1598_1_1___stage___block_8_accum_b+(_t___block_16_checker ? 1:0);

// __block_25
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_26
_d___pip_1598_1_1___stage___block_8_p_x = _q___pip_1598_1_1___stage___block_8_q_x;

_d___pip_1598_1_1___stage___block_8_p_y = _q___pip_1598_1_1___stage___block_8_q_y;

// __block_27
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_18
// __block_28
_d___pip_1598_1_1___stage___block_8_p_x = _q___pip_1598_1_1___stage___block_8_p_x+_t___stage___block_9_d_x;

_d___pip_1598_1_1___stage___block_8_p_y = _q___pip_1598_1_1___stage___block_8_p_y+_t___stage___block_9_d_y;

// __block_29
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_30
// end of pipeline stage
_d__full_fsm___pip_1598_1_1 = 1;
_d__idx_fsm___pip_1598_1_1 = _t__stall_fsm___pip_1598_1_1 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_1 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 2
(* full_case *)
case (_q__idx_fsm___pip_1598_1_2)
1: begin
// __stage___block_31
// var inits
_t___stage___block_31_d_x = 0;
_t___stage___block_31_d_y = 0;
// --
_t___stage___block_31_a_x = _q___pip_1598_1_2___stage___block_8_p_x<0 ? -_q___pip_1598_1_2___stage___block_8_p_x:_q___pip_1598_1_2___stage___block_8_p_x;

_t___stage___block_31_a_y = _q___pip_1598_1_2___stage___block_8_p_y<0 ? -_q___pip_1598_1_2___stage___block_8_p_y:_q___pip_1598_1_2___stage___block_8_p_y;

_t___stage___block_31_len_sq = $signed(_t___stage___block_31_a_y>_t___stage___block_31_a_x ? _t___stage___block_31_a_y:_t___stage___block_31_a_x)-$signed(24'd128);

_t___stage___block_31_len_brd = 24'd260-$signed(_t___stage___block_31_a_y>_t___stage___block_31_a_x ? _t___stage___block_31_a_y:_t___stage___block_31_a_x);

_t___stage___block_31_onsq = _t___stage___block_31_len_sq<_t___stage___block_31_len_brd;

_t___stage___block_31_len = _t___stage___block_31_onsq ? _t___stage___block_31_len_sq:_t___stage___block_31_len_brd;

_t___stage___block_31_rnd = _w_rng2_rnd;

if (_t___stage___block_31_rnd[11+:1]) begin
// __block_32
// __block_34
_t___stage___block_31_d_x = _t___stage___block_31_rnd[10+:1] ? -_t___stage___block_31_len+1:_t___stage___block_31_len-1;

_t___stage___block_31_d_y = _t___stage___block_31_rnd[9+:1] ? (($signed(_t___stage___block_31_rnd[0+:8])*_t___stage___block_31_len)>>>8):-(($signed(_t___stage___block_31_rnd[0+:8])*_t___stage___block_31_len)>>>8);

// __block_35
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_33
// __block_36
_t___stage___block_31_d_y = _t___stage___block_31_rnd[10+:1] ? -_t___stage___block_31_len+1:_t___stage___block_31_len-1;

_t___stage___block_31_d_x = _t___stage___block_31_rnd[9+:1] ? (($signed(_t___stage___block_31_rnd[0+:8])*_t___stage___block_31_len)>>>8):-(($signed(_t___stage___block_31_rnd[0+:8])*_t___stage___block_31_len)>>>8);

// __block_37
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_38
_t___block_38_side = (_q___pip_1598_1_2___stage___block_8_p_x+_q___pip_1598_1_2___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_38_checker = (_q___pip_1598_1_2___stage___block_8_p_x[6+:1]^_q___pip_1598_1_2___stage___block_8_p_y[6+:1]);

if (_t___stage___block_31_len>-2&&_t___stage___block_31_len<2) begin
// __block_39
// __block_41
_d___pip_1598_1_2___stage___block_8_num = _q___pip_1598_1_2___stage___block_8_num+1;

if (_t___stage___block_31_onsq) begin
// __block_42
// __block_44
_d___pip_1598_1_2___stage___block_8_accum_r = _q___pip_1598_1_2___stage___block_8_accum_r+3;

_d___pip_1598_1_2___stage___block_8_accum_g = _q___pip_1598_1_2___stage___block_8_accum_g+(_t___block_38_side ? 3:0);

_d___pip_1598_1_2___stage___block_8_accum_b = _q___pip_1598_1_2___stage___block_8_accum_b+(_t___block_38_side ? 3:0);

// __block_45
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_43
// __block_46
_d___pip_1598_1_2___stage___block_8_accum_r = _q___pip_1598_1_2___stage___block_8_accum_r+(_t___block_38_checker ? 1:0);

_d___pip_1598_1_2___stage___block_8_accum_g = _q___pip_1598_1_2___stage___block_8_accum_g+(_t___block_38_checker ? 1:0);

_d___pip_1598_1_2___stage___block_8_accum_b = _q___pip_1598_1_2___stage___block_8_accum_b+(_t___block_38_checker ? 1:0);

// __block_47
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_48
_d___pip_1598_1_2___stage___block_8_p_x = _q___pip_1598_1_2___stage___block_8_q_x;

_d___pip_1598_1_2___stage___block_8_p_y = _q___pip_1598_1_2___stage___block_8_q_y;

// __block_49
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_40
// __block_50
_d___pip_1598_1_2___stage___block_8_p_x = _q___pip_1598_1_2___stage___block_8_p_x+_t___stage___block_31_d_x;

_d___pip_1598_1_2___stage___block_8_p_y = _q___pip_1598_1_2___stage___block_8_p_y+_t___stage___block_31_d_y;

// __block_51
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_52
// end of pipeline stage
_d__full_fsm___pip_1598_1_2 = 1;
_d__idx_fsm___pip_1598_1_2 = _t__stall_fsm___pip_1598_1_2 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_2 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 3
(* full_case *)
case (_q__idx_fsm___pip_1598_1_3)
1: begin
// __stage___block_53
// var inits
_t___stage___block_53_d_x = 0;
_t___stage___block_53_d_y = 0;
// --
_t___stage___block_53_a_x = _q___pip_1598_1_3___stage___block_8_p_x<0 ? -_q___pip_1598_1_3___stage___block_8_p_x:_q___pip_1598_1_3___stage___block_8_p_x;

_t___stage___block_53_a_y = _q___pip_1598_1_3___stage___block_8_p_y<0 ? -_q___pip_1598_1_3___stage___block_8_p_y:_q___pip_1598_1_3___stage___block_8_p_y;

_t___stage___block_53_len_sq = $signed(_t___stage___block_53_a_y>_t___stage___block_53_a_x ? _t___stage___block_53_a_y:_t___stage___block_53_a_x)-$signed(24'd128);

_t___stage___block_53_len_brd = 24'd260-$signed(_t___stage___block_53_a_y>_t___stage___block_53_a_x ? _t___stage___block_53_a_y:_t___stage___block_53_a_x);

_t___stage___block_53_onsq = _t___stage___block_53_len_sq<_t___stage___block_53_len_brd;

_t___stage___block_53_len = _t___stage___block_53_onsq ? _t___stage___block_53_len_sq:_t___stage___block_53_len_brd;

_t___stage___block_53_rnd = _w_rng3_rnd;

if (_t___stage___block_53_rnd[11+:1]) begin
// __block_54
// __block_56
_t___stage___block_53_d_x = _t___stage___block_53_rnd[10+:1] ? -_t___stage___block_53_len+1:_t___stage___block_53_len-1;

_t___stage___block_53_d_y = _t___stage___block_53_rnd[9+:1] ? (($signed(_t___stage___block_53_rnd[0+:8])*_t___stage___block_53_len)>>>8):-(($signed(_t___stage___block_53_rnd[0+:8])*_t___stage___block_53_len)>>>8);

// __block_57
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_55
// __block_58
_t___stage___block_53_d_y = _t___stage___block_53_rnd[10+:1] ? -_t___stage___block_53_len+1:_t___stage___block_53_len-1;

_t___stage___block_53_d_x = _t___stage___block_53_rnd[9+:1] ? (($signed(_t___stage___block_53_rnd[0+:8])*_t___stage___block_53_len)>>>8):-(($signed(_t___stage___block_53_rnd[0+:8])*_t___stage___block_53_len)>>>8);

// __block_59
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_60
_t___block_60_side = (_q___pip_1598_1_3___stage___block_8_p_x+_q___pip_1598_1_3___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_60_checker = (_q___pip_1598_1_3___stage___block_8_p_x[6+:1]^_q___pip_1598_1_3___stage___block_8_p_y[6+:1]);

if (_t___stage___block_53_len>-2&&_t___stage___block_53_len<2) begin
// __block_61
// __block_63
_d___pip_1598_1_3___stage___block_8_num = _q___pip_1598_1_3___stage___block_8_num+1;

if (_t___stage___block_53_onsq) begin
// __block_64
// __block_66
_d___pip_1598_1_3___stage___block_8_accum_r = _q___pip_1598_1_3___stage___block_8_accum_r+3;

_d___pip_1598_1_3___stage___block_8_accum_g = _q___pip_1598_1_3___stage___block_8_accum_g+(_t___block_60_side ? 3:0);

_d___pip_1598_1_3___stage___block_8_accum_b = _q___pip_1598_1_3___stage___block_8_accum_b+(_t___block_60_side ? 3:0);

// __block_67
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_65
// __block_68
_d___pip_1598_1_3___stage___block_8_accum_r = _q___pip_1598_1_3___stage___block_8_accum_r+(_t___block_60_checker ? 1:0);

_d___pip_1598_1_3___stage___block_8_accum_g = _q___pip_1598_1_3___stage___block_8_accum_g+(_t___block_60_checker ? 1:0);

_d___pip_1598_1_3___stage___block_8_accum_b = _q___pip_1598_1_3___stage___block_8_accum_b+(_t___block_60_checker ? 1:0);

// __block_69
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_70
_d___pip_1598_1_3___stage___block_8_p_x = _q___pip_1598_1_3___stage___block_8_q_x;

_d___pip_1598_1_3___stage___block_8_p_y = _q___pip_1598_1_3___stage___block_8_q_y;

// __block_71
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_62
// __block_72
_d___pip_1598_1_3___stage___block_8_p_x = _q___pip_1598_1_3___stage___block_8_p_x+_t___stage___block_53_d_x;

_d___pip_1598_1_3___stage___block_8_p_y = _q___pip_1598_1_3___stage___block_8_p_y+_t___stage___block_53_d_y;

// __block_73
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_74
// end of pipeline stage
_d__full_fsm___pip_1598_1_3 = 1;
_d__idx_fsm___pip_1598_1_3 = _t__stall_fsm___pip_1598_1_3 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_3 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 4
(* full_case *)
case (_q__idx_fsm___pip_1598_1_4)
1: begin
// __stage___block_75
// var inits
_t___stage___block_75_d_x = 0;
_t___stage___block_75_d_y = 0;
// --
_t___stage___block_75_a_x = _q___pip_1598_1_4___stage___block_8_p_x<0 ? -_q___pip_1598_1_4___stage___block_8_p_x:_q___pip_1598_1_4___stage___block_8_p_x;

_t___stage___block_75_a_y = _q___pip_1598_1_4___stage___block_8_p_y<0 ? -_q___pip_1598_1_4___stage___block_8_p_y:_q___pip_1598_1_4___stage___block_8_p_y;

_t___stage___block_75_len_sq = $signed(_t___stage___block_75_a_y>_t___stage___block_75_a_x ? _t___stage___block_75_a_y:_t___stage___block_75_a_x)-$signed(24'd128);

_t___stage___block_75_len_brd = 24'd260-$signed(_t___stage___block_75_a_y>_t___stage___block_75_a_x ? _t___stage___block_75_a_y:_t___stage___block_75_a_x);

_t___stage___block_75_onsq = _t___stage___block_75_len_sq<_t___stage___block_75_len_brd;

_t___stage___block_75_len = _t___stage___block_75_onsq ? _t___stage___block_75_len_sq:_t___stage___block_75_len_brd;

_t___stage___block_75_rnd = _w_rng4_rnd;

if (_t___stage___block_75_rnd[11+:1]) begin
// __block_76
// __block_78
_t___stage___block_75_d_x = _t___stage___block_75_rnd[10+:1] ? -_t___stage___block_75_len+1:_t___stage___block_75_len-1;

_t___stage___block_75_d_y = _t___stage___block_75_rnd[9+:1] ? (($signed(_t___stage___block_75_rnd[0+:8])*_t___stage___block_75_len)>>>8):-(($signed(_t___stage___block_75_rnd[0+:8])*_t___stage___block_75_len)>>>8);

// __block_79
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_77
// __block_80
_t___stage___block_75_d_y = _t___stage___block_75_rnd[10+:1] ? -_t___stage___block_75_len+1:_t___stage___block_75_len-1;

_t___stage___block_75_d_x = _t___stage___block_75_rnd[9+:1] ? (($signed(_t___stage___block_75_rnd[0+:8])*_t___stage___block_75_len)>>>8):-(($signed(_t___stage___block_75_rnd[0+:8])*_t___stage___block_75_len)>>>8);

// __block_81
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_82
_t___block_82_side = (_q___pip_1598_1_4___stage___block_8_p_x+_q___pip_1598_1_4___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_82_checker = (_q___pip_1598_1_4___stage___block_8_p_x[6+:1]^_q___pip_1598_1_4___stage___block_8_p_y[6+:1]);

if (_t___stage___block_75_len>-2&&_t___stage___block_75_len<2) begin
// __block_83
// __block_85
_d___pip_1598_1_4___stage___block_8_num = _q___pip_1598_1_4___stage___block_8_num+1;

if (_t___stage___block_75_onsq) begin
// __block_86
// __block_88
_d___pip_1598_1_4___stage___block_8_accum_r = _q___pip_1598_1_4___stage___block_8_accum_r+3;

_d___pip_1598_1_4___stage___block_8_accum_g = _q___pip_1598_1_4___stage___block_8_accum_g+(_t___block_82_side ? 3:0);

_d___pip_1598_1_4___stage___block_8_accum_b = _q___pip_1598_1_4___stage___block_8_accum_b+(_t___block_82_side ? 3:0);

// __block_89
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_87
// __block_90
_d___pip_1598_1_4___stage___block_8_accum_r = _q___pip_1598_1_4___stage___block_8_accum_r+(_t___block_82_checker ? 1:0);

_d___pip_1598_1_4___stage___block_8_accum_g = _q___pip_1598_1_4___stage___block_8_accum_g+(_t___block_82_checker ? 1:0);

_d___pip_1598_1_4___stage___block_8_accum_b = _q___pip_1598_1_4___stage___block_8_accum_b+(_t___block_82_checker ? 1:0);

// __block_91
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_92
_d___pip_1598_1_4___stage___block_8_p_x = _q___pip_1598_1_4___stage___block_8_q_x;

_d___pip_1598_1_4___stage___block_8_p_y = _q___pip_1598_1_4___stage___block_8_q_y;

// __block_93
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_84
// __block_94
_d___pip_1598_1_4___stage___block_8_p_x = _q___pip_1598_1_4___stage___block_8_p_x+_t___stage___block_75_d_x;

_d___pip_1598_1_4___stage___block_8_p_y = _q___pip_1598_1_4___stage___block_8_p_y+_t___stage___block_75_d_y;

// __block_95
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_96
// end of pipeline stage
_d__full_fsm___pip_1598_1_4 = 1;
_d__idx_fsm___pip_1598_1_4 = _t__stall_fsm___pip_1598_1_4 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_4 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 5
(* full_case *)
case (_q__idx_fsm___pip_1598_1_5)
1: begin
// __stage___block_97
// var inits
_t___stage___block_97_d_x = 0;
_t___stage___block_97_d_y = 0;
// --
_t___stage___block_97_a_x = _q___pip_1598_1_5___stage___block_8_p_x<0 ? -_q___pip_1598_1_5___stage___block_8_p_x:_q___pip_1598_1_5___stage___block_8_p_x;

_t___stage___block_97_a_y = _q___pip_1598_1_5___stage___block_8_p_y<0 ? -_q___pip_1598_1_5___stage___block_8_p_y:_q___pip_1598_1_5___stage___block_8_p_y;

_t___stage___block_97_len_sq = $signed(_t___stage___block_97_a_y>_t___stage___block_97_a_x ? _t___stage___block_97_a_y:_t___stage___block_97_a_x)-$signed(24'd128);

_t___stage___block_97_len_brd = 24'd260-$signed(_t___stage___block_97_a_y>_t___stage___block_97_a_x ? _t___stage___block_97_a_y:_t___stage___block_97_a_x);

_t___stage___block_97_onsq = _t___stage___block_97_len_sq<_t___stage___block_97_len_brd;

_t___stage___block_97_len = _t___stage___block_97_onsq ? _t___stage___block_97_len_sq:_t___stage___block_97_len_brd;

_t___stage___block_97_rnd = _w_rng5_rnd;

if (_t___stage___block_97_rnd[11+:1]) begin
// __block_98
// __block_100
_t___stage___block_97_d_x = _t___stage___block_97_rnd[10+:1] ? -_t___stage___block_97_len+1:_t___stage___block_97_len-1;

_t___stage___block_97_d_y = _t___stage___block_97_rnd[9+:1] ? (($signed(_t___stage___block_97_rnd[0+:8])*_t___stage___block_97_len)>>>8):-(($signed(_t___stage___block_97_rnd[0+:8])*_t___stage___block_97_len)>>>8);

// __block_101
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_99
// __block_102
_t___stage___block_97_d_y = _t___stage___block_97_rnd[10+:1] ? -_t___stage___block_97_len+1:_t___stage___block_97_len-1;

_t___stage___block_97_d_x = _t___stage___block_97_rnd[9+:1] ? (($signed(_t___stage___block_97_rnd[0+:8])*_t___stage___block_97_len)>>>8):-(($signed(_t___stage___block_97_rnd[0+:8])*_t___stage___block_97_len)>>>8);

// __block_103
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_104
_t___block_104_side = (_q___pip_1598_1_5___stage___block_8_p_x+_q___pip_1598_1_5___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_104_checker = (_q___pip_1598_1_5___stage___block_8_p_x[6+:1]^_q___pip_1598_1_5___stage___block_8_p_y[6+:1]);

if (_t___stage___block_97_len>-2&&_t___stage___block_97_len<2) begin
// __block_105
// __block_107
_d___pip_1598_1_5___stage___block_8_num = _q___pip_1598_1_5___stage___block_8_num+1;

if (_t___stage___block_97_onsq) begin
// __block_108
// __block_110
_d___pip_1598_1_5___stage___block_8_accum_r = _q___pip_1598_1_5___stage___block_8_accum_r+3;

_d___pip_1598_1_5___stage___block_8_accum_g = _q___pip_1598_1_5___stage___block_8_accum_g+(_t___block_104_side ? 3:0);

_d___pip_1598_1_5___stage___block_8_accum_b = _q___pip_1598_1_5___stage___block_8_accum_b+(_t___block_104_side ? 3:0);

// __block_111
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_109
// __block_112
_d___pip_1598_1_5___stage___block_8_accum_r = _q___pip_1598_1_5___stage___block_8_accum_r+(_t___block_104_checker ? 1:0);

_d___pip_1598_1_5___stage___block_8_accum_g = _q___pip_1598_1_5___stage___block_8_accum_g+(_t___block_104_checker ? 1:0);

_d___pip_1598_1_5___stage___block_8_accum_b = _q___pip_1598_1_5___stage___block_8_accum_b+(_t___block_104_checker ? 1:0);

// __block_113
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_114
_d___pip_1598_1_5___stage___block_8_p_x = _q___pip_1598_1_5___stage___block_8_q_x;

_d___pip_1598_1_5___stage___block_8_p_y = _q___pip_1598_1_5___stage___block_8_q_y;

// __block_115
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_106
// __block_116
_d___pip_1598_1_5___stage___block_8_p_x = _q___pip_1598_1_5___stage___block_8_p_x+_t___stage___block_97_d_x;

_d___pip_1598_1_5___stage___block_8_p_y = _q___pip_1598_1_5___stage___block_8_p_y+_t___stage___block_97_d_y;

// __block_117
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_118
// end of pipeline stage
_d__full_fsm___pip_1598_1_5 = 1;
_d__idx_fsm___pip_1598_1_5 = _t__stall_fsm___pip_1598_1_5 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_5 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 6
(* full_case *)
case (_q__idx_fsm___pip_1598_1_6)
1: begin
// __stage___block_119
// var inits
_t___stage___block_119_d_x = 0;
_t___stage___block_119_d_y = 0;
// --
_t___stage___block_119_a_x = _q___pip_1598_1_6___stage___block_8_p_x<0 ? -_q___pip_1598_1_6___stage___block_8_p_x:_q___pip_1598_1_6___stage___block_8_p_x;

_t___stage___block_119_a_y = _q___pip_1598_1_6___stage___block_8_p_y<0 ? -_q___pip_1598_1_6___stage___block_8_p_y:_q___pip_1598_1_6___stage___block_8_p_y;

_t___stage___block_119_len_sq = $signed(_t___stage___block_119_a_y>_t___stage___block_119_a_x ? _t___stage___block_119_a_y:_t___stage___block_119_a_x)-$signed(24'd128);

_t___stage___block_119_len_brd = 24'd260-$signed(_t___stage___block_119_a_y>_t___stage___block_119_a_x ? _t___stage___block_119_a_y:_t___stage___block_119_a_x);

_t___stage___block_119_onsq = _t___stage___block_119_len_sq<_t___stage___block_119_len_brd;

_t___stage___block_119_len = _t___stage___block_119_onsq ? _t___stage___block_119_len_sq:_t___stage___block_119_len_brd;

_t___stage___block_119_rnd = _w_rng6_rnd;

if (_t___stage___block_119_rnd[11+:1]) begin
// __block_120
// __block_122
_t___stage___block_119_d_x = _t___stage___block_119_rnd[10+:1] ? -_t___stage___block_119_len+1:_t___stage___block_119_len-1;

_t___stage___block_119_d_y = _t___stage___block_119_rnd[9+:1] ? (($signed(_t___stage___block_119_rnd[0+:8])*_t___stage___block_119_len)>>>8):-(($signed(_t___stage___block_119_rnd[0+:8])*_t___stage___block_119_len)>>>8);

// __block_123
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_121
// __block_124
_t___stage___block_119_d_y = _t___stage___block_119_rnd[10+:1] ? -_t___stage___block_119_len+1:_t___stage___block_119_len-1;

_t___stage___block_119_d_x = _t___stage___block_119_rnd[9+:1] ? (($signed(_t___stage___block_119_rnd[0+:8])*_t___stage___block_119_len)>>>8):-(($signed(_t___stage___block_119_rnd[0+:8])*_t___stage___block_119_len)>>>8);

// __block_125
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_126
_t___block_126_side = (_q___pip_1598_1_6___stage___block_8_p_x+_q___pip_1598_1_6___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_126_checker = (_q___pip_1598_1_6___stage___block_8_p_x[6+:1]^_q___pip_1598_1_6___stage___block_8_p_y[6+:1]);

if (_t___stage___block_119_len>-2&&_t___stage___block_119_len<2) begin
// __block_127
// __block_129
_d___pip_1598_1_6___stage___block_8_num = _q___pip_1598_1_6___stage___block_8_num+1;

if (_t___stage___block_119_onsq) begin
// __block_130
// __block_132
_d___pip_1598_1_6___stage___block_8_accum_r = _q___pip_1598_1_6___stage___block_8_accum_r+3;

_d___pip_1598_1_6___stage___block_8_accum_g = _q___pip_1598_1_6___stage___block_8_accum_g+(_t___block_126_side ? 3:0);

_d___pip_1598_1_6___stage___block_8_accum_b = _q___pip_1598_1_6___stage___block_8_accum_b+(_t___block_126_side ? 3:0);

// __block_133
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_131
// __block_134
_d___pip_1598_1_6___stage___block_8_accum_r = _q___pip_1598_1_6___stage___block_8_accum_r+(_t___block_126_checker ? 1:0);

_d___pip_1598_1_6___stage___block_8_accum_g = _q___pip_1598_1_6___stage___block_8_accum_g+(_t___block_126_checker ? 1:0);

_d___pip_1598_1_6___stage___block_8_accum_b = _q___pip_1598_1_6___stage___block_8_accum_b+(_t___block_126_checker ? 1:0);

// __block_135
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_136
_d___pip_1598_1_6___stage___block_8_p_x = _q___pip_1598_1_6___stage___block_8_q_x;

_d___pip_1598_1_6___stage___block_8_p_y = _q___pip_1598_1_6___stage___block_8_q_y;

// __block_137
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_128
// __block_138
_d___pip_1598_1_6___stage___block_8_p_x = _q___pip_1598_1_6___stage___block_8_p_x+_t___stage___block_119_d_x;

_d___pip_1598_1_6___stage___block_8_p_y = _q___pip_1598_1_6___stage___block_8_p_y+_t___stage___block_119_d_y;

// __block_139
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_140
// end of pipeline stage
_d__full_fsm___pip_1598_1_6 = 1;
_d__idx_fsm___pip_1598_1_6 = _t__stall_fsm___pip_1598_1_6 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_6 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 7
(* full_case *)
case (_q__idx_fsm___pip_1598_1_7)
1: begin
// __stage___block_141
// var inits
_t___stage___block_141_d_x = 0;
_t___stage___block_141_d_y = 0;
// --
_t___stage___block_141_a_x = _q___pip_1598_1_7___stage___block_8_p_x<0 ? -_q___pip_1598_1_7___stage___block_8_p_x:_q___pip_1598_1_7___stage___block_8_p_x;

_t___stage___block_141_a_y = _q___pip_1598_1_7___stage___block_8_p_y<0 ? -_q___pip_1598_1_7___stage___block_8_p_y:_q___pip_1598_1_7___stage___block_8_p_y;

_t___stage___block_141_len_sq = $signed(_t___stage___block_141_a_y>_t___stage___block_141_a_x ? _t___stage___block_141_a_y:_t___stage___block_141_a_x)-$signed(24'd128);

_t___stage___block_141_len_brd = 24'd260-$signed(_t___stage___block_141_a_y>_t___stage___block_141_a_x ? _t___stage___block_141_a_y:_t___stage___block_141_a_x);

_t___stage___block_141_onsq = _t___stage___block_141_len_sq<_t___stage___block_141_len_brd;

_t___stage___block_141_len = _t___stage___block_141_onsq ? _t___stage___block_141_len_sq:_t___stage___block_141_len_brd;

_t___stage___block_141_rnd = _w_rng7_rnd;

if (_t___stage___block_141_rnd[11+:1]) begin
// __block_142
// __block_144
_t___stage___block_141_d_x = _t___stage___block_141_rnd[10+:1] ? -_t___stage___block_141_len+1:_t___stage___block_141_len-1;

_t___stage___block_141_d_y = _t___stage___block_141_rnd[9+:1] ? (($signed(_t___stage___block_141_rnd[0+:8])*_t___stage___block_141_len)>>>8):-(($signed(_t___stage___block_141_rnd[0+:8])*_t___stage___block_141_len)>>>8);

// __block_145
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_143
// __block_146
_t___stage___block_141_d_y = _t___stage___block_141_rnd[10+:1] ? -_t___stage___block_141_len+1:_t___stage___block_141_len-1;

_t___stage___block_141_d_x = _t___stage___block_141_rnd[9+:1] ? (($signed(_t___stage___block_141_rnd[0+:8])*_t___stage___block_141_len)>>>8):-(($signed(_t___stage___block_141_rnd[0+:8])*_t___stage___block_141_len)>>>8);

// __block_147
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_148
_t___block_148_side = (_q___pip_1598_1_7___stage___block_8_p_x+_q___pip_1598_1_7___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_148_checker = (_q___pip_1598_1_7___stage___block_8_p_x[6+:1]^_q___pip_1598_1_7___stage___block_8_p_y[6+:1]);

if (_t___stage___block_141_len>-2&&_t___stage___block_141_len<2) begin
// __block_149
// __block_151
_d___pip_1598_1_7___stage___block_8_num = _q___pip_1598_1_7___stage___block_8_num+1;

if (_t___stage___block_141_onsq) begin
// __block_152
// __block_154
_d___pip_1598_1_7___stage___block_8_accum_r = _q___pip_1598_1_7___stage___block_8_accum_r+3;

_d___pip_1598_1_7___stage___block_8_accum_g = _q___pip_1598_1_7___stage___block_8_accum_g+(_t___block_148_side ? 3:0);

_d___pip_1598_1_7___stage___block_8_accum_b = _q___pip_1598_1_7___stage___block_8_accum_b+(_t___block_148_side ? 3:0);

// __block_155
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_153
// __block_156
_d___pip_1598_1_7___stage___block_8_accum_r = _q___pip_1598_1_7___stage___block_8_accum_r+(_t___block_148_checker ? 1:0);

_d___pip_1598_1_7___stage___block_8_accum_g = _q___pip_1598_1_7___stage___block_8_accum_g+(_t___block_148_checker ? 1:0);

_d___pip_1598_1_7___stage___block_8_accum_b = _q___pip_1598_1_7___stage___block_8_accum_b+(_t___block_148_checker ? 1:0);

// __block_157
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_158
_d___pip_1598_1_7___stage___block_8_p_x = _q___pip_1598_1_7___stage___block_8_q_x;

_d___pip_1598_1_7___stage___block_8_p_y = _q___pip_1598_1_7___stage___block_8_q_y;

// __block_159
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_150
// __block_160
_d___pip_1598_1_7___stage___block_8_p_x = _q___pip_1598_1_7___stage___block_8_p_x+_t___stage___block_141_d_x;

_d___pip_1598_1_7___stage___block_8_p_y = _q___pip_1598_1_7___stage___block_8_p_y+_t___stage___block_141_d_y;

// __block_161
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_162
// end of pipeline stage
_d__full_fsm___pip_1598_1_7 = 1;
_d__idx_fsm___pip_1598_1_7 = _t__stall_fsm___pip_1598_1_7 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_7 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 8
(* full_case *)
case (_q__idx_fsm___pip_1598_1_8)
1: begin
// __stage___block_163
// var inits
_t___stage___block_163_d_x = 0;
_t___stage___block_163_d_y = 0;
// --
_t___stage___block_163_a_x = _q___pip_1598_1_8___stage___block_8_p_x<0 ? -_q___pip_1598_1_8___stage___block_8_p_x:_q___pip_1598_1_8___stage___block_8_p_x;

_t___stage___block_163_a_y = _q___pip_1598_1_8___stage___block_8_p_y<0 ? -_q___pip_1598_1_8___stage___block_8_p_y:_q___pip_1598_1_8___stage___block_8_p_y;

_t___stage___block_163_len_sq = $signed(_t___stage___block_163_a_y>_t___stage___block_163_a_x ? _t___stage___block_163_a_y:_t___stage___block_163_a_x)-$signed(24'd128);

_t___stage___block_163_len_brd = 24'd260-$signed(_t___stage___block_163_a_y>_t___stage___block_163_a_x ? _t___stage___block_163_a_y:_t___stage___block_163_a_x);

_t___stage___block_163_onsq = _t___stage___block_163_len_sq<_t___stage___block_163_len_brd;

_t___stage___block_163_len = _t___stage___block_163_onsq ? _t___stage___block_163_len_sq:_t___stage___block_163_len_brd;

_t___stage___block_163_rnd = _w_rng8_rnd;

if (_t___stage___block_163_rnd[11+:1]) begin
// __block_164
// __block_166
_t___stage___block_163_d_x = _t___stage___block_163_rnd[10+:1] ? -_t___stage___block_163_len+1:_t___stage___block_163_len-1;

_t___stage___block_163_d_y = _t___stage___block_163_rnd[9+:1] ? (($signed(_t___stage___block_163_rnd[0+:8])*_t___stage___block_163_len)>>>8):-(($signed(_t___stage___block_163_rnd[0+:8])*_t___stage___block_163_len)>>>8);

// __block_167
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_165
// __block_168
_t___stage___block_163_d_y = _t___stage___block_163_rnd[10+:1] ? -_t___stage___block_163_len+1:_t___stage___block_163_len-1;

_t___stage___block_163_d_x = _t___stage___block_163_rnd[9+:1] ? (($signed(_t___stage___block_163_rnd[0+:8])*_t___stage___block_163_len)>>>8):-(($signed(_t___stage___block_163_rnd[0+:8])*_t___stage___block_163_len)>>>8);

// __block_169
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_170
_t___block_170_side = (_q___pip_1598_1_8___stage___block_8_p_x+_q___pip_1598_1_8___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_170_checker = (_q___pip_1598_1_8___stage___block_8_p_x[6+:1]^_q___pip_1598_1_8___stage___block_8_p_y[6+:1]);

if (_t___stage___block_163_len>-2&&_t___stage___block_163_len<2) begin
// __block_171
// __block_173
_d___pip_1598_1_8___stage___block_8_num = _q___pip_1598_1_8___stage___block_8_num+1;

if (_t___stage___block_163_onsq) begin
// __block_174
// __block_176
_d___pip_1598_1_8___stage___block_8_accum_r = _q___pip_1598_1_8___stage___block_8_accum_r+3;

_d___pip_1598_1_8___stage___block_8_accum_g = _q___pip_1598_1_8___stage___block_8_accum_g+(_t___block_170_side ? 3:0);

_d___pip_1598_1_8___stage___block_8_accum_b = _q___pip_1598_1_8___stage___block_8_accum_b+(_t___block_170_side ? 3:0);

// __block_177
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_175
// __block_178
_d___pip_1598_1_8___stage___block_8_accum_r = _q___pip_1598_1_8___stage___block_8_accum_r+(_t___block_170_checker ? 1:0);

_d___pip_1598_1_8___stage___block_8_accum_g = _q___pip_1598_1_8___stage___block_8_accum_g+(_t___block_170_checker ? 1:0);

_d___pip_1598_1_8___stage___block_8_accum_b = _q___pip_1598_1_8___stage___block_8_accum_b+(_t___block_170_checker ? 1:0);

// __block_179
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_180
_d___pip_1598_1_8___stage___block_8_p_x = _q___pip_1598_1_8___stage___block_8_q_x;

_d___pip_1598_1_8___stage___block_8_p_y = _q___pip_1598_1_8___stage___block_8_q_y;

// __block_181
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_172
// __block_182
_d___pip_1598_1_8___stage___block_8_p_x = _q___pip_1598_1_8___stage___block_8_p_x+_t___stage___block_163_d_x;

_d___pip_1598_1_8___stage___block_8_p_y = _q___pip_1598_1_8___stage___block_8_p_y+_t___stage___block_163_d_y;

// __block_183
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_184
// end of pipeline stage
_d__full_fsm___pip_1598_1_8 = 1;
_d__idx_fsm___pip_1598_1_8 = _t__stall_fsm___pip_1598_1_8 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_8 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 9
(* full_case *)
case (_q__idx_fsm___pip_1598_1_9)
1: begin
// __stage___block_185
// var inits
_t___stage___block_185_d_x = 0;
_t___stage___block_185_d_y = 0;
// --
_t___stage___block_185_a_x = _q___pip_1598_1_9___stage___block_8_p_x<0 ? -_q___pip_1598_1_9___stage___block_8_p_x:_q___pip_1598_1_9___stage___block_8_p_x;

_t___stage___block_185_a_y = _q___pip_1598_1_9___stage___block_8_p_y<0 ? -_q___pip_1598_1_9___stage___block_8_p_y:_q___pip_1598_1_9___stage___block_8_p_y;

_t___stage___block_185_len_sq = $signed(_t___stage___block_185_a_y>_t___stage___block_185_a_x ? _t___stage___block_185_a_y:_t___stage___block_185_a_x)-$signed(24'd128);

_t___stage___block_185_len_brd = 24'd260-$signed(_t___stage___block_185_a_y>_t___stage___block_185_a_x ? _t___stage___block_185_a_y:_t___stage___block_185_a_x);

_t___stage___block_185_onsq = _t___stage___block_185_len_sq<_t___stage___block_185_len_brd;

_t___stage___block_185_len = _t___stage___block_185_onsq ? _t___stage___block_185_len_sq:_t___stage___block_185_len_brd;

_t___stage___block_185_rnd = _w_rng9_rnd;

if (_t___stage___block_185_rnd[11+:1]) begin
// __block_186
// __block_188
_t___stage___block_185_d_x = _t___stage___block_185_rnd[10+:1] ? -_t___stage___block_185_len+1:_t___stage___block_185_len-1;

_t___stage___block_185_d_y = _t___stage___block_185_rnd[9+:1] ? (($signed(_t___stage___block_185_rnd[0+:8])*_t___stage___block_185_len)>>>8):-(($signed(_t___stage___block_185_rnd[0+:8])*_t___stage___block_185_len)>>>8);

// __block_189
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_187
// __block_190
_t___stage___block_185_d_y = _t___stage___block_185_rnd[10+:1] ? -_t___stage___block_185_len+1:_t___stage___block_185_len-1;

_t___stage___block_185_d_x = _t___stage___block_185_rnd[9+:1] ? (($signed(_t___stage___block_185_rnd[0+:8])*_t___stage___block_185_len)>>>8):-(($signed(_t___stage___block_185_rnd[0+:8])*_t___stage___block_185_len)>>>8);

// __block_191
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_192
_t___block_192_side = (_q___pip_1598_1_9___stage___block_8_p_x+_q___pip_1598_1_9___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_192_checker = (_q___pip_1598_1_9___stage___block_8_p_x[6+:1]^_q___pip_1598_1_9___stage___block_8_p_y[6+:1]);

if (_t___stage___block_185_len>-2&&_t___stage___block_185_len<2) begin
// __block_193
// __block_195
_d___pip_1598_1_9___stage___block_8_num = _q___pip_1598_1_9___stage___block_8_num+1;

if (_t___stage___block_185_onsq) begin
// __block_196
// __block_198
_d___pip_1598_1_9___stage___block_8_accum_r = _q___pip_1598_1_9___stage___block_8_accum_r+3;

_d___pip_1598_1_9___stage___block_8_accum_g = _q___pip_1598_1_9___stage___block_8_accum_g+(_t___block_192_side ? 3:0);

_d___pip_1598_1_9___stage___block_8_accum_b = _q___pip_1598_1_9___stage___block_8_accum_b+(_t___block_192_side ? 3:0);

// __block_199
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_197
// __block_200
_d___pip_1598_1_9___stage___block_8_accum_r = _q___pip_1598_1_9___stage___block_8_accum_r+(_t___block_192_checker ? 1:0);

_d___pip_1598_1_9___stage___block_8_accum_g = _q___pip_1598_1_9___stage___block_8_accum_g+(_t___block_192_checker ? 1:0);

_d___pip_1598_1_9___stage___block_8_accum_b = _q___pip_1598_1_9___stage___block_8_accum_b+(_t___block_192_checker ? 1:0);

// __block_201
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_202
_d___pip_1598_1_9___stage___block_8_p_x = _q___pip_1598_1_9___stage___block_8_q_x;

_d___pip_1598_1_9___stage___block_8_p_y = _q___pip_1598_1_9___stage___block_8_q_y;

// __block_203
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_194
// __block_204
_d___pip_1598_1_9___stage___block_8_p_x = _q___pip_1598_1_9___stage___block_8_p_x+_t___stage___block_185_d_x;

_d___pip_1598_1_9___stage___block_8_p_y = _q___pip_1598_1_9___stage___block_8_p_y+_t___stage___block_185_d_y;

// __block_205
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_206
// end of pipeline stage
_d__full_fsm___pip_1598_1_9 = 1;
_d__idx_fsm___pip_1598_1_9 = _t__stall_fsm___pip_1598_1_9 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_9 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 10
(* full_case *)
case (_q__idx_fsm___pip_1598_1_10)
1: begin
// __stage___block_207
// var inits
_t___stage___block_207_d_x = 0;
_t___stage___block_207_d_y = 0;
// --
_t___stage___block_207_a_x = _q___pip_1598_1_10___stage___block_8_p_x<0 ? -_q___pip_1598_1_10___stage___block_8_p_x:_q___pip_1598_1_10___stage___block_8_p_x;

_t___stage___block_207_a_y = _q___pip_1598_1_10___stage___block_8_p_y<0 ? -_q___pip_1598_1_10___stage___block_8_p_y:_q___pip_1598_1_10___stage___block_8_p_y;

_t___stage___block_207_len_sq = $signed(_t___stage___block_207_a_y>_t___stage___block_207_a_x ? _t___stage___block_207_a_y:_t___stage___block_207_a_x)-$signed(24'd128);

_t___stage___block_207_len_brd = 24'd260-$signed(_t___stage___block_207_a_y>_t___stage___block_207_a_x ? _t___stage___block_207_a_y:_t___stage___block_207_a_x);

_t___stage___block_207_onsq = _t___stage___block_207_len_sq<_t___stage___block_207_len_brd;

_t___stage___block_207_len = _t___stage___block_207_onsq ? _t___stage___block_207_len_sq:_t___stage___block_207_len_brd;

_t___stage___block_207_rnd = _w_rng10_rnd;

if (_t___stage___block_207_rnd[11+:1]) begin
// __block_208
// __block_210
_t___stage___block_207_d_x = _t___stage___block_207_rnd[10+:1] ? -_t___stage___block_207_len+1:_t___stage___block_207_len-1;

_t___stage___block_207_d_y = _t___stage___block_207_rnd[9+:1] ? (($signed(_t___stage___block_207_rnd[0+:8])*_t___stage___block_207_len)>>>8):-(($signed(_t___stage___block_207_rnd[0+:8])*_t___stage___block_207_len)>>>8);

// __block_211
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_209
// __block_212
_t___stage___block_207_d_y = _t___stage___block_207_rnd[10+:1] ? -_t___stage___block_207_len+1:_t___stage___block_207_len-1;

_t___stage___block_207_d_x = _t___stage___block_207_rnd[9+:1] ? (($signed(_t___stage___block_207_rnd[0+:8])*_t___stage___block_207_len)>>>8):-(($signed(_t___stage___block_207_rnd[0+:8])*_t___stage___block_207_len)>>>8);

// __block_213
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_214
_t___block_214_side = (_q___pip_1598_1_10___stage___block_8_p_x+_q___pip_1598_1_10___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_214_checker = (_q___pip_1598_1_10___stage___block_8_p_x[6+:1]^_q___pip_1598_1_10___stage___block_8_p_y[6+:1]);

if (_t___stage___block_207_len>-2&&_t___stage___block_207_len<2) begin
// __block_215
// __block_217
_d___pip_1598_1_10___stage___block_8_num = _q___pip_1598_1_10___stage___block_8_num+1;

if (_t___stage___block_207_onsq) begin
// __block_218
// __block_220
_d___pip_1598_1_10___stage___block_8_accum_r = _q___pip_1598_1_10___stage___block_8_accum_r+3;

_d___pip_1598_1_10___stage___block_8_accum_g = _q___pip_1598_1_10___stage___block_8_accum_g+(_t___block_214_side ? 3:0);

_d___pip_1598_1_10___stage___block_8_accum_b = _q___pip_1598_1_10___stage___block_8_accum_b+(_t___block_214_side ? 3:0);

// __block_221
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_219
// __block_222
_d___pip_1598_1_10___stage___block_8_accum_r = _q___pip_1598_1_10___stage___block_8_accum_r+(_t___block_214_checker ? 1:0);

_d___pip_1598_1_10___stage___block_8_accum_g = _q___pip_1598_1_10___stage___block_8_accum_g+(_t___block_214_checker ? 1:0);

_d___pip_1598_1_10___stage___block_8_accum_b = _q___pip_1598_1_10___stage___block_8_accum_b+(_t___block_214_checker ? 1:0);

// __block_223
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_224
_d___pip_1598_1_10___stage___block_8_p_x = _q___pip_1598_1_10___stage___block_8_q_x;

_d___pip_1598_1_10___stage___block_8_p_y = _q___pip_1598_1_10___stage___block_8_q_y;

// __block_225
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_216
// __block_226
_d___pip_1598_1_10___stage___block_8_p_x = _q___pip_1598_1_10___stage___block_8_p_x+_t___stage___block_207_d_x;

_d___pip_1598_1_10___stage___block_8_p_y = _q___pip_1598_1_10___stage___block_8_p_y+_t___stage___block_207_d_y;

// __block_227
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_228
// end of pipeline stage
_d__full_fsm___pip_1598_1_10 = 1;
_d__idx_fsm___pip_1598_1_10 = _t__stall_fsm___pip_1598_1_10 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_10 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 11
(* full_case *)
case (_q__idx_fsm___pip_1598_1_11)
1: begin
// __stage___block_229
// var inits
_t___stage___block_229_d_x = 0;
_t___stage___block_229_d_y = 0;
// --
_t___stage___block_229_a_x = _q___pip_1598_1_11___stage___block_8_p_x<0 ? -_q___pip_1598_1_11___stage___block_8_p_x:_q___pip_1598_1_11___stage___block_8_p_x;

_t___stage___block_229_a_y = _q___pip_1598_1_11___stage___block_8_p_y<0 ? -_q___pip_1598_1_11___stage___block_8_p_y:_q___pip_1598_1_11___stage___block_8_p_y;

_t___stage___block_229_len_sq = $signed(_t___stage___block_229_a_y>_t___stage___block_229_a_x ? _t___stage___block_229_a_y:_t___stage___block_229_a_x)-$signed(24'd128);

_t___stage___block_229_len_brd = 24'd260-$signed(_t___stage___block_229_a_y>_t___stage___block_229_a_x ? _t___stage___block_229_a_y:_t___stage___block_229_a_x);

_t___stage___block_229_onsq = _t___stage___block_229_len_sq<_t___stage___block_229_len_brd;

_t___stage___block_229_len = _t___stage___block_229_onsq ? _t___stage___block_229_len_sq:_t___stage___block_229_len_brd;

_t___stage___block_229_rnd = _w_rng11_rnd;

if (_t___stage___block_229_rnd[11+:1]) begin
// __block_230
// __block_232
_t___stage___block_229_d_x = _t___stage___block_229_rnd[10+:1] ? -_t___stage___block_229_len+1:_t___stage___block_229_len-1;

_t___stage___block_229_d_y = _t___stage___block_229_rnd[9+:1] ? (($signed(_t___stage___block_229_rnd[0+:8])*_t___stage___block_229_len)>>>8):-(($signed(_t___stage___block_229_rnd[0+:8])*_t___stage___block_229_len)>>>8);

// __block_233
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_231
// __block_234
_t___stage___block_229_d_y = _t___stage___block_229_rnd[10+:1] ? -_t___stage___block_229_len+1:_t___stage___block_229_len-1;

_t___stage___block_229_d_x = _t___stage___block_229_rnd[9+:1] ? (($signed(_t___stage___block_229_rnd[0+:8])*_t___stage___block_229_len)>>>8):-(($signed(_t___stage___block_229_rnd[0+:8])*_t___stage___block_229_len)>>>8);

// __block_235
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_236
_t___block_236_side = (_q___pip_1598_1_11___stage___block_8_p_x+_q___pip_1598_1_11___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_236_checker = (_q___pip_1598_1_11___stage___block_8_p_x[6+:1]^_q___pip_1598_1_11___stage___block_8_p_y[6+:1]);

if (_t___stage___block_229_len>-2&&_t___stage___block_229_len<2) begin
// __block_237
// __block_239
_d___pip_1598_1_11___stage___block_8_num = _q___pip_1598_1_11___stage___block_8_num+1;

if (_t___stage___block_229_onsq) begin
// __block_240
// __block_242
_d___pip_1598_1_11___stage___block_8_accum_r = _q___pip_1598_1_11___stage___block_8_accum_r+3;

_d___pip_1598_1_11___stage___block_8_accum_g = _q___pip_1598_1_11___stage___block_8_accum_g+(_t___block_236_side ? 3:0);

_d___pip_1598_1_11___stage___block_8_accum_b = _q___pip_1598_1_11___stage___block_8_accum_b+(_t___block_236_side ? 3:0);

// __block_243
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_241
// __block_244
_d___pip_1598_1_11___stage___block_8_accum_r = _q___pip_1598_1_11___stage___block_8_accum_r+(_t___block_236_checker ? 1:0);

_d___pip_1598_1_11___stage___block_8_accum_g = _q___pip_1598_1_11___stage___block_8_accum_g+(_t___block_236_checker ? 1:0);

_d___pip_1598_1_11___stage___block_8_accum_b = _q___pip_1598_1_11___stage___block_8_accum_b+(_t___block_236_checker ? 1:0);

// __block_245
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_246
_d___pip_1598_1_11___stage___block_8_p_x = _q___pip_1598_1_11___stage___block_8_q_x;

_d___pip_1598_1_11___stage___block_8_p_y = _q___pip_1598_1_11___stage___block_8_q_y;

// __block_247
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_238
// __block_248
_d___pip_1598_1_11___stage___block_8_p_x = _q___pip_1598_1_11___stage___block_8_p_x+_t___stage___block_229_d_x;

_d___pip_1598_1_11___stage___block_8_p_y = _q___pip_1598_1_11___stage___block_8_p_y+_t___stage___block_229_d_y;

// __block_249
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_250
// end of pipeline stage
_d__full_fsm___pip_1598_1_11 = 1;
_d__idx_fsm___pip_1598_1_11 = _t__stall_fsm___pip_1598_1_11 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_11 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 12
(* full_case *)
case (_q__idx_fsm___pip_1598_1_12)
1: begin
// __stage___block_251
// var inits
_t___stage___block_251_d_x = 0;
_t___stage___block_251_d_y = 0;
// --
_t___stage___block_251_a_x = _q___pip_1598_1_12___stage___block_8_p_x<0 ? -_q___pip_1598_1_12___stage___block_8_p_x:_q___pip_1598_1_12___stage___block_8_p_x;

_t___stage___block_251_a_y = _q___pip_1598_1_12___stage___block_8_p_y<0 ? -_q___pip_1598_1_12___stage___block_8_p_y:_q___pip_1598_1_12___stage___block_8_p_y;

_t___stage___block_251_len_sq = $signed(_t___stage___block_251_a_y>_t___stage___block_251_a_x ? _t___stage___block_251_a_y:_t___stage___block_251_a_x)-$signed(24'd128);

_t___stage___block_251_len_brd = 24'd260-$signed(_t___stage___block_251_a_y>_t___stage___block_251_a_x ? _t___stage___block_251_a_y:_t___stage___block_251_a_x);

_t___stage___block_251_onsq = _t___stage___block_251_len_sq<_t___stage___block_251_len_brd;

_t___stage___block_251_len = _t___stage___block_251_onsq ? _t___stage___block_251_len_sq:_t___stage___block_251_len_brd;

_t___stage___block_251_rnd = _w_rng12_rnd;

if (_t___stage___block_251_rnd[11+:1]) begin
// __block_252
// __block_254
_t___stage___block_251_d_x = _t___stage___block_251_rnd[10+:1] ? -_t___stage___block_251_len+1:_t___stage___block_251_len-1;

_t___stage___block_251_d_y = _t___stage___block_251_rnd[9+:1] ? (($signed(_t___stage___block_251_rnd[0+:8])*_t___stage___block_251_len)>>>8):-(($signed(_t___stage___block_251_rnd[0+:8])*_t___stage___block_251_len)>>>8);

// __block_255
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_253
// __block_256
_t___stage___block_251_d_y = _t___stage___block_251_rnd[10+:1] ? -_t___stage___block_251_len+1:_t___stage___block_251_len-1;

_t___stage___block_251_d_x = _t___stage___block_251_rnd[9+:1] ? (($signed(_t___stage___block_251_rnd[0+:8])*_t___stage___block_251_len)>>>8):-(($signed(_t___stage___block_251_rnd[0+:8])*_t___stage___block_251_len)>>>8);

// __block_257
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_258
_t___block_258_side = (_q___pip_1598_1_12___stage___block_8_p_x+_q___pip_1598_1_12___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_258_checker = (_q___pip_1598_1_12___stage___block_8_p_x[6+:1]^_q___pip_1598_1_12___stage___block_8_p_y[6+:1]);

if (_t___stage___block_251_len>-2&&_t___stage___block_251_len<2) begin
// __block_259
// __block_261
_d___pip_1598_1_12___stage___block_8_num = _q___pip_1598_1_12___stage___block_8_num+1;

if (_t___stage___block_251_onsq) begin
// __block_262
// __block_264
_d___pip_1598_1_12___stage___block_8_accum_r = _q___pip_1598_1_12___stage___block_8_accum_r+3;

_d___pip_1598_1_12___stage___block_8_accum_g = _q___pip_1598_1_12___stage___block_8_accum_g+(_t___block_258_side ? 3:0);

_d___pip_1598_1_12___stage___block_8_accum_b = _q___pip_1598_1_12___stage___block_8_accum_b+(_t___block_258_side ? 3:0);

// __block_265
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_263
// __block_266
_d___pip_1598_1_12___stage___block_8_accum_r = _q___pip_1598_1_12___stage___block_8_accum_r+(_t___block_258_checker ? 1:0);

_d___pip_1598_1_12___stage___block_8_accum_g = _q___pip_1598_1_12___stage___block_8_accum_g+(_t___block_258_checker ? 1:0);

_d___pip_1598_1_12___stage___block_8_accum_b = _q___pip_1598_1_12___stage___block_8_accum_b+(_t___block_258_checker ? 1:0);

// __block_267
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_268
_d___pip_1598_1_12___stage___block_8_p_x = _q___pip_1598_1_12___stage___block_8_q_x;

_d___pip_1598_1_12___stage___block_8_p_y = _q___pip_1598_1_12___stage___block_8_q_y;

// __block_269
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_260
// __block_270
_d___pip_1598_1_12___stage___block_8_p_x = _q___pip_1598_1_12___stage___block_8_p_x+_t___stage___block_251_d_x;

_d___pip_1598_1_12___stage___block_8_p_y = _q___pip_1598_1_12___stage___block_8_p_y+_t___stage___block_251_d_y;

// __block_271
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_272
// end of pipeline stage
_d__full_fsm___pip_1598_1_12 = 1;
_d__idx_fsm___pip_1598_1_12 = _t__stall_fsm___pip_1598_1_12 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_12 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 13
(* full_case *)
case (_q__idx_fsm___pip_1598_1_13)
1: begin
// __stage___block_273
// var inits
_t___stage___block_273_d_x = 0;
_t___stage___block_273_d_y = 0;
// --
_t___stage___block_273_a_x = _q___pip_1598_1_13___stage___block_8_p_x<0 ? -_q___pip_1598_1_13___stage___block_8_p_x:_q___pip_1598_1_13___stage___block_8_p_x;

_t___stage___block_273_a_y = _q___pip_1598_1_13___stage___block_8_p_y<0 ? -_q___pip_1598_1_13___stage___block_8_p_y:_q___pip_1598_1_13___stage___block_8_p_y;

_t___stage___block_273_len_sq = $signed(_t___stage___block_273_a_y>_t___stage___block_273_a_x ? _t___stage___block_273_a_y:_t___stage___block_273_a_x)-$signed(24'd128);

_t___stage___block_273_len_brd = 24'd260-$signed(_t___stage___block_273_a_y>_t___stage___block_273_a_x ? _t___stage___block_273_a_y:_t___stage___block_273_a_x);

_t___stage___block_273_onsq = _t___stage___block_273_len_sq<_t___stage___block_273_len_brd;

_t___stage___block_273_len = _t___stage___block_273_onsq ? _t___stage___block_273_len_sq:_t___stage___block_273_len_brd;

_t___stage___block_273_rnd = _w_rng13_rnd;

if (_t___stage___block_273_rnd[11+:1]) begin
// __block_274
// __block_276
_t___stage___block_273_d_x = _t___stage___block_273_rnd[10+:1] ? -_t___stage___block_273_len+1:_t___stage___block_273_len-1;

_t___stage___block_273_d_y = _t___stage___block_273_rnd[9+:1] ? (($signed(_t___stage___block_273_rnd[0+:8])*_t___stage___block_273_len)>>>8):-(($signed(_t___stage___block_273_rnd[0+:8])*_t___stage___block_273_len)>>>8);

// __block_277
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_275
// __block_278
_t___stage___block_273_d_y = _t___stage___block_273_rnd[10+:1] ? -_t___stage___block_273_len+1:_t___stage___block_273_len-1;

_t___stage___block_273_d_x = _t___stage___block_273_rnd[9+:1] ? (($signed(_t___stage___block_273_rnd[0+:8])*_t___stage___block_273_len)>>>8):-(($signed(_t___stage___block_273_rnd[0+:8])*_t___stage___block_273_len)>>>8);

// __block_279
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_280
_t___block_280_side = (_q___pip_1598_1_13___stage___block_8_p_x+_q___pip_1598_1_13___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_280_checker = (_q___pip_1598_1_13___stage___block_8_p_x[6+:1]^_q___pip_1598_1_13___stage___block_8_p_y[6+:1]);

if (_t___stage___block_273_len>-2&&_t___stage___block_273_len<2) begin
// __block_281
// __block_283
_d___pip_1598_1_13___stage___block_8_num = _q___pip_1598_1_13___stage___block_8_num+1;

if (_t___stage___block_273_onsq) begin
// __block_284
// __block_286
_d___pip_1598_1_13___stage___block_8_accum_r = _q___pip_1598_1_13___stage___block_8_accum_r+3;

_d___pip_1598_1_13___stage___block_8_accum_g = _q___pip_1598_1_13___stage___block_8_accum_g+(_t___block_280_side ? 3:0);

_d___pip_1598_1_13___stage___block_8_accum_b = _q___pip_1598_1_13___stage___block_8_accum_b+(_t___block_280_side ? 3:0);

// __block_287
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_285
// __block_288
_d___pip_1598_1_13___stage___block_8_accum_r = _q___pip_1598_1_13___stage___block_8_accum_r+(_t___block_280_checker ? 1:0);

_d___pip_1598_1_13___stage___block_8_accum_g = _q___pip_1598_1_13___stage___block_8_accum_g+(_t___block_280_checker ? 1:0);

_d___pip_1598_1_13___stage___block_8_accum_b = _q___pip_1598_1_13___stage___block_8_accum_b+(_t___block_280_checker ? 1:0);

// __block_289
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_290
_d___pip_1598_1_13___stage___block_8_p_x = _q___pip_1598_1_13___stage___block_8_q_x;

_d___pip_1598_1_13___stage___block_8_p_y = _q___pip_1598_1_13___stage___block_8_q_y;

// __block_291
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_282
// __block_292
_d___pip_1598_1_13___stage___block_8_p_x = _q___pip_1598_1_13___stage___block_8_p_x+_t___stage___block_273_d_x;

_d___pip_1598_1_13___stage___block_8_p_y = _q___pip_1598_1_13___stage___block_8_p_y+_t___stage___block_273_d_y;

// __block_293
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_294
// end of pipeline stage
_d__full_fsm___pip_1598_1_13 = 1;
_d__idx_fsm___pip_1598_1_13 = _t__stall_fsm___pip_1598_1_13 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_13 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 14
(* full_case *)
case (_q__idx_fsm___pip_1598_1_14)
1: begin
// __stage___block_295
// var inits
_t___stage___block_295_d_x = 0;
_t___stage___block_295_d_y = 0;
// --
_t___stage___block_295_a_x = _q___pip_1598_1_14___stage___block_8_p_x<0 ? -_q___pip_1598_1_14___stage___block_8_p_x:_q___pip_1598_1_14___stage___block_8_p_x;

_t___stage___block_295_a_y = _q___pip_1598_1_14___stage___block_8_p_y<0 ? -_q___pip_1598_1_14___stage___block_8_p_y:_q___pip_1598_1_14___stage___block_8_p_y;

_t___stage___block_295_len_sq = $signed(_t___stage___block_295_a_y>_t___stage___block_295_a_x ? _t___stage___block_295_a_y:_t___stage___block_295_a_x)-$signed(24'd128);

_t___stage___block_295_len_brd = 24'd260-$signed(_t___stage___block_295_a_y>_t___stage___block_295_a_x ? _t___stage___block_295_a_y:_t___stage___block_295_a_x);

_t___stage___block_295_onsq = _t___stage___block_295_len_sq<_t___stage___block_295_len_brd;

_t___stage___block_295_len = _t___stage___block_295_onsq ? _t___stage___block_295_len_sq:_t___stage___block_295_len_brd;

_t___stage___block_295_rnd = _w_rng14_rnd;

if (_t___stage___block_295_rnd[11+:1]) begin
// __block_296
// __block_298
_t___stage___block_295_d_x = _t___stage___block_295_rnd[10+:1] ? -_t___stage___block_295_len+1:_t___stage___block_295_len-1;

_t___stage___block_295_d_y = _t___stage___block_295_rnd[9+:1] ? (($signed(_t___stage___block_295_rnd[0+:8])*_t___stage___block_295_len)>>>8):-(($signed(_t___stage___block_295_rnd[0+:8])*_t___stage___block_295_len)>>>8);

// __block_299
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_297
// __block_300
_t___stage___block_295_d_y = _t___stage___block_295_rnd[10+:1] ? -_t___stage___block_295_len+1:_t___stage___block_295_len-1;

_t___stage___block_295_d_x = _t___stage___block_295_rnd[9+:1] ? (($signed(_t___stage___block_295_rnd[0+:8])*_t___stage___block_295_len)>>>8):-(($signed(_t___stage___block_295_rnd[0+:8])*_t___stage___block_295_len)>>>8);

// __block_301
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_302
_t___block_302_side = (_q___pip_1598_1_14___stage___block_8_p_x+_q___pip_1598_1_14___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_302_checker = (_q___pip_1598_1_14___stage___block_8_p_x[6+:1]^_q___pip_1598_1_14___stage___block_8_p_y[6+:1]);

if (_t___stage___block_295_len>-2&&_t___stage___block_295_len<2) begin
// __block_303
// __block_305
_d___pip_1598_1_14___stage___block_8_num = _q___pip_1598_1_14___stage___block_8_num+1;

if (_t___stage___block_295_onsq) begin
// __block_306
// __block_308
_d___pip_1598_1_14___stage___block_8_accum_r = _q___pip_1598_1_14___stage___block_8_accum_r+3;

_d___pip_1598_1_14___stage___block_8_accum_g = _q___pip_1598_1_14___stage___block_8_accum_g+(_t___block_302_side ? 3:0);

_d___pip_1598_1_14___stage___block_8_accum_b = _q___pip_1598_1_14___stage___block_8_accum_b+(_t___block_302_side ? 3:0);

// __block_309
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_307
// __block_310
_d___pip_1598_1_14___stage___block_8_accum_r = _q___pip_1598_1_14___stage___block_8_accum_r+(_t___block_302_checker ? 1:0);

_d___pip_1598_1_14___stage___block_8_accum_g = _q___pip_1598_1_14___stage___block_8_accum_g+(_t___block_302_checker ? 1:0);

_d___pip_1598_1_14___stage___block_8_accum_b = _q___pip_1598_1_14___stage___block_8_accum_b+(_t___block_302_checker ? 1:0);

// __block_311
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_312
_d___pip_1598_1_14___stage___block_8_p_x = _q___pip_1598_1_14___stage___block_8_q_x;

_d___pip_1598_1_14___stage___block_8_p_y = _q___pip_1598_1_14___stage___block_8_q_y;

// __block_313
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_304
// __block_314
_d___pip_1598_1_14___stage___block_8_p_x = _q___pip_1598_1_14___stage___block_8_p_x+_t___stage___block_295_d_x;

_d___pip_1598_1_14___stage___block_8_p_y = _q___pip_1598_1_14___stage___block_8_p_y+_t___stage___block_295_d_y;

// __block_315
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_316
// end of pipeline stage
_d__full_fsm___pip_1598_1_14 = 1;
_d__idx_fsm___pip_1598_1_14 = _t__stall_fsm___pip_1598_1_14 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_14 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 15
(* full_case *)
case (_q__idx_fsm___pip_1598_1_15)
1: begin
// __stage___block_317
// var inits
_t___stage___block_317_d_x = 0;
_t___stage___block_317_d_y = 0;
// --
_t___stage___block_317_a_x = _q___pip_1598_1_15___stage___block_8_p_x<0 ? -_q___pip_1598_1_15___stage___block_8_p_x:_q___pip_1598_1_15___stage___block_8_p_x;

_t___stage___block_317_a_y = _q___pip_1598_1_15___stage___block_8_p_y<0 ? -_q___pip_1598_1_15___stage___block_8_p_y:_q___pip_1598_1_15___stage___block_8_p_y;

_t___stage___block_317_len_sq = $signed(_t___stage___block_317_a_y>_t___stage___block_317_a_x ? _t___stage___block_317_a_y:_t___stage___block_317_a_x)-$signed(24'd128);

_t___stage___block_317_len_brd = 24'd260-$signed(_t___stage___block_317_a_y>_t___stage___block_317_a_x ? _t___stage___block_317_a_y:_t___stage___block_317_a_x);

_t___stage___block_317_onsq = _t___stage___block_317_len_sq<_t___stage___block_317_len_brd;

_t___stage___block_317_len = _t___stage___block_317_onsq ? _t___stage___block_317_len_sq:_t___stage___block_317_len_brd;

_t___stage___block_317_rnd = _w_rng15_rnd;

if (_t___stage___block_317_rnd[11+:1]) begin
// __block_318
// __block_320
_t___stage___block_317_d_x = _t___stage___block_317_rnd[10+:1] ? -_t___stage___block_317_len+1:_t___stage___block_317_len-1;

_t___stage___block_317_d_y = _t___stage___block_317_rnd[9+:1] ? (($signed(_t___stage___block_317_rnd[0+:8])*_t___stage___block_317_len)>>>8):-(($signed(_t___stage___block_317_rnd[0+:8])*_t___stage___block_317_len)>>>8);

// __block_321
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_319
// __block_322
_t___stage___block_317_d_y = _t___stage___block_317_rnd[10+:1] ? -_t___stage___block_317_len+1:_t___stage___block_317_len-1;

_t___stage___block_317_d_x = _t___stage___block_317_rnd[9+:1] ? (($signed(_t___stage___block_317_rnd[0+:8])*_t___stage___block_317_len)>>>8):-(($signed(_t___stage___block_317_rnd[0+:8])*_t___stage___block_317_len)>>>8);

// __block_323
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_324
_t___block_324_side = (_q___pip_1598_1_15___stage___block_8_p_x+_q___pip_1598_1_15___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_324_checker = (_q___pip_1598_1_15___stage___block_8_p_x[6+:1]^_q___pip_1598_1_15___stage___block_8_p_y[6+:1]);

if (_t___stage___block_317_len>-2&&_t___stage___block_317_len<2) begin
// __block_325
// __block_327
_d___pip_1598_1_15___stage___block_8_num = _q___pip_1598_1_15___stage___block_8_num+1;

if (_t___stage___block_317_onsq) begin
// __block_328
// __block_330
_d___pip_1598_1_15___stage___block_8_accum_r = _q___pip_1598_1_15___stage___block_8_accum_r+3;

_d___pip_1598_1_15___stage___block_8_accum_g = _q___pip_1598_1_15___stage___block_8_accum_g+(_t___block_324_side ? 3:0);

_d___pip_1598_1_15___stage___block_8_accum_b = _q___pip_1598_1_15___stage___block_8_accum_b+(_t___block_324_side ? 3:0);

// __block_331
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_329
// __block_332
_d___pip_1598_1_15___stage___block_8_accum_r = _q___pip_1598_1_15___stage___block_8_accum_r+(_t___block_324_checker ? 1:0);

_d___pip_1598_1_15___stage___block_8_accum_g = _q___pip_1598_1_15___stage___block_8_accum_g+(_t___block_324_checker ? 1:0);

_d___pip_1598_1_15___stage___block_8_accum_b = _q___pip_1598_1_15___stage___block_8_accum_b+(_t___block_324_checker ? 1:0);

// __block_333
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_334
_d___pip_1598_1_15___stage___block_8_p_x = _q___pip_1598_1_15___stage___block_8_q_x;

_d___pip_1598_1_15___stage___block_8_p_y = _q___pip_1598_1_15___stage___block_8_q_y;

// __block_335
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_326
// __block_336
_d___pip_1598_1_15___stage___block_8_p_x = _q___pip_1598_1_15___stage___block_8_p_x+_t___stage___block_317_d_x;

_d___pip_1598_1_15___stage___block_8_p_y = _q___pip_1598_1_15___stage___block_8_p_y+_t___stage___block_317_d_y;

// __block_337
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_338
// end of pipeline stage
_d__full_fsm___pip_1598_1_15 = 1;
_d__idx_fsm___pip_1598_1_15 = _t__stall_fsm___pip_1598_1_15 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_15 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 16
(* full_case *)
case (_q__idx_fsm___pip_1598_1_16)
1: begin
// __stage___block_339
// var inits
_t___stage___block_339_d_x = 0;
_t___stage___block_339_d_y = 0;
// --
_t___stage___block_339_a_x = _q___pip_1598_1_16___stage___block_8_p_x<0 ? -_q___pip_1598_1_16___stage___block_8_p_x:_q___pip_1598_1_16___stage___block_8_p_x;

_t___stage___block_339_a_y = _q___pip_1598_1_16___stage___block_8_p_y<0 ? -_q___pip_1598_1_16___stage___block_8_p_y:_q___pip_1598_1_16___stage___block_8_p_y;

_t___stage___block_339_len_sq = $signed(_t___stage___block_339_a_y>_t___stage___block_339_a_x ? _t___stage___block_339_a_y:_t___stage___block_339_a_x)-$signed(24'd128);

_t___stage___block_339_len_brd = 24'd260-$signed(_t___stage___block_339_a_y>_t___stage___block_339_a_x ? _t___stage___block_339_a_y:_t___stage___block_339_a_x);

_t___stage___block_339_onsq = _t___stage___block_339_len_sq<_t___stage___block_339_len_brd;

_t___stage___block_339_len = _t___stage___block_339_onsq ? _t___stage___block_339_len_sq:_t___stage___block_339_len_brd;

_t___stage___block_339_rnd = _w_rng16_rnd;

if (_t___stage___block_339_rnd[11+:1]) begin
// __block_340
// __block_342
_t___stage___block_339_d_x = _t___stage___block_339_rnd[10+:1] ? -_t___stage___block_339_len+1:_t___stage___block_339_len-1;

_t___stage___block_339_d_y = _t___stage___block_339_rnd[9+:1] ? (($signed(_t___stage___block_339_rnd[0+:8])*_t___stage___block_339_len)>>>8):-(($signed(_t___stage___block_339_rnd[0+:8])*_t___stage___block_339_len)>>>8);

// __block_343
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_341
// __block_344
_t___stage___block_339_d_y = _t___stage___block_339_rnd[10+:1] ? -_t___stage___block_339_len+1:_t___stage___block_339_len-1;

_t___stage___block_339_d_x = _t___stage___block_339_rnd[9+:1] ? (($signed(_t___stage___block_339_rnd[0+:8])*_t___stage___block_339_len)>>>8):-(($signed(_t___stage___block_339_rnd[0+:8])*_t___stage___block_339_len)>>>8);

// __block_345
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_346
_t___block_346_side = (_q___pip_1598_1_16___stage___block_8_p_x+_q___pip_1598_1_16___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_346_checker = (_q___pip_1598_1_16___stage___block_8_p_x[6+:1]^_q___pip_1598_1_16___stage___block_8_p_y[6+:1]);

if (_t___stage___block_339_len>-2&&_t___stage___block_339_len<2) begin
// __block_347
// __block_349
_d___pip_1598_1_16___stage___block_8_num = _q___pip_1598_1_16___stage___block_8_num+1;

if (_t___stage___block_339_onsq) begin
// __block_350
// __block_352
_d___pip_1598_1_16___stage___block_8_accum_r = _q___pip_1598_1_16___stage___block_8_accum_r+3;

_d___pip_1598_1_16___stage___block_8_accum_g = _q___pip_1598_1_16___stage___block_8_accum_g+(_t___block_346_side ? 3:0);

_d___pip_1598_1_16___stage___block_8_accum_b = _q___pip_1598_1_16___stage___block_8_accum_b+(_t___block_346_side ? 3:0);

// __block_353
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_351
// __block_354
_d___pip_1598_1_16___stage___block_8_accum_r = _q___pip_1598_1_16___stage___block_8_accum_r+(_t___block_346_checker ? 1:0);

_d___pip_1598_1_16___stage___block_8_accum_g = _q___pip_1598_1_16___stage___block_8_accum_g+(_t___block_346_checker ? 1:0);

_d___pip_1598_1_16___stage___block_8_accum_b = _q___pip_1598_1_16___stage___block_8_accum_b+(_t___block_346_checker ? 1:0);

// __block_355
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_356
_d___pip_1598_1_16___stage___block_8_p_x = _q___pip_1598_1_16___stage___block_8_q_x;

_d___pip_1598_1_16___stage___block_8_p_y = _q___pip_1598_1_16___stage___block_8_q_y;

// __block_357
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_348
// __block_358
_d___pip_1598_1_16___stage___block_8_p_x = _q___pip_1598_1_16___stage___block_8_p_x+_t___stage___block_339_d_x;

_d___pip_1598_1_16___stage___block_8_p_y = _q___pip_1598_1_16___stage___block_8_p_y+_t___stage___block_339_d_y;

// __block_359
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_360
// end of pipeline stage
_d__full_fsm___pip_1598_1_16 = 1;
_d__idx_fsm___pip_1598_1_16 = _t__stall_fsm___pip_1598_1_16 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_16 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 17
(* full_case *)
case (_q__idx_fsm___pip_1598_1_17)
1: begin
// __stage___block_361
// var inits
_t___stage___block_361_d_x = 0;
_t___stage___block_361_d_y = 0;
// --
_t___stage___block_361_a_x = _q___pip_1598_1_17___stage___block_8_p_x<0 ? -_q___pip_1598_1_17___stage___block_8_p_x:_q___pip_1598_1_17___stage___block_8_p_x;

_t___stage___block_361_a_y = _q___pip_1598_1_17___stage___block_8_p_y<0 ? -_q___pip_1598_1_17___stage___block_8_p_y:_q___pip_1598_1_17___stage___block_8_p_y;

_t___stage___block_361_len_sq = $signed(_t___stage___block_361_a_y>_t___stage___block_361_a_x ? _t___stage___block_361_a_y:_t___stage___block_361_a_x)-$signed(24'd128);

_t___stage___block_361_len_brd = 24'd260-$signed(_t___stage___block_361_a_y>_t___stage___block_361_a_x ? _t___stage___block_361_a_y:_t___stage___block_361_a_x);

_t___stage___block_361_onsq = _t___stage___block_361_len_sq<_t___stage___block_361_len_brd;

_t___stage___block_361_len = _t___stage___block_361_onsq ? _t___stage___block_361_len_sq:_t___stage___block_361_len_brd;

_t___stage___block_361_rnd = _w_rng17_rnd;

if (_t___stage___block_361_rnd[11+:1]) begin
// __block_362
// __block_364
_t___stage___block_361_d_x = _t___stage___block_361_rnd[10+:1] ? -_t___stage___block_361_len+1:_t___stage___block_361_len-1;

_t___stage___block_361_d_y = _t___stage___block_361_rnd[9+:1] ? (($signed(_t___stage___block_361_rnd[0+:8])*_t___stage___block_361_len)>>>8):-(($signed(_t___stage___block_361_rnd[0+:8])*_t___stage___block_361_len)>>>8);

// __block_365
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_363
// __block_366
_t___stage___block_361_d_y = _t___stage___block_361_rnd[10+:1] ? -_t___stage___block_361_len+1:_t___stage___block_361_len-1;

_t___stage___block_361_d_x = _t___stage___block_361_rnd[9+:1] ? (($signed(_t___stage___block_361_rnd[0+:8])*_t___stage___block_361_len)>>>8):-(($signed(_t___stage___block_361_rnd[0+:8])*_t___stage___block_361_len)>>>8);

// __block_367
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_368
_t___block_368_side = (_q___pip_1598_1_17___stage___block_8_p_x+_q___pip_1598_1_17___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_368_checker = (_q___pip_1598_1_17___stage___block_8_p_x[6+:1]^_q___pip_1598_1_17___stage___block_8_p_y[6+:1]);

if (_t___stage___block_361_len>-2&&_t___stage___block_361_len<2) begin
// __block_369
// __block_371
_d___pip_1598_1_17___stage___block_8_num = _q___pip_1598_1_17___stage___block_8_num+1;

if (_t___stage___block_361_onsq) begin
// __block_372
// __block_374
_d___pip_1598_1_17___stage___block_8_accum_r = _q___pip_1598_1_17___stage___block_8_accum_r+3;

_d___pip_1598_1_17___stage___block_8_accum_g = _q___pip_1598_1_17___stage___block_8_accum_g+(_t___block_368_side ? 3:0);

_d___pip_1598_1_17___stage___block_8_accum_b = _q___pip_1598_1_17___stage___block_8_accum_b+(_t___block_368_side ? 3:0);

// __block_375
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_373
// __block_376
_d___pip_1598_1_17___stage___block_8_accum_r = _q___pip_1598_1_17___stage___block_8_accum_r+(_t___block_368_checker ? 1:0);

_d___pip_1598_1_17___stage___block_8_accum_g = _q___pip_1598_1_17___stage___block_8_accum_g+(_t___block_368_checker ? 1:0);

_d___pip_1598_1_17___stage___block_8_accum_b = _q___pip_1598_1_17___stage___block_8_accum_b+(_t___block_368_checker ? 1:0);

// __block_377
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_378
_d___pip_1598_1_17___stage___block_8_p_x = _q___pip_1598_1_17___stage___block_8_q_x;

_d___pip_1598_1_17___stage___block_8_p_y = _q___pip_1598_1_17___stage___block_8_q_y;

// __block_379
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_370
// __block_380
_d___pip_1598_1_17___stage___block_8_p_x = _q___pip_1598_1_17___stage___block_8_p_x+_t___stage___block_361_d_x;

_d___pip_1598_1_17___stage___block_8_p_y = _q___pip_1598_1_17___stage___block_8_p_y+_t___stage___block_361_d_y;

// __block_381
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_382
// end of pipeline stage
_d__full_fsm___pip_1598_1_17 = 1;
_d__idx_fsm___pip_1598_1_17 = _t__stall_fsm___pip_1598_1_17 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_17 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 18
(* full_case *)
case (_q__idx_fsm___pip_1598_1_18)
1: begin
// __stage___block_383
// var inits
_t___stage___block_383_d_x = 0;
_t___stage___block_383_d_y = 0;
// --
_t___stage___block_383_a_x = _q___pip_1598_1_18___stage___block_8_p_x<0 ? -_q___pip_1598_1_18___stage___block_8_p_x:_q___pip_1598_1_18___stage___block_8_p_x;

_t___stage___block_383_a_y = _q___pip_1598_1_18___stage___block_8_p_y<0 ? -_q___pip_1598_1_18___stage___block_8_p_y:_q___pip_1598_1_18___stage___block_8_p_y;

_t___stage___block_383_len_sq = $signed(_t___stage___block_383_a_y>_t___stage___block_383_a_x ? _t___stage___block_383_a_y:_t___stage___block_383_a_x)-$signed(24'd128);

_t___stage___block_383_len_brd = 24'd260-$signed(_t___stage___block_383_a_y>_t___stage___block_383_a_x ? _t___stage___block_383_a_y:_t___stage___block_383_a_x);

_t___stage___block_383_onsq = _t___stage___block_383_len_sq<_t___stage___block_383_len_brd;

_t___stage___block_383_len = _t___stage___block_383_onsq ? _t___stage___block_383_len_sq:_t___stage___block_383_len_brd;

_t___stage___block_383_rnd = _w_rng18_rnd;

if (_t___stage___block_383_rnd[11+:1]) begin
// __block_384
// __block_386
_t___stage___block_383_d_x = _t___stage___block_383_rnd[10+:1] ? -_t___stage___block_383_len+1:_t___stage___block_383_len-1;

_t___stage___block_383_d_y = _t___stage___block_383_rnd[9+:1] ? (($signed(_t___stage___block_383_rnd[0+:8])*_t___stage___block_383_len)>>>8):-(($signed(_t___stage___block_383_rnd[0+:8])*_t___stage___block_383_len)>>>8);

// __block_387
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_385
// __block_388
_t___stage___block_383_d_y = _t___stage___block_383_rnd[10+:1] ? -_t___stage___block_383_len+1:_t___stage___block_383_len-1;

_t___stage___block_383_d_x = _t___stage___block_383_rnd[9+:1] ? (($signed(_t___stage___block_383_rnd[0+:8])*_t___stage___block_383_len)>>>8):-(($signed(_t___stage___block_383_rnd[0+:8])*_t___stage___block_383_len)>>>8);

// __block_389
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_390
_t___block_390_side = (_q___pip_1598_1_18___stage___block_8_p_x+_q___pip_1598_1_18___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_390_checker = (_q___pip_1598_1_18___stage___block_8_p_x[6+:1]^_q___pip_1598_1_18___stage___block_8_p_y[6+:1]);

if (_t___stage___block_383_len>-2&&_t___stage___block_383_len<2) begin
// __block_391
// __block_393
_d___pip_1598_1_18___stage___block_8_num = _q___pip_1598_1_18___stage___block_8_num+1;

if (_t___stage___block_383_onsq) begin
// __block_394
// __block_396
_d___pip_1598_1_18___stage___block_8_accum_r = _q___pip_1598_1_18___stage___block_8_accum_r+3;

_d___pip_1598_1_18___stage___block_8_accum_g = _q___pip_1598_1_18___stage___block_8_accum_g+(_t___block_390_side ? 3:0);

_d___pip_1598_1_18___stage___block_8_accum_b = _q___pip_1598_1_18___stage___block_8_accum_b+(_t___block_390_side ? 3:0);

// __block_397
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_395
// __block_398
_d___pip_1598_1_18___stage___block_8_accum_r = _q___pip_1598_1_18___stage___block_8_accum_r+(_t___block_390_checker ? 1:0);

_d___pip_1598_1_18___stage___block_8_accum_g = _q___pip_1598_1_18___stage___block_8_accum_g+(_t___block_390_checker ? 1:0);

_d___pip_1598_1_18___stage___block_8_accum_b = _q___pip_1598_1_18___stage___block_8_accum_b+(_t___block_390_checker ? 1:0);

// __block_399
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_400
_d___pip_1598_1_18___stage___block_8_p_x = _q___pip_1598_1_18___stage___block_8_q_x;

_d___pip_1598_1_18___stage___block_8_p_y = _q___pip_1598_1_18___stage___block_8_q_y;

// __block_401
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_392
// __block_402
_d___pip_1598_1_18___stage___block_8_p_x = _q___pip_1598_1_18___stage___block_8_p_x+_t___stage___block_383_d_x;

_d___pip_1598_1_18___stage___block_8_p_y = _q___pip_1598_1_18___stage___block_8_p_y+_t___stage___block_383_d_y;

// __block_403
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_404
// end of pipeline stage
_d__full_fsm___pip_1598_1_18 = 1;
_d__idx_fsm___pip_1598_1_18 = _t__stall_fsm___pip_1598_1_18 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_18 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 19
(* full_case *)
case (_q__idx_fsm___pip_1598_1_19)
1: begin
// __stage___block_405
// var inits
_t___stage___block_405_d_x = 0;
_t___stage___block_405_d_y = 0;
// --
_t___stage___block_405_a_x = _q___pip_1598_1_19___stage___block_8_p_x<0 ? -_q___pip_1598_1_19___stage___block_8_p_x:_q___pip_1598_1_19___stage___block_8_p_x;

_t___stage___block_405_a_y = _q___pip_1598_1_19___stage___block_8_p_y<0 ? -_q___pip_1598_1_19___stage___block_8_p_y:_q___pip_1598_1_19___stage___block_8_p_y;

_t___stage___block_405_len_sq = $signed(_t___stage___block_405_a_y>_t___stage___block_405_a_x ? _t___stage___block_405_a_y:_t___stage___block_405_a_x)-$signed(24'd128);

_t___stage___block_405_len_brd = 24'd260-$signed(_t___stage___block_405_a_y>_t___stage___block_405_a_x ? _t___stage___block_405_a_y:_t___stage___block_405_a_x);

_t___stage___block_405_onsq = _t___stage___block_405_len_sq<_t___stage___block_405_len_brd;

_t___stage___block_405_len = _t___stage___block_405_onsq ? _t___stage___block_405_len_sq:_t___stage___block_405_len_brd;

_t___stage___block_405_rnd = _w_rng19_rnd;

if (_t___stage___block_405_rnd[11+:1]) begin
// __block_406
// __block_408
_t___stage___block_405_d_x = _t___stage___block_405_rnd[10+:1] ? -_t___stage___block_405_len+1:_t___stage___block_405_len-1;

_t___stage___block_405_d_y = _t___stage___block_405_rnd[9+:1] ? (($signed(_t___stage___block_405_rnd[0+:8])*_t___stage___block_405_len)>>>8):-(($signed(_t___stage___block_405_rnd[0+:8])*_t___stage___block_405_len)>>>8);

// __block_409
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_407
// __block_410
_t___stage___block_405_d_y = _t___stage___block_405_rnd[10+:1] ? -_t___stage___block_405_len+1:_t___stage___block_405_len-1;

_t___stage___block_405_d_x = _t___stage___block_405_rnd[9+:1] ? (($signed(_t___stage___block_405_rnd[0+:8])*_t___stage___block_405_len)>>>8):-(($signed(_t___stage___block_405_rnd[0+:8])*_t___stage___block_405_len)>>>8);

// __block_411
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_412
_t___block_412_side = (_q___pip_1598_1_19___stage___block_8_p_x+_q___pip_1598_1_19___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_412_checker = (_q___pip_1598_1_19___stage___block_8_p_x[6+:1]^_q___pip_1598_1_19___stage___block_8_p_y[6+:1]);

if (_t___stage___block_405_len>-2&&_t___stage___block_405_len<2) begin
// __block_413
// __block_415
_d___pip_1598_1_19___stage___block_8_num = _q___pip_1598_1_19___stage___block_8_num+1;

if (_t___stage___block_405_onsq) begin
// __block_416
// __block_418
_d___pip_1598_1_19___stage___block_8_accum_r = _q___pip_1598_1_19___stage___block_8_accum_r+3;

_d___pip_1598_1_19___stage___block_8_accum_g = _q___pip_1598_1_19___stage___block_8_accum_g+(_t___block_412_side ? 3:0);

_d___pip_1598_1_19___stage___block_8_accum_b = _q___pip_1598_1_19___stage___block_8_accum_b+(_t___block_412_side ? 3:0);

// __block_419
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_417
// __block_420
_d___pip_1598_1_19___stage___block_8_accum_r = _q___pip_1598_1_19___stage___block_8_accum_r+(_t___block_412_checker ? 1:0);

_d___pip_1598_1_19___stage___block_8_accum_g = _q___pip_1598_1_19___stage___block_8_accum_g+(_t___block_412_checker ? 1:0);

_d___pip_1598_1_19___stage___block_8_accum_b = _q___pip_1598_1_19___stage___block_8_accum_b+(_t___block_412_checker ? 1:0);

// __block_421
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_422
_d___pip_1598_1_19___stage___block_8_p_x = _q___pip_1598_1_19___stage___block_8_q_x;

_d___pip_1598_1_19___stage___block_8_p_y = _q___pip_1598_1_19___stage___block_8_q_y;

// __block_423
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_414
// __block_424
_d___pip_1598_1_19___stage___block_8_p_x = _q___pip_1598_1_19___stage___block_8_p_x+_t___stage___block_405_d_x;

_d___pip_1598_1_19___stage___block_8_p_y = _q___pip_1598_1_19___stage___block_8_p_y+_t___stage___block_405_d_y;

// __block_425
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_426
// end of pipeline stage
_d__full_fsm___pip_1598_1_19 = 1;
_d__idx_fsm___pip_1598_1_19 = _t__stall_fsm___pip_1598_1_19 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_19 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 20
(* full_case *)
case (_q__idx_fsm___pip_1598_1_20)
1: begin
// __stage___block_427
// var inits
_t___stage___block_427_d_x = 0;
_t___stage___block_427_d_y = 0;
// --
_t___stage___block_427_a_x = _q___pip_1598_1_20___stage___block_8_p_x<0 ? -_q___pip_1598_1_20___stage___block_8_p_x:_q___pip_1598_1_20___stage___block_8_p_x;

_t___stage___block_427_a_y = _q___pip_1598_1_20___stage___block_8_p_y<0 ? -_q___pip_1598_1_20___stage___block_8_p_y:_q___pip_1598_1_20___stage___block_8_p_y;

_t___stage___block_427_len_sq = $signed(_t___stage___block_427_a_y>_t___stage___block_427_a_x ? _t___stage___block_427_a_y:_t___stage___block_427_a_x)-$signed(24'd128);

_t___stage___block_427_len_brd = 24'd260-$signed(_t___stage___block_427_a_y>_t___stage___block_427_a_x ? _t___stage___block_427_a_y:_t___stage___block_427_a_x);

_t___stage___block_427_onsq = _t___stage___block_427_len_sq<_t___stage___block_427_len_brd;

_t___stage___block_427_len = _t___stage___block_427_onsq ? _t___stage___block_427_len_sq:_t___stage___block_427_len_brd;

_t___stage___block_427_rnd = _w_rng20_rnd;

if (_t___stage___block_427_rnd[11+:1]) begin
// __block_428
// __block_430
_t___stage___block_427_d_x = _t___stage___block_427_rnd[10+:1] ? -_t___stage___block_427_len+1:_t___stage___block_427_len-1;

_t___stage___block_427_d_y = _t___stage___block_427_rnd[9+:1] ? (($signed(_t___stage___block_427_rnd[0+:8])*_t___stage___block_427_len)>>>8):-(($signed(_t___stage___block_427_rnd[0+:8])*_t___stage___block_427_len)>>>8);

// __block_431
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_429
// __block_432
_t___stage___block_427_d_y = _t___stage___block_427_rnd[10+:1] ? -_t___stage___block_427_len+1:_t___stage___block_427_len-1;

_t___stage___block_427_d_x = _t___stage___block_427_rnd[9+:1] ? (($signed(_t___stage___block_427_rnd[0+:8])*_t___stage___block_427_len)>>>8):-(($signed(_t___stage___block_427_rnd[0+:8])*_t___stage___block_427_len)>>>8);

// __block_433
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_434
_t___block_434_side = (_q___pip_1598_1_20___stage___block_8_p_x+_q___pip_1598_1_20___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_434_checker = (_q___pip_1598_1_20___stage___block_8_p_x[6+:1]^_q___pip_1598_1_20___stage___block_8_p_y[6+:1]);

if (_t___stage___block_427_len>-2&&_t___stage___block_427_len<2) begin
// __block_435
// __block_437
_d___pip_1598_1_20___stage___block_8_num = _q___pip_1598_1_20___stage___block_8_num+1;

if (_t___stage___block_427_onsq) begin
// __block_438
// __block_440
_d___pip_1598_1_20___stage___block_8_accum_r = _q___pip_1598_1_20___stage___block_8_accum_r+3;

_d___pip_1598_1_20___stage___block_8_accum_g = _q___pip_1598_1_20___stage___block_8_accum_g+(_t___block_434_side ? 3:0);

_d___pip_1598_1_20___stage___block_8_accum_b = _q___pip_1598_1_20___stage___block_8_accum_b+(_t___block_434_side ? 3:0);

// __block_441
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_439
// __block_442
_d___pip_1598_1_20___stage___block_8_accum_r = _q___pip_1598_1_20___stage___block_8_accum_r+(_t___block_434_checker ? 1:0);

_d___pip_1598_1_20___stage___block_8_accum_g = _q___pip_1598_1_20___stage___block_8_accum_g+(_t___block_434_checker ? 1:0);

_d___pip_1598_1_20___stage___block_8_accum_b = _q___pip_1598_1_20___stage___block_8_accum_b+(_t___block_434_checker ? 1:0);

// __block_443
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_444
_d___pip_1598_1_20___stage___block_8_p_x = _q___pip_1598_1_20___stage___block_8_q_x;

_d___pip_1598_1_20___stage___block_8_p_y = _q___pip_1598_1_20___stage___block_8_q_y;

// __block_445
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_436
// __block_446
_d___pip_1598_1_20___stage___block_8_p_x = _q___pip_1598_1_20___stage___block_8_p_x+_t___stage___block_427_d_x;

_d___pip_1598_1_20___stage___block_8_p_y = _q___pip_1598_1_20___stage___block_8_p_y+_t___stage___block_427_d_y;

// __block_447
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_448
// end of pipeline stage
_d__full_fsm___pip_1598_1_20 = 1;
_d__idx_fsm___pip_1598_1_20 = _t__stall_fsm___pip_1598_1_20 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_20 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 21
(* full_case *)
case (_q__idx_fsm___pip_1598_1_21)
1: begin
// __stage___block_449
// var inits
_t___stage___block_449_d_x = 0;
_t___stage___block_449_d_y = 0;
// --
_t___stage___block_449_a_x = _q___pip_1598_1_21___stage___block_8_p_x<0 ? -_q___pip_1598_1_21___stage___block_8_p_x:_q___pip_1598_1_21___stage___block_8_p_x;

_t___stage___block_449_a_y = _q___pip_1598_1_21___stage___block_8_p_y<0 ? -_q___pip_1598_1_21___stage___block_8_p_y:_q___pip_1598_1_21___stage___block_8_p_y;

_t___stage___block_449_len_sq = $signed(_t___stage___block_449_a_y>_t___stage___block_449_a_x ? _t___stage___block_449_a_y:_t___stage___block_449_a_x)-$signed(24'd128);

_t___stage___block_449_len_brd = 24'd260-$signed(_t___stage___block_449_a_y>_t___stage___block_449_a_x ? _t___stage___block_449_a_y:_t___stage___block_449_a_x);

_t___stage___block_449_onsq = _t___stage___block_449_len_sq<_t___stage___block_449_len_brd;

_t___stage___block_449_len = _t___stage___block_449_onsq ? _t___stage___block_449_len_sq:_t___stage___block_449_len_brd;

_t___stage___block_449_rnd = _w_rng21_rnd;

if (_t___stage___block_449_rnd[11+:1]) begin
// __block_450
// __block_452
_t___stage___block_449_d_x = _t___stage___block_449_rnd[10+:1] ? -_t___stage___block_449_len+1:_t___stage___block_449_len-1;

_t___stage___block_449_d_y = _t___stage___block_449_rnd[9+:1] ? (($signed(_t___stage___block_449_rnd[0+:8])*_t___stage___block_449_len)>>>8):-(($signed(_t___stage___block_449_rnd[0+:8])*_t___stage___block_449_len)>>>8);

// __block_453
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_451
// __block_454
_t___stage___block_449_d_y = _t___stage___block_449_rnd[10+:1] ? -_t___stage___block_449_len+1:_t___stage___block_449_len-1;

_t___stage___block_449_d_x = _t___stage___block_449_rnd[9+:1] ? (($signed(_t___stage___block_449_rnd[0+:8])*_t___stage___block_449_len)>>>8):-(($signed(_t___stage___block_449_rnd[0+:8])*_t___stage___block_449_len)>>>8);

// __block_455
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_456
_t___block_456_side = (_q___pip_1598_1_21___stage___block_8_p_x+_q___pip_1598_1_21___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_456_checker = (_q___pip_1598_1_21___stage___block_8_p_x[6+:1]^_q___pip_1598_1_21___stage___block_8_p_y[6+:1]);

if (_t___stage___block_449_len>-2&&_t___stage___block_449_len<2) begin
// __block_457
// __block_459
_d___pip_1598_1_21___stage___block_8_num = _q___pip_1598_1_21___stage___block_8_num+1;

if (_t___stage___block_449_onsq) begin
// __block_460
// __block_462
_d___pip_1598_1_21___stage___block_8_accum_r = _q___pip_1598_1_21___stage___block_8_accum_r+3;

_d___pip_1598_1_21___stage___block_8_accum_g = _q___pip_1598_1_21___stage___block_8_accum_g+(_t___block_456_side ? 3:0);

_d___pip_1598_1_21___stage___block_8_accum_b = _q___pip_1598_1_21___stage___block_8_accum_b+(_t___block_456_side ? 3:0);

// __block_463
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_461
// __block_464
_d___pip_1598_1_21___stage___block_8_accum_r = _q___pip_1598_1_21___stage___block_8_accum_r+(_t___block_456_checker ? 1:0);

_d___pip_1598_1_21___stage___block_8_accum_g = _q___pip_1598_1_21___stage___block_8_accum_g+(_t___block_456_checker ? 1:0);

_d___pip_1598_1_21___stage___block_8_accum_b = _q___pip_1598_1_21___stage___block_8_accum_b+(_t___block_456_checker ? 1:0);

// __block_465
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_466
_d___pip_1598_1_21___stage___block_8_p_x = _q___pip_1598_1_21___stage___block_8_q_x;

_d___pip_1598_1_21___stage___block_8_p_y = _q___pip_1598_1_21___stage___block_8_q_y;

// __block_467
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_458
// __block_468
_d___pip_1598_1_21___stage___block_8_p_x = _q___pip_1598_1_21___stage___block_8_p_x+_t___stage___block_449_d_x;

_d___pip_1598_1_21___stage___block_8_p_y = _q___pip_1598_1_21___stage___block_8_p_y+_t___stage___block_449_d_y;

// __block_469
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_470
// end of pipeline stage
_d__full_fsm___pip_1598_1_21 = 1;
_d__idx_fsm___pip_1598_1_21 = _t__stall_fsm___pip_1598_1_21 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_21 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 22
(* full_case *)
case (_q__idx_fsm___pip_1598_1_22)
1: begin
// __stage___block_471
// var inits
_t___stage___block_471_d_x = 0;
_t___stage___block_471_d_y = 0;
// --
_t___stage___block_471_a_x = _q___pip_1598_1_22___stage___block_8_p_x<0 ? -_q___pip_1598_1_22___stage___block_8_p_x:_q___pip_1598_1_22___stage___block_8_p_x;

_t___stage___block_471_a_y = _q___pip_1598_1_22___stage___block_8_p_y<0 ? -_q___pip_1598_1_22___stage___block_8_p_y:_q___pip_1598_1_22___stage___block_8_p_y;

_t___stage___block_471_len_sq = $signed(_t___stage___block_471_a_y>_t___stage___block_471_a_x ? _t___stage___block_471_a_y:_t___stage___block_471_a_x)-$signed(24'd128);

_t___stage___block_471_len_brd = 24'd260-$signed(_t___stage___block_471_a_y>_t___stage___block_471_a_x ? _t___stage___block_471_a_y:_t___stage___block_471_a_x);

_t___stage___block_471_onsq = _t___stage___block_471_len_sq<_t___stage___block_471_len_brd;

_t___stage___block_471_len = _t___stage___block_471_onsq ? _t___stage___block_471_len_sq:_t___stage___block_471_len_brd;

_t___stage___block_471_rnd = _w_rng22_rnd;

if (_t___stage___block_471_rnd[11+:1]) begin
// __block_472
// __block_474
_t___stage___block_471_d_x = _t___stage___block_471_rnd[10+:1] ? -_t___stage___block_471_len+1:_t___stage___block_471_len-1;

_t___stage___block_471_d_y = _t___stage___block_471_rnd[9+:1] ? (($signed(_t___stage___block_471_rnd[0+:8])*_t___stage___block_471_len)>>>8):-(($signed(_t___stage___block_471_rnd[0+:8])*_t___stage___block_471_len)>>>8);

// __block_475
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_473
// __block_476
_t___stage___block_471_d_y = _t___stage___block_471_rnd[10+:1] ? -_t___stage___block_471_len+1:_t___stage___block_471_len-1;

_t___stage___block_471_d_x = _t___stage___block_471_rnd[9+:1] ? (($signed(_t___stage___block_471_rnd[0+:8])*_t___stage___block_471_len)>>>8):-(($signed(_t___stage___block_471_rnd[0+:8])*_t___stage___block_471_len)>>>8);

// __block_477
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_478
_t___block_478_side = (_q___pip_1598_1_22___stage___block_8_p_x+_q___pip_1598_1_22___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_478_checker = (_q___pip_1598_1_22___stage___block_8_p_x[6+:1]^_q___pip_1598_1_22___stage___block_8_p_y[6+:1]);

if (_t___stage___block_471_len>-2&&_t___stage___block_471_len<2) begin
// __block_479
// __block_481
_d___pip_1598_1_22___stage___block_8_num = _q___pip_1598_1_22___stage___block_8_num+1;

if (_t___stage___block_471_onsq) begin
// __block_482
// __block_484
_d___pip_1598_1_22___stage___block_8_accum_r = _q___pip_1598_1_22___stage___block_8_accum_r+3;

_d___pip_1598_1_22___stage___block_8_accum_g = _q___pip_1598_1_22___stage___block_8_accum_g+(_t___block_478_side ? 3:0);

_d___pip_1598_1_22___stage___block_8_accum_b = _q___pip_1598_1_22___stage___block_8_accum_b+(_t___block_478_side ? 3:0);

// __block_485
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_483
// __block_486
_d___pip_1598_1_22___stage___block_8_accum_r = _q___pip_1598_1_22___stage___block_8_accum_r+(_t___block_478_checker ? 1:0);

_d___pip_1598_1_22___stage___block_8_accum_g = _q___pip_1598_1_22___stage___block_8_accum_g+(_t___block_478_checker ? 1:0);

_d___pip_1598_1_22___stage___block_8_accum_b = _q___pip_1598_1_22___stage___block_8_accum_b+(_t___block_478_checker ? 1:0);

// __block_487
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_488
_d___pip_1598_1_22___stage___block_8_p_x = _q___pip_1598_1_22___stage___block_8_q_x;

_d___pip_1598_1_22___stage___block_8_p_y = _q___pip_1598_1_22___stage___block_8_q_y;

// __block_489
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_480
// __block_490
_d___pip_1598_1_22___stage___block_8_p_x = _q___pip_1598_1_22___stage___block_8_p_x+_t___stage___block_471_d_x;

_d___pip_1598_1_22___stage___block_8_p_y = _q___pip_1598_1_22___stage___block_8_p_y+_t___stage___block_471_d_y;

// __block_491
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_492
// end of pipeline stage
_d__full_fsm___pip_1598_1_22 = 1;
_d__idx_fsm___pip_1598_1_22 = _t__stall_fsm___pip_1598_1_22 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_22 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 23
(* full_case *)
case (_q__idx_fsm___pip_1598_1_23)
1: begin
// __stage___block_493
// var inits
_t___stage___block_493_d_x = 0;
_t___stage___block_493_d_y = 0;
// --
_t___stage___block_493_a_x = _q___pip_1598_1_23___stage___block_8_p_x<0 ? -_q___pip_1598_1_23___stage___block_8_p_x:_q___pip_1598_1_23___stage___block_8_p_x;

_t___stage___block_493_a_y = _q___pip_1598_1_23___stage___block_8_p_y<0 ? -_q___pip_1598_1_23___stage___block_8_p_y:_q___pip_1598_1_23___stage___block_8_p_y;

_t___stage___block_493_len_sq = $signed(_t___stage___block_493_a_y>_t___stage___block_493_a_x ? _t___stage___block_493_a_y:_t___stage___block_493_a_x)-$signed(24'd128);

_t___stage___block_493_len_brd = 24'd260-$signed(_t___stage___block_493_a_y>_t___stage___block_493_a_x ? _t___stage___block_493_a_y:_t___stage___block_493_a_x);

_t___stage___block_493_onsq = _t___stage___block_493_len_sq<_t___stage___block_493_len_brd;

_t___stage___block_493_len = _t___stage___block_493_onsq ? _t___stage___block_493_len_sq:_t___stage___block_493_len_brd;

_t___stage___block_493_rnd = _w_rng23_rnd;

if (_t___stage___block_493_rnd[11+:1]) begin
// __block_494
// __block_496
_t___stage___block_493_d_x = _t___stage___block_493_rnd[10+:1] ? -_t___stage___block_493_len+1:_t___stage___block_493_len-1;

_t___stage___block_493_d_y = _t___stage___block_493_rnd[9+:1] ? (($signed(_t___stage___block_493_rnd[0+:8])*_t___stage___block_493_len)>>>8):-(($signed(_t___stage___block_493_rnd[0+:8])*_t___stage___block_493_len)>>>8);

// __block_497
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_495
// __block_498
_t___stage___block_493_d_y = _t___stage___block_493_rnd[10+:1] ? -_t___stage___block_493_len+1:_t___stage___block_493_len-1;

_t___stage___block_493_d_x = _t___stage___block_493_rnd[9+:1] ? (($signed(_t___stage___block_493_rnd[0+:8])*_t___stage___block_493_len)>>>8):-(($signed(_t___stage___block_493_rnd[0+:8])*_t___stage___block_493_len)>>>8);

// __block_499
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_500
_t___block_500_side = (_q___pip_1598_1_23___stage___block_8_p_x+_q___pip_1598_1_23___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_500_checker = (_q___pip_1598_1_23___stage___block_8_p_x[6+:1]^_q___pip_1598_1_23___stage___block_8_p_y[6+:1]);

if (_t___stage___block_493_len>-2&&_t___stage___block_493_len<2) begin
// __block_501
// __block_503
_d___pip_1598_1_23___stage___block_8_num = _q___pip_1598_1_23___stage___block_8_num+1;

if (_t___stage___block_493_onsq) begin
// __block_504
// __block_506
_d___pip_1598_1_23___stage___block_8_accum_r = _q___pip_1598_1_23___stage___block_8_accum_r+3;

_d___pip_1598_1_23___stage___block_8_accum_g = _q___pip_1598_1_23___stage___block_8_accum_g+(_t___block_500_side ? 3:0);

_d___pip_1598_1_23___stage___block_8_accum_b = _q___pip_1598_1_23___stage___block_8_accum_b+(_t___block_500_side ? 3:0);

// __block_507
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_505
// __block_508
_d___pip_1598_1_23___stage___block_8_accum_r = _q___pip_1598_1_23___stage___block_8_accum_r+(_t___block_500_checker ? 1:0);

_d___pip_1598_1_23___stage___block_8_accum_g = _q___pip_1598_1_23___stage___block_8_accum_g+(_t___block_500_checker ? 1:0);

_d___pip_1598_1_23___stage___block_8_accum_b = _q___pip_1598_1_23___stage___block_8_accum_b+(_t___block_500_checker ? 1:0);

// __block_509
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_510
_d___pip_1598_1_23___stage___block_8_p_x = _q___pip_1598_1_23___stage___block_8_q_x;

_d___pip_1598_1_23___stage___block_8_p_y = _q___pip_1598_1_23___stage___block_8_q_y;

// __block_511
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_502
// __block_512
_d___pip_1598_1_23___stage___block_8_p_x = _q___pip_1598_1_23___stage___block_8_p_x+_t___stage___block_493_d_x;

_d___pip_1598_1_23___stage___block_8_p_y = _q___pip_1598_1_23___stage___block_8_p_y+_t___stage___block_493_d_y;

// __block_513
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_514
// end of pipeline stage
_d__full_fsm___pip_1598_1_23 = 1;
_d__idx_fsm___pip_1598_1_23 = _t__stall_fsm___pip_1598_1_23 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_23 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 24
(* full_case *)
case (_q__idx_fsm___pip_1598_1_24)
1: begin
// __stage___block_515
// var inits
_t___stage___block_515_d_x = 0;
_t___stage___block_515_d_y = 0;
// --
_t___stage___block_515_a_x = _q___pip_1598_1_24___stage___block_8_p_x<0 ? -_q___pip_1598_1_24___stage___block_8_p_x:_q___pip_1598_1_24___stage___block_8_p_x;

_t___stage___block_515_a_y = _q___pip_1598_1_24___stage___block_8_p_y<0 ? -_q___pip_1598_1_24___stage___block_8_p_y:_q___pip_1598_1_24___stage___block_8_p_y;

_t___stage___block_515_len_sq = $signed(_t___stage___block_515_a_y>_t___stage___block_515_a_x ? _t___stage___block_515_a_y:_t___stage___block_515_a_x)-$signed(24'd128);

_t___stage___block_515_len_brd = 24'd260-$signed(_t___stage___block_515_a_y>_t___stage___block_515_a_x ? _t___stage___block_515_a_y:_t___stage___block_515_a_x);

_t___stage___block_515_onsq = _t___stage___block_515_len_sq<_t___stage___block_515_len_brd;

_t___stage___block_515_len = _t___stage___block_515_onsq ? _t___stage___block_515_len_sq:_t___stage___block_515_len_brd;

_t___stage___block_515_rnd = _w_rng24_rnd;

if (_t___stage___block_515_rnd[11+:1]) begin
// __block_516
// __block_518
_t___stage___block_515_d_x = _t___stage___block_515_rnd[10+:1] ? -_t___stage___block_515_len+1:_t___stage___block_515_len-1;

_t___stage___block_515_d_y = _t___stage___block_515_rnd[9+:1] ? (($signed(_t___stage___block_515_rnd[0+:8])*_t___stage___block_515_len)>>>8):-(($signed(_t___stage___block_515_rnd[0+:8])*_t___stage___block_515_len)>>>8);

// __block_519
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_517
// __block_520
_t___stage___block_515_d_y = _t___stage___block_515_rnd[10+:1] ? -_t___stage___block_515_len+1:_t___stage___block_515_len-1;

_t___stage___block_515_d_x = _t___stage___block_515_rnd[9+:1] ? (($signed(_t___stage___block_515_rnd[0+:8])*_t___stage___block_515_len)>>>8):-(($signed(_t___stage___block_515_rnd[0+:8])*_t___stage___block_515_len)>>>8);

// __block_521
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_522
_t___block_522_side = (_q___pip_1598_1_24___stage___block_8_p_x+_q___pip_1598_1_24___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_522_checker = (_q___pip_1598_1_24___stage___block_8_p_x[6+:1]^_q___pip_1598_1_24___stage___block_8_p_y[6+:1]);

if (_t___stage___block_515_len>-2&&_t___stage___block_515_len<2) begin
// __block_523
// __block_525
_d___pip_1598_1_24___stage___block_8_num = _q___pip_1598_1_24___stage___block_8_num+1;

if (_t___stage___block_515_onsq) begin
// __block_526
// __block_528
_d___pip_1598_1_24___stage___block_8_accum_r = _q___pip_1598_1_24___stage___block_8_accum_r+3;

_d___pip_1598_1_24___stage___block_8_accum_g = _q___pip_1598_1_24___stage___block_8_accum_g+(_t___block_522_side ? 3:0);

_d___pip_1598_1_24___stage___block_8_accum_b = _q___pip_1598_1_24___stage___block_8_accum_b+(_t___block_522_side ? 3:0);

// __block_529
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_527
// __block_530
_d___pip_1598_1_24___stage___block_8_accum_r = _q___pip_1598_1_24___stage___block_8_accum_r+(_t___block_522_checker ? 1:0);

_d___pip_1598_1_24___stage___block_8_accum_g = _q___pip_1598_1_24___stage___block_8_accum_g+(_t___block_522_checker ? 1:0);

_d___pip_1598_1_24___stage___block_8_accum_b = _q___pip_1598_1_24___stage___block_8_accum_b+(_t___block_522_checker ? 1:0);

// __block_531
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_532
_d___pip_1598_1_24___stage___block_8_p_x = _q___pip_1598_1_24___stage___block_8_q_x;

_d___pip_1598_1_24___stage___block_8_p_y = _q___pip_1598_1_24___stage___block_8_q_y;

// __block_533
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_524
// __block_534
_d___pip_1598_1_24___stage___block_8_p_x = _q___pip_1598_1_24___stage___block_8_p_x+_t___stage___block_515_d_x;

_d___pip_1598_1_24___stage___block_8_p_y = _q___pip_1598_1_24___stage___block_8_p_y+_t___stage___block_515_d_y;

// __block_535
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_536
// end of pipeline stage
_d__full_fsm___pip_1598_1_24 = 1;
_d__idx_fsm___pip_1598_1_24 = _t__stall_fsm___pip_1598_1_24 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_24 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 25
(* full_case *)
case (_q__idx_fsm___pip_1598_1_25)
1: begin
// __stage___block_537
// var inits
_t___stage___block_537_d_x = 0;
_t___stage___block_537_d_y = 0;
// --
_t___stage___block_537_a_x = _q___pip_1598_1_25___stage___block_8_p_x<0 ? -_q___pip_1598_1_25___stage___block_8_p_x:_q___pip_1598_1_25___stage___block_8_p_x;

_t___stage___block_537_a_y = _q___pip_1598_1_25___stage___block_8_p_y<0 ? -_q___pip_1598_1_25___stage___block_8_p_y:_q___pip_1598_1_25___stage___block_8_p_y;

_t___stage___block_537_len_sq = $signed(_t___stage___block_537_a_y>_t___stage___block_537_a_x ? _t___stage___block_537_a_y:_t___stage___block_537_a_x)-$signed(24'd128);

_t___stage___block_537_len_brd = 24'd260-$signed(_t___stage___block_537_a_y>_t___stage___block_537_a_x ? _t___stage___block_537_a_y:_t___stage___block_537_a_x);

_t___stage___block_537_onsq = _t___stage___block_537_len_sq<_t___stage___block_537_len_brd;

_t___stage___block_537_len = _t___stage___block_537_onsq ? _t___stage___block_537_len_sq:_t___stage___block_537_len_brd;

_t___stage___block_537_rnd = _w_rng25_rnd;

if (_t___stage___block_537_rnd[11+:1]) begin
// __block_538
// __block_540
_t___stage___block_537_d_x = _t___stage___block_537_rnd[10+:1] ? -_t___stage___block_537_len+1:_t___stage___block_537_len-1;

_t___stage___block_537_d_y = _t___stage___block_537_rnd[9+:1] ? (($signed(_t___stage___block_537_rnd[0+:8])*_t___stage___block_537_len)>>>8):-(($signed(_t___stage___block_537_rnd[0+:8])*_t___stage___block_537_len)>>>8);

// __block_541
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_539
// __block_542
_t___stage___block_537_d_y = _t___stage___block_537_rnd[10+:1] ? -_t___stage___block_537_len+1:_t___stage___block_537_len-1;

_t___stage___block_537_d_x = _t___stage___block_537_rnd[9+:1] ? (($signed(_t___stage___block_537_rnd[0+:8])*_t___stage___block_537_len)>>>8):-(($signed(_t___stage___block_537_rnd[0+:8])*_t___stage___block_537_len)>>>8);

// __block_543
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_544
_t___block_544_side = (_q___pip_1598_1_25___stage___block_8_p_x+_q___pip_1598_1_25___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_544_checker = (_q___pip_1598_1_25___stage___block_8_p_x[6+:1]^_q___pip_1598_1_25___stage___block_8_p_y[6+:1]);

if (_t___stage___block_537_len>-2&&_t___stage___block_537_len<2) begin
// __block_545
// __block_547
_d___pip_1598_1_25___stage___block_8_num = _q___pip_1598_1_25___stage___block_8_num+1;

if (_t___stage___block_537_onsq) begin
// __block_548
// __block_550
_d___pip_1598_1_25___stage___block_8_accum_r = _q___pip_1598_1_25___stage___block_8_accum_r+3;

_d___pip_1598_1_25___stage___block_8_accum_g = _q___pip_1598_1_25___stage___block_8_accum_g+(_t___block_544_side ? 3:0);

_d___pip_1598_1_25___stage___block_8_accum_b = _q___pip_1598_1_25___stage___block_8_accum_b+(_t___block_544_side ? 3:0);

// __block_551
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_549
// __block_552
_d___pip_1598_1_25___stage___block_8_accum_r = _q___pip_1598_1_25___stage___block_8_accum_r+(_t___block_544_checker ? 1:0);

_d___pip_1598_1_25___stage___block_8_accum_g = _q___pip_1598_1_25___stage___block_8_accum_g+(_t___block_544_checker ? 1:0);

_d___pip_1598_1_25___stage___block_8_accum_b = _q___pip_1598_1_25___stage___block_8_accum_b+(_t___block_544_checker ? 1:0);

// __block_553
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_554
_d___pip_1598_1_25___stage___block_8_p_x = _q___pip_1598_1_25___stage___block_8_q_x;

_d___pip_1598_1_25___stage___block_8_p_y = _q___pip_1598_1_25___stage___block_8_q_y;

// __block_555
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_546
// __block_556
_d___pip_1598_1_25___stage___block_8_p_x = _q___pip_1598_1_25___stage___block_8_p_x+_t___stage___block_537_d_x;

_d___pip_1598_1_25___stage___block_8_p_y = _q___pip_1598_1_25___stage___block_8_p_y+_t___stage___block_537_d_y;

// __block_557
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_558
// end of pipeline stage
_d__full_fsm___pip_1598_1_25 = 1;
_d__idx_fsm___pip_1598_1_25 = _t__stall_fsm___pip_1598_1_25 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_25 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 26
(* full_case *)
case (_q__idx_fsm___pip_1598_1_26)
1: begin
// __stage___block_559
// var inits
_t___stage___block_559_d_x = 0;
_t___stage___block_559_d_y = 0;
// --
_t___stage___block_559_a_x = _q___pip_1598_1_26___stage___block_8_p_x<0 ? -_q___pip_1598_1_26___stage___block_8_p_x:_q___pip_1598_1_26___stage___block_8_p_x;

_t___stage___block_559_a_y = _q___pip_1598_1_26___stage___block_8_p_y<0 ? -_q___pip_1598_1_26___stage___block_8_p_y:_q___pip_1598_1_26___stage___block_8_p_y;

_t___stage___block_559_len_sq = $signed(_t___stage___block_559_a_y>_t___stage___block_559_a_x ? _t___stage___block_559_a_y:_t___stage___block_559_a_x)-$signed(24'd128);

_t___stage___block_559_len_brd = 24'd260-$signed(_t___stage___block_559_a_y>_t___stage___block_559_a_x ? _t___stage___block_559_a_y:_t___stage___block_559_a_x);

_t___stage___block_559_onsq = _t___stage___block_559_len_sq<_t___stage___block_559_len_brd;

_t___stage___block_559_len = _t___stage___block_559_onsq ? _t___stage___block_559_len_sq:_t___stage___block_559_len_brd;

_t___stage___block_559_rnd = _w_rng26_rnd;

if (_t___stage___block_559_rnd[11+:1]) begin
// __block_560
// __block_562
_t___stage___block_559_d_x = _t___stage___block_559_rnd[10+:1] ? -_t___stage___block_559_len+1:_t___stage___block_559_len-1;

_t___stage___block_559_d_y = _t___stage___block_559_rnd[9+:1] ? (($signed(_t___stage___block_559_rnd[0+:8])*_t___stage___block_559_len)>>>8):-(($signed(_t___stage___block_559_rnd[0+:8])*_t___stage___block_559_len)>>>8);

// __block_563
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_561
// __block_564
_t___stage___block_559_d_y = _t___stage___block_559_rnd[10+:1] ? -_t___stage___block_559_len+1:_t___stage___block_559_len-1;

_t___stage___block_559_d_x = _t___stage___block_559_rnd[9+:1] ? (($signed(_t___stage___block_559_rnd[0+:8])*_t___stage___block_559_len)>>>8):-(($signed(_t___stage___block_559_rnd[0+:8])*_t___stage___block_559_len)>>>8);

// __block_565
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_566
_t___block_566_side = (_q___pip_1598_1_26___stage___block_8_p_x+_q___pip_1598_1_26___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_566_checker = (_q___pip_1598_1_26___stage___block_8_p_x[6+:1]^_q___pip_1598_1_26___stage___block_8_p_y[6+:1]);

if (_t___stage___block_559_len>-2&&_t___stage___block_559_len<2) begin
// __block_567
// __block_569
_d___pip_1598_1_26___stage___block_8_num = _q___pip_1598_1_26___stage___block_8_num+1;

if (_t___stage___block_559_onsq) begin
// __block_570
// __block_572
_d___pip_1598_1_26___stage___block_8_accum_r = _q___pip_1598_1_26___stage___block_8_accum_r+3;

_d___pip_1598_1_26___stage___block_8_accum_g = _q___pip_1598_1_26___stage___block_8_accum_g+(_t___block_566_side ? 3:0);

_d___pip_1598_1_26___stage___block_8_accum_b = _q___pip_1598_1_26___stage___block_8_accum_b+(_t___block_566_side ? 3:0);

// __block_573
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_571
// __block_574
_d___pip_1598_1_26___stage___block_8_accum_r = _q___pip_1598_1_26___stage___block_8_accum_r+(_t___block_566_checker ? 1:0);

_d___pip_1598_1_26___stage___block_8_accum_g = _q___pip_1598_1_26___stage___block_8_accum_g+(_t___block_566_checker ? 1:0);

_d___pip_1598_1_26___stage___block_8_accum_b = _q___pip_1598_1_26___stage___block_8_accum_b+(_t___block_566_checker ? 1:0);

// __block_575
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_576
_d___pip_1598_1_26___stage___block_8_p_x = _q___pip_1598_1_26___stage___block_8_q_x;

_d___pip_1598_1_26___stage___block_8_p_y = _q___pip_1598_1_26___stage___block_8_q_y;

// __block_577
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_568
// __block_578
_d___pip_1598_1_26___stage___block_8_p_x = _q___pip_1598_1_26___stage___block_8_p_x+_t___stage___block_559_d_x;

_d___pip_1598_1_26___stage___block_8_p_y = _q___pip_1598_1_26___stage___block_8_p_y+_t___stage___block_559_d_y;

// __block_579
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_580
// end of pipeline stage
_d__full_fsm___pip_1598_1_26 = 1;
_d__idx_fsm___pip_1598_1_26 = _t__stall_fsm___pip_1598_1_26 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_26 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 27
(* full_case *)
case (_q__idx_fsm___pip_1598_1_27)
1: begin
// __stage___block_581
// var inits
_t___stage___block_581_d_x = 0;
_t___stage___block_581_d_y = 0;
// --
_t___stage___block_581_a_x = _q___pip_1598_1_27___stage___block_8_p_x<0 ? -_q___pip_1598_1_27___stage___block_8_p_x:_q___pip_1598_1_27___stage___block_8_p_x;

_t___stage___block_581_a_y = _q___pip_1598_1_27___stage___block_8_p_y<0 ? -_q___pip_1598_1_27___stage___block_8_p_y:_q___pip_1598_1_27___stage___block_8_p_y;

_t___stage___block_581_len_sq = $signed(_t___stage___block_581_a_y>_t___stage___block_581_a_x ? _t___stage___block_581_a_y:_t___stage___block_581_a_x)-$signed(24'd128);

_t___stage___block_581_len_brd = 24'd260-$signed(_t___stage___block_581_a_y>_t___stage___block_581_a_x ? _t___stage___block_581_a_y:_t___stage___block_581_a_x);

_t___stage___block_581_onsq = _t___stage___block_581_len_sq<_t___stage___block_581_len_brd;

_t___stage___block_581_len = _t___stage___block_581_onsq ? _t___stage___block_581_len_sq:_t___stage___block_581_len_brd;

_t___stage___block_581_rnd = _w_rng27_rnd;

if (_t___stage___block_581_rnd[11+:1]) begin
// __block_582
// __block_584
_t___stage___block_581_d_x = _t___stage___block_581_rnd[10+:1] ? -_t___stage___block_581_len+1:_t___stage___block_581_len-1;

_t___stage___block_581_d_y = _t___stage___block_581_rnd[9+:1] ? (($signed(_t___stage___block_581_rnd[0+:8])*_t___stage___block_581_len)>>>8):-(($signed(_t___stage___block_581_rnd[0+:8])*_t___stage___block_581_len)>>>8);

// __block_585
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_583
// __block_586
_t___stage___block_581_d_y = _t___stage___block_581_rnd[10+:1] ? -_t___stage___block_581_len+1:_t___stage___block_581_len-1;

_t___stage___block_581_d_x = _t___stage___block_581_rnd[9+:1] ? (($signed(_t___stage___block_581_rnd[0+:8])*_t___stage___block_581_len)>>>8):-(($signed(_t___stage___block_581_rnd[0+:8])*_t___stage___block_581_len)>>>8);

// __block_587
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_588
_t___block_588_side = (_q___pip_1598_1_27___stage___block_8_p_x+_q___pip_1598_1_27___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_588_checker = (_q___pip_1598_1_27___stage___block_8_p_x[6+:1]^_q___pip_1598_1_27___stage___block_8_p_y[6+:1]);

if (_t___stage___block_581_len>-2&&_t___stage___block_581_len<2) begin
// __block_589
// __block_591
_d___pip_1598_1_27___stage___block_8_num = _q___pip_1598_1_27___stage___block_8_num+1;

if (_t___stage___block_581_onsq) begin
// __block_592
// __block_594
_d___pip_1598_1_27___stage___block_8_accum_r = _q___pip_1598_1_27___stage___block_8_accum_r+3;

_d___pip_1598_1_27___stage___block_8_accum_g = _q___pip_1598_1_27___stage___block_8_accum_g+(_t___block_588_side ? 3:0);

_d___pip_1598_1_27___stage___block_8_accum_b = _q___pip_1598_1_27___stage___block_8_accum_b+(_t___block_588_side ? 3:0);

// __block_595
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_593
// __block_596
_d___pip_1598_1_27___stage___block_8_accum_r = _q___pip_1598_1_27___stage___block_8_accum_r+(_t___block_588_checker ? 1:0);

_d___pip_1598_1_27___stage___block_8_accum_g = _q___pip_1598_1_27___stage___block_8_accum_g+(_t___block_588_checker ? 1:0);

_d___pip_1598_1_27___stage___block_8_accum_b = _q___pip_1598_1_27___stage___block_8_accum_b+(_t___block_588_checker ? 1:0);

// __block_597
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_598
_d___pip_1598_1_27___stage___block_8_p_x = _q___pip_1598_1_27___stage___block_8_q_x;

_d___pip_1598_1_27___stage___block_8_p_y = _q___pip_1598_1_27___stage___block_8_q_y;

// __block_599
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_590
// __block_600
_d___pip_1598_1_27___stage___block_8_p_x = _q___pip_1598_1_27___stage___block_8_p_x+_t___stage___block_581_d_x;

_d___pip_1598_1_27___stage___block_8_p_y = _q___pip_1598_1_27___stage___block_8_p_y+_t___stage___block_581_d_y;

// __block_601
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_602
// end of pipeline stage
_d__full_fsm___pip_1598_1_27 = 1;
_d__idx_fsm___pip_1598_1_27 = _t__stall_fsm___pip_1598_1_27 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_27 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 28
(* full_case *)
case (_q__idx_fsm___pip_1598_1_28)
1: begin
// __stage___block_603
// var inits
_t___stage___block_603_d_x = 0;
_t___stage___block_603_d_y = 0;
// --
_t___stage___block_603_a_x = _q___pip_1598_1_28___stage___block_8_p_x<0 ? -_q___pip_1598_1_28___stage___block_8_p_x:_q___pip_1598_1_28___stage___block_8_p_x;

_t___stage___block_603_a_y = _q___pip_1598_1_28___stage___block_8_p_y<0 ? -_q___pip_1598_1_28___stage___block_8_p_y:_q___pip_1598_1_28___stage___block_8_p_y;

_t___stage___block_603_len_sq = $signed(_t___stage___block_603_a_y>_t___stage___block_603_a_x ? _t___stage___block_603_a_y:_t___stage___block_603_a_x)-$signed(24'd128);

_t___stage___block_603_len_brd = 24'd260-$signed(_t___stage___block_603_a_y>_t___stage___block_603_a_x ? _t___stage___block_603_a_y:_t___stage___block_603_a_x);

_t___stage___block_603_onsq = _t___stage___block_603_len_sq<_t___stage___block_603_len_brd;

_t___stage___block_603_len = _t___stage___block_603_onsq ? _t___stage___block_603_len_sq:_t___stage___block_603_len_brd;

_t___stage___block_603_rnd = _w_rng28_rnd;

if (_t___stage___block_603_rnd[11+:1]) begin
// __block_604
// __block_606
_t___stage___block_603_d_x = _t___stage___block_603_rnd[10+:1] ? -_t___stage___block_603_len+1:_t___stage___block_603_len-1;

_t___stage___block_603_d_y = _t___stage___block_603_rnd[9+:1] ? (($signed(_t___stage___block_603_rnd[0+:8])*_t___stage___block_603_len)>>>8):-(($signed(_t___stage___block_603_rnd[0+:8])*_t___stage___block_603_len)>>>8);

// __block_607
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_605
// __block_608
_t___stage___block_603_d_y = _t___stage___block_603_rnd[10+:1] ? -_t___stage___block_603_len+1:_t___stage___block_603_len-1;

_t___stage___block_603_d_x = _t___stage___block_603_rnd[9+:1] ? (($signed(_t___stage___block_603_rnd[0+:8])*_t___stage___block_603_len)>>>8):-(($signed(_t___stage___block_603_rnd[0+:8])*_t___stage___block_603_len)>>>8);

// __block_609
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_610
_t___block_610_side = (_q___pip_1598_1_28___stage___block_8_p_x+_q___pip_1598_1_28___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_610_checker = (_q___pip_1598_1_28___stage___block_8_p_x[6+:1]^_q___pip_1598_1_28___stage___block_8_p_y[6+:1]);

if (_t___stage___block_603_len>-2&&_t___stage___block_603_len<2) begin
// __block_611
// __block_613
_d___pip_1598_1_28___stage___block_8_num = _q___pip_1598_1_28___stage___block_8_num+1;

if (_t___stage___block_603_onsq) begin
// __block_614
// __block_616
_d___pip_1598_1_28___stage___block_8_accum_r = _q___pip_1598_1_28___stage___block_8_accum_r+3;

_d___pip_1598_1_28___stage___block_8_accum_g = _q___pip_1598_1_28___stage___block_8_accum_g+(_t___block_610_side ? 3:0);

_d___pip_1598_1_28___stage___block_8_accum_b = _q___pip_1598_1_28___stage___block_8_accum_b+(_t___block_610_side ? 3:0);

// __block_617
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_615
// __block_618
_d___pip_1598_1_28___stage___block_8_accum_r = _q___pip_1598_1_28___stage___block_8_accum_r+(_t___block_610_checker ? 1:0);

_d___pip_1598_1_28___stage___block_8_accum_g = _q___pip_1598_1_28___stage___block_8_accum_g+(_t___block_610_checker ? 1:0);

_d___pip_1598_1_28___stage___block_8_accum_b = _q___pip_1598_1_28___stage___block_8_accum_b+(_t___block_610_checker ? 1:0);

// __block_619
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_620
_d___pip_1598_1_28___stage___block_8_p_x = _q___pip_1598_1_28___stage___block_8_q_x;

_d___pip_1598_1_28___stage___block_8_p_y = _q___pip_1598_1_28___stage___block_8_q_y;

// __block_621
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_612
// __block_622
_d___pip_1598_1_28___stage___block_8_p_x = _q___pip_1598_1_28___stage___block_8_p_x+_t___stage___block_603_d_x;

_d___pip_1598_1_28___stage___block_8_p_y = _q___pip_1598_1_28___stage___block_8_p_y+_t___stage___block_603_d_y;

// __block_623
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_624
// end of pipeline stage
_d__full_fsm___pip_1598_1_28 = 1;
_d__idx_fsm___pip_1598_1_28 = _t__stall_fsm___pip_1598_1_28 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_28 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 29
(* full_case *)
case (_q__idx_fsm___pip_1598_1_29)
1: begin
// __stage___block_625
// var inits
_t___stage___block_625_d_x = 0;
_t___stage___block_625_d_y = 0;
// --
_t___stage___block_625_a_x = _q___pip_1598_1_29___stage___block_8_p_x<0 ? -_q___pip_1598_1_29___stage___block_8_p_x:_q___pip_1598_1_29___stage___block_8_p_x;

_t___stage___block_625_a_y = _q___pip_1598_1_29___stage___block_8_p_y<0 ? -_q___pip_1598_1_29___stage___block_8_p_y:_q___pip_1598_1_29___stage___block_8_p_y;

_t___stage___block_625_len_sq = $signed(_t___stage___block_625_a_y>_t___stage___block_625_a_x ? _t___stage___block_625_a_y:_t___stage___block_625_a_x)-$signed(24'd128);

_t___stage___block_625_len_brd = 24'd260-$signed(_t___stage___block_625_a_y>_t___stage___block_625_a_x ? _t___stage___block_625_a_y:_t___stage___block_625_a_x);

_t___stage___block_625_onsq = _t___stage___block_625_len_sq<_t___stage___block_625_len_brd;

_t___stage___block_625_len = _t___stage___block_625_onsq ? _t___stage___block_625_len_sq:_t___stage___block_625_len_brd;

_t___stage___block_625_rnd = _w_rng29_rnd;

if (_t___stage___block_625_rnd[11+:1]) begin
// __block_626
// __block_628
_t___stage___block_625_d_x = _t___stage___block_625_rnd[10+:1] ? -_t___stage___block_625_len+1:_t___stage___block_625_len-1;

_t___stage___block_625_d_y = _t___stage___block_625_rnd[9+:1] ? (($signed(_t___stage___block_625_rnd[0+:8])*_t___stage___block_625_len)>>>8):-(($signed(_t___stage___block_625_rnd[0+:8])*_t___stage___block_625_len)>>>8);

// __block_629
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_627
// __block_630
_t___stage___block_625_d_y = _t___stage___block_625_rnd[10+:1] ? -_t___stage___block_625_len+1:_t___stage___block_625_len-1;

_t___stage___block_625_d_x = _t___stage___block_625_rnd[9+:1] ? (($signed(_t___stage___block_625_rnd[0+:8])*_t___stage___block_625_len)>>>8):-(($signed(_t___stage___block_625_rnd[0+:8])*_t___stage___block_625_len)>>>8);

// __block_631
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_632
_t___block_632_side = (_q___pip_1598_1_29___stage___block_8_p_x+_q___pip_1598_1_29___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_632_checker = (_q___pip_1598_1_29___stage___block_8_p_x[6+:1]^_q___pip_1598_1_29___stage___block_8_p_y[6+:1]);

if (_t___stage___block_625_len>-2&&_t___stage___block_625_len<2) begin
// __block_633
// __block_635
_d___pip_1598_1_29___stage___block_8_num = _q___pip_1598_1_29___stage___block_8_num+1;

if (_t___stage___block_625_onsq) begin
// __block_636
// __block_638
_d___pip_1598_1_29___stage___block_8_accum_r = _q___pip_1598_1_29___stage___block_8_accum_r+3;

_d___pip_1598_1_29___stage___block_8_accum_g = _q___pip_1598_1_29___stage___block_8_accum_g+(_t___block_632_side ? 3:0);

_d___pip_1598_1_29___stage___block_8_accum_b = _q___pip_1598_1_29___stage___block_8_accum_b+(_t___block_632_side ? 3:0);

// __block_639
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_637
// __block_640
_d___pip_1598_1_29___stage___block_8_accum_r = _q___pip_1598_1_29___stage___block_8_accum_r+(_t___block_632_checker ? 1:0);

_d___pip_1598_1_29___stage___block_8_accum_g = _q___pip_1598_1_29___stage___block_8_accum_g+(_t___block_632_checker ? 1:0);

_d___pip_1598_1_29___stage___block_8_accum_b = _q___pip_1598_1_29___stage___block_8_accum_b+(_t___block_632_checker ? 1:0);

// __block_641
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_642
_d___pip_1598_1_29___stage___block_8_p_x = _q___pip_1598_1_29___stage___block_8_q_x;

_d___pip_1598_1_29___stage___block_8_p_y = _q___pip_1598_1_29___stage___block_8_q_y;

// __block_643
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_634
// __block_644
_d___pip_1598_1_29___stage___block_8_p_x = _q___pip_1598_1_29___stage___block_8_p_x+_t___stage___block_625_d_x;

_d___pip_1598_1_29___stage___block_8_p_y = _q___pip_1598_1_29___stage___block_8_p_y+_t___stage___block_625_d_y;

// __block_645
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_646
// end of pipeline stage
_d__full_fsm___pip_1598_1_29 = 1;
_d__idx_fsm___pip_1598_1_29 = _t__stall_fsm___pip_1598_1_29 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_29 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 30
(* full_case *)
case (_q__idx_fsm___pip_1598_1_30)
1: begin
// __stage___block_647
// var inits
_t___stage___block_647_d_x = 0;
_t___stage___block_647_d_y = 0;
// --
_t___stage___block_647_a_x = _q___pip_1598_1_30___stage___block_8_p_x<0 ? -_q___pip_1598_1_30___stage___block_8_p_x:_q___pip_1598_1_30___stage___block_8_p_x;

_t___stage___block_647_a_y = _q___pip_1598_1_30___stage___block_8_p_y<0 ? -_q___pip_1598_1_30___stage___block_8_p_y:_q___pip_1598_1_30___stage___block_8_p_y;

_t___stage___block_647_len_sq = $signed(_t___stage___block_647_a_y>_t___stage___block_647_a_x ? _t___stage___block_647_a_y:_t___stage___block_647_a_x)-$signed(24'd128);

_t___stage___block_647_len_brd = 24'd260-$signed(_t___stage___block_647_a_y>_t___stage___block_647_a_x ? _t___stage___block_647_a_y:_t___stage___block_647_a_x);

_t___stage___block_647_onsq = _t___stage___block_647_len_sq<_t___stage___block_647_len_brd;

_t___stage___block_647_len = _t___stage___block_647_onsq ? _t___stage___block_647_len_sq:_t___stage___block_647_len_brd;

_t___stage___block_647_rnd = _w_rng30_rnd;

if (_t___stage___block_647_rnd[11+:1]) begin
// __block_648
// __block_650
_t___stage___block_647_d_x = _t___stage___block_647_rnd[10+:1] ? -_t___stage___block_647_len+1:_t___stage___block_647_len-1;

_t___stage___block_647_d_y = _t___stage___block_647_rnd[9+:1] ? (($signed(_t___stage___block_647_rnd[0+:8])*_t___stage___block_647_len)>>>8):-(($signed(_t___stage___block_647_rnd[0+:8])*_t___stage___block_647_len)>>>8);

// __block_651
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_649
// __block_652
_t___stage___block_647_d_y = _t___stage___block_647_rnd[10+:1] ? -_t___stage___block_647_len+1:_t___stage___block_647_len-1;

_t___stage___block_647_d_x = _t___stage___block_647_rnd[9+:1] ? (($signed(_t___stage___block_647_rnd[0+:8])*_t___stage___block_647_len)>>>8):-(($signed(_t___stage___block_647_rnd[0+:8])*_t___stage___block_647_len)>>>8);

// __block_653
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_654
_t___block_654_side = (_q___pip_1598_1_30___stage___block_8_p_x+_q___pip_1598_1_30___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_654_checker = (_q___pip_1598_1_30___stage___block_8_p_x[6+:1]^_q___pip_1598_1_30___stage___block_8_p_y[6+:1]);

if (_t___stage___block_647_len>-2&&_t___stage___block_647_len<2) begin
// __block_655
// __block_657
_d___pip_1598_1_30___stage___block_8_num = _q___pip_1598_1_30___stage___block_8_num+1;

if (_t___stage___block_647_onsq) begin
// __block_658
// __block_660
_d___pip_1598_1_30___stage___block_8_accum_r = _q___pip_1598_1_30___stage___block_8_accum_r+3;

_d___pip_1598_1_30___stage___block_8_accum_g = _q___pip_1598_1_30___stage___block_8_accum_g+(_t___block_654_side ? 3:0);

_d___pip_1598_1_30___stage___block_8_accum_b = _q___pip_1598_1_30___stage___block_8_accum_b+(_t___block_654_side ? 3:0);

// __block_661
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_659
// __block_662
_d___pip_1598_1_30___stage___block_8_accum_r = _q___pip_1598_1_30___stage___block_8_accum_r+(_t___block_654_checker ? 1:0);

_d___pip_1598_1_30___stage___block_8_accum_g = _q___pip_1598_1_30___stage___block_8_accum_g+(_t___block_654_checker ? 1:0);

_d___pip_1598_1_30___stage___block_8_accum_b = _q___pip_1598_1_30___stage___block_8_accum_b+(_t___block_654_checker ? 1:0);

// __block_663
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_664
_d___pip_1598_1_30___stage___block_8_p_x = _q___pip_1598_1_30___stage___block_8_q_x;

_d___pip_1598_1_30___stage___block_8_p_y = _q___pip_1598_1_30___stage___block_8_q_y;

// __block_665
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_656
// __block_666
_d___pip_1598_1_30___stage___block_8_p_x = _q___pip_1598_1_30___stage___block_8_p_x+_t___stage___block_647_d_x;

_d___pip_1598_1_30___stage___block_8_p_y = _q___pip_1598_1_30___stage___block_8_p_y+_t___stage___block_647_d_y;

// __block_667
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_668
// end of pipeline stage
_d__full_fsm___pip_1598_1_30 = 1;
_d__idx_fsm___pip_1598_1_30 = _t__stall_fsm___pip_1598_1_30 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_30 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 31
(* full_case *)
case (_q__idx_fsm___pip_1598_1_31)
1: begin
// __stage___block_669
// var inits
_t___stage___block_669_d_x = 0;
_t___stage___block_669_d_y = 0;
// --
_t___stage___block_669_a_x = _q___pip_1598_1_31___stage___block_8_p_x<0 ? -_q___pip_1598_1_31___stage___block_8_p_x:_q___pip_1598_1_31___stage___block_8_p_x;

_t___stage___block_669_a_y = _q___pip_1598_1_31___stage___block_8_p_y<0 ? -_q___pip_1598_1_31___stage___block_8_p_y:_q___pip_1598_1_31___stage___block_8_p_y;

_t___stage___block_669_len_sq = $signed(_t___stage___block_669_a_y>_t___stage___block_669_a_x ? _t___stage___block_669_a_y:_t___stage___block_669_a_x)-$signed(24'd128);

_t___stage___block_669_len_brd = 24'd260-$signed(_t___stage___block_669_a_y>_t___stage___block_669_a_x ? _t___stage___block_669_a_y:_t___stage___block_669_a_x);

_t___stage___block_669_onsq = _t___stage___block_669_len_sq<_t___stage___block_669_len_brd;

_t___stage___block_669_len = _t___stage___block_669_onsq ? _t___stage___block_669_len_sq:_t___stage___block_669_len_brd;

_t___stage___block_669_rnd = _w_rng31_rnd;

if (_t___stage___block_669_rnd[11+:1]) begin
// __block_670
// __block_672
_t___stage___block_669_d_x = _t___stage___block_669_rnd[10+:1] ? -_t___stage___block_669_len+1:_t___stage___block_669_len-1;

_t___stage___block_669_d_y = _t___stage___block_669_rnd[9+:1] ? (($signed(_t___stage___block_669_rnd[0+:8])*_t___stage___block_669_len)>>>8):-(($signed(_t___stage___block_669_rnd[0+:8])*_t___stage___block_669_len)>>>8);

// __block_673
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_671
// __block_674
_t___stage___block_669_d_y = _t___stage___block_669_rnd[10+:1] ? -_t___stage___block_669_len+1:_t___stage___block_669_len-1;

_t___stage___block_669_d_x = _t___stage___block_669_rnd[9+:1] ? (($signed(_t___stage___block_669_rnd[0+:8])*_t___stage___block_669_len)>>>8):-(($signed(_t___stage___block_669_rnd[0+:8])*_t___stage___block_669_len)>>>8);

// __block_675
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_676
_t___block_676_side = (_q___pip_1598_1_31___stage___block_8_p_x+_q___pip_1598_1_31___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_676_checker = (_q___pip_1598_1_31___stage___block_8_p_x[6+:1]^_q___pip_1598_1_31___stage___block_8_p_y[6+:1]);

if (_t___stage___block_669_len>-2&&_t___stage___block_669_len<2) begin
// __block_677
// __block_679
_d___pip_1598_1_31___stage___block_8_num = _q___pip_1598_1_31___stage___block_8_num+1;

if (_t___stage___block_669_onsq) begin
// __block_680
// __block_682
_d___pip_1598_1_31___stage___block_8_accum_r = _q___pip_1598_1_31___stage___block_8_accum_r+3;

_d___pip_1598_1_31___stage___block_8_accum_g = _q___pip_1598_1_31___stage___block_8_accum_g+(_t___block_676_side ? 3:0);

_d___pip_1598_1_31___stage___block_8_accum_b = _q___pip_1598_1_31___stage___block_8_accum_b+(_t___block_676_side ? 3:0);

// __block_683
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_681
// __block_684
_d___pip_1598_1_31___stage___block_8_accum_r = _q___pip_1598_1_31___stage___block_8_accum_r+(_t___block_676_checker ? 1:0);

_d___pip_1598_1_31___stage___block_8_accum_g = _q___pip_1598_1_31___stage___block_8_accum_g+(_t___block_676_checker ? 1:0);

_d___pip_1598_1_31___stage___block_8_accum_b = _q___pip_1598_1_31___stage___block_8_accum_b+(_t___block_676_checker ? 1:0);

// __block_685
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_686
_d___pip_1598_1_31___stage___block_8_p_x = _q___pip_1598_1_31___stage___block_8_q_x;

_d___pip_1598_1_31___stage___block_8_p_y = _q___pip_1598_1_31___stage___block_8_q_y;

// __block_687
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_678
// __block_688
_d___pip_1598_1_31___stage___block_8_p_x = _q___pip_1598_1_31___stage___block_8_p_x+_t___stage___block_669_d_x;

_d___pip_1598_1_31___stage___block_8_p_y = _q___pip_1598_1_31___stage___block_8_p_y+_t___stage___block_669_d_y;

// __block_689
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_690
// end of pipeline stage
_d__full_fsm___pip_1598_1_31 = 1;
_d__idx_fsm___pip_1598_1_31 = _t__stall_fsm___pip_1598_1_31 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_31 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 32
(* full_case *)
case (_q__idx_fsm___pip_1598_1_32)
1: begin
// __stage___block_691
// var inits
_t___stage___block_691_d_x = 0;
_t___stage___block_691_d_y = 0;
// --
_t___stage___block_691_a_x = _q___pip_1598_1_32___stage___block_8_p_x<0 ? -_q___pip_1598_1_32___stage___block_8_p_x:_q___pip_1598_1_32___stage___block_8_p_x;

_t___stage___block_691_a_y = _q___pip_1598_1_32___stage___block_8_p_y<0 ? -_q___pip_1598_1_32___stage___block_8_p_y:_q___pip_1598_1_32___stage___block_8_p_y;

_t___stage___block_691_len_sq = $signed(_t___stage___block_691_a_y>_t___stage___block_691_a_x ? _t___stage___block_691_a_y:_t___stage___block_691_a_x)-$signed(24'd128);

_t___stage___block_691_len_brd = 24'd260-$signed(_t___stage___block_691_a_y>_t___stage___block_691_a_x ? _t___stage___block_691_a_y:_t___stage___block_691_a_x);

_t___stage___block_691_onsq = _t___stage___block_691_len_sq<_t___stage___block_691_len_brd;

_t___stage___block_691_len = _t___stage___block_691_onsq ? _t___stage___block_691_len_sq:_t___stage___block_691_len_brd;

_t___stage___block_691_rnd = _w_rng32_rnd;

if (_t___stage___block_691_rnd[11+:1]) begin
// __block_692
// __block_694
_t___stage___block_691_d_x = _t___stage___block_691_rnd[10+:1] ? -_t___stage___block_691_len+1:_t___stage___block_691_len-1;

_t___stage___block_691_d_y = _t___stage___block_691_rnd[9+:1] ? (($signed(_t___stage___block_691_rnd[0+:8])*_t___stage___block_691_len)>>>8):-(($signed(_t___stage___block_691_rnd[0+:8])*_t___stage___block_691_len)>>>8);

// __block_695
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_693
// __block_696
_t___stage___block_691_d_y = _t___stage___block_691_rnd[10+:1] ? -_t___stage___block_691_len+1:_t___stage___block_691_len-1;

_t___stage___block_691_d_x = _t___stage___block_691_rnd[9+:1] ? (($signed(_t___stage___block_691_rnd[0+:8])*_t___stage___block_691_len)>>>8):-(($signed(_t___stage___block_691_rnd[0+:8])*_t___stage___block_691_len)>>>8);

// __block_697
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_698
_t___block_698_side = (_q___pip_1598_1_32___stage___block_8_p_x+_q___pip_1598_1_32___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_698_checker = (_q___pip_1598_1_32___stage___block_8_p_x[6+:1]^_q___pip_1598_1_32___stage___block_8_p_y[6+:1]);

if (_t___stage___block_691_len>-2&&_t___stage___block_691_len<2) begin
// __block_699
// __block_701
_d___pip_1598_1_32___stage___block_8_num = _q___pip_1598_1_32___stage___block_8_num+1;

if (_t___stage___block_691_onsq) begin
// __block_702
// __block_704
_d___pip_1598_1_32___stage___block_8_accum_r = _q___pip_1598_1_32___stage___block_8_accum_r+3;

_d___pip_1598_1_32___stage___block_8_accum_g = _q___pip_1598_1_32___stage___block_8_accum_g+(_t___block_698_side ? 3:0);

_d___pip_1598_1_32___stage___block_8_accum_b = _q___pip_1598_1_32___stage___block_8_accum_b+(_t___block_698_side ? 3:0);

// __block_705
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_703
// __block_706
_d___pip_1598_1_32___stage___block_8_accum_r = _q___pip_1598_1_32___stage___block_8_accum_r+(_t___block_698_checker ? 1:0);

_d___pip_1598_1_32___stage___block_8_accum_g = _q___pip_1598_1_32___stage___block_8_accum_g+(_t___block_698_checker ? 1:0);

_d___pip_1598_1_32___stage___block_8_accum_b = _q___pip_1598_1_32___stage___block_8_accum_b+(_t___block_698_checker ? 1:0);

// __block_707
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_708
_d___pip_1598_1_32___stage___block_8_p_x = _q___pip_1598_1_32___stage___block_8_q_x;

_d___pip_1598_1_32___stage___block_8_p_y = _q___pip_1598_1_32___stage___block_8_q_y;

// __block_709
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_700
// __block_710
_d___pip_1598_1_32___stage___block_8_p_x = _q___pip_1598_1_32___stage___block_8_p_x+_t___stage___block_691_d_x;

_d___pip_1598_1_32___stage___block_8_p_y = _q___pip_1598_1_32___stage___block_8_p_y+_t___stage___block_691_d_y;

// __block_711
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_712
// end of pipeline stage
_d__full_fsm___pip_1598_1_32 = 1;
_d__idx_fsm___pip_1598_1_32 = _t__stall_fsm___pip_1598_1_32 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_32 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 33
(* full_case *)
case (_q__idx_fsm___pip_1598_1_33)
1: begin
// __stage___block_713
// var inits
_t___stage___block_713_d_x = 0;
_t___stage___block_713_d_y = 0;
// --
_t___stage___block_713_a_x = _q___pip_1598_1_33___stage___block_8_p_x<0 ? -_q___pip_1598_1_33___stage___block_8_p_x:_q___pip_1598_1_33___stage___block_8_p_x;

_t___stage___block_713_a_y = _q___pip_1598_1_33___stage___block_8_p_y<0 ? -_q___pip_1598_1_33___stage___block_8_p_y:_q___pip_1598_1_33___stage___block_8_p_y;

_t___stage___block_713_len_sq = $signed(_t___stage___block_713_a_y>_t___stage___block_713_a_x ? _t___stage___block_713_a_y:_t___stage___block_713_a_x)-$signed(24'd128);

_t___stage___block_713_len_brd = 24'd260-$signed(_t___stage___block_713_a_y>_t___stage___block_713_a_x ? _t___stage___block_713_a_y:_t___stage___block_713_a_x);

_t___stage___block_713_onsq = _t___stage___block_713_len_sq<_t___stage___block_713_len_brd;

_t___stage___block_713_len = _t___stage___block_713_onsq ? _t___stage___block_713_len_sq:_t___stage___block_713_len_brd;

_t___stage___block_713_rnd = _w_rng33_rnd;

if (_t___stage___block_713_rnd[11+:1]) begin
// __block_714
// __block_716
_t___stage___block_713_d_x = _t___stage___block_713_rnd[10+:1] ? -_t___stage___block_713_len+1:_t___stage___block_713_len-1;

_t___stage___block_713_d_y = _t___stage___block_713_rnd[9+:1] ? (($signed(_t___stage___block_713_rnd[0+:8])*_t___stage___block_713_len)>>>8):-(($signed(_t___stage___block_713_rnd[0+:8])*_t___stage___block_713_len)>>>8);

// __block_717
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_715
// __block_718
_t___stage___block_713_d_y = _t___stage___block_713_rnd[10+:1] ? -_t___stage___block_713_len+1:_t___stage___block_713_len-1;

_t___stage___block_713_d_x = _t___stage___block_713_rnd[9+:1] ? (($signed(_t___stage___block_713_rnd[0+:8])*_t___stage___block_713_len)>>>8):-(($signed(_t___stage___block_713_rnd[0+:8])*_t___stage___block_713_len)>>>8);

// __block_719
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_720
_t___block_720_side = (_q___pip_1598_1_33___stage___block_8_p_x+_q___pip_1598_1_33___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_720_checker = (_q___pip_1598_1_33___stage___block_8_p_x[6+:1]^_q___pip_1598_1_33___stage___block_8_p_y[6+:1]);

if (_t___stage___block_713_len>-2&&_t___stage___block_713_len<2) begin
// __block_721
// __block_723
_d___pip_1598_1_33___stage___block_8_num = _q___pip_1598_1_33___stage___block_8_num+1;

if (_t___stage___block_713_onsq) begin
// __block_724
// __block_726
_d___pip_1598_1_33___stage___block_8_accum_r = _q___pip_1598_1_33___stage___block_8_accum_r+3;

_d___pip_1598_1_33___stage___block_8_accum_g = _q___pip_1598_1_33___stage___block_8_accum_g+(_t___block_720_side ? 3:0);

_d___pip_1598_1_33___stage___block_8_accum_b = _q___pip_1598_1_33___stage___block_8_accum_b+(_t___block_720_side ? 3:0);

// __block_727
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_725
// __block_728
_d___pip_1598_1_33___stage___block_8_accum_r = _q___pip_1598_1_33___stage___block_8_accum_r+(_t___block_720_checker ? 1:0);

_d___pip_1598_1_33___stage___block_8_accum_g = _q___pip_1598_1_33___stage___block_8_accum_g+(_t___block_720_checker ? 1:0);

_d___pip_1598_1_33___stage___block_8_accum_b = _q___pip_1598_1_33___stage___block_8_accum_b+(_t___block_720_checker ? 1:0);

// __block_729
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_730
_d___pip_1598_1_33___stage___block_8_p_x = _q___pip_1598_1_33___stage___block_8_q_x;

_d___pip_1598_1_33___stage___block_8_p_y = _q___pip_1598_1_33___stage___block_8_q_y;

// __block_731
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_722
// __block_732
_d___pip_1598_1_33___stage___block_8_p_x = _q___pip_1598_1_33___stage___block_8_p_x+_t___stage___block_713_d_x;

_d___pip_1598_1_33___stage___block_8_p_y = _q___pip_1598_1_33___stage___block_8_p_y+_t___stage___block_713_d_y;

// __block_733
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_734
// end of pipeline stage
_d__full_fsm___pip_1598_1_33 = 1;
_d__idx_fsm___pip_1598_1_33 = _t__stall_fsm___pip_1598_1_33 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_33 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 34
(* full_case *)
case (_q__idx_fsm___pip_1598_1_34)
1: begin
// __stage___block_735
// var inits
_t___stage___block_735_d_x = 0;
_t___stage___block_735_d_y = 0;
// --
_t___stage___block_735_a_x = _q___pip_1598_1_34___stage___block_8_p_x<0 ? -_q___pip_1598_1_34___stage___block_8_p_x:_q___pip_1598_1_34___stage___block_8_p_x;

_t___stage___block_735_a_y = _q___pip_1598_1_34___stage___block_8_p_y<0 ? -_q___pip_1598_1_34___stage___block_8_p_y:_q___pip_1598_1_34___stage___block_8_p_y;

_t___stage___block_735_len_sq = $signed(_t___stage___block_735_a_y>_t___stage___block_735_a_x ? _t___stage___block_735_a_y:_t___stage___block_735_a_x)-$signed(24'd128);

_t___stage___block_735_len_brd = 24'd260-$signed(_t___stage___block_735_a_y>_t___stage___block_735_a_x ? _t___stage___block_735_a_y:_t___stage___block_735_a_x);

_t___stage___block_735_onsq = _t___stage___block_735_len_sq<_t___stage___block_735_len_brd;

_t___stage___block_735_len = _t___stage___block_735_onsq ? _t___stage___block_735_len_sq:_t___stage___block_735_len_brd;

_t___stage___block_735_rnd = _w_rng34_rnd;

if (_t___stage___block_735_rnd[11+:1]) begin
// __block_736
// __block_738
_t___stage___block_735_d_x = _t___stage___block_735_rnd[10+:1] ? -_t___stage___block_735_len+1:_t___stage___block_735_len-1;

_t___stage___block_735_d_y = _t___stage___block_735_rnd[9+:1] ? (($signed(_t___stage___block_735_rnd[0+:8])*_t___stage___block_735_len)>>>8):-(($signed(_t___stage___block_735_rnd[0+:8])*_t___stage___block_735_len)>>>8);

// __block_739
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_737
// __block_740
_t___stage___block_735_d_y = _t___stage___block_735_rnd[10+:1] ? -_t___stage___block_735_len+1:_t___stage___block_735_len-1;

_t___stage___block_735_d_x = _t___stage___block_735_rnd[9+:1] ? (($signed(_t___stage___block_735_rnd[0+:8])*_t___stage___block_735_len)>>>8):-(($signed(_t___stage___block_735_rnd[0+:8])*_t___stage___block_735_len)>>>8);

// __block_741
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_742
_t___block_742_side = (_q___pip_1598_1_34___stage___block_8_p_x+_q___pip_1598_1_34___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_742_checker = (_q___pip_1598_1_34___stage___block_8_p_x[6+:1]^_q___pip_1598_1_34___stage___block_8_p_y[6+:1]);

if (_t___stage___block_735_len>-2&&_t___stage___block_735_len<2) begin
// __block_743
// __block_745
_d___pip_1598_1_34___stage___block_8_num = _q___pip_1598_1_34___stage___block_8_num+1;

if (_t___stage___block_735_onsq) begin
// __block_746
// __block_748
_d___pip_1598_1_34___stage___block_8_accum_r = _q___pip_1598_1_34___stage___block_8_accum_r+3;

_d___pip_1598_1_34___stage___block_8_accum_g = _q___pip_1598_1_34___stage___block_8_accum_g+(_t___block_742_side ? 3:0);

_d___pip_1598_1_34___stage___block_8_accum_b = _q___pip_1598_1_34___stage___block_8_accum_b+(_t___block_742_side ? 3:0);

// __block_749
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_747
// __block_750
_d___pip_1598_1_34___stage___block_8_accum_r = _q___pip_1598_1_34___stage___block_8_accum_r+(_t___block_742_checker ? 1:0);

_d___pip_1598_1_34___stage___block_8_accum_g = _q___pip_1598_1_34___stage___block_8_accum_g+(_t___block_742_checker ? 1:0);

_d___pip_1598_1_34___stage___block_8_accum_b = _q___pip_1598_1_34___stage___block_8_accum_b+(_t___block_742_checker ? 1:0);

// __block_751
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_752
_d___pip_1598_1_34___stage___block_8_p_x = _q___pip_1598_1_34___stage___block_8_q_x;

_d___pip_1598_1_34___stage___block_8_p_y = _q___pip_1598_1_34___stage___block_8_q_y;

// __block_753
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_744
// __block_754
_d___pip_1598_1_34___stage___block_8_p_x = _q___pip_1598_1_34___stage___block_8_p_x+_t___stage___block_735_d_x;

_d___pip_1598_1_34___stage___block_8_p_y = _q___pip_1598_1_34___stage___block_8_p_y+_t___stage___block_735_d_y;

// __block_755
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_756
// end of pipeline stage
_d__full_fsm___pip_1598_1_34 = 1;
_d__idx_fsm___pip_1598_1_34 = _t__stall_fsm___pip_1598_1_34 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_34 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 35
(* full_case *)
case (_q__idx_fsm___pip_1598_1_35)
1: begin
// __stage___block_757
// var inits
_t___stage___block_757_d_x = 0;
_t___stage___block_757_d_y = 0;
// --
_t___stage___block_757_a_x = _q___pip_1598_1_35___stage___block_8_p_x<0 ? -_q___pip_1598_1_35___stage___block_8_p_x:_q___pip_1598_1_35___stage___block_8_p_x;

_t___stage___block_757_a_y = _q___pip_1598_1_35___stage___block_8_p_y<0 ? -_q___pip_1598_1_35___stage___block_8_p_y:_q___pip_1598_1_35___stage___block_8_p_y;

_t___stage___block_757_len_sq = $signed(_t___stage___block_757_a_y>_t___stage___block_757_a_x ? _t___stage___block_757_a_y:_t___stage___block_757_a_x)-$signed(24'd128);

_t___stage___block_757_len_brd = 24'd260-$signed(_t___stage___block_757_a_y>_t___stage___block_757_a_x ? _t___stage___block_757_a_y:_t___stage___block_757_a_x);

_t___stage___block_757_onsq = _t___stage___block_757_len_sq<_t___stage___block_757_len_brd;

_t___stage___block_757_len = _t___stage___block_757_onsq ? _t___stage___block_757_len_sq:_t___stage___block_757_len_brd;

_t___stage___block_757_rnd = _w_rng35_rnd;

if (_t___stage___block_757_rnd[11+:1]) begin
// __block_758
// __block_760
_t___stage___block_757_d_x = _t___stage___block_757_rnd[10+:1] ? -_t___stage___block_757_len+1:_t___stage___block_757_len-1;

_t___stage___block_757_d_y = _t___stage___block_757_rnd[9+:1] ? (($signed(_t___stage___block_757_rnd[0+:8])*_t___stage___block_757_len)>>>8):-(($signed(_t___stage___block_757_rnd[0+:8])*_t___stage___block_757_len)>>>8);

// __block_761
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_759
// __block_762
_t___stage___block_757_d_y = _t___stage___block_757_rnd[10+:1] ? -_t___stage___block_757_len+1:_t___stage___block_757_len-1;

_t___stage___block_757_d_x = _t___stage___block_757_rnd[9+:1] ? (($signed(_t___stage___block_757_rnd[0+:8])*_t___stage___block_757_len)>>>8):-(($signed(_t___stage___block_757_rnd[0+:8])*_t___stage___block_757_len)>>>8);

// __block_763
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_764
_t___block_764_side = (_q___pip_1598_1_35___stage___block_8_p_x+_q___pip_1598_1_35___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_764_checker = (_q___pip_1598_1_35___stage___block_8_p_x[6+:1]^_q___pip_1598_1_35___stage___block_8_p_y[6+:1]);

if (_t___stage___block_757_len>-2&&_t___stage___block_757_len<2) begin
// __block_765
// __block_767
_d___pip_1598_1_35___stage___block_8_num = _q___pip_1598_1_35___stage___block_8_num+1;

if (_t___stage___block_757_onsq) begin
// __block_768
// __block_770
_d___pip_1598_1_35___stage___block_8_accum_r = _q___pip_1598_1_35___stage___block_8_accum_r+3;

_d___pip_1598_1_35___stage___block_8_accum_g = _q___pip_1598_1_35___stage___block_8_accum_g+(_t___block_764_side ? 3:0);

_d___pip_1598_1_35___stage___block_8_accum_b = _q___pip_1598_1_35___stage___block_8_accum_b+(_t___block_764_side ? 3:0);

// __block_771
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_769
// __block_772
_d___pip_1598_1_35___stage___block_8_accum_r = _q___pip_1598_1_35___stage___block_8_accum_r+(_t___block_764_checker ? 1:0);

_d___pip_1598_1_35___stage___block_8_accum_g = _q___pip_1598_1_35___stage___block_8_accum_g+(_t___block_764_checker ? 1:0);

_d___pip_1598_1_35___stage___block_8_accum_b = _q___pip_1598_1_35___stage___block_8_accum_b+(_t___block_764_checker ? 1:0);

// __block_773
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_774
_d___pip_1598_1_35___stage___block_8_p_x = _q___pip_1598_1_35___stage___block_8_q_x;

_d___pip_1598_1_35___stage___block_8_p_y = _q___pip_1598_1_35___stage___block_8_q_y;

// __block_775
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_766
// __block_776
_d___pip_1598_1_35___stage___block_8_p_x = _q___pip_1598_1_35___stage___block_8_p_x+_t___stage___block_757_d_x;

_d___pip_1598_1_35___stage___block_8_p_y = _q___pip_1598_1_35___stage___block_8_p_y+_t___stage___block_757_d_y;

// __block_777
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_778
// end of pipeline stage
_d__full_fsm___pip_1598_1_35 = 1;
_d__idx_fsm___pip_1598_1_35 = _t__stall_fsm___pip_1598_1_35 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_35 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 36
(* full_case *)
case (_q__idx_fsm___pip_1598_1_36)
1: begin
// __stage___block_779
// var inits
_t___stage___block_779_d_x = 0;
_t___stage___block_779_d_y = 0;
// --
_t___stage___block_779_a_x = _q___pip_1598_1_36___stage___block_8_p_x<0 ? -_q___pip_1598_1_36___stage___block_8_p_x:_q___pip_1598_1_36___stage___block_8_p_x;

_t___stage___block_779_a_y = _q___pip_1598_1_36___stage___block_8_p_y<0 ? -_q___pip_1598_1_36___stage___block_8_p_y:_q___pip_1598_1_36___stage___block_8_p_y;

_t___stage___block_779_len_sq = $signed(_t___stage___block_779_a_y>_t___stage___block_779_a_x ? _t___stage___block_779_a_y:_t___stage___block_779_a_x)-$signed(24'd128);

_t___stage___block_779_len_brd = 24'd260-$signed(_t___stage___block_779_a_y>_t___stage___block_779_a_x ? _t___stage___block_779_a_y:_t___stage___block_779_a_x);

_t___stage___block_779_onsq = _t___stage___block_779_len_sq<_t___stage___block_779_len_brd;

_t___stage___block_779_len = _t___stage___block_779_onsq ? _t___stage___block_779_len_sq:_t___stage___block_779_len_brd;

_t___stage___block_779_rnd = _w_rng36_rnd;

if (_t___stage___block_779_rnd[11+:1]) begin
// __block_780
// __block_782
_t___stage___block_779_d_x = _t___stage___block_779_rnd[10+:1] ? -_t___stage___block_779_len+1:_t___stage___block_779_len-1;

_t___stage___block_779_d_y = _t___stage___block_779_rnd[9+:1] ? (($signed(_t___stage___block_779_rnd[0+:8])*_t___stage___block_779_len)>>>8):-(($signed(_t___stage___block_779_rnd[0+:8])*_t___stage___block_779_len)>>>8);

// __block_783
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_781
// __block_784
_t___stage___block_779_d_y = _t___stage___block_779_rnd[10+:1] ? -_t___stage___block_779_len+1:_t___stage___block_779_len-1;

_t___stage___block_779_d_x = _t___stage___block_779_rnd[9+:1] ? (($signed(_t___stage___block_779_rnd[0+:8])*_t___stage___block_779_len)>>>8):-(($signed(_t___stage___block_779_rnd[0+:8])*_t___stage___block_779_len)>>>8);

// __block_785
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_786
_t___block_786_side = (_q___pip_1598_1_36___stage___block_8_p_x+_q___pip_1598_1_36___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_786_checker = (_q___pip_1598_1_36___stage___block_8_p_x[6+:1]^_q___pip_1598_1_36___stage___block_8_p_y[6+:1]);

if (_t___stage___block_779_len>-2&&_t___stage___block_779_len<2) begin
// __block_787
// __block_789
_d___pip_1598_1_36___stage___block_8_num = _q___pip_1598_1_36___stage___block_8_num+1;

if (_t___stage___block_779_onsq) begin
// __block_790
// __block_792
_d___pip_1598_1_36___stage___block_8_accum_r = _q___pip_1598_1_36___stage___block_8_accum_r+3;

_d___pip_1598_1_36___stage___block_8_accum_g = _q___pip_1598_1_36___stage___block_8_accum_g+(_t___block_786_side ? 3:0);

_d___pip_1598_1_36___stage___block_8_accum_b = _q___pip_1598_1_36___stage___block_8_accum_b+(_t___block_786_side ? 3:0);

// __block_793
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_791
// __block_794
_d___pip_1598_1_36___stage___block_8_accum_r = _q___pip_1598_1_36___stage___block_8_accum_r+(_t___block_786_checker ? 1:0);

_d___pip_1598_1_36___stage___block_8_accum_g = _q___pip_1598_1_36___stage___block_8_accum_g+(_t___block_786_checker ? 1:0);

_d___pip_1598_1_36___stage___block_8_accum_b = _q___pip_1598_1_36___stage___block_8_accum_b+(_t___block_786_checker ? 1:0);

// __block_795
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_796
_d___pip_1598_1_36___stage___block_8_p_x = _q___pip_1598_1_36___stage___block_8_q_x;

_d___pip_1598_1_36___stage___block_8_p_y = _q___pip_1598_1_36___stage___block_8_q_y;

// __block_797
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_788
// __block_798
_d___pip_1598_1_36___stage___block_8_p_x = _q___pip_1598_1_36___stage___block_8_p_x+_t___stage___block_779_d_x;

_d___pip_1598_1_36___stage___block_8_p_y = _q___pip_1598_1_36___stage___block_8_p_y+_t___stage___block_779_d_y;

// __block_799
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_800
// end of pipeline stage
_d__full_fsm___pip_1598_1_36 = 1;
_d__idx_fsm___pip_1598_1_36 = _t__stall_fsm___pip_1598_1_36 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_36 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 37
(* full_case *)
case (_q__idx_fsm___pip_1598_1_37)
1: begin
// __stage___block_801
// var inits
_t___stage___block_801_d_x = 0;
_t___stage___block_801_d_y = 0;
// --
_t___stage___block_801_a_x = _q___pip_1598_1_37___stage___block_8_p_x<0 ? -_q___pip_1598_1_37___stage___block_8_p_x:_q___pip_1598_1_37___stage___block_8_p_x;

_t___stage___block_801_a_y = _q___pip_1598_1_37___stage___block_8_p_y<0 ? -_q___pip_1598_1_37___stage___block_8_p_y:_q___pip_1598_1_37___stage___block_8_p_y;

_t___stage___block_801_len_sq = $signed(_t___stage___block_801_a_y>_t___stage___block_801_a_x ? _t___stage___block_801_a_y:_t___stage___block_801_a_x)-$signed(24'd128);

_t___stage___block_801_len_brd = 24'd260-$signed(_t___stage___block_801_a_y>_t___stage___block_801_a_x ? _t___stage___block_801_a_y:_t___stage___block_801_a_x);

_t___stage___block_801_onsq = _t___stage___block_801_len_sq<_t___stage___block_801_len_brd;

_t___stage___block_801_len = _t___stage___block_801_onsq ? _t___stage___block_801_len_sq:_t___stage___block_801_len_brd;

_t___stage___block_801_rnd = _w_rng37_rnd;

if (_t___stage___block_801_rnd[11+:1]) begin
// __block_802
// __block_804
_t___stage___block_801_d_x = _t___stage___block_801_rnd[10+:1] ? -_t___stage___block_801_len+1:_t___stage___block_801_len-1;

_t___stage___block_801_d_y = _t___stage___block_801_rnd[9+:1] ? (($signed(_t___stage___block_801_rnd[0+:8])*_t___stage___block_801_len)>>>8):-(($signed(_t___stage___block_801_rnd[0+:8])*_t___stage___block_801_len)>>>8);

// __block_805
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_803
// __block_806
_t___stage___block_801_d_y = _t___stage___block_801_rnd[10+:1] ? -_t___stage___block_801_len+1:_t___stage___block_801_len-1;

_t___stage___block_801_d_x = _t___stage___block_801_rnd[9+:1] ? (($signed(_t___stage___block_801_rnd[0+:8])*_t___stage___block_801_len)>>>8):-(($signed(_t___stage___block_801_rnd[0+:8])*_t___stage___block_801_len)>>>8);

// __block_807
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_808
_t___block_808_side = (_q___pip_1598_1_37___stage___block_8_p_x+_q___pip_1598_1_37___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_808_checker = (_q___pip_1598_1_37___stage___block_8_p_x[6+:1]^_q___pip_1598_1_37___stage___block_8_p_y[6+:1]);

if (_t___stage___block_801_len>-2&&_t___stage___block_801_len<2) begin
// __block_809
// __block_811
_d___pip_1598_1_37___stage___block_8_num = _q___pip_1598_1_37___stage___block_8_num+1;

if (_t___stage___block_801_onsq) begin
// __block_812
// __block_814
_d___pip_1598_1_37___stage___block_8_accum_r = _q___pip_1598_1_37___stage___block_8_accum_r+3;

_d___pip_1598_1_37___stage___block_8_accum_g = _q___pip_1598_1_37___stage___block_8_accum_g+(_t___block_808_side ? 3:0);

_d___pip_1598_1_37___stage___block_8_accum_b = _q___pip_1598_1_37___stage___block_8_accum_b+(_t___block_808_side ? 3:0);

// __block_815
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_813
// __block_816
_d___pip_1598_1_37___stage___block_8_accum_r = _q___pip_1598_1_37___stage___block_8_accum_r+(_t___block_808_checker ? 1:0);

_d___pip_1598_1_37___stage___block_8_accum_g = _q___pip_1598_1_37___stage___block_8_accum_g+(_t___block_808_checker ? 1:0);

_d___pip_1598_1_37___stage___block_8_accum_b = _q___pip_1598_1_37___stage___block_8_accum_b+(_t___block_808_checker ? 1:0);

// __block_817
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_818
_d___pip_1598_1_37___stage___block_8_p_x = _q___pip_1598_1_37___stage___block_8_q_x;

_d___pip_1598_1_37___stage___block_8_p_y = _q___pip_1598_1_37___stage___block_8_q_y;

// __block_819
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_810
// __block_820
_d___pip_1598_1_37___stage___block_8_p_x = _q___pip_1598_1_37___stage___block_8_p_x+_t___stage___block_801_d_x;

_d___pip_1598_1_37___stage___block_8_p_y = _q___pip_1598_1_37___stage___block_8_p_y+_t___stage___block_801_d_y;

// __block_821
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_822
// end of pipeline stage
_d__full_fsm___pip_1598_1_37 = 1;
_d__idx_fsm___pip_1598_1_37 = _t__stall_fsm___pip_1598_1_37 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_37 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 38
(* full_case *)
case (_q__idx_fsm___pip_1598_1_38)
1: begin
// __stage___block_823
// var inits
_t___stage___block_823_d_x = 0;
_t___stage___block_823_d_y = 0;
// --
_t___stage___block_823_a_x = _q___pip_1598_1_38___stage___block_8_p_x<0 ? -_q___pip_1598_1_38___stage___block_8_p_x:_q___pip_1598_1_38___stage___block_8_p_x;

_t___stage___block_823_a_y = _q___pip_1598_1_38___stage___block_8_p_y<0 ? -_q___pip_1598_1_38___stage___block_8_p_y:_q___pip_1598_1_38___stage___block_8_p_y;

_t___stage___block_823_len_sq = $signed(_t___stage___block_823_a_y>_t___stage___block_823_a_x ? _t___stage___block_823_a_y:_t___stage___block_823_a_x)-$signed(24'd128);

_t___stage___block_823_len_brd = 24'd260-$signed(_t___stage___block_823_a_y>_t___stage___block_823_a_x ? _t___stage___block_823_a_y:_t___stage___block_823_a_x);

_t___stage___block_823_onsq = _t___stage___block_823_len_sq<_t___stage___block_823_len_brd;

_t___stage___block_823_len = _t___stage___block_823_onsq ? _t___stage___block_823_len_sq:_t___stage___block_823_len_brd;

_t___stage___block_823_rnd = _w_rng38_rnd;

if (_t___stage___block_823_rnd[11+:1]) begin
// __block_824
// __block_826
_t___stage___block_823_d_x = _t___stage___block_823_rnd[10+:1] ? -_t___stage___block_823_len+1:_t___stage___block_823_len-1;

_t___stage___block_823_d_y = _t___stage___block_823_rnd[9+:1] ? (($signed(_t___stage___block_823_rnd[0+:8])*_t___stage___block_823_len)>>>8):-(($signed(_t___stage___block_823_rnd[0+:8])*_t___stage___block_823_len)>>>8);

// __block_827
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_825
// __block_828
_t___stage___block_823_d_y = _t___stage___block_823_rnd[10+:1] ? -_t___stage___block_823_len+1:_t___stage___block_823_len-1;

_t___stage___block_823_d_x = _t___stage___block_823_rnd[9+:1] ? (($signed(_t___stage___block_823_rnd[0+:8])*_t___stage___block_823_len)>>>8):-(($signed(_t___stage___block_823_rnd[0+:8])*_t___stage___block_823_len)>>>8);

// __block_829
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_830
_t___block_830_side = (_q___pip_1598_1_38___stage___block_8_p_x+_q___pip_1598_1_38___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_830_checker = (_q___pip_1598_1_38___stage___block_8_p_x[6+:1]^_q___pip_1598_1_38___stage___block_8_p_y[6+:1]);

if (_t___stage___block_823_len>-2&&_t___stage___block_823_len<2) begin
// __block_831
// __block_833
_d___pip_1598_1_38___stage___block_8_num = _q___pip_1598_1_38___stage___block_8_num+1;

if (_t___stage___block_823_onsq) begin
// __block_834
// __block_836
_d___pip_1598_1_38___stage___block_8_accum_r = _q___pip_1598_1_38___stage___block_8_accum_r+3;

_d___pip_1598_1_38___stage___block_8_accum_g = _q___pip_1598_1_38___stage___block_8_accum_g+(_t___block_830_side ? 3:0);

_d___pip_1598_1_38___stage___block_8_accum_b = _q___pip_1598_1_38___stage___block_8_accum_b+(_t___block_830_side ? 3:0);

// __block_837
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_835
// __block_838
_d___pip_1598_1_38___stage___block_8_accum_r = _q___pip_1598_1_38___stage___block_8_accum_r+(_t___block_830_checker ? 1:0);

_d___pip_1598_1_38___stage___block_8_accum_g = _q___pip_1598_1_38___stage___block_8_accum_g+(_t___block_830_checker ? 1:0);

_d___pip_1598_1_38___stage___block_8_accum_b = _q___pip_1598_1_38___stage___block_8_accum_b+(_t___block_830_checker ? 1:0);

// __block_839
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_840
_d___pip_1598_1_38___stage___block_8_p_x = _q___pip_1598_1_38___stage___block_8_q_x;

_d___pip_1598_1_38___stage___block_8_p_y = _q___pip_1598_1_38___stage___block_8_q_y;

// __block_841
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_832
// __block_842
_d___pip_1598_1_38___stage___block_8_p_x = _q___pip_1598_1_38___stage___block_8_p_x+_t___stage___block_823_d_x;

_d___pip_1598_1_38___stage___block_8_p_y = _q___pip_1598_1_38___stage___block_8_p_y+_t___stage___block_823_d_y;

// __block_843
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_844
// end of pipeline stage
_d__full_fsm___pip_1598_1_38 = 1;
_d__idx_fsm___pip_1598_1_38 = _t__stall_fsm___pip_1598_1_38 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_38 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 39
(* full_case *)
case (_q__idx_fsm___pip_1598_1_39)
1: begin
// __stage___block_845
// var inits
_t___stage___block_845_d_x = 0;
_t___stage___block_845_d_y = 0;
// --
_t___stage___block_845_a_x = _q___pip_1598_1_39___stage___block_8_p_x<0 ? -_q___pip_1598_1_39___stage___block_8_p_x:_q___pip_1598_1_39___stage___block_8_p_x;

_t___stage___block_845_a_y = _q___pip_1598_1_39___stage___block_8_p_y<0 ? -_q___pip_1598_1_39___stage___block_8_p_y:_q___pip_1598_1_39___stage___block_8_p_y;

_t___stage___block_845_len_sq = $signed(_t___stage___block_845_a_y>_t___stage___block_845_a_x ? _t___stage___block_845_a_y:_t___stage___block_845_a_x)-$signed(24'd128);

_t___stage___block_845_len_brd = 24'd260-$signed(_t___stage___block_845_a_y>_t___stage___block_845_a_x ? _t___stage___block_845_a_y:_t___stage___block_845_a_x);

_t___stage___block_845_onsq = _t___stage___block_845_len_sq<_t___stage___block_845_len_brd;

_t___stage___block_845_len = _t___stage___block_845_onsq ? _t___stage___block_845_len_sq:_t___stage___block_845_len_brd;

_t___stage___block_845_rnd = _w_rng39_rnd;

if (_t___stage___block_845_rnd[11+:1]) begin
// __block_846
// __block_848
_t___stage___block_845_d_x = _t___stage___block_845_rnd[10+:1] ? -_t___stage___block_845_len+1:_t___stage___block_845_len-1;

_t___stage___block_845_d_y = _t___stage___block_845_rnd[9+:1] ? (($signed(_t___stage___block_845_rnd[0+:8])*_t___stage___block_845_len)>>>8):-(($signed(_t___stage___block_845_rnd[0+:8])*_t___stage___block_845_len)>>>8);

// __block_849
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_847
// __block_850
_t___stage___block_845_d_y = _t___stage___block_845_rnd[10+:1] ? -_t___stage___block_845_len+1:_t___stage___block_845_len-1;

_t___stage___block_845_d_x = _t___stage___block_845_rnd[9+:1] ? (($signed(_t___stage___block_845_rnd[0+:8])*_t___stage___block_845_len)>>>8):-(($signed(_t___stage___block_845_rnd[0+:8])*_t___stage___block_845_len)>>>8);

// __block_851
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_852
_t___block_852_side = (_q___pip_1598_1_39___stage___block_8_p_x+_q___pip_1598_1_39___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_852_checker = (_q___pip_1598_1_39___stage___block_8_p_x[6+:1]^_q___pip_1598_1_39___stage___block_8_p_y[6+:1]);

if (_t___stage___block_845_len>-2&&_t___stage___block_845_len<2) begin
// __block_853
// __block_855
_d___pip_1598_1_39___stage___block_8_num = _q___pip_1598_1_39___stage___block_8_num+1;

if (_t___stage___block_845_onsq) begin
// __block_856
// __block_858
_d___pip_1598_1_39___stage___block_8_accum_r = _q___pip_1598_1_39___stage___block_8_accum_r+3;

_d___pip_1598_1_39___stage___block_8_accum_g = _q___pip_1598_1_39___stage___block_8_accum_g+(_t___block_852_side ? 3:0);

_d___pip_1598_1_39___stage___block_8_accum_b = _q___pip_1598_1_39___stage___block_8_accum_b+(_t___block_852_side ? 3:0);

// __block_859
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_857
// __block_860
_d___pip_1598_1_39___stage___block_8_accum_r = _q___pip_1598_1_39___stage___block_8_accum_r+(_t___block_852_checker ? 1:0);

_d___pip_1598_1_39___stage___block_8_accum_g = _q___pip_1598_1_39___stage___block_8_accum_g+(_t___block_852_checker ? 1:0);

_d___pip_1598_1_39___stage___block_8_accum_b = _q___pip_1598_1_39___stage___block_8_accum_b+(_t___block_852_checker ? 1:0);

// __block_861
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_862
_d___pip_1598_1_39___stage___block_8_p_x = _q___pip_1598_1_39___stage___block_8_q_x;

_d___pip_1598_1_39___stage___block_8_p_y = _q___pip_1598_1_39___stage___block_8_q_y;

// __block_863
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_854
// __block_864
_d___pip_1598_1_39___stage___block_8_p_x = _q___pip_1598_1_39___stage___block_8_p_x+_t___stage___block_845_d_x;

_d___pip_1598_1_39___stage___block_8_p_y = _q___pip_1598_1_39___stage___block_8_p_y+_t___stage___block_845_d_y;

// __block_865
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_866
// end of pipeline stage
_d__full_fsm___pip_1598_1_39 = 1;
_d__idx_fsm___pip_1598_1_39 = _t__stall_fsm___pip_1598_1_39 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_39 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 40
(* full_case *)
case (_q__idx_fsm___pip_1598_1_40)
1: begin
// __stage___block_867
// var inits
_t___stage___block_867_d_x = 0;
_t___stage___block_867_d_y = 0;
// --
_t___stage___block_867_a_x = _q___pip_1598_1_40___stage___block_8_p_x<0 ? -_q___pip_1598_1_40___stage___block_8_p_x:_q___pip_1598_1_40___stage___block_8_p_x;

_t___stage___block_867_a_y = _q___pip_1598_1_40___stage___block_8_p_y<0 ? -_q___pip_1598_1_40___stage___block_8_p_y:_q___pip_1598_1_40___stage___block_8_p_y;

_t___stage___block_867_len_sq = $signed(_t___stage___block_867_a_y>_t___stage___block_867_a_x ? _t___stage___block_867_a_y:_t___stage___block_867_a_x)-$signed(24'd128);

_t___stage___block_867_len_brd = 24'd260-$signed(_t___stage___block_867_a_y>_t___stage___block_867_a_x ? _t___stage___block_867_a_y:_t___stage___block_867_a_x);

_t___stage___block_867_onsq = _t___stage___block_867_len_sq<_t___stage___block_867_len_brd;

_t___stage___block_867_len = _t___stage___block_867_onsq ? _t___stage___block_867_len_sq:_t___stage___block_867_len_brd;

_t___stage___block_867_rnd = _w_rng40_rnd;

if (_t___stage___block_867_rnd[11+:1]) begin
// __block_868
// __block_870
_t___stage___block_867_d_x = _t___stage___block_867_rnd[10+:1] ? -_t___stage___block_867_len+1:_t___stage___block_867_len-1;

_t___stage___block_867_d_y = _t___stage___block_867_rnd[9+:1] ? (($signed(_t___stage___block_867_rnd[0+:8])*_t___stage___block_867_len)>>>8):-(($signed(_t___stage___block_867_rnd[0+:8])*_t___stage___block_867_len)>>>8);

// __block_871
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_869
// __block_872
_t___stage___block_867_d_y = _t___stage___block_867_rnd[10+:1] ? -_t___stage___block_867_len+1:_t___stage___block_867_len-1;

_t___stage___block_867_d_x = _t___stage___block_867_rnd[9+:1] ? (($signed(_t___stage___block_867_rnd[0+:8])*_t___stage___block_867_len)>>>8):-(($signed(_t___stage___block_867_rnd[0+:8])*_t___stage___block_867_len)>>>8);

// __block_873
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_874
_t___block_874_side = (_q___pip_1598_1_40___stage___block_8_p_x+_q___pip_1598_1_40___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_874_checker = (_q___pip_1598_1_40___stage___block_8_p_x[6+:1]^_q___pip_1598_1_40___stage___block_8_p_y[6+:1]);

if (_t___stage___block_867_len>-2&&_t___stage___block_867_len<2) begin
// __block_875
// __block_877
_d___pip_1598_1_40___stage___block_8_num = _q___pip_1598_1_40___stage___block_8_num+1;

if (_t___stage___block_867_onsq) begin
// __block_878
// __block_880
_d___pip_1598_1_40___stage___block_8_accum_r = _q___pip_1598_1_40___stage___block_8_accum_r+3;

_d___pip_1598_1_40___stage___block_8_accum_g = _q___pip_1598_1_40___stage___block_8_accum_g+(_t___block_874_side ? 3:0);

_d___pip_1598_1_40___stage___block_8_accum_b = _q___pip_1598_1_40___stage___block_8_accum_b+(_t___block_874_side ? 3:0);

// __block_881
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_879
// __block_882
_d___pip_1598_1_40___stage___block_8_accum_r = _q___pip_1598_1_40___stage___block_8_accum_r+(_t___block_874_checker ? 1:0);

_d___pip_1598_1_40___stage___block_8_accum_g = _q___pip_1598_1_40___stage___block_8_accum_g+(_t___block_874_checker ? 1:0);

_d___pip_1598_1_40___stage___block_8_accum_b = _q___pip_1598_1_40___stage___block_8_accum_b+(_t___block_874_checker ? 1:0);

// __block_883
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_884
_d___pip_1598_1_40___stage___block_8_p_x = _q___pip_1598_1_40___stage___block_8_q_x;

_d___pip_1598_1_40___stage___block_8_p_y = _q___pip_1598_1_40___stage___block_8_q_y;

// __block_885
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_876
// __block_886
_d___pip_1598_1_40___stage___block_8_p_x = _q___pip_1598_1_40___stage___block_8_p_x+_t___stage___block_867_d_x;

_d___pip_1598_1_40___stage___block_8_p_y = _q___pip_1598_1_40___stage___block_8_p_y+_t___stage___block_867_d_y;

// __block_887
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_888
// end of pipeline stage
_d__full_fsm___pip_1598_1_40 = 1;
_d__idx_fsm___pip_1598_1_40 = _t__stall_fsm___pip_1598_1_40 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_40 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 41
(* full_case *)
case (_q__idx_fsm___pip_1598_1_41)
1: begin
// __stage___block_889
// var inits
_t___stage___block_889_d_x = 0;
_t___stage___block_889_d_y = 0;
// --
_t___stage___block_889_a_x = _q___pip_1598_1_41___stage___block_8_p_x<0 ? -_q___pip_1598_1_41___stage___block_8_p_x:_q___pip_1598_1_41___stage___block_8_p_x;

_t___stage___block_889_a_y = _q___pip_1598_1_41___stage___block_8_p_y<0 ? -_q___pip_1598_1_41___stage___block_8_p_y:_q___pip_1598_1_41___stage___block_8_p_y;

_t___stage___block_889_len_sq = $signed(_t___stage___block_889_a_y>_t___stage___block_889_a_x ? _t___stage___block_889_a_y:_t___stage___block_889_a_x)-$signed(24'd128);

_t___stage___block_889_len_brd = 24'd260-$signed(_t___stage___block_889_a_y>_t___stage___block_889_a_x ? _t___stage___block_889_a_y:_t___stage___block_889_a_x);

_t___stage___block_889_onsq = _t___stage___block_889_len_sq<_t___stage___block_889_len_brd;

_t___stage___block_889_len = _t___stage___block_889_onsq ? _t___stage___block_889_len_sq:_t___stage___block_889_len_brd;

_t___stage___block_889_rnd = _w_rng41_rnd;

if (_t___stage___block_889_rnd[11+:1]) begin
// __block_890
// __block_892
_t___stage___block_889_d_x = _t___stage___block_889_rnd[10+:1] ? -_t___stage___block_889_len+1:_t___stage___block_889_len-1;

_t___stage___block_889_d_y = _t___stage___block_889_rnd[9+:1] ? (($signed(_t___stage___block_889_rnd[0+:8])*_t___stage___block_889_len)>>>8):-(($signed(_t___stage___block_889_rnd[0+:8])*_t___stage___block_889_len)>>>8);

// __block_893
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_891
// __block_894
_t___stage___block_889_d_y = _t___stage___block_889_rnd[10+:1] ? -_t___stage___block_889_len+1:_t___stage___block_889_len-1;

_t___stage___block_889_d_x = _t___stage___block_889_rnd[9+:1] ? (($signed(_t___stage___block_889_rnd[0+:8])*_t___stage___block_889_len)>>>8):-(($signed(_t___stage___block_889_rnd[0+:8])*_t___stage___block_889_len)>>>8);

// __block_895
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_896
_t___block_896_side = (_q___pip_1598_1_41___stage___block_8_p_x+_q___pip_1598_1_41___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_896_checker = (_q___pip_1598_1_41___stage___block_8_p_x[6+:1]^_q___pip_1598_1_41___stage___block_8_p_y[6+:1]);

if (_t___stage___block_889_len>-2&&_t___stage___block_889_len<2) begin
// __block_897
// __block_899
_d___pip_1598_1_41___stage___block_8_num = _q___pip_1598_1_41___stage___block_8_num+1;

if (_t___stage___block_889_onsq) begin
// __block_900
// __block_902
_d___pip_1598_1_41___stage___block_8_accum_r = _q___pip_1598_1_41___stage___block_8_accum_r+3;

_d___pip_1598_1_41___stage___block_8_accum_g = _q___pip_1598_1_41___stage___block_8_accum_g+(_t___block_896_side ? 3:0);

_d___pip_1598_1_41___stage___block_8_accum_b = _q___pip_1598_1_41___stage___block_8_accum_b+(_t___block_896_side ? 3:0);

// __block_903
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_901
// __block_904
_d___pip_1598_1_41___stage___block_8_accum_r = _q___pip_1598_1_41___stage___block_8_accum_r+(_t___block_896_checker ? 1:0);

_d___pip_1598_1_41___stage___block_8_accum_g = _q___pip_1598_1_41___stage___block_8_accum_g+(_t___block_896_checker ? 1:0);

_d___pip_1598_1_41___stage___block_8_accum_b = _q___pip_1598_1_41___stage___block_8_accum_b+(_t___block_896_checker ? 1:0);

// __block_905
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_906
_d___pip_1598_1_41___stage___block_8_p_x = _q___pip_1598_1_41___stage___block_8_q_x;

_d___pip_1598_1_41___stage___block_8_p_y = _q___pip_1598_1_41___stage___block_8_q_y;

// __block_907
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_898
// __block_908
_d___pip_1598_1_41___stage___block_8_p_x = _q___pip_1598_1_41___stage___block_8_p_x+_t___stage___block_889_d_x;

_d___pip_1598_1_41___stage___block_8_p_y = _q___pip_1598_1_41___stage___block_8_p_y+_t___stage___block_889_d_y;

// __block_909
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_910
// end of pipeline stage
_d__full_fsm___pip_1598_1_41 = 1;
_d__idx_fsm___pip_1598_1_41 = _t__stall_fsm___pip_1598_1_41 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_41 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 42
(* full_case *)
case (_q__idx_fsm___pip_1598_1_42)
1: begin
// __stage___block_911
// var inits
_t___stage___block_911_d_x = 0;
_t___stage___block_911_d_y = 0;
// --
_t___stage___block_911_a_x = _q___pip_1598_1_42___stage___block_8_p_x<0 ? -_q___pip_1598_1_42___stage___block_8_p_x:_q___pip_1598_1_42___stage___block_8_p_x;

_t___stage___block_911_a_y = _q___pip_1598_1_42___stage___block_8_p_y<0 ? -_q___pip_1598_1_42___stage___block_8_p_y:_q___pip_1598_1_42___stage___block_8_p_y;

_t___stage___block_911_len_sq = $signed(_t___stage___block_911_a_y>_t___stage___block_911_a_x ? _t___stage___block_911_a_y:_t___stage___block_911_a_x)-$signed(24'd128);

_t___stage___block_911_len_brd = 24'd260-$signed(_t___stage___block_911_a_y>_t___stage___block_911_a_x ? _t___stage___block_911_a_y:_t___stage___block_911_a_x);

_t___stage___block_911_onsq = _t___stage___block_911_len_sq<_t___stage___block_911_len_brd;

_t___stage___block_911_len = _t___stage___block_911_onsq ? _t___stage___block_911_len_sq:_t___stage___block_911_len_brd;

_t___stage___block_911_rnd = _w_rng42_rnd;

if (_t___stage___block_911_rnd[11+:1]) begin
// __block_912
// __block_914
_t___stage___block_911_d_x = _t___stage___block_911_rnd[10+:1] ? -_t___stage___block_911_len+1:_t___stage___block_911_len-1;

_t___stage___block_911_d_y = _t___stage___block_911_rnd[9+:1] ? (($signed(_t___stage___block_911_rnd[0+:8])*_t___stage___block_911_len)>>>8):-(($signed(_t___stage___block_911_rnd[0+:8])*_t___stage___block_911_len)>>>8);

// __block_915
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_913
// __block_916
_t___stage___block_911_d_y = _t___stage___block_911_rnd[10+:1] ? -_t___stage___block_911_len+1:_t___stage___block_911_len-1;

_t___stage___block_911_d_x = _t___stage___block_911_rnd[9+:1] ? (($signed(_t___stage___block_911_rnd[0+:8])*_t___stage___block_911_len)>>>8):-(($signed(_t___stage___block_911_rnd[0+:8])*_t___stage___block_911_len)>>>8);

// __block_917
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_918
_t___block_918_side = (_q___pip_1598_1_42___stage___block_8_p_x+_q___pip_1598_1_42___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_918_checker = (_q___pip_1598_1_42___stage___block_8_p_x[6+:1]^_q___pip_1598_1_42___stage___block_8_p_y[6+:1]);

if (_t___stage___block_911_len>-2&&_t___stage___block_911_len<2) begin
// __block_919
// __block_921
_d___pip_1598_1_42___stage___block_8_num = _q___pip_1598_1_42___stage___block_8_num+1;

if (_t___stage___block_911_onsq) begin
// __block_922
// __block_924
_d___pip_1598_1_42___stage___block_8_accum_r = _q___pip_1598_1_42___stage___block_8_accum_r+3;

_d___pip_1598_1_42___stage___block_8_accum_g = _q___pip_1598_1_42___stage___block_8_accum_g+(_t___block_918_side ? 3:0);

_d___pip_1598_1_42___stage___block_8_accum_b = _q___pip_1598_1_42___stage___block_8_accum_b+(_t___block_918_side ? 3:0);

// __block_925
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_923
// __block_926
_d___pip_1598_1_42___stage___block_8_accum_r = _q___pip_1598_1_42___stage___block_8_accum_r+(_t___block_918_checker ? 1:0);

_d___pip_1598_1_42___stage___block_8_accum_g = _q___pip_1598_1_42___stage___block_8_accum_g+(_t___block_918_checker ? 1:0);

_d___pip_1598_1_42___stage___block_8_accum_b = _q___pip_1598_1_42___stage___block_8_accum_b+(_t___block_918_checker ? 1:0);

// __block_927
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_928
_d___pip_1598_1_42___stage___block_8_p_x = _q___pip_1598_1_42___stage___block_8_q_x;

_d___pip_1598_1_42___stage___block_8_p_y = _q___pip_1598_1_42___stage___block_8_q_y;

// __block_929
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_920
// __block_930
_d___pip_1598_1_42___stage___block_8_p_x = _q___pip_1598_1_42___stage___block_8_p_x+_t___stage___block_911_d_x;

_d___pip_1598_1_42___stage___block_8_p_y = _q___pip_1598_1_42___stage___block_8_p_y+_t___stage___block_911_d_y;

// __block_931
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_932
// end of pipeline stage
_d__full_fsm___pip_1598_1_42 = 1;
_d__idx_fsm___pip_1598_1_42 = _t__stall_fsm___pip_1598_1_42 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_42 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 43
(* full_case *)
case (_q__idx_fsm___pip_1598_1_43)
1: begin
// __stage___block_933
// var inits
_t___stage___block_933_d_x = 0;
_t___stage___block_933_d_y = 0;
// --
_t___stage___block_933_a_x = _q___pip_1598_1_43___stage___block_8_p_x<0 ? -_q___pip_1598_1_43___stage___block_8_p_x:_q___pip_1598_1_43___stage___block_8_p_x;

_t___stage___block_933_a_y = _q___pip_1598_1_43___stage___block_8_p_y<0 ? -_q___pip_1598_1_43___stage___block_8_p_y:_q___pip_1598_1_43___stage___block_8_p_y;

_t___stage___block_933_len_sq = $signed(_t___stage___block_933_a_y>_t___stage___block_933_a_x ? _t___stage___block_933_a_y:_t___stage___block_933_a_x)-$signed(24'd128);

_t___stage___block_933_len_brd = 24'd260-$signed(_t___stage___block_933_a_y>_t___stage___block_933_a_x ? _t___stage___block_933_a_y:_t___stage___block_933_a_x);

_t___stage___block_933_onsq = _t___stage___block_933_len_sq<_t___stage___block_933_len_brd;

_t___stage___block_933_len = _t___stage___block_933_onsq ? _t___stage___block_933_len_sq:_t___stage___block_933_len_brd;

_t___stage___block_933_rnd = _w_rng43_rnd;

if (_t___stage___block_933_rnd[11+:1]) begin
// __block_934
// __block_936
_t___stage___block_933_d_x = _t___stage___block_933_rnd[10+:1] ? -_t___stage___block_933_len+1:_t___stage___block_933_len-1;

_t___stage___block_933_d_y = _t___stage___block_933_rnd[9+:1] ? (($signed(_t___stage___block_933_rnd[0+:8])*_t___stage___block_933_len)>>>8):-(($signed(_t___stage___block_933_rnd[0+:8])*_t___stage___block_933_len)>>>8);

// __block_937
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_935
// __block_938
_t___stage___block_933_d_y = _t___stage___block_933_rnd[10+:1] ? -_t___stage___block_933_len+1:_t___stage___block_933_len-1;

_t___stage___block_933_d_x = _t___stage___block_933_rnd[9+:1] ? (($signed(_t___stage___block_933_rnd[0+:8])*_t___stage___block_933_len)>>>8):-(($signed(_t___stage___block_933_rnd[0+:8])*_t___stage___block_933_len)>>>8);

// __block_939
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_940
_t___block_940_side = (_q___pip_1598_1_43___stage___block_8_p_x+_q___pip_1598_1_43___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_940_checker = (_q___pip_1598_1_43___stage___block_8_p_x[6+:1]^_q___pip_1598_1_43___stage___block_8_p_y[6+:1]);

if (_t___stage___block_933_len>-2&&_t___stage___block_933_len<2) begin
// __block_941
// __block_943
_d___pip_1598_1_43___stage___block_8_num = _q___pip_1598_1_43___stage___block_8_num+1;

if (_t___stage___block_933_onsq) begin
// __block_944
// __block_946
_d___pip_1598_1_43___stage___block_8_accum_r = _q___pip_1598_1_43___stage___block_8_accum_r+3;

_d___pip_1598_1_43___stage___block_8_accum_g = _q___pip_1598_1_43___stage___block_8_accum_g+(_t___block_940_side ? 3:0);

_d___pip_1598_1_43___stage___block_8_accum_b = _q___pip_1598_1_43___stage___block_8_accum_b+(_t___block_940_side ? 3:0);

// __block_947
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_945
// __block_948
_d___pip_1598_1_43___stage___block_8_accum_r = _q___pip_1598_1_43___stage___block_8_accum_r+(_t___block_940_checker ? 1:0);

_d___pip_1598_1_43___stage___block_8_accum_g = _q___pip_1598_1_43___stage___block_8_accum_g+(_t___block_940_checker ? 1:0);

_d___pip_1598_1_43___stage___block_8_accum_b = _q___pip_1598_1_43___stage___block_8_accum_b+(_t___block_940_checker ? 1:0);

// __block_949
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_950
_d___pip_1598_1_43___stage___block_8_p_x = _q___pip_1598_1_43___stage___block_8_q_x;

_d___pip_1598_1_43___stage___block_8_p_y = _q___pip_1598_1_43___stage___block_8_q_y;

// __block_951
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_942
// __block_952
_d___pip_1598_1_43___stage___block_8_p_x = _q___pip_1598_1_43___stage___block_8_p_x+_t___stage___block_933_d_x;

_d___pip_1598_1_43___stage___block_8_p_y = _q___pip_1598_1_43___stage___block_8_p_y+_t___stage___block_933_d_y;

// __block_953
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_954
// end of pipeline stage
_d__full_fsm___pip_1598_1_43 = 1;
_d__idx_fsm___pip_1598_1_43 = _t__stall_fsm___pip_1598_1_43 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_43 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 44
(* full_case *)
case (_q__idx_fsm___pip_1598_1_44)
1: begin
// __stage___block_955
// var inits
_t___stage___block_955_d_x = 0;
_t___stage___block_955_d_y = 0;
// --
_t___stage___block_955_a_x = _q___pip_1598_1_44___stage___block_8_p_x<0 ? -_q___pip_1598_1_44___stage___block_8_p_x:_q___pip_1598_1_44___stage___block_8_p_x;

_t___stage___block_955_a_y = _q___pip_1598_1_44___stage___block_8_p_y<0 ? -_q___pip_1598_1_44___stage___block_8_p_y:_q___pip_1598_1_44___stage___block_8_p_y;

_t___stage___block_955_len_sq = $signed(_t___stage___block_955_a_y>_t___stage___block_955_a_x ? _t___stage___block_955_a_y:_t___stage___block_955_a_x)-$signed(24'd128);

_t___stage___block_955_len_brd = 24'd260-$signed(_t___stage___block_955_a_y>_t___stage___block_955_a_x ? _t___stage___block_955_a_y:_t___stage___block_955_a_x);

_t___stage___block_955_onsq = _t___stage___block_955_len_sq<_t___stage___block_955_len_brd;

_t___stage___block_955_len = _t___stage___block_955_onsq ? _t___stage___block_955_len_sq:_t___stage___block_955_len_brd;

_t___stage___block_955_rnd = _w_rng44_rnd;

if (_t___stage___block_955_rnd[11+:1]) begin
// __block_956
// __block_958
_t___stage___block_955_d_x = _t___stage___block_955_rnd[10+:1] ? -_t___stage___block_955_len+1:_t___stage___block_955_len-1;

_t___stage___block_955_d_y = _t___stage___block_955_rnd[9+:1] ? (($signed(_t___stage___block_955_rnd[0+:8])*_t___stage___block_955_len)>>>8):-(($signed(_t___stage___block_955_rnd[0+:8])*_t___stage___block_955_len)>>>8);

// __block_959
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_957
// __block_960
_t___stage___block_955_d_y = _t___stage___block_955_rnd[10+:1] ? -_t___stage___block_955_len+1:_t___stage___block_955_len-1;

_t___stage___block_955_d_x = _t___stage___block_955_rnd[9+:1] ? (($signed(_t___stage___block_955_rnd[0+:8])*_t___stage___block_955_len)>>>8):-(($signed(_t___stage___block_955_rnd[0+:8])*_t___stage___block_955_len)>>>8);

// __block_961
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_962
_t___block_962_side = (_q___pip_1598_1_44___stage___block_8_p_x+_q___pip_1598_1_44___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_962_checker = (_q___pip_1598_1_44___stage___block_8_p_x[6+:1]^_q___pip_1598_1_44___stage___block_8_p_y[6+:1]);

if (_t___stage___block_955_len>-2&&_t___stage___block_955_len<2) begin
// __block_963
// __block_965
_d___pip_1598_1_44___stage___block_8_num = _q___pip_1598_1_44___stage___block_8_num+1;

if (_t___stage___block_955_onsq) begin
// __block_966
// __block_968
_d___pip_1598_1_44___stage___block_8_accum_r = _q___pip_1598_1_44___stage___block_8_accum_r+3;

_d___pip_1598_1_44___stage___block_8_accum_g = _q___pip_1598_1_44___stage___block_8_accum_g+(_t___block_962_side ? 3:0);

_d___pip_1598_1_44___stage___block_8_accum_b = _q___pip_1598_1_44___stage___block_8_accum_b+(_t___block_962_side ? 3:0);

// __block_969
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_967
// __block_970
_d___pip_1598_1_44___stage___block_8_accum_r = _q___pip_1598_1_44___stage___block_8_accum_r+(_t___block_962_checker ? 1:0);

_d___pip_1598_1_44___stage___block_8_accum_g = _q___pip_1598_1_44___stage___block_8_accum_g+(_t___block_962_checker ? 1:0);

_d___pip_1598_1_44___stage___block_8_accum_b = _q___pip_1598_1_44___stage___block_8_accum_b+(_t___block_962_checker ? 1:0);

// __block_971
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_972
_d___pip_1598_1_44___stage___block_8_p_x = _q___pip_1598_1_44___stage___block_8_q_x;

_d___pip_1598_1_44___stage___block_8_p_y = _q___pip_1598_1_44___stage___block_8_q_y;

// __block_973
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_964
// __block_974
_d___pip_1598_1_44___stage___block_8_p_x = _q___pip_1598_1_44___stage___block_8_p_x+_t___stage___block_955_d_x;

_d___pip_1598_1_44___stage___block_8_p_y = _q___pip_1598_1_44___stage___block_8_p_y+_t___stage___block_955_d_y;

// __block_975
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_976
// end of pipeline stage
_d__full_fsm___pip_1598_1_44 = 1;
_d__idx_fsm___pip_1598_1_44 = _t__stall_fsm___pip_1598_1_44 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_44 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 45
(* full_case *)
case (_q__idx_fsm___pip_1598_1_45)
1: begin
// __stage___block_977
// var inits
_t___stage___block_977_d_x = 0;
_t___stage___block_977_d_y = 0;
// --
_t___stage___block_977_a_x = _q___pip_1598_1_45___stage___block_8_p_x<0 ? -_q___pip_1598_1_45___stage___block_8_p_x:_q___pip_1598_1_45___stage___block_8_p_x;

_t___stage___block_977_a_y = _q___pip_1598_1_45___stage___block_8_p_y<0 ? -_q___pip_1598_1_45___stage___block_8_p_y:_q___pip_1598_1_45___stage___block_8_p_y;

_t___stage___block_977_len_sq = $signed(_t___stage___block_977_a_y>_t___stage___block_977_a_x ? _t___stage___block_977_a_y:_t___stage___block_977_a_x)-$signed(24'd128);

_t___stage___block_977_len_brd = 24'd260-$signed(_t___stage___block_977_a_y>_t___stage___block_977_a_x ? _t___stage___block_977_a_y:_t___stage___block_977_a_x);

_t___stage___block_977_onsq = _t___stage___block_977_len_sq<_t___stage___block_977_len_brd;

_t___stage___block_977_len = _t___stage___block_977_onsq ? _t___stage___block_977_len_sq:_t___stage___block_977_len_brd;

_t___stage___block_977_rnd = _w_rng45_rnd;

if (_t___stage___block_977_rnd[11+:1]) begin
// __block_978
// __block_980
_t___stage___block_977_d_x = _t___stage___block_977_rnd[10+:1] ? -_t___stage___block_977_len+1:_t___stage___block_977_len-1;

_t___stage___block_977_d_y = _t___stage___block_977_rnd[9+:1] ? (($signed(_t___stage___block_977_rnd[0+:8])*_t___stage___block_977_len)>>>8):-(($signed(_t___stage___block_977_rnd[0+:8])*_t___stage___block_977_len)>>>8);

// __block_981
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_979
// __block_982
_t___stage___block_977_d_y = _t___stage___block_977_rnd[10+:1] ? -_t___stage___block_977_len+1:_t___stage___block_977_len-1;

_t___stage___block_977_d_x = _t___stage___block_977_rnd[9+:1] ? (($signed(_t___stage___block_977_rnd[0+:8])*_t___stage___block_977_len)>>>8):-(($signed(_t___stage___block_977_rnd[0+:8])*_t___stage___block_977_len)>>>8);

// __block_983
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_984
_t___block_984_side = (_q___pip_1598_1_45___stage___block_8_p_x+_q___pip_1598_1_45___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_984_checker = (_q___pip_1598_1_45___stage___block_8_p_x[6+:1]^_q___pip_1598_1_45___stage___block_8_p_y[6+:1]);

if (_t___stage___block_977_len>-2&&_t___stage___block_977_len<2) begin
// __block_985
// __block_987
_d___pip_1598_1_45___stage___block_8_num = _q___pip_1598_1_45___stage___block_8_num+1;

if (_t___stage___block_977_onsq) begin
// __block_988
// __block_990
_d___pip_1598_1_45___stage___block_8_accum_r = _q___pip_1598_1_45___stage___block_8_accum_r+3;

_d___pip_1598_1_45___stage___block_8_accum_g = _q___pip_1598_1_45___stage___block_8_accum_g+(_t___block_984_side ? 3:0);

_d___pip_1598_1_45___stage___block_8_accum_b = _q___pip_1598_1_45___stage___block_8_accum_b+(_t___block_984_side ? 3:0);

// __block_991
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_989
// __block_992
_d___pip_1598_1_45___stage___block_8_accum_r = _q___pip_1598_1_45___stage___block_8_accum_r+(_t___block_984_checker ? 1:0);

_d___pip_1598_1_45___stage___block_8_accum_g = _q___pip_1598_1_45___stage___block_8_accum_g+(_t___block_984_checker ? 1:0);

_d___pip_1598_1_45___stage___block_8_accum_b = _q___pip_1598_1_45___stage___block_8_accum_b+(_t___block_984_checker ? 1:0);

// __block_993
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_994
_d___pip_1598_1_45___stage___block_8_p_x = _q___pip_1598_1_45___stage___block_8_q_x;

_d___pip_1598_1_45___stage___block_8_p_y = _q___pip_1598_1_45___stage___block_8_q_y;

// __block_995
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_986
// __block_996
_d___pip_1598_1_45___stage___block_8_p_x = _q___pip_1598_1_45___stage___block_8_p_x+_t___stage___block_977_d_x;

_d___pip_1598_1_45___stage___block_8_p_y = _q___pip_1598_1_45___stage___block_8_p_y+_t___stage___block_977_d_y;

// __block_997
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_998
// end of pipeline stage
_d__full_fsm___pip_1598_1_45 = 1;
_d__idx_fsm___pip_1598_1_45 = _t__stall_fsm___pip_1598_1_45 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_45 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 46
(* full_case *)
case (_q__idx_fsm___pip_1598_1_46)
1: begin
// __stage___block_999
// var inits
_t___stage___block_999_d_x = 0;
_t___stage___block_999_d_y = 0;
// --
_t___stage___block_999_a_x = _q___pip_1598_1_46___stage___block_8_p_x<0 ? -_q___pip_1598_1_46___stage___block_8_p_x:_q___pip_1598_1_46___stage___block_8_p_x;

_t___stage___block_999_a_y = _q___pip_1598_1_46___stage___block_8_p_y<0 ? -_q___pip_1598_1_46___stage___block_8_p_y:_q___pip_1598_1_46___stage___block_8_p_y;

_t___stage___block_999_len_sq = $signed(_t___stage___block_999_a_y>_t___stage___block_999_a_x ? _t___stage___block_999_a_y:_t___stage___block_999_a_x)-$signed(24'd128);

_t___stage___block_999_len_brd = 24'd260-$signed(_t___stage___block_999_a_y>_t___stage___block_999_a_x ? _t___stage___block_999_a_y:_t___stage___block_999_a_x);

_t___stage___block_999_onsq = _t___stage___block_999_len_sq<_t___stage___block_999_len_brd;

_t___stage___block_999_len = _t___stage___block_999_onsq ? _t___stage___block_999_len_sq:_t___stage___block_999_len_brd;

_t___stage___block_999_rnd = _w_rng46_rnd;

if (_t___stage___block_999_rnd[11+:1]) begin
// __block_1000
// __block_1002
_t___stage___block_999_d_x = _t___stage___block_999_rnd[10+:1] ? -_t___stage___block_999_len+1:_t___stage___block_999_len-1;

_t___stage___block_999_d_y = _t___stage___block_999_rnd[9+:1] ? (($signed(_t___stage___block_999_rnd[0+:8])*_t___stage___block_999_len)>>>8):-(($signed(_t___stage___block_999_rnd[0+:8])*_t___stage___block_999_len)>>>8);

// __block_1003
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_1001
// __block_1004
_t___stage___block_999_d_y = _t___stage___block_999_rnd[10+:1] ? -_t___stage___block_999_len+1:_t___stage___block_999_len-1;

_t___stage___block_999_d_x = _t___stage___block_999_rnd[9+:1] ? (($signed(_t___stage___block_999_rnd[0+:8])*_t___stage___block_999_len)>>>8):-(($signed(_t___stage___block_999_rnd[0+:8])*_t___stage___block_999_len)>>>8);

// __block_1005
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_1006
_t___block_1006_side = (_q___pip_1598_1_46___stage___block_8_p_x+_q___pip_1598_1_46___stage___block_8_p_y)<($signed(_w_mem_cos_rdata)>>>2);

_t___block_1006_checker = (_q___pip_1598_1_46___stage___block_8_p_x[6+:1]^_q___pip_1598_1_46___stage___block_8_p_y[6+:1]);

if (_t___stage___block_999_len>-2&&_t___stage___block_999_len<2) begin
// __block_1007
// __block_1009
_d___pip_1598_1_46___stage___block_8_num = _q___pip_1598_1_46___stage___block_8_num+1;

if (_t___stage___block_999_onsq) begin
// __block_1010
// __block_1012
_d___pip_1598_1_46___stage___block_8_accum_r = _q___pip_1598_1_46___stage___block_8_accum_r+3;

_d___pip_1598_1_46___stage___block_8_accum_g = _q___pip_1598_1_46___stage___block_8_accum_g+(_t___block_1006_side ? 3:0);

_d___pip_1598_1_46___stage___block_8_accum_b = _q___pip_1598_1_46___stage___block_8_accum_b+(_t___block_1006_side ? 3:0);

// __block_1013
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_1011
// __block_1014
_d___pip_1598_1_46___stage___block_8_accum_r = _q___pip_1598_1_46___stage___block_8_accum_r+(_t___block_1006_checker ? 1:0);

_d___pip_1598_1_46___stage___block_8_accum_g = _q___pip_1598_1_46___stage___block_8_accum_g+(_t___block_1006_checker ? 1:0);

_d___pip_1598_1_46___stage___block_8_accum_b = _q___pip_1598_1_46___stage___block_8_accum_b+(_t___block_1006_checker ? 1:0);

// __block_1015
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_1016
_d___pip_1598_1_46___stage___block_8_p_x = _q___pip_1598_1_46___stage___block_8_q_x;

_d___pip_1598_1_46___stage___block_8_p_y = _q___pip_1598_1_46___stage___block_8_q_y;

// __block_1017
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end else begin
// __block_1008
// __block_1018
_d___pip_1598_1_46___stage___block_8_p_x = _q___pip_1598_1_46___stage___block_8_p_x+_t___stage___block_999_d_x;

_d___pip_1598_1_46___stage___block_8_p_y = _q___pip_1598_1_46___stage___block_8_p_y+_t___stage___block_999_d_y;

// __block_1019
_t__1stdisable_fsm___pip_1598_1_0 = 1;
end
// 'after'
// __block_1020
// end of pipeline stage
_d__full_fsm___pip_1598_1_46 = 1;
_d__idx_fsm___pip_1598_1_46 = _t__stall_fsm___pip_1598_1_46 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_46 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 47
(* full_case *)
case (_q__idx_fsm___pip_1598_1_47)
1: begin
// __stage___block_1021
_d_inv_addr = _q___pip_1598_1_47___stage___block_8_num;

// end of pipeline stage
_d__full_fsm___pip_1598_1_47 = 1;
_d__idx_fsm___pip_1598_1_47 = _t__stall_fsm___pip_1598_1_47 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_47 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 48
(* full_case *)
case (_q__idx_fsm___pip_1598_1_48)
1: begin
// __stage___block_1022
_t___stage___block_1022_r = (_w_mem_inv_rdata*_q___pip_1598_1_48___stage___block_8_accum_r)>>14;

_t___stage___block_1022_g = (_w_mem_inv_rdata*_q___pip_1598_1_48___stage___block_8_accum_g)>>14;

_t___stage___block_1022_b = (_w_mem_inv_rdata*_q___pip_1598_1_48___stage___block_8_accum_b)>>14;

_d_pix_r = {_t___stage___block_1022_r,4'b00};

_d_pix_g = {_t___stage___block_1022_g,4'b00};

_d_pix_b = {_t___stage___block_1022_b,4'b00};

if (in_pix_x==0&&in_pix_y==0) begin
// __block_1023
// __block_1025
_d_cos_addr = _q___block_3_cursor;

_d___block_3_cursor = _q___block_3_cursor+35;

// __block_1026
end else begin
// __block_1024
end
// 'after'
// __block_1027
// end of last pipeline stage
_d__full_fsm___pip_1598_1_48 = 1;
_d__idx_fsm___pip_1598_1_48 = _t__stall_fsm___pip_1598_1_48 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_1598_1_48 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// ===================
// _always_post
// __block_1
_d_cycle = _q_cycle+1;

// __block_2
// pipeline stage triggers
if ( (_ready_fsm___pip_1598_1_48)   && (_d__full_fsm___pip_1598_1_47)   && (!_t__stall_fsm___pip_1598_1_47)   && (!_t__stall_fsm___pip_1598_1_48)   ) begin
   _d__idx_fsm___pip_1598_1_48 = 1;
   _d__full_fsm___pip_1598_1_47 = 0;
end
if ( (_ready_fsm___pip_1598_1_47)   && (_d__full_fsm___pip_1598_1_46)   && (!_t__stall_fsm___pip_1598_1_46)   && (!_d__full_fsm___pip_1598_1_47)   && (!_t__stall_fsm___pip_1598_1_47)   ) begin
   _d__idx_fsm___pip_1598_1_47 = 1;
   _d__full_fsm___pip_1598_1_46 = 0;
end
if ( (_ready_fsm___pip_1598_1_46)   && (_d__full_fsm___pip_1598_1_45)   && (!_t__stall_fsm___pip_1598_1_45)   && (!_d__full_fsm___pip_1598_1_46)   && (!_t__stall_fsm___pip_1598_1_46)   ) begin
   _d__idx_fsm___pip_1598_1_46 = 1;
   _d__full_fsm___pip_1598_1_45 = 0;
end
if ( (_ready_fsm___pip_1598_1_45)   && (_d__full_fsm___pip_1598_1_44)   && (!_t__stall_fsm___pip_1598_1_44)   && (!_d__full_fsm___pip_1598_1_45)   && (!_t__stall_fsm___pip_1598_1_45)   ) begin
   _d__idx_fsm___pip_1598_1_45 = 1;
   _d__full_fsm___pip_1598_1_44 = 0;
end
if ( (_ready_fsm___pip_1598_1_44)   && (_d__full_fsm___pip_1598_1_43)   && (!_t__stall_fsm___pip_1598_1_43)   && (!_d__full_fsm___pip_1598_1_44)   && (!_t__stall_fsm___pip_1598_1_44)   ) begin
   _d__idx_fsm___pip_1598_1_44 = 1;
   _d__full_fsm___pip_1598_1_43 = 0;
end
if ( (_ready_fsm___pip_1598_1_43)   && (_d__full_fsm___pip_1598_1_42)   && (!_t__stall_fsm___pip_1598_1_42)   && (!_d__full_fsm___pip_1598_1_43)   && (!_t__stall_fsm___pip_1598_1_43)   ) begin
   _d__idx_fsm___pip_1598_1_43 = 1;
   _d__full_fsm___pip_1598_1_42 = 0;
end
if ( (_ready_fsm___pip_1598_1_42)   && (_d__full_fsm___pip_1598_1_41)   && (!_t__stall_fsm___pip_1598_1_41)   && (!_d__full_fsm___pip_1598_1_42)   && (!_t__stall_fsm___pip_1598_1_42)   ) begin
   _d__idx_fsm___pip_1598_1_42 = 1;
   _d__full_fsm___pip_1598_1_41 = 0;
end
if ( (_ready_fsm___pip_1598_1_41)   && (_d__full_fsm___pip_1598_1_40)   && (!_t__stall_fsm___pip_1598_1_40)   && (!_d__full_fsm___pip_1598_1_41)   && (!_t__stall_fsm___pip_1598_1_41)   ) begin
   _d__idx_fsm___pip_1598_1_41 = 1;
   _d__full_fsm___pip_1598_1_40 = 0;
end
if ( (_ready_fsm___pip_1598_1_40)   && (_d__full_fsm___pip_1598_1_39)   && (!_t__stall_fsm___pip_1598_1_39)   && (!_d__full_fsm___pip_1598_1_40)   && (!_t__stall_fsm___pip_1598_1_40)   ) begin
   _d__idx_fsm___pip_1598_1_40 = 1;
   _d__full_fsm___pip_1598_1_39 = 0;
end
if ( (_ready_fsm___pip_1598_1_39)   && (_d__full_fsm___pip_1598_1_38)   && (!_t__stall_fsm___pip_1598_1_38)   && (!_d__full_fsm___pip_1598_1_39)   && (!_t__stall_fsm___pip_1598_1_39)   ) begin
   _d__idx_fsm___pip_1598_1_39 = 1;
   _d__full_fsm___pip_1598_1_38 = 0;
end
if ( (_ready_fsm___pip_1598_1_38)   && (_d__full_fsm___pip_1598_1_37)   && (!_t__stall_fsm___pip_1598_1_37)   && (!_d__full_fsm___pip_1598_1_38)   && (!_t__stall_fsm___pip_1598_1_38)   ) begin
   _d__idx_fsm___pip_1598_1_38 = 1;
   _d__full_fsm___pip_1598_1_37 = 0;
end
if ( (_ready_fsm___pip_1598_1_37)   && (_d__full_fsm___pip_1598_1_36)   && (!_t__stall_fsm___pip_1598_1_36)   && (!_d__full_fsm___pip_1598_1_37)   && (!_t__stall_fsm___pip_1598_1_37)   ) begin
   _d__idx_fsm___pip_1598_1_37 = 1;
   _d__full_fsm___pip_1598_1_36 = 0;
end
if ( (_ready_fsm___pip_1598_1_36)   && (_d__full_fsm___pip_1598_1_35)   && (!_t__stall_fsm___pip_1598_1_35)   && (!_d__full_fsm___pip_1598_1_36)   && (!_t__stall_fsm___pip_1598_1_36)   ) begin
   _d__idx_fsm___pip_1598_1_36 = 1;
   _d__full_fsm___pip_1598_1_35 = 0;
end
if ( (_ready_fsm___pip_1598_1_35)   && (_d__full_fsm___pip_1598_1_34)   && (!_t__stall_fsm___pip_1598_1_34)   && (!_d__full_fsm___pip_1598_1_35)   && (!_t__stall_fsm___pip_1598_1_35)   ) begin
   _d__idx_fsm___pip_1598_1_35 = 1;
   _d__full_fsm___pip_1598_1_34 = 0;
end
if ( (_ready_fsm___pip_1598_1_34)   && (_d__full_fsm___pip_1598_1_33)   && (!_t__stall_fsm___pip_1598_1_33)   && (!_d__full_fsm___pip_1598_1_34)   && (!_t__stall_fsm___pip_1598_1_34)   ) begin
   _d__idx_fsm___pip_1598_1_34 = 1;
   _d__full_fsm___pip_1598_1_33 = 0;
end
if ( (_ready_fsm___pip_1598_1_33)   && (_d__full_fsm___pip_1598_1_32)   && (!_t__stall_fsm___pip_1598_1_32)   && (!_d__full_fsm___pip_1598_1_33)   && (!_t__stall_fsm___pip_1598_1_33)   ) begin
   _d__idx_fsm___pip_1598_1_33 = 1;
   _d__full_fsm___pip_1598_1_32 = 0;
end
if ( (_ready_fsm___pip_1598_1_32)   && (_d__full_fsm___pip_1598_1_31)   && (!_t__stall_fsm___pip_1598_1_31)   && (!_d__full_fsm___pip_1598_1_32)   && (!_t__stall_fsm___pip_1598_1_32)   ) begin
   _d__idx_fsm___pip_1598_1_32 = 1;
   _d__full_fsm___pip_1598_1_31 = 0;
end
if ( (_ready_fsm___pip_1598_1_31)   && (_d__full_fsm___pip_1598_1_30)   && (!_t__stall_fsm___pip_1598_1_30)   && (!_d__full_fsm___pip_1598_1_31)   && (!_t__stall_fsm___pip_1598_1_31)   ) begin
   _d__idx_fsm___pip_1598_1_31 = 1;
   _d__full_fsm___pip_1598_1_30 = 0;
end
if ( (_ready_fsm___pip_1598_1_30)   && (_d__full_fsm___pip_1598_1_29)   && (!_t__stall_fsm___pip_1598_1_29)   && (!_d__full_fsm___pip_1598_1_30)   && (!_t__stall_fsm___pip_1598_1_30)   ) begin
   _d__idx_fsm___pip_1598_1_30 = 1;
   _d__full_fsm___pip_1598_1_29 = 0;
end
if ( (_ready_fsm___pip_1598_1_29)   && (_d__full_fsm___pip_1598_1_28)   && (!_t__stall_fsm___pip_1598_1_28)   && (!_d__full_fsm___pip_1598_1_29)   && (!_t__stall_fsm___pip_1598_1_29)   ) begin
   _d__idx_fsm___pip_1598_1_29 = 1;
   _d__full_fsm___pip_1598_1_28 = 0;
end
if ( (_ready_fsm___pip_1598_1_28)   && (_d__full_fsm___pip_1598_1_27)   && (!_t__stall_fsm___pip_1598_1_27)   && (!_d__full_fsm___pip_1598_1_28)   && (!_t__stall_fsm___pip_1598_1_28)   ) begin
   _d__idx_fsm___pip_1598_1_28 = 1;
   _d__full_fsm___pip_1598_1_27 = 0;
end
if ( (_ready_fsm___pip_1598_1_27)   && (_d__full_fsm___pip_1598_1_26)   && (!_t__stall_fsm___pip_1598_1_26)   && (!_d__full_fsm___pip_1598_1_27)   && (!_t__stall_fsm___pip_1598_1_27)   ) begin
   _d__idx_fsm___pip_1598_1_27 = 1;
   _d__full_fsm___pip_1598_1_26 = 0;
end
if ( (_ready_fsm___pip_1598_1_26)   && (_d__full_fsm___pip_1598_1_25)   && (!_t__stall_fsm___pip_1598_1_25)   && (!_d__full_fsm___pip_1598_1_26)   && (!_t__stall_fsm___pip_1598_1_26)   ) begin
   _d__idx_fsm___pip_1598_1_26 = 1;
   _d__full_fsm___pip_1598_1_25 = 0;
end
if ( (_ready_fsm___pip_1598_1_25)   && (_d__full_fsm___pip_1598_1_24)   && (!_t__stall_fsm___pip_1598_1_24)   && (!_d__full_fsm___pip_1598_1_25)   && (!_t__stall_fsm___pip_1598_1_25)   ) begin
   _d__idx_fsm___pip_1598_1_25 = 1;
   _d__full_fsm___pip_1598_1_24 = 0;
end
if ( (_ready_fsm___pip_1598_1_24)   && (_d__full_fsm___pip_1598_1_23)   && (!_t__stall_fsm___pip_1598_1_23)   && (!_d__full_fsm___pip_1598_1_24)   && (!_t__stall_fsm___pip_1598_1_24)   ) begin
   _d__idx_fsm___pip_1598_1_24 = 1;
   _d__full_fsm___pip_1598_1_23 = 0;
end
if ( (_ready_fsm___pip_1598_1_23)   && (_d__full_fsm___pip_1598_1_22)   && (!_t__stall_fsm___pip_1598_1_22)   && (!_d__full_fsm___pip_1598_1_23)   && (!_t__stall_fsm___pip_1598_1_23)   ) begin
   _d__idx_fsm___pip_1598_1_23 = 1;
   _d__full_fsm___pip_1598_1_22 = 0;
end
if ( (_ready_fsm___pip_1598_1_22)   && (_d__full_fsm___pip_1598_1_21)   && (!_t__stall_fsm___pip_1598_1_21)   && (!_d__full_fsm___pip_1598_1_22)   && (!_t__stall_fsm___pip_1598_1_22)   ) begin
   _d__idx_fsm___pip_1598_1_22 = 1;
   _d__full_fsm___pip_1598_1_21 = 0;
end
if ( (_ready_fsm___pip_1598_1_21)   && (_d__full_fsm___pip_1598_1_20)   && (!_t__stall_fsm___pip_1598_1_20)   && (!_d__full_fsm___pip_1598_1_21)   && (!_t__stall_fsm___pip_1598_1_21)   ) begin
   _d__idx_fsm___pip_1598_1_21 = 1;
   _d__full_fsm___pip_1598_1_20 = 0;
end
if ( (_ready_fsm___pip_1598_1_20)   && (_d__full_fsm___pip_1598_1_19)   && (!_t__stall_fsm___pip_1598_1_19)   && (!_d__full_fsm___pip_1598_1_20)   && (!_t__stall_fsm___pip_1598_1_20)   ) begin
   _d__idx_fsm___pip_1598_1_20 = 1;
   _d__full_fsm___pip_1598_1_19 = 0;
end
if ( (_ready_fsm___pip_1598_1_19)   && (_d__full_fsm___pip_1598_1_18)   && (!_t__stall_fsm___pip_1598_1_18)   && (!_d__full_fsm___pip_1598_1_19)   && (!_t__stall_fsm___pip_1598_1_19)   ) begin
   _d__idx_fsm___pip_1598_1_19 = 1;
   _d__full_fsm___pip_1598_1_18 = 0;
end
if ( (_ready_fsm___pip_1598_1_18)   && (_d__full_fsm___pip_1598_1_17)   && (!_t__stall_fsm___pip_1598_1_17)   && (!_d__full_fsm___pip_1598_1_18)   && (!_t__stall_fsm___pip_1598_1_18)   ) begin
   _d__idx_fsm___pip_1598_1_18 = 1;
   _d__full_fsm___pip_1598_1_17 = 0;
end
if ( (_ready_fsm___pip_1598_1_17)   && (_d__full_fsm___pip_1598_1_16)   && (!_t__stall_fsm___pip_1598_1_16)   && (!_d__full_fsm___pip_1598_1_17)   && (!_t__stall_fsm___pip_1598_1_17)   ) begin
   _d__idx_fsm___pip_1598_1_17 = 1;
   _d__full_fsm___pip_1598_1_16 = 0;
end
if ( (_ready_fsm___pip_1598_1_16)   && (_d__full_fsm___pip_1598_1_15)   && (!_t__stall_fsm___pip_1598_1_15)   && (!_d__full_fsm___pip_1598_1_16)   && (!_t__stall_fsm___pip_1598_1_16)   ) begin
   _d__idx_fsm___pip_1598_1_16 = 1;
   _d__full_fsm___pip_1598_1_15 = 0;
end
if ( (_ready_fsm___pip_1598_1_15)   && (_d__full_fsm___pip_1598_1_14)   && (!_t__stall_fsm___pip_1598_1_14)   && (!_d__full_fsm___pip_1598_1_15)   && (!_t__stall_fsm___pip_1598_1_15)   ) begin
   _d__idx_fsm___pip_1598_1_15 = 1;
   _d__full_fsm___pip_1598_1_14 = 0;
end
if ( (_ready_fsm___pip_1598_1_14)   && (_d__full_fsm___pip_1598_1_13)   && (!_t__stall_fsm___pip_1598_1_13)   && (!_d__full_fsm___pip_1598_1_14)   && (!_t__stall_fsm___pip_1598_1_14)   ) begin
   _d__idx_fsm___pip_1598_1_14 = 1;
   _d__full_fsm___pip_1598_1_13 = 0;
end
if ( (_ready_fsm___pip_1598_1_13)   && (_d__full_fsm___pip_1598_1_12)   && (!_t__stall_fsm___pip_1598_1_12)   && (!_d__full_fsm___pip_1598_1_13)   && (!_t__stall_fsm___pip_1598_1_13)   ) begin
   _d__idx_fsm___pip_1598_1_13 = 1;
   _d__full_fsm___pip_1598_1_12 = 0;
end
if ( (_ready_fsm___pip_1598_1_12)   && (_d__full_fsm___pip_1598_1_11)   && (!_t__stall_fsm___pip_1598_1_11)   && (!_d__full_fsm___pip_1598_1_12)   && (!_t__stall_fsm___pip_1598_1_12)   ) begin
   _d__idx_fsm___pip_1598_1_12 = 1;
   _d__full_fsm___pip_1598_1_11 = 0;
end
if ( (_ready_fsm___pip_1598_1_11)   && (_d__full_fsm___pip_1598_1_10)   && (!_t__stall_fsm___pip_1598_1_10)   && (!_d__full_fsm___pip_1598_1_11)   && (!_t__stall_fsm___pip_1598_1_11)   ) begin
   _d__idx_fsm___pip_1598_1_11 = 1;
   _d__full_fsm___pip_1598_1_10 = 0;
end
if ( (_ready_fsm___pip_1598_1_10)   && (_d__full_fsm___pip_1598_1_9)   && (!_t__stall_fsm___pip_1598_1_9)   && (!_d__full_fsm___pip_1598_1_10)   && (!_t__stall_fsm___pip_1598_1_10)   ) begin
   _d__idx_fsm___pip_1598_1_10 = 1;
   _d__full_fsm___pip_1598_1_9 = 0;
end
if ( (_ready_fsm___pip_1598_1_9)   && (_d__full_fsm___pip_1598_1_8)   && (!_t__stall_fsm___pip_1598_1_8)   && (!_d__full_fsm___pip_1598_1_9)   && (!_t__stall_fsm___pip_1598_1_9)   ) begin
   _d__idx_fsm___pip_1598_1_9 = 1;
   _d__full_fsm___pip_1598_1_8 = 0;
end
if ( (_ready_fsm___pip_1598_1_8)   && (_d__full_fsm___pip_1598_1_7)   && (!_t__stall_fsm___pip_1598_1_7)   && (!_d__full_fsm___pip_1598_1_8)   && (!_t__stall_fsm___pip_1598_1_8)   ) begin
   _d__idx_fsm___pip_1598_1_8 = 1;
   _d__full_fsm___pip_1598_1_7 = 0;
end
if ( (_ready_fsm___pip_1598_1_7)   && (_d__full_fsm___pip_1598_1_6)   && (!_t__stall_fsm___pip_1598_1_6)   && (!_d__full_fsm___pip_1598_1_7)   && (!_t__stall_fsm___pip_1598_1_7)   ) begin
   _d__idx_fsm___pip_1598_1_7 = 1;
   _d__full_fsm___pip_1598_1_6 = 0;
end
if ( (_ready_fsm___pip_1598_1_6)   && (_d__full_fsm___pip_1598_1_5)   && (!_t__stall_fsm___pip_1598_1_5)   && (!_d__full_fsm___pip_1598_1_6)   && (!_t__stall_fsm___pip_1598_1_6)   ) begin
   _d__idx_fsm___pip_1598_1_6 = 1;
   _d__full_fsm___pip_1598_1_5 = 0;
end
if ( (_ready_fsm___pip_1598_1_5)   && (_d__full_fsm___pip_1598_1_4)   && (!_t__stall_fsm___pip_1598_1_4)   && (!_d__full_fsm___pip_1598_1_5)   && (!_t__stall_fsm___pip_1598_1_5)   ) begin
   _d__idx_fsm___pip_1598_1_5 = 1;
   _d__full_fsm___pip_1598_1_4 = 0;
end
if ( (_ready_fsm___pip_1598_1_4)   && (_d__full_fsm___pip_1598_1_3)   && (!_t__stall_fsm___pip_1598_1_3)   && (!_d__full_fsm___pip_1598_1_4)   && (!_t__stall_fsm___pip_1598_1_4)   ) begin
   _d__idx_fsm___pip_1598_1_4 = 1;
   _d__full_fsm___pip_1598_1_3 = 0;
end
if ( (_ready_fsm___pip_1598_1_3)   && (_d__full_fsm___pip_1598_1_2)   && (!_t__stall_fsm___pip_1598_1_2)   && (!_d__full_fsm___pip_1598_1_3)   && (!_t__stall_fsm___pip_1598_1_3)   ) begin
   _d__idx_fsm___pip_1598_1_3 = 1;
   _d__full_fsm___pip_1598_1_2 = 0;
end
if ( (_ready_fsm___pip_1598_1_2)   && (_d__full_fsm___pip_1598_1_1)   && (!_t__stall_fsm___pip_1598_1_1)   && (!_d__full_fsm___pip_1598_1_2)   && (!_t__stall_fsm___pip_1598_1_2)   ) begin
   _d__idx_fsm___pip_1598_1_2 = 1;
   _d__full_fsm___pip_1598_1_1 = 0;
end
if ( (_ready_fsm___pip_1598_1_1)   && (_d__full_fsm___pip_1598_1_0)   && (!_t__stall_fsm___pip_1598_1_0)   && (!_d__full_fsm___pip_1598_1_1)   && (!_t__stall_fsm___pip_1598_1_1)   ) begin
   _d__idx_fsm___pip_1598_1_1 = 1;
   _d__full_fsm___pip_1598_1_0 = 0;
end
if ( (_ready_fsm___pip_1598_1_0)   && ((( ~_autorun ? 1 : _d__idx_fsm0)) == 2)
  && (!_d__full_fsm___pip_1598_1_0)   && (!_t__stall_fsm___pip_1598_1_0)   ) begin
   _d__idx_fsm___pip_1598_1_0 = 1;
end
end

always @(posedge clock) begin
_q_cycle <= _d_cycle;
_q_inv_addr <= _d_inv_addr;
_q_cos_addr <= _d_cos_addr;
_q___block_3_cursor <= _d___block_3_cursor;
_q___pip_1598_1_0___stage___block_8_accum_b <= _d___pip_1598_1_0___stage___block_8_accum_b;
_q___pip_1598_1_1___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_1 == 1 && !_t__stall_fsm___pip_1598_1_1) ? _d___pip_1598_1_0___stage___block_8_accum_b : _d___pip_1598_1_1___stage___block_8_accum_b;
_q___pip_1598_1_2___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_2 == 1 && !_t__stall_fsm___pip_1598_1_2) ? _d___pip_1598_1_1___stage___block_8_accum_b : _d___pip_1598_1_2___stage___block_8_accum_b;
_q___pip_1598_1_3___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_3 == 1 && !_t__stall_fsm___pip_1598_1_3) ? _d___pip_1598_1_2___stage___block_8_accum_b : _d___pip_1598_1_3___stage___block_8_accum_b;
_q___pip_1598_1_4___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_4 == 1 && !_t__stall_fsm___pip_1598_1_4) ? _d___pip_1598_1_3___stage___block_8_accum_b : _d___pip_1598_1_4___stage___block_8_accum_b;
_q___pip_1598_1_5___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_5 == 1 && !_t__stall_fsm___pip_1598_1_5) ? _d___pip_1598_1_4___stage___block_8_accum_b : _d___pip_1598_1_5___stage___block_8_accum_b;
_q___pip_1598_1_6___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_6 == 1 && !_t__stall_fsm___pip_1598_1_6) ? _d___pip_1598_1_5___stage___block_8_accum_b : _d___pip_1598_1_6___stage___block_8_accum_b;
_q___pip_1598_1_7___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_7 == 1 && !_t__stall_fsm___pip_1598_1_7) ? _d___pip_1598_1_6___stage___block_8_accum_b : _d___pip_1598_1_7___stage___block_8_accum_b;
_q___pip_1598_1_8___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_8 == 1 && !_t__stall_fsm___pip_1598_1_8) ? _d___pip_1598_1_7___stage___block_8_accum_b : _d___pip_1598_1_8___stage___block_8_accum_b;
_q___pip_1598_1_9___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_9 == 1 && !_t__stall_fsm___pip_1598_1_9) ? _d___pip_1598_1_8___stage___block_8_accum_b : _d___pip_1598_1_9___stage___block_8_accum_b;
_q___pip_1598_1_10___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_10 == 1 && !_t__stall_fsm___pip_1598_1_10) ? _d___pip_1598_1_9___stage___block_8_accum_b : _d___pip_1598_1_10___stage___block_8_accum_b;
_q___pip_1598_1_11___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_11 == 1 && !_t__stall_fsm___pip_1598_1_11) ? _d___pip_1598_1_10___stage___block_8_accum_b : _d___pip_1598_1_11___stage___block_8_accum_b;
_q___pip_1598_1_12___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_12 == 1 && !_t__stall_fsm___pip_1598_1_12) ? _d___pip_1598_1_11___stage___block_8_accum_b : _d___pip_1598_1_12___stage___block_8_accum_b;
_q___pip_1598_1_13___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_13 == 1 && !_t__stall_fsm___pip_1598_1_13) ? _d___pip_1598_1_12___stage___block_8_accum_b : _d___pip_1598_1_13___stage___block_8_accum_b;
_q___pip_1598_1_14___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_14 == 1 && !_t__stall_fsm___pip_1598_1_14) ? _d___pip_1598_1_13___stage___block_8_accum_b : _d___pip_1598_1_14___stage___block_8_accum_b;
_q___pip_1598_1_15___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_15 == 1 && !_t__stall_fsm___pip_1598_1_15) ? _d___pip_1598_1_14___stage___block_8_accum_b : _d___pip_1598_1_15___stage___block_8_accum_b;
_q___pip_1598_1_16___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_16 == 1 && !_t__stall_fsm___pip_1598_1_16) ? _d___pip_1598_1_15___stage___block_8_accum_b : _d___pip_1598_1_16___stage___block_8_accum_b;
_q___pip_1598_1_17___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_17 == 1 && !_t__stall_fsm___pip_1598_1_17) ? _d___pip_1598_1_16___stage___block_8_accum_b : _d___pip_1598_1_17___stage___block_8_accum_b;
_q___pip_1598_1_18___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_18 == 1 && !_t__stall_fsm___pip_1598_1_18) ? _d___pip_1598_1_17___stage___block_8_accum_b : _d___pip_1598_1_18___stage___block_8_accum_b;
_q___pip_1598_1_19___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_19 == 1 && !_t__stall_fsm___pip_1598_1_19) ? _d___pip_1598_1_18___stage___block_8_accum_b : _d___pip_1598_1_19___stage___block_8_accum_b;
_q___pip_1598_1_20___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_20 == 1 && !_t__stall_fsm___pip_1598_1_20) ? _d___pip_1598_1_19___stage___block_8_accum_b : _d___pip_1598_1_20___stage___block_8_accum_b;
_q___pip_1598_1_21___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_21 == 1 && !_t__stall_fsm___pip_1598_1_21) ? _d___pip_1598_1_20___stage___block_8_accum_b : _d___pip_1598_1_21___stage___block_8_accum_b;
_q___pip_1598_1_22___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_22 == 1 && !_t__stall_fsm___pip_1598_1_22) ? _d___pip_1598_1_21___stage___block_8_accum_b : _d___pip_1598_1_22___stage___block_8_accum_b;
_q___pip_1598_1_23___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_23 == 1 && !_t__stall_fsm___pip_1598_1_23) ? _d___pip_1598_1_22___stage___block_8_accum_b : _d___pip_1598_1_23___stage___block_8_accum_b;
_q___pip_1598_1_24___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_24 == 1 && !_t__stall_fsm___pip_1598_1_24) ? _d___pip_1598_1_23___stage___block_8_accum_b : _d___pip_1598_1_24___stage___block_8_accum_b;
_q___pip_1598_1_25___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_25 == 1 && !_t__stall_fsm___pip_1598_1_25) ? _d___pip_1598_1_24___stage___block_8_accum_b : _d___pip_1598_1_25___stage___block_8_accum_b;
_q___pip_1598_1_26___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_26 == 1 && !_t__stall_fsm___pip_1598_1_26) ? _d___pip_1598_1_25___stage___block_8_accum_b : _d___pip_1598_1_26___stage___block_8_accum_b;
_q___pip_1598_1_27___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_27 == 1 && !_t__stall_fsm___pip_1598_1_27) ? _d___pip_1598_1_26___stage___block_8_accum_b : _d___pip_1598_1_27___stage___block_8_accum_b;
_q___pip_1598_1_28___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_28 == 1 && !_t__stall_fsm___pip_1598_1_28) ? _d___pip_1598_1_27___stage___block_8_accum_b : _d___pip_1598_1_28___stage___block_8_accum_b;
_q___pip_1598_1_29___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_29 == 1 && !_t__stall_fsm___pip_1598_1_29) ? _d___pip_1598_1_28___stage___block_8_accum_b : _d___pip_1598_1_29___stage___block_8_accum_b;
_q___pip_1598_1_30___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_30 == 1 && !_t__stall_fsm___pip_1598_1_30) ? _d___pip_1598_1_29___stage___block_8_accum_b : _d___pip_1598_1_30___stage___block_8_accum_b;
_q___pip_1598_1_31___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_31 == 1 && !_t__stall_fsm___pip_1598_1_31) ? _d___pip_1598_1_30___stage___block_8_accum_b : _d___pip_1598_1_31___stage___block_8_accum_b;
_q___pip_1598_1_32___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_32 == 1 && !_t__stall_fsm___pip_1598_1_32) ? _d___pip_1598_1_31___stage___block_8_accum_b : _d___pip_1598_1_32___stage___block_8_accum_b;
_q___pip_1598_1_33___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_33 == 1 && !_t__stall_fsm___pip_1598_1_33) ? _d___pip_1598_1_32___stage___block_8_accum_b : _d___pip_1598_1_33___stage___block_8_accum_b;
_q___pip_1598_1_34___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_34 == 1 && !_t__stall_fsm___pip_1598_1_34) ? _d___pip_1598_1_33___stage___block_8_accum_b : _d___pip_1598_1_34___stage___block_8_accum_b;
_q___pip_1598_1_35___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_35 == 1 && !_t__stall_fsm___pip_1598_1_35) ? _d___pip_1598_1_34___stage___block_8_accum_b : _d___pip_1598_1_35___stage___block_8_accum_b;
_q___pip_1598_1_36___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_36 == 1 && !_t__stall_fsm___pip_1598_1_36) ? _d___pip_1598_1_35___stage___block_8_accum_b : _d___pip_1598_1_36___stage___block_8_accum_b;
_q___pip_1598_1_37___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_37 == 1 && !_t__stall_fsm___pip_1598_1_37) ? _d___pip_1598_1_36___stage___block_8_accum_b : _d___pip_1598_1_37___stage___block_8_accum_b;
_q___pip_1598_1_38___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_38 == 1 && !_t__stall_fsm___pip_1598_1_38) ? _d___pip_1598_1_37___stage___block_8_accum_b : _d___pip_1598_1_38___stage___block_8_accum_b;
_q___pip_1598_1_39___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_39 == 1 && !_t__stall_fsm___pip_1598_1_39) ? _d___pip_1598_1_38___stage___block_8_accum_b : _d___pip_1598_1_39___stage___block_8_accum_b;
_q___pip_1598_1_40___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_40 == 1 && !_t__stall_fsm___pip_1598_1_40) ? _d___pip_1598_1_39___stage___block_8_accum_b : _d___pip_1598_1_40___stage___block_8_accum_b;
_q___pip_1598_1_41___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_41 == 1 && !_t__stall_fsm___pip_1598_1_41) ? _d___pip_1598_1_40___stage___block_8_accum_b : _d___pip_1598_1_41___stage___block_8_accum_b;
_q___pip_1598_1_42___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_42 == 1 && !_t__stall_fsm___pip_1598_1_42) ? _d___pip_1598_1_41___stage___block_8_accum_b : _d___pip_1598_1_42___stage___block_8_accum_b;
_q___pip_1598_1_43___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_43 == 1 && !_t__stall_fsm___pip_1598_1_43) ? _d___pip_1598_1_42___stage___block_8_accum_b : _d___pip_1598_1_43___stage___block_8_accum_b;
_q___pip_1598_1_44___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_44 == 1 && !_t__stall_fsm___pip_1598_1_44) ? _d___pip_1598_1_43___stage___block_8_accum_b : _d___pip_1598_1_44___stage___block_8_accum_b;
_q___pip_1598_1_45___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_45 == 1 && !_t__stall_fsm___pip_1598_1_45) ? _d___pip_1598_1_44___stage___block_8_accum_b : _d___pip_1598_1_45___stage___block_8_accum_b;
_q___pip_1598_1_46___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_46 == 1 && !_t__stall_fsm___pip_1598_1_46) ? _d___pip_1598_1_45___stage___block_8_accum_b : _d___pip_1598_1_46___stage___block_8_accum_b;
_q___pip_1598_1_47___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_47 == 1 && !_t__stall_fsm___pip_1598_1_47) ? _d___pip_1598_1_46___stage___block_8_accum_b : _d___pip_1598_1_47___stage___block_8_accum_b;
_q___pip_1598_1_48___stage___block_8_accum_b <= (_d__idx_fsm___pip_1598_1_48 == 1 && !_t__stall_fsm___pip_1598_1_48) ? _d___pip_1598_1_47___stage___block_8_accum_b : _d___pip_1598_1_48___stage___block_8_accum_b;
_q___pip_1598_1_0___stage___block_8_accum_g <= _d___pip_1598_1_0___stage___block_8_accum_g;
_q___pip_1598_1_1___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_1 == 1 && !_t__stall_fsm___pip_1598_1_1) ? _d___pip_1598_1_0___stage___block_8_accum_g : _d___pip_1598_1_1___stage___block_8_accum_g;
_q___pip_1598_1_2___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_2 == 1 && !_t__stall_fsm___pip_1598_1_2) ? _d___pip_1598_1_1___stage___block_8_accum_g : _d___pip_1598_1_2___stage___block_8_accum_g;
_q___pip_1598_1_3___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_3 == 1 && !_t__stall_fsm___pip_1598_1_3) ? _d___pip_1598_1_2___stage___block_8_accum_g : _d___pip_1598_1_3___stage___block_8_accum_g;
_q___pip_1598_1_4___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_4 == 1 && !_t__stall_fsm___pip_1598_1_4) ? _d___pip_1598_1_3___stage___block_8_accum_g : _d___pip_1598_1_4___stage___block_8_accum_g;
_q___pip_1598_1_5___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_5 == 1 && !_t__stall_fsm___pip_1598_1_5) ? _d___pip_1598_1_4___stage___block_8_accum_g : _d___pip_1598_1_5___stage___block_8_accum_g;
_q___pip_1598_1_6___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_6 == 1 && !_t__stall_fsm___pip_1598_1_6) ? _d___pip_1598_1_5___stage___block_8_accum_g : _d___pip_1598_1_6___stage___block_8_accum_g;
_q___pip_1598_1_7___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_7 == 1 && !_t__stall_fsm___pip_1598_1_7) ? _d___pip_1598_1_6___stage___block_8_accum_g : _d___pip_1598_1_7___stage___block_8_accum_g;
_q___pip_1598_1_8___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_8 == 1 && !_t__stall_fsm___pip_1598_1_8) ? _d___pip_1598_1_7___stage___block_8_accum_g : _d___pip_1598_1_8___stage___block_8_accum_g;
_q___pip_1598_1_9___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_9 == 1 && !_t__stall_fsm___pip_1598_1_9) ? _d___pip_1598_1_8___stage___block_8_accum_g : _d___pip_1598_1_9___stage___block_8_accum_g;
_q___pip_1598_1_10___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_10 == 1 && !_t__stall_fsm___pip_1598_1_10) ? _d___pip_1598_1_9___stage___block_8_accum_g : _d___pip_1598_1_10___stage___block_8_accum_g;
_q___pip_1598_1_11___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_11 == 1 && !_t__stall_fsm___pip_1598_1_11) ? _d___pip_1598_1_10___stage___block_8_accum_g : _d___pip_1598_1_11___stage___block_8_accum_g;
_q___pip_1598_1_12___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_12 == 1 && !_t__stall_fsm___pip_1598_1_12) ? _d___pip_1598_1_11___stage___block_8_accum_g : _d___pip_1598_1_12___stage___block_8_accum_g;
_q___pip_1598_1_13___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_13 == 1 && !_t__stall_fsm___pip_1598_1_13) ? _d___pip_1598_1_12___stage___block_8_accum_g : _d___pip_1598_1_13___stage___block_8_accum_g;
_q___pip_1598_1_14___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_14 == 1 && !_t__stall_fsm___pip_1598_1_14) ? _d___pip_1598_1_13___stage___block_8_accum_g : _d___pip_1598_1_14___stage___block_8_accum_g;
_q___pip_1598_1_15___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_15 == 1 && !_t__stall_fsm___pip_1598_1_15) ? _d___pip_1598_1_14___stage___block_8_accum_g : _d___pip_1598_1_15___stage___block_8_accum_g;
_q___pip_1598_1_16___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_16 == 1 && !_t__stall_fsm___pip_1598_1_16) ? _d___pip_1598_1_15___stage___block_8_accum_g : _d___pip_1598_1_16___stage___block_8_accum_g;
_q___pip_1598_1_17___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_17 == 1 && !_t__stall_fsm___pip_1598_1_17) ? _d___pip_1598_1_16___stage___block_8_accum_g : _d___pip_1598_1_17___stage___block_8_accum_g;
_q___pip_1598_1_18___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_18 == 1 && !_t__stall_fsm___pip_1598_1_18) ? _d___pip_1598_1_17___stage___block_8_accum_g : _d___pip_1598_1_18___stage___block_8_accum_g;
_q___pip_1598_1_19___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_19 == 1 && !_t__stall_fsm___pip_1598_1_19) ? _d___pip_1598_1_18___stage___block_8_accum_g : _d___pip_1598_1_19___stage___block_8_accum_g;
_q___pip_1598_1_20___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_20 == 1 && !_t__stall_fsm___pip_1598_1_20) ? _d___pip_1598_1_19___stage___block_8_accum_g : _d___pip_1598_1_20___stage___block_8_accum_g;
_q___pip_1598_1_21___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_21 == 1 && !_t__stall_fsm___pip_1598_1_21) ? _d___pip_1598_1_20___stage___block_8_accum_g : _d___pip_1598_1_21___stage___block_8_accum_g;
_q___pip_1598_1_22___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_22 == 1 && !_t__stall_fsm___pip_1598_1_22) ? _d___pip_1598_1_21___stage___block_8_accum_g : _d___pip_1598_1_22___stage___block_8_accum_g;
_q___pip_1598_1_23___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_23 == 1 && !_t__stall_fsm___pip_1598_1_23) ? _d___pip_1598_1_22___stage___block_8_accum_g : _d___pip_1598_1_23___stage___block_8_accum_g;
_q___pip_1598_1_24___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_24 == 1 && !_t__stall_fsm___pip_1598_1_24) ? _d___pip_1598_1_23___stage___block_8_accum_g : _d___pip_1598_1_24___stage___block_8_accum_g;
_q___pip_1598_1_25___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_25 == 1 && !_t__stall_fsm___pip_1598_1_25) ? _d___pip_1598_1_24___stage___block_8_accum_g : _d___pip_1598_1_25___stage___block_8_accum_g;
_q___pip_1598_1_26___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_26 == 1 && !_t__stall_fsm___pip_1598_1_26) ? _d___pip_1598_1_25___stage___block_8_accum_g : _d___pip_1598_1_26___stage___block_8_accum_g;
_q___pip_1598_1_27___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_27 == 1 && !_t__stall_fsm___pip_1598_1_27) ? _d___pip_1598_1_26___stage___block_8_accum_g : _d___pip_1598_1_27___stage___block_8_accum_g;
_q___pip_1598_1_28___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_28 == 1 && !_t__stall_fsm___pip_1598_1_28) ? _d___pip_1598_1_27___stage___block_8_accum_g : _d___pip_1598_1_28___stage___block_8_accum_g;
_q___pip_1598_1_29___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_29 == 1 && !_t__stall_fsm___pip_1598_1_29) ? _d___pip_1598_1_28___stage___block_8_accum_g : _d___pip_1598_1_29___stage___block_8_accum_g;
_q___pip_1598_1_30___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_30 == 1 && !_t__stall_fsm___pip_1598_1_30) ? _d___pip_1598_1_29___stage___block_8_accum_g : _d___pip_1598_1_30___stage___block_8_accum_g;
_q___pip_1598_1_31___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_31 == 1 && !_t__stall_fsm___pip_1598_1_31) ? _d___pip_1598_1_30___stage___block_8_accum_g : _d___pip_1598_1_31___stage___block_8_accum_g;
_q___pip_1598_1_32___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_32 == 1 && !_t__stall_fsm___pip_1598_1_32) ? _d___pip_1598_1_31___stage___block_8_accum_g : _d___pip_1598_1_32___stage___block_8_accum_g;
_q___pip_1598_1_33___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_33 == 1 && !_t__stall_fsm___pip_1598_1_33) ? _d___pip_1598_1_32___stage___block_8_accum_g : _d___pip_1598_1_33___stage___block_8_accum_g;
_q___pip_1598_1_34___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_34 == 1 && !_t__stall_fsm___pip_1598_1_34) ? _d___pip_1598_1_33___stage___block_8_accum_g : _d___pip_1598_1_34___stage___block_8_accum_g;
_q___pip_1598_1_35___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_35 == 1 && !_t__stall_fsm___pip_1598_1_35) ? _d___pip_1598_1_34___stage___block_8_accum_g : _d___pip_1598_1_35___stage___block_8_accum_g;
_q___pip_1598_1_36___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_36 == 1 && !_t__stall_fsm___pip_1598_1_36) ? _d___pip_1598_1_35___stage___block_8_accum_g : _d___pip_1598_1_36___stage___block_8_accum_g;
_q___pip_1598_1_37___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_37 == 1 && !_t__stall_fsm___pip_1598_1_37) ? _d___pip_1598_1_36___stage___block_8_accum_g : _d___pip_1598_1_37___stage___block_8_accum_g;
_q___pip_1598_1_38___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_38 == 1 && !_t__stall_fsm___pip_1598_1_38) ? _d___pip_1598_1_37___stage___block_8_accum_g : _d___pip_1598_1_38___stage___block_8_accum_g;
_q___pip_1598_1_39___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_39 == 1 && !_t__stall_fsm___pip_1598_1_39) ? _d___pip_1598_1_38___stage___block_8_accum_g : _d___pip_1598_1_39___stage___block_8_accum_g;
_q___pip_1598_1_40___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_40 == 1 && !_t__stall_fsm___pip_1598_1_40) ? _d___pip_1598_1_39___stage___block_8_accum_g : _d___pip_1598_1_40___stage___block_8_accum_g;
_q___pip_1598_1_41___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_41 == 1 && !_t__stall_fsm___pip_1598_1_41) ? _d___pip_1598_1_40___stage___block_8_accum_g : _d___pip_1598_1_41___stage___block_8_accum_g;
_q___pip_1598_1_42___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_42 == 1 && !_t__stall_fsm___pip_1598_1_42) ? _d___pip_1598_1_41___stage___block_8_accum_g : _d___pip_1598_1_42___stage___block_8_accum_g;
_q___pip_1598_1_43___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_43 == 1 && !_t__stall_fsm___pip_1598_1_43) ? _d___pip_1598_1_42___stage___block_8_accum_g : _d___pip_1598_1_43___stage___block_8_accum_g;
_q___pip_1598_1_44___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_44 == 1 && !_t__stall_fsm___pip_1598_1_44) ? _d___pip_1598_1_43___stage___block_8_accum_g : _d___pip_1598_1_44___stage___block_8_accum_g;
_q___pip_1598_1_45___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_45 == 1 && !_t__stall_fsm___pip_1598_1_45) ? _d___pip_1598_1_44___stage___block_8_accum_g : _d___pip_1598_1_45___stage___block_8_accum_g;
_q___pip_1598_1_46___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_46 == 1 && !_t__stall_fsm___pip_1598_1_46) ? _d___pip_1598_1_45___stage___block_8_accum_g : _d___pip_1598_1_46___stage___block_8_accum_g;
_q___pip_1598_1_47___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_47 == 1 && !_t__stall_fsm___pip_1598_1_47) ? _d___pip_1598_1_46___stage___block_8_accum_g : _d___pip_1598_1_47___stage___block_8_accum_g;
_q___pip_1598_1_48___stage___block_8_accum_g <= (_d__idx_fsm___pip_1598_1_48 == 1 && !_t__stall_fsm___pip_1598_1_48) ? _d___pip_1598_1_47___stage___block_8_accum_g : _d___pip_1598_1_48___stage___block_8_accum_g;
_q___pip_1598_1_0___stage___block_8_accum_r <= _d___pip_1598_1_0___stage___block_8_accum_r;
_q___pip_1598_1_1___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_1 == 1 && !_t__stall_fsm___pip_1598_1_1) ? _d___pip_1598_1_0___stage___block_8_accum_r : _d___pip_1598_1_1___stage___block_8_accum_r;
_q___pip_1598_1_2___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_2 == 1 && !_t__stall_fsm___pip_1598_1_2) ? _d___pip_1598_1_1___stage___block_8_accum_r : _d___pip_1598_1_2___stage___block_8_accum_r;
_q___pip_1598_1_3___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_3 == 1 && !_t__stall_fsm___pip_1598_1_3) ? _d___pip_1598_1_2___stage___block_8_accum_r : _d___pip_1598_1_3___stage___block_8_accum_r;
_q___pip_1598_1_4___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_4 == 1 && !_t__stall_fsm___pip_1598_1_4) ? _d___pip_1598_1_3___stage___block_8_accum_r : _d___pip_1598_1_4___stage___block_8_accum_r;
_q___pip_1598_1_5___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_5 == 1 && !_t__stall_fsm___pip_1598_1_5) ? _d___pip_1598_1_4___stage___block_8_accum_r : _d___pip_1598_1_5___stage___block_8_accum_r;
_q___pip_1598_1_6___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_6 == 1 && !_t__stall_fsm___pip_1598_1_6) ? _d___pip_1598_1_5___stage___block_8_accum_r : _d___pip_1598_1_6___stage___block_8_accum_r;
_q___pip_1598_1_7___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_7 == 1 && !_t__stall_fsm___pip_1598_1_7) ? _d___pip_1598_1_6___stage___block_8_accum_r : _d___pip_1598_1_7___stage___block_8_accum_r;
_q___pip_1598_1_8___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_8 == 1 && !_t__stall_fsm___pip_1598_1_8) ? _d___pip_1598_1_7___stage___block_8_accum_r : _d___pip_1598_1_8___stage___block_8_accum_r;
_q___pip_1598_1_9___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_9 == 1 && !_t__stall_fsm___pip_1598_1_9) ? _d___pip_1598_1_8___stage___block_8_accum_r : _d___pip_1598_1_9___stage___block_8_accum_r;
_q___pip_1598_1_10___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_10 == 1 && !_t__stall_fsm___pip_1598_1_10) ? _d___pip_1598_1_9___stage___block_8_accum_r : _d___pip_1598_1_10___stage___block_8_accum_r;
_q___pip_1598_1_11___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_11 == 1 && !_t__stall_fsm___pip_1598_1_11) ? _d___pip_1598_1_10___stage___block_8_accum_r : _d___pip_1598_1_11___stage___block_8_accum_r;
_q___pip_1598_1_12___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_12 == 1 && !_t__stall_fsm___pip_1598_1_12) ? _d___pip_1598_1_11___stage___block_8_accum_r : _d___pip_1598_1_12___stage___block_8_accum_r;
_q___pip_1598_1_13___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_13 == 1 && !_t__stall_fsm___pip_1598_1_13) ? _d___pip_1598_1_12___stage___block_8_accum_r : _d___pip_1598_1_13___stage___block_8_accum_r;
_q___pip_1598_1_14___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_14 == 1 && !_t__stall_fsm___pip_1598_1_14) ? _d___pip_1598_1_13___stage___block_8_accum_r : _d___pip_1598_1_14___stage___block_8_accum_r;
_q___pip_1598_1_15___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_15 == 1 && !_t__stall_fsm___pip_1598_1_15) ? _d___pip_1598_1_14___stage___block_8_accum_r : _d___pip_1598_1_15___stage___block_8_accum_r;
_q___pip_1598_1_16___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_16 == 1 && !_t__stall_fsm___pip_1598_1_16) ? _d___pip_1598_1_15___stage___block_8_accum_r : _d___pip_1598_1_16___stage___block_8_accum_r;
_q___pip_1598_1_17___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_17 == 1 && !_t__stall_fsm___pip_1598_1_17) ? _d___pip_1598_1_16___stage___block_8_accum_r : _d___pip_1598_1_17___stage___block_8_accum_r;
_q___pip_1598_1_18___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_18 == 1 && !_t__stall_fsm___pip_1598_1_18) ? _d___pip_1598_1_17___stage___block_8_accum_r : _d___pip_1598_1_18___stage___block_8_accum_r;
_q___pip_1598_1_19___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_19 == 1 && !_t__stall_fsm___pip_1598_1_19) ? _d___pip_1598_1_18___stage___block_8_accum_r : _d___pip_1598_1_19___stage___block_8_accum_r;
_q___pip_1598_1_20___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_20 == 1 && !_t__stall_fsm___pip_1598_1_20) ? _d___pip_1598_1_19___stage___block_8_accum_r : _d___pip_1598_1_20___stage___block_8_accum_r;
_q___pip_1598_1_21___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_21 == 1 && !_t__stall_fsm___pip_1598_1_21) ? _d___pip_1598_1_20___stage___block_8_accum_r : _d___pip_1598_1_21___stage___block_8_accum_r;
_q___pip_1598_1_22___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_22 == 1 && !_t__stall_fsm___pip_1598_1_22) ? _d___pip_1598_1_21___stage___block_8_accum_r : _d___pip_1598_1_22___stage___block_8_accum_r;
_q___pip_1598_1_23___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_23 == 1 && !_t__stall_fsm___pip_1598_1_23) ? _d___pip_1598_1_22___stage___block_8_accum_r : _d___pip_1598_1_23___stage___block_8_accum_r;
_q___pip_1598_1_24___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_24 == 1 && !_t__stall_fsm___pip_1598_1_24) ? _d___pip_1598_1_23___stage___block_8_accum_r : _d___pip_1598_1_24___stage___block_8_accum_r;
_q___pip_1598_1_25___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_25 == 1 && !_t__stall_fsm___pip_1598_1_25) ? _d___pip_1598_1_24___stage___block_8_accum_r : _d___pip_1598_1_25___stage___block_8_accum_r;
_q___pip_1598_1_26___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_26 == 1 && !_t__stall_fsm___pip_1598_1_26) ? _d___pip_1598_1_25___stage___block_8_accum_r : _d___pip_1598_1_26___stage___block_8_accum_r;
_q___pip_1598_1_27___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_27 == 1 && !_t__stall_fsm___pip_1598_1_27) ? _d___pip_1598_1_26___stage___block_8_accum_r : _d___pip_1598_1_27___stage___block_8_accum_r;
_q___pip_1598_1_28___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_28 == 1 && !_t__stall_fsm___pip_1598_1_28) ? _d___pip_1598_1_27___stage___block_8_accum_r : _d___pip_1598_1_28___stage___block_8_accum_r;
_q___pip_1598_1_29___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_29 == 1 && !_t__stall_fsm___pip_1598_1_29) ? _d___pip_1598_1_28___stage___block_8_accum_r : _d___pip_1598_1_29___stage___block_8_accum_r;
_q___pip_1598_1_30___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_30 == 1 && !_t__stall_fsm___pip_1598_1_30) ? _d___pip_1598_1_29___stage___block_8_accum_r : _d___pip_1598_1_30___stage___block_8_accum_r;
_q___pip_1598_1_31___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_31 == 1 && !_t__stall_fsm___pip_1598_1_31) ? _d___pip_1598_1_30___stage___block_8_accum_r : _d___pip_1598_1_31___stage___block_8_accum_r;
_q___pip_1598_1_32___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_32 == 1 && !_t__stall_fsm___pip_1598_1_32) ? _d___pip_1598_1_31___stage___block_8_accum_r : _d___pip_1598_1_32___stage___block_8_accum_r;
_q___pip_1598_1_33___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_33 == 1 && !_t__stall_fsm___pip_1598_1_33) ? _d___pip_1598_1_32___stage___block_8_accum_r : _d___pip_1598_1_33___stage___block_8_accum_r;
_q___pip_1598_1_34___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_34 == 1 && !_t__stall_fsm___pip_1598_1_34) ? _d___pip_1598_1_33___stage___block_8_accum_r : _d___pip_1598_1_34___stage___block_8_accum_r;
_q___pip_1598_1_35___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_35 == 1 && !_t__stall_fsm___pip_1598_1_35) ? _d___pip_1598_1_34___stage___block_8_accum_r : _d___pip_1598_1_35___stage___block_8_accum_r;
_q___pip_1598_1_36___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_36 == 1 && !_t__stall_fsm___pip_1598_1_36) ? _d___pip_1598_1_35___stage___block_8_accum_r : _d___pip_1598_1_36___stage___block_8_accum_r;
_q___pip_1598_1_37___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_37 == 1 && !_t__stall_fsm___pip_1598_1_37) ? _d___pip_1598_1_36___stage___block_8_accum_r : _d___pip_1598_1_37___stage___block_8_accum_r;
_q___pip_1598_1_38___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_38 == 1 && !_t__stall_fsm___pip_1598_1_38) ? _d___pip_1598_1_37___stage___block_8_accum_r : _d___pip_1598_1_38___stage___block_8_accum_r;
_q___pip_1598_1_39___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_39 == 1 && !_t__stall_fsm___pip_1598_1_39) ? _d___pip_1598_1_38___stage___block_8_accum_r : _d___pip_1598_1_39___stage___block_8_accum_r;
_q___pip_1598_1_40___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_40 == 1 && !_t__stall_fsm___pip_1598_1_40) ? _d___pip_1598_1_39___stage___block_8_accum_r : _d___pip_1598_1_40___stage___block_8_accum_r;
_q___pip_1598_1_41___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_41 == 1 && !_t__stall_fsm___pip_1598_1_41) ? _d___pip_1598_1_40___stage___block_8_accum_r : _d___pip_1598_1_41___stage___block_8_accum_r;
_q___pip_1598_1_42___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_42 == 1 && !_t__stall_fsm___pip_1598_1_42) ? _d___pip_1598_1_41___stage___block_8_accum_r : _d___pip_1598_1_42___stage___block_8_accum_r;
_q___pip_1598_1_43___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_43 == 1 && !_t__stall_fsm___pip_1598_1_43) ? _d___pip_1598_1_42___stage___block_8_accum_r : _d___pip_1598_1_43___stage___block_8_accum_r;
_q___pip_1598_1_44___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_44 == 1 && !_t__stall_fsm___pip_1598_1_44) ? _d___pip_1598_1_43___stage___block_8_accum_r : _d___pip_1598_1_44___stage___block_8_accum_r;
_q___pip_1598_1_45___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_45 == 1 && !_t__stall_fsm___pip_1598_1_45) ? _d___pip_1598_1_44___stage___block_8_accum_r : _d___pip_1598_1_45___stage___block_8_accum_r;
_q___pip_1598_1_46___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_46 == 1 && !_t__stall_fsm___pip_1598_1_46) ? _d___pip_1598_1_45___stage___block_8_accum_r : _d___pip_1598_1_46___stage___block_8_accum_r;
_q___pip_1598_1_47___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_47 == 1 && !_t__stall_fsm___pip_1598_1_47) ? _d___pip_1598_1_46___stage___block_8_accum_r : _d___pip_1598_1_47___stage___block_8_accum_r;
_q___pip_1598_1_48___stage___block_8_accum_r <= (_d__idx_fsm___pip_1598_1_48 == 1 && !_t__stall_fsm___pip_1598_1_48) ? _d___pip_1598_1_47___stage___block_8_accum_r : _d___pip_1598_1_48___stage___block_8_accum_r;
_q___pip_1598_1_0___stage___block_8_num <= _d___pip_1598_1_0___stage___block_8_num;
_q___pip_1598_1_1___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_1 == 1 && !_t__stall_fsm___pip_1598_1_1) ? _d___pip_1598_1_0___stage___block_8_num : _d___pip_1598_1_1___stage___block_8_num;
_q___pip_1598_1_2___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_2 == 1 && !_t__stall_fsm___pip_1598_1_2) ? _d___pip_1598_1_1___stage___block_8_num : _d___pip_1598_1_2___stage___block_8_num;
_q___pip_1598_1_3___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_3 == 1 && !_t__stall_fsm___pip_1598_1_3) ? _d___pip_1598_1_2___stage___block_8_num : _d___pip_1598_1_3___stage___block_8_num;
_q___pip_1598_1_4___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_4 == 1 && !_t__stall_fsm___pip_1598_1_4) ? _d___pip_1598_1_3___stage___block_8_num : _d___pip_1598_1_4___stage___block_8_num;
_q___pip_1598_1_5___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_5 == 1 && !_t__stall_fsm___pip_1598_1_5) ? _d___pip_1598_1_4___stage___block_8_num : _d___pip_1598_1_5___stage___block_8_num;
_q___pip_1598_1_6___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_6 == 1 && !_t__stall_fsm___pip_1598_1_6) ? _d___pip_1598_1_5___stage___block_8_num : _d___pip_1598_1_6___stage___block_8_num;
_q___pip_1598_1_7___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_7 == 1 && !_t__stall_fsm___pip_1598_1_7) ? _d___pip_1598_1_6___stage___block_8_num : _d___pip_1598_1_7___stage___block_8_num;
_q___pip_1598_1_8___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_8 == 1 && !_t__stall_fsm___pip_1598_1_8) ? _d___pip_1598_1_7___stage___block_8_num : _d___pip_1598_1_8___stage___block_8_num;
_q___pip_1598_1_9___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_9 == 1 && !_t__stall_fsm___pip_1598_1_9) ? _d___pip_1598_1_8___stage___block_8_num : _d___pip_1598_1_9___stage___block_8_num;
_q___pip_1598_1_10___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_10 == 1 && !_t__stall_fsm___pip_1598_1_10) ? _d___pip_1598_1_9___stage___block_8_num : _d___pip_1598_1_10___stage___block_8_num;
_q___pip_1598_1_11___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_11 == 1 && !_t__stall_fsm___pip_1598_1_11) ? _d___pip_1598_1_10___stage___block_8_num : _d___pip_1598_1_11___stage___block_8_num;
_q___pip_1598_1_12___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_12 == 1 && !_t__stall_fsm___pip_1598_1_12) ? _d___pip_1598_1_11___stage___block_8_num : _d___pip_1598_1_12___stage___block_8_num;
_q___pip_1598_1_13___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_13 == 1 && !_t__stall_fsm___pip_1598_1_13) ? _d___pip_1598_1_12___stage___block_8_num : _d___pip_1598_1_13___stage___block_8_num;
_q___pip_1598_1_14___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_14 == 1 && !_t__stall_fsm___pip_1598_1_14) ? _d___pip_1598_1_13___stage___block_8_num : _d___pip_1598_1_14___stage___block_8_num;
_q___pip_1598_1_15___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_15 == 1 && !_t__stall_fsm___pip_1598_1_15) ? _d___pip_1598_1_14___stage___block_8_num : _d___pip_1598_1_15___stage___block_8_num;
_q___pip_1598_1_16___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_16 == 1 && !_t__stall_fsm___pip_1598_1_16) ? _d___pip_1598_1_15___stage___block_8_num : _d___pip_1598_1_16___stage___block_8_num;
_q___pip_1598_1_17___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_17 == 1 && !_t__stall_fsm___pip_1598_1_17) ? _d___pip_1598_1_16___stage___block_8_num : _d___pip_1598_1_17___stage___block_8_num;
_q___pip_1598_1_18___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_18 == 1 && !_t__stall_fsm___pip_1598_1_18) ? _d___pip_1598_1_17___stage___block_8_num : _d___pip_1598_1_18___stage___block_8_num;
_q___pip_1598_1_19___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_19 == 1 && !_t__stall_fsm___pip_1598_1_19) ? _d___pip_1598_1_18___stage___block_8_num : _d___pip_1598_1_19___stage___block_8_num;
_q___pip_1598_1_20___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_20 == 1 && !_t__stall_fsm___pip_1598_1_20) ? _d___pip_1598_1_19___stage___block_8_num : _d___pip_1598_1_20___stage___block_8_num;
_q___pip_1598_1_21___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_21 == 1 && !_t__stall_fsm___pip_1598_1_21) ? _d___pip_1598_1_20___stage___block_8_num : _d___pip_1598_1_21___stage___block_8_num;
_q___pip_1598_1_22___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_22 == 1 && !_t__stall_fsm___pip_1598_1_22) ? _d___pip_1598_1_21___stage___block_8_num : _d___pip_1598_1_22___stage___block_8_num;
_q___pip_1598_1_23___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_23 == 1 && !_t__stall_fsm___pip_1598_1_23) ? _d___pip_1598_1_22___stage___block_8_num : _d___pip_1598_1_23___stage___block_8_num;
_q___pip_1598_1_24___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_24 == 1 && !_t__stall_fsm___pip_1598_1_24) ? _d___pip_1598_1_23___stage___block_8_num : _d___pip_1598_1_24___stage___block_8_num;
_q___pip_1598_1_25___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_25 == 1 && !_t__stall_fsm___pip_1598_1_25) ? _d___pip_1598_1_24___stage___block_8_num : _d___pip_1598_1_25___stage___block_8_num;
_q___pip_1598_1_26___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_26 == 1 && !_t__stall_fsm___pip_1598_1_26) ? _d___pip_1598_1_25___stage___block_8_num : _d___pip_1598_1_26___stage___block_8_num;
_q___pip_1598_1_27___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_27 == 1 && !_t__stall_fsm___pip_1598_1_27) ? _d___pip_1598_1_26___stage___block_8_num : _d___pip_1598_1_27___stage___block_8_num;
_q___pip_1598_1_28___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_28 == 1 && !_t__stall_fsm___pip_1598_1_28) ? _d___pip_1598_1_27___stage___block_8_num : _d___pip_1598_1_28___stage___block_8_num;
_q___pip_1598_1_29___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_29 == 1 && !_t__stall_fsm___pip_1598_1_29) ? _d___pip_1598_1_28___stage___block_8_num : _d___pip_1598_1_29___stage___block_8_num;
_q___pip_1598_1_30___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_30 == 1 && !_t__stall_fsm___pip_1598_1_30) ? _d___pip_1598_1_29___stage___block_8_num : _d___pip_1598_1_30___stage___block_8_num;
_q___pip_1598_1_31___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_31 == 1 && !_t__stall_fsm___pip_1598_1_31) ? _d___pip_1598_1_30___stage___block_8_num : _d___pip_1598_1_31___stage___block_8_num;
_q___pip_1598_1_32___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_32 == 1 && !_t__stall_fsm___pip_1598_1_32) ? _d___pip_1598_1_31___stage___block_8_num : _d___pip_1598_1_32___stage___block_8_num;
_q___pip_1598_1_33___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_33 == 1 && !_t__stall_fsm___pip_1598_1_33) ? _d___pip_1598_1_32___stage___block_8_num : _d___pip_1598_1_33___stage___block_8_num;
_q___pip_1598_1_34___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_34 == 1 && !_t__stall_fsm___pip_1598_1_34) ? _d___pip_1598_1_33___stage___block_8_num : _d___pip_1598_1_34___stage___block_8_num;
_q___pip_1598_1_35___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_35 == 1 && !_t__stall_fsm___pip_1598_1_35) ? _d___pip_1598_1_34___stage___block_8_num : _d___pip_1598_1_35___stage___block_8_num;
_q___pip_1598_1_36___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_36 == 1 && !_t__stall_fsm___pip_1598_1_36) ? _d___pip_1598_1_35___stage___block_8_num : _d___pip_1598_1_36___stage___block_8_num;
_q___pip_1598_1_37___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_37 == 1 && !_t__stall_fsm___pip_1598_1_37) ? _d___pip_1598_1_36___stage___block_8_num : _d___pip_1598_1_37___stage___block_8_num;
_q___pip_1598_1_38___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_38 == 1 && !_t__stall_fsm___pip_1598_1_38) ? _d___pip_1598_1_37___stage___block_8_num : _d___pip_1598_1_38___stage___block_8_num;
_q___pip_1598_1_39___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_39 == 1 && !_t__stall_fsm___pip_1598_1_39) ? _d___pip_1598_1_38___stage___block_8_num : _d___pip_1598_1_39___stage___block_8_num;
_q___pip_1598_1_40___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_40 == 1 && !_t__stall_fsm___pip_1598_1_40) ? _d___pip_1598_1_39___stage___block_8_num : _d___pip_1598_1_40___stage___block_8_num;
_q___pip_1598_1_41___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_41 == 1 && !_t__stall_fsm___pip_1598_1_41) ? _d___pip_1598_1_40___stage___block_8_num : _d___pip_1598_1_41___stage___block_8_num;
_q___pip_1598_1_42___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_42 == 1 && !_t__stall_fsm___pip_1598_1_42) ? _d___pip_1598_1_41___stage___block_8_num : _d___pip_1598_1_42___stage___block_8_num;
_q___pip_1598_1_43___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_43 == 1 && !_t__stall_fsm___pip_1598_1_43) ? _d___pip_1598_1_42___stage___block_8_num : _d___pip_1598_1_43___stage___block_8_num;
_q___pip_1598_1_44___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_44 == 1 && !_t__stall_fsm___pip_1598_1_44) ? _d___pip_1598_1_43___stage___block_8_num : _d___pip_1598_1_44___stage___block_8_num;
_q___pip_1598_1_45___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_45 == 1 && !_t__stall_fsm___pip_1598_1_45) ? _d___pip_1598_1_44___stage___block_8_num : _d___pip_1598_1_45___stage___block_8_num;
_q___pip_1598_1_46___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_46 == 1 && !_t__stall_fsm___pip_1598_1_46) ? _d___pip_1598_1_45___stage___block_8_num : _d___pip_1598_1_46___stage___block_8_num;
_q___pip_1598_1_47___stage___block_8_num <= (_d__idx_fsm___pip_1598_1_47 == 1 && !_t__stall_fsm___pip_1598_1_47) ? _d___pip_1598_1_46___stage___block_8_num : _d___pip_1598_1_47___stage___block_8_num;
_q___pip_1598_1_0___stage___block_8_p_x <= _d___pip_1598_1_0___stage___block_8_p_x;
_q___pip_1598_1_1___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_1 == 1 && !_t__stall_fsm___pip_1598_1_1) ? _d___pip_1598_1_0___stage___block_8_p_x : _d___pip_1598_1_1___stage___block_8_p_x;
_q___pip_1598_1_2___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_2 == 1 && !_t__stall_fsm___pip_1598_1_2) ? _d___pip_1598_1_1___stage___block_8_p_x : _d___pip_1598_1_2___stage___block_8_p_x;
_q___pip_1598_1_3___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_3 == 1 && !_t__stall_fsm___pip_1598_1_3) ? _d___pip_1598_1_2___stage___block_8_p_x : _d___pip_1598_1_3___stage___block_8_p_x;
_q___pip_1598_1_4___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_4 == 1 && !_t__stall_fsm___pip_1598_1_4) ? _d___pip_1598_1_3___stage___block_8_p_x : _d___pip_1598_1_4___stage___block_8_p_x;
_q___pip_1598_1_5___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_5 == 1 && !_t__stall_fsm___pip_1598_1_5) ? _d___pip_1598_1_4___stage___block_8_p_x : _d___pip_1598_1_5___stage___block_8_p_x;
_q___pip_1598_1_6___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_6 == 1 && !_t__stall_fsm___pip_1598_1_6) ? _d___pip_1598_1_5___stage___block_8_p_x : _d___pip_1598_1_6___stage___block_8_p_x;
_q___pip_1598_1_7___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_7 == 1 && !_t__stall_fsm___pip_1598_1_7) ? _d___pip_1598_1_6___stage___block_8_p_x : _d___pip_1598_1_7___stage___block_8_p_x;
_q___pip_1598_1_8___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_8 == 1 && !_t__stall_fsm___pip_1598_1_8) ? _d___pip_1598_1_7___stage___block_8_p_x : _d___pip_1598_1_8___stage___block_8_p_x;
_q___pip_1598_1_9___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_9 == 1 && !_t__stall_fsm___pip_1598_1_9) ? _d___pip_1598_1_8___stage___block_8_p_x : _d___pip_1598_1_9___stage___block_8_p_x;
_q___pip_1598_1_10___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_10 == 1 && !_t__stall_fsm___pip_1598_1_10) ? _d___pip_1598_1_9___stage___block_8_p_x : _d___pip_1598_1_10___stage___block_8_p_x;
_q___pip_1598_1_11___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_11 == 1 && !_t__stall_fsm___pip_1598_1_11) ? _d___pip_1598_1_10___stage___block_8_p_x : _d___pip_1598_1_11___stage___block_8_p_x;
_q___pip_1598_1_12___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_12 == 1 && !_t__stall_fsm___pip_1598_1_12) ? _d___pip_1598_1_11___stage___block_8_p_x : _d___pip_1598_1_12___stage___block_8_p_x;
_q___pip_1598_1_13___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_13 == 1 && !_t__stall_fsm___pip_1598_1_13) ? _d___pip_1598_1_12___stage___block_8_p_x : _d___pip_1598_1_13___stage___block_8_p_x;
_q___pip_1598_1_14___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_14 == 1 && !_t__stall_fsm___pip_1598_1_14) ? _d___pip_1598_1_13___stage___block_8_p_x : _d___pip_1598_1_14___stage___block_8_p_x;
_q___pip_1598_1_15___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_15 == 1 && !_t__stall_fsm___pip_1598_1_15) ? _d___pip_1598_1_14___stage___block_8_p_x : _d___pip_1598_1_15___stage___block_8_p_x;
_q___pip_1598_1_16___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_16 == 1 && !_t__stall_fsm___pip_1598_1_16) ? _d___pip_1598_1_15___stage___block_8_p_x : _d___pip_1598_1_16___stage___block_8_p_x;
_q___pip_1598_1_17___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_17 == 1 && !_t__stall_fsm___pip_1598_1_17) ? _d___pip_1598_1_16___stage___block_8_p_x : _d___pip_1598_1_17___stage___block_8_p_x;
_q___pip_1598_1_18___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_18 == 1 && !_t__stall_fsm___pip_1598_1_18) ? _d___pip_1598_1_17___stage___block_8_p_x : _d___pip_1598_1_18___stage___block_8_p_x;
_q___pip_1598_1_19___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_19 == 1 && !_t__stall_fsm___pip_1598_1_19) ? _d___pip_1598_1_18___stage___block_8_p_x : _d___pip_1598_1_19___stage___block_8_p_x;
_q___pip_1598_1_20___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_20 == 1 && !_t__stall_fsm___pip_1598_1_20) ? _d___pip_1598_1_19___stage___block_8_p_x : _d___pip_1598_1_20___stage___block_8_p_x;
_q___pip_1598_1_21___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_21 == 1 && !_t__stall_fsm___pip_1598_1_21) ? _d___pip_1598_1_20___stage___block_8_p_x : _d___pip_1598_1_21___stage___block_8_p_x;
_q___pip_1598_1_22___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_22 == 1 && !_t__stall_fsm___pip_1598_1_22) ? _d___pip_1598_1_21___stage___block_8_p_x : _d___pip_1598_1_22___stage___block_8_p_x;
_q___pip_1598_1_23___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_23 == 1 && !_t__stall_fsm___pip_1598_1_23) ? _d___pip_1598_1_22___stage___block_8_p_x : _d___pip_1598_1_23___stage___block_8_p_x;
_q___pip_1598_1_24___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_24 == 1 && !_t__stall_fsm___pip_1598_1_24) ? _d___pip_1598_1_23___stage___block_8_p_x : _d___pip_1598_1_24___stage___block_8_p_x;
_q___pip_1598_1_25___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_25 == 1 && !_t__stall_fsm___pip_1598_1_25) ? _d___pip_1598_1_24___stage___block_8_p_x : _d___pip_1598_1_25___stage___block_8_p_x;
_q___pip_1598_1_26___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_26 == 1 && !_t__stall_fsm___pip_1598_1_26) ? _d___pip_1598_1_25___stage___block_8_p_x : _d___pip_1598_1_26___stage___block_8_p_x;
_q___pip_1598_1_27___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_27 == 1 && !_t__stall_fsm___pip_1598_1_27) ? _d___pip_1598_1_26___stage___block_8_p_x : _d___pip_1598_1_27___stage___block_8_p_x;
_q___pip_1598_1_28___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_28 == 1 && !_t__stall_fsm___pip_1598_1_28) ? _d___pip_1598_1_27___stage___block_8_p_x : _d___pip_1598_1_28___stage___block_8_p_x;
_q___pip_1598_1_29___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_29 == 1 && !_t__stall_fsm___pip_1598_1_29) ? _d___pip_1598_1_28___stage___block_8_p_x : _d___pip_1598_1_29___stage___block_8_p_x;
_q___pip_1598_1_30___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_30 == 1 && !_t__stall_fsm___pip_1598_1_30) ? _d___pip_1598_1_29___stage___block_8_p_x : _d___pip_1598_1_30___stage___block_8_p_x;
_q___pip_1598_1_31___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_31 == 1 && !_t__stall_fsm___pip_1598_1_31) ? _d___pip_1598_1_30___stage___block_8_p_x : _d___pip_1598_1_31___stage___block_8_p_x;
_q___pip_1598_1_32___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_32 == 1 && !_t__stall_fsm___pip_1598_1_32) ? _d___pip_1598_1_31___stage___block_8_p_x : _d___pip_1598_1_32___stage___block_8_p_x;
_q___pip_1598_1_33___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_33 == 1 && !_t__stall_fsm___pip_1598_1_33) ? _d___pip_1598_1_32___stage___block_8_p_x : _d___pip_1598_1_33___stage___block_8_p_x;
_q___pip_1598_1_34___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_34 == 1 && !_t__stall_fsm___pip_1598_1_34) ? _d___pip_1598_1_33___stage___block_8_p_x : _d___pip_1598_1_34___stage___block_8_p_x;
_q___pip_1598_1_35___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_35 == 1 && !_t__stall_fsm___pip_1598_1_35) ? _d___pip_1598_1_34___stage___block_8_p_x : _d___pip_1598_1_35___stage___block_8_p_x;
_q___pip_1598_1_36___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_36 == 1 && !_t__stall_fsm___pip_1598_1_36) ? _d___pip_1598_1_35___stage___block_8_p_x : _d___pip_1598_1_36___stage___block_8_p_x;
_q___pip_1598_1_37___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_37 == 1 && !_t__stall_fsm___pip_1598_1_37) ? _d___pip_1598_1_36___stage___block_8_p_x : _d___pip_1598_1_37___stage___block_8_p_x;
_q___pip_1598_1_38___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_38 == 1 && !_t__stall_fsm___pip_1598_1_38) ? _d___pip_1598_1_37___stage___block_8_p_x : _d___pip_1598_1_38___stage___block_8_p_x;
_q___pip_1598_1_39___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_39 == 1 && !_t__stall_fsm___pip_1598_1_39) ? _d___pip_1598_1_38___stage___block_8_p_x : _d___pip_1598_1_39___stage___block_8_p_x;
_q___pip_1598_1_40___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_40 == 1 && !_t__stall_fsm___pip_1598_1_40) ? _d___pip_1598_1_39___stage___block_8_p_x : _d___pip_1598_1_40___stage___block_8_p_x;
_q___pip_1598_1_41___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_41 == 1 && !_t__stall_fsm___pip_1598_1_41) ? _d___pip_1598_1_40___stage___block_8_p_x : _d___pip_1598_1_41___stage___block_8_p_x;
_q___pip_1598_1_42___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_42 == 1 && !_t__stall_fsm___pip_1598_1_42) ? _d___pip_1598_1_41___stage___block_8_p_x : _d___pip_1598_1_42___stage___block_8_p_x;
_q___pip_1598_1_43___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_43 == 1 && !_t__stall_fsm___pip_1598_1_43) ? _d___pip_1598_1_42___stage___block_8_p_x : _d___pip_1598_1_43___stage___block_8_p_x;
_q___pip_1598_1_44___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_44 == 1 && !_t__stall_fsm___pip_1598_1_44) ? _d___pip_1598_1_43___stage___block_8_p_x : _d___pip_1598_1_44___stage___block_8_p_x;
_q___pip_1598_1_45___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_45 == 1 && !_t__stall_fsm___pip_1598_1_45) ? _d___pip_1598_1_44___stage___block_8_p_x : _d___pip_1598_1_45___stage___block_8_p_x;
_q___pip_1598_1_46___stage___block_8_p_x <= (_d__idx_fsm___pip_1598_1_46 == 1 && !_t__stall_fsm___pip_1598_1_46) ? _d___pip_1598_1_45___stage___block_8_p_x : _d___pip_1598_1_46___stage___block_8_p_x;
_q___pip_1598_1_0___stage___block_8_p_y <= _d___pip_1598_1_0___stage___block_8_p_y;
_q___pip_1598_1_1___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_1 == 1 && !_t__stall_fsm___pip_1598_1_1) ? _d___pip_1598_1_0___stage___block_8_p_y : _d___pip_1598_1_1___stage___block_8_p_y;
_q___pip_1598_1_2___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_2 == 1 && !_t__stall_fsm___pip_1598_1_2) ? _d___pip_1598_1_1___stage___block_8_p_y : _d___pip_1598_1_2___stage___block_8_p_y;
_q___pip_1598_1_3___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_3 == 1 && !_t__stall_fsm___pip_1598_1_3) ? _d___pip_1598_1_2___stage___block_8_p_y : _d___pip_1598_1_3___stage___block_8_p_y;
_q___pip_1598_1_4___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_4 == 1 && !_t__stall_fsm___pip_1598_1_4) ? _d___pip_1598_1_3___stage___block_8_p_y : _d___pip_1598_1_4___stage___block_8_p_y;
_q___pip_1598_1_5___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_5 == 1 && !_t__stall_fsm___pip_1598_1_5) ? _d___pip_1598_1_4___stage___block_8_p_y : _d___pip_1598_1_5___stage___block_8_p_y;
_q___pip_1598_1_6___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_6 == 1 && !_t__stall_fsm___pip_1598_1_6) ? _d___pip_1598_1_5___stage___block_8_p_y : _d___pip_1598_1_6___stage___block_8_p_y;
_q___pip_1598_1_7___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_7 == 1 && !_t__stall_fsm___pip_1598_1_7) ? _d___pip_1598_1_6___stage___block_8_p_y : _d___pip_1598_1_7___stage___block_8_p_y;
_q___pip_1598_1_8___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_8 == 1 && !_t__stall_fsm___pip_1598_1_8) ? _d___pip_1598_1_7___stage___block_8_p_y : _d___pip_1598_1_8___stage___block_8_p_y;
_q___pip_1598_1_9___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_9 == 1 && !_t__stall_fsm___pip_1598_1_9) ? _d___pip_1598_1_8___stage___block_8_p_y : _d___pip_1598_1_9___stage___block_8_p_y;
_q___pip_1598_1_10___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_10 == 1 && !_t__stall_fsm___pip_1598_1_10) ? _d___pip_1598_1_9___stage___block_8_p_y : _d___pip_1598_1_10___stage___block_8_p_y;
_q___pip_1598_1_11___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_11 == 1 && !_t__stall_fsm___pip_1598_1_11) ? _d___pip_1598_1_10___stage___block_8_p_y : _d___pip_1598_1_11___stage___block_8_p_y;
_q___pip_1598_1_12___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_12 == 1 && !_t__stall_fsm___pip_1598_1_12) ? _d___pip_1598_1_11___stage___block_8_p_y : _d___pip_1598_1_12___stage___block_8_p_y;
_q___pip_1598_1_13___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_13 == 1 && !_t__stall_fsm___pip_1598_1_13) ? _d___pip_1598_1_12___stage___block_8_p_y : _d___pip_1598_1_13___stage___block_8_p_y;
_q___pip_1598_1_14___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_14 == 1 && !_t__stall_fsm___pip_1598_1_14) ? _d___pip_1598_1_13___stage___block_8_p_y : _d___pip_1598_1_14___stage___block_8_p_y;
_q___pip_1598_1_15___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_15 == 1 && !_t__stall_fsm___pip_1598_1_15) ? _d___pip_1598_1_14___stage___block_8_p_y : _d___pip_1598_1_15___stage___block_8_p_y;
_q___pip_1598_1_16___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_16 == 1 && !_t__stall_fsm___pip_1598_1_16) ? _d___pip_1598_1_15___stage___block_8_p_y : _d___pip_1598_1_16___stage___block_8_p_y;
_q___pip_1598_1_17___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_17 == 1 && !_t__stall_fsm___pip_1598_1_17) ? _d___pip_1598_1_16___stage___block_8_p_y : _d___pip_1598_1_17___stage___block_8_p_y;
_q___pip_1598_1_18___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_18 == 1 && !_t__stall_fsm___pip_1598_1_18) ? _d___pip_1598_1_17___stage___block_8_p_y : _d___pip_1598_1_18___stage___block_8_p_y;
_q___pip_1598_1_19___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_19 == 1 && !_t__stall_fsm___pip_1598_1_19) ? _d___pip_1598_1_18___stage___block_8_p_y : _d___pip_1598_1_19___stage___block_8_p_y;
_q___pip_1598_1_20___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_20 == 1 && !_t__stall_fsm___pip_1598_1_20) ? _d___pip_1598_1_19___stage___block_8_p_y : _d___pip_1598_1_20___stage___block_8_p_y;
_q___pip_1598_1_21___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_21 == 1 && !_t__stall_fsm___pip_1598_1_21) ? _d___pip_1598_1_20___stage___block_8_p_y : _d___pip_1598_1_21___stage___block_8_p_y;
_q___pip_1598_1_22___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_22 == 1 && !_t__stall_fsm___pip_1598_1_22) ? _d___pip_1598_1_21___stage___block_8_p_y : _d___pip_1598_1_22___stage___block_8_p_y;
_q___pip_1598_1_23___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_23 == 1 && !_t__stall_fsm___pip_1598_1_23) ? _d___pip_1598_1_22___stage___block_8_p_y : _d___pip_1598_1_23___stage___block_8_p_y;
_q___pip_1598_1_24___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_24 == 1 && !_t__stall_fsm___pip_1598_1_24) ? _d___pip_1598_1_23___stage___block_8_p_y : _d___pip_1598_1_24___stage___block_8_p_y;
_q___pip_1598_1_25___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_25 == 1 && !_t__stall_fsm___pip_1598_1_25) ? _d___pip_1598_1_24___stage___block_8_p_y : _d___pip_1598_1_25___stage___block_8_p_y;
_q___pip_1598_1_26___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_26 == 1 && !_t__stall_fsm___pip_1598_1_26) ? _d___pip_1598_1_25___stage___block_8_p_y : _d___pip_1598_1_26___stage___block_8_p_y;
_q___pip_1598_1_27___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_27 == 1 && !_t__stall_fsm___pip_1598_1_27) ? _d___pip_1598_1_26___stage___block_8_p_y : _d___pip_1598_1_27___stage___block_8_p_y;
_q___pip_1598_1_28___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_28 == 1 && !_t__stall_fsm___pip_1598_1_28) ? _d___pip_1598_1_27___stage___block_8_p_y : _d___pip_1598_1_28___stage___block_8_p_y;
_q___pip_1598_1_29___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_29 == 1 && !_t__stall_fsm___pip_1598_1_29) ? _d___pip_1598_1_28___stage___block_8_p_y : _d___pip_1598_1_29___stage___block_8_p_y;
_q___pip_1598_1_30___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_30 == 1 && !_t__stall_fsm___pip_1598_1_30) ? _d___pip_1598_1_29___stage___block_8_p_y : _d___pip_1598_1_30___stage___block_8_p_y;
_q___pip_1598_1_31___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_31 == 1 && !_t__stall_fsm___pip_1598_1_31) ? _d___pip_1598_1_30___stage___block_8_p_y : _d___pip_1598_1_31___stage___block_8_p_y;
_q___pip_1598_1_32___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_32 == 1 && !_t__stall_fsm___pip_1598_1_32) ? _d___pip_1598_1_31___stage___block_8_p_y : _d___pip_1598_1_32___stage___block_8_p_y;
_q___pip_1598_1_33___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_33 == 1 && !_t__stall_fsm___pip_1598_1_33) ? _d___pip_1598_1_32___stage___block_8_p_y : _d___pip_1598_1_33___stage___block_8_p_y;
_q___pip_1598_1_34___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_34 == 1 && !_t__stall_fsm___pip_1598_1_34) ? _d___pip_1598_1_33___stage___block_8_p_y : _d___pip_1598_1_34___stage___block_8_p_y;
_q___pip_1598_1_35___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_35 == 1 && !_t__stall_fsm___pip_1598_1_35) ? _d___pip_1598_1_34___stage___block_8_p_y : _d___pip_1598_1_35___stage___block_8_p_y;
_q___pip_1598_1_36___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_36 == 1 && !_t__stall_fsm___pip_1598_1_36) ? _d___pip_1598_1_35___stage___block_8_p_y : _d___pip_1598_1_36___stage___block_8_p_y;
_q___pip_1598_1_37___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_37 == 1 && !_t__stall_fsm___pip_1598_1_37) ? _d___pip_1598_1_36___stage___block_8_p_y : _d___pip_1598_1_37___stage___block_8_p_y;
_q___pip_1598_1_38___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_38 == 1 && !_t__stall_fsm___pip_1598_1_38) ? _d___pip_1598_1_37___stage___block_8_p_y : _d___pip_1598_1_38___stage___block_8_p_y;
_q___pip_1598_1_39___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_39 == 1 && !_t__stall_fsm___pip_1598_1_39) ? _d___pip_1598_1_38___stage___block_8_p_y : _d___pip_1598_1_39___stage___block_8_p_y;
_q___pip_1598_1_40___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_40 == 1 && !_t__stall_fsm___pip_1598_1_40) ? _d___pip_1598_1_39___stage___block_8_p_y : _d___pip_1598_1_40___stage___block_8_p_y;
_q___pip_1598_1_41___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_41 == 1 && !_t__stall_fsm___pip_1598_1_41) ? _d___pip_1598_1_40___stage___block_8_p_y : _d___pip_1598_1_41___stage___block_8_p_y;
_q___pip_1598_1_42___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_42 == 1 && !_t__stall_fsm___pip_1598_1_42) ? _d___pip_1598_1_41___stage___block_8_p_y : _d___pip_1598_1_42___stage___block_8_p_y;
_q___pip_1598_1_43___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_43 == 1 && !_t__stall_fsm___pip_1598_1_43) ? _d___pip_1598_1_42___stage___block_8_p_y : _d___pip_1598_1_43___stage___block_8_p_y;
_q___pip_1598_1_44___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_44 == 1 && !_t__stall_fsm___pip_1598_1_44) ? _d___pip_1598_1_43___stage___block_8_p_y : _d___pip_1598_1_44___stage___block_8_p_y;
_q___pip_1598_1_45___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_45 == 1 && !_t__stall_fsm___pip_1598_1_45) ? _d___pip_1598_1_44___stage___block_8_p_y : _d___pip_1598_1_45___stage___block_8_p_y;
_q___pip_1598_1_46___stage___block_8_p_y <= (_d__idx_fsm___pip_1598_1_46 == 1 && !_t__stall_fsm___pip_1598_1_46) ? _d___pip_1598_1_45___stage___block_8_p_y : _d___pip_1598_1_46___stage___block_8_p_y;
_q___pip_1598_1_0___stage___block_8_q_x <= _d___pip_1598_1_0___stage___block_8_q_x;
_q___pip_1598_1_1___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_1 == 1 && !_t__stall_fsm___pip_1598_1_1) ? _d___pip_1598_1_0___stage___block_8_q_x : _d___pip_1598_1_1___stage___block_8_q_x;
_q___pip_1598_1_2___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_2 == 1 && !_t__stall_fsm___pip_1598_1_2) ? _d___pip_1598_1_1___stage___block_8_q_x : _d___pip_1598_1_2___stage___block_8_q_x;
_q___pip_1598_1_3___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_3 == 1 && !_t__stall_fsm___pip_1598_1_3) ? _d___pip_1598_1_2___stage___block_8_q_x : _d___pip_1598_1_3___stage___block_8_q_x;
_q___pip_1598_1_4___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_4 == 1 && !_t__stall_fsm___pip_1598_1_4) ? _d___pip_1598_1_3___stage___block_8_q_x : _d___pip_1598_1_4___stage___block_8_q_x;
_q___pip_1598_1_5___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_5 == 1 && !_t__stall_fsm___pip_1598_1_5) ? _d___pip_1598_1_4___stage___block_8_q_x : _d___pip_1598_1_5___stage___block_8_q_x;
_q___pip_1598_1_6___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_6 == 1 && !_t__stall_fsm___pip_1598_1_6) ? _d___pip_1598_1_5___stage___block_8_q_x : _d___pip_1598_1_6___stage___block_8_q_x;
_q___pip_1598_1_7___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_7 == 1 && !_t__stall_fsm___pip_1598_1_7) ? _d___pip_1598_1_6___stage___block_8_q_x : _d___pip_1598_1_7___stage___block_8_q_x;
_q___pip_1598_1_8___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_8 == 1 && !_t__stall_fsm___pip_1598_1_8) ? _d___pip_1598_1_7___stage___block_8_q_x : _d___pip_1598_1_8___stage___block_8_q_x;
_q___pip_1598_1_9___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_9 == 1 && !_t__stall_fsm___pip_1598_1_9) ? _d___pip_1598_1_8___stage___block_8_q_x : _d___pip_1598_1_9___stage___block_8_q_x;
_q___pip_1598_1_10___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_10 == 1 && !_t__stall_fsm___pip_1598_1_10) ? _d___pip_1598_1_9___stage___block_8_q_x : _d___pip_1598_1_10___stage___block_8_q_x;
_q___pip_1598_1_11___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_11 == 1 && !_t__stall_fsm___pip_1598_1_11) ? _d___pip_1598_1_10___stage___block_8_q_x : _d___pip_1598_1_11___stage___block_8_q_x;
_q___pip_1598_1_12___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_12 == 1 && !_t__stall_fsm___pip_1598_1_12) ? _d___pip_1598_1_11___stage___block_8_q_x : _d___pip_1598_1_12___stage___block_8_q_x;
_q___pip_1598_1_13___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_13 == 1 && !_t__stall_fsm___pip_1598_1_13) ? _d___pip_1598_1_12___stage___block_8_q_x : _d___pip_1598_1_13___stage___block_8_q_x;
_q___pip_1598_1_14___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_14 == 1 && !_t__stall_fsm___pip_1598_1_14) ? _d___pip_1598_1_13___stage___block_8_q_x : _d___pip_1598_1_14___stage___block_8_q_x;
_q___pip_1598_1_15___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_15 == 1 && !_t__stall_fsm___pip_1598_1_15) ? _d___pip_1598_1_14___stage___block_8_q_x : _d___pip_1598_1_15___stage___block_8_q_x;
_q___pip_1598_1_16___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_16 == 1 && !_t__stall_fsm___pip_1598_1_16) ? _d___pip_1598_1_15___stage___block_8_q_x : _d___pip_1598_1_16___stage___block_8_q_x;
_q___pip_1598_1_17___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_17 == 1 && !_t__stall_fsm___pip_1598_1_17) ? _d___pip_1598_1_16___stage___block_8_q_x : _d___pip_1598_1_17___stage___block_8_q_x;
_q___pip_1598_1_18___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_18 == 1 && !_t__stall_fsm___pip_1598_1_18) ? _d___pip_1598_1_17___stage___block_8_q_x : _d___pip_1598_1_18___stage___block_8_q_x;
_q___pip_1598_1_19___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_19 == 1 && !_t__stall_fsm___pip_1598_1_19) ? _d___pip_1598_1_18___stage___block_8_q_x : _d___pip_1598_1_19___stage___block_8_q_x;
_q___pip_1598_1_20___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_20 == 1 && !_t__stall_fsm___pip_1598_1_20) ? _d___pip_1598_1_19___stage___block_8_q_x : _d___pip_1598_1_20___stage___block_8_q_x;
_q___pip_1598_1_21___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_21 == 1 && !_t__stall_fsm___pip_1598_1_21) ? _d___pip_1598_1_20___stage___block_8_q_x : _d___pip_1598_1_21___stage___block_8_q_x;
_q___pip_1598_1_22___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_22 == 1 && !_t__stall_fsm___pip_1598_1_22) ? _d___pip_1598_1_21___stage___block_8_q_x : _d___pip_1598_1_22___stage___block_8_q_x;
_q___pip_1598_1_23___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_23 == 1 && !_t__stall_fsm___pip_1598_1_23) ? _d___pip_1598_1_22___stage___block_8_q_x : _d___pip_1598_1_23___stage___block_8_q_x;
_q___pip_1598_1_24___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_24 == 1 && !_t__stall_fsm___pip_1598_1_24) ? _d___pip_1598_1_23___stage___block_8_q_x : _d___pip_1598_1_24___stage___block_8_q_x;
_q___pip_1598_1_25___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_25 == 1 && !_t__stall_fsm___pip_1598_1_25) ? _d___pip_1598_1_24___stage___block_8_q_x : _d___pip_1598_1_25___stage___block_8_q_x;
_q___pip_1598_1_26___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_26 == 1 && !_t__stall_fsm___pip_1598_1_26) ? _d___pip_1598_1_25___stage___block_8_q_x : _d___pip_1598_1_26___stage___block_8_q_x;
_q___pip_1598_1_27___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_27 == 1 && !_t__stall_fsm___pip_1598_1_27) ? _d___pip_1598_1_26___stage___block_8_q_x : _d___pip_1598_1_27___stage___block_8_q_x;
_q___pip_1598_1_28___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_28 == 1 && !_t__stall_fsm___pip_1598_1_28) ? _d___pip_1598_1_27___stage___block_8_q_x : _d___pip_1598_1_28___stage___block_8_q_x;
_q___pip_1598_1_29___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_29 == 1 && !_t__stall_fsm___pip_1598_1_29) ? _d___pip_1598_1_28___stage___block_8_q_x : _d___pip_1598_1_29___stage___block_8_q_x;
_q___pip_1598_1_30___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_30 == 1 && !_t__stall_fsm___pip_1598_1_30) ? _d___pip_1598_1_29___stage___block_8_q_x : _d___pip_1598_1_30___stage___block_8_q_x;
_q___pip_1598_1_31___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_31 == 1 && !_t__stall_fsm___pip_1598_1_31) ? _d___pip_1598_1_30___stage___block_8_q_x : _d___pip_1598_1_31___stage___block_8_q_x;
_q___pip_1598_1_32___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_32 == 1 && !_t__stall_fsm___pip_1598_1_32) ? _d___pip_1598_1_31___stage___block_8_q_x : _d___pip_1598_1_32___stage___block_8_q_x;
_q___pip_1598_1_33___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_33 == 1 && !_t__stall_fsm___pip_1598_1_33) ? _d___pip_1598_1_32___stage___block_8_q_x : _d___pip_1598_1_33___stage___block_8_q_x;
_q___pip_1598_1_34___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_34 == 1 && !_t__stall_fsm___pip_1598_1_34) ? _d___pip_1598_1_33___stage___block_8_q_x : _d___pip_1598_1_34___stage___block_8_q_x;
_q___pip_1598_1_35___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_35 == 1 && !_t__stall_fsm___pip_1598_1_35) ? _d___pip_1598_1_34___stage___block_8_q_x : _d___pip_1598_1_35___stage___block_8_q_x;
_q___pip_1598_1_36___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_36 == 1 && !_t__stall_fsm___pip_1598_1_36) ? _d___pip_1598_1_35___stage___block_8_q_x : _d___pip_1598_1_36___stage___block_8_q_x;
_q___pip_1598_1_37___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_37 == 1 && !_t__stall_fsm___pip_1598_1_37) ? _d___pip_1598_1_36___stage___block_8_q_x : _d___pip_1598_1_37___stage___block_8_q_x;
_q___pip_1598_1_38___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_38 == 1 && !_t__stall_fsm___pip_1598_1_38) ? _d___pip_1598_1_37___stage___block_8_q_x : _d___pip_1598_1_38___stage___block_8_q_x;
_q___pip_1598_1_39___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_39 == 1 && !_t__stall_fsm___pip_1598_1_39) ? _d___pip_1598_1_38___stage___block_8_q_x : _d___pip_1598_1_39___stage___block_8_q_x;
_q___pip_1598_1_40___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_40 == 1 && !_t__stall_fsm___pip_1598_1_40) ? _d___pip_1598_1_39___stage___block_8_q_x : _d___pip_1598_1_40___stage___block_8_q_x;
_q___pip_1598_1_41___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_41 == 1 && !_t__stall_fsm___pip_1598_1_41) ? _d___pip_1598_1_40___stage___block_8_q_x : _d___pip_1598_1_41___stage___block_8_q_x;
_q___pip_1598_1_42___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_42 == 1 && !_t__stall_fsm___pip_1598_1_42) ? _d___pip_1598_1_41___stage___block_8_q_x : _d___pip_1598_1_42___stage___block_8_q_x;
_q___pip_1598_1_43___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_43 == 1 && !_t__stall_fsm___pip_1598_1_43) ? _d___pip_1598_1_42___stage___block_8_q_x : _d___pip_1598_1_43___stage___block_8_q_x;
_q___pip_1598_1_44___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_44 == 1 && !_t__stall_fsm___pip_1598_1_44) ? _d___pip_1598_1_43___stage___block_8_q_x : _d___pip_1598_1_44___stage___block_8_q_x;
_q___pip_1598_1_45___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_45 == 1 && !_t__stall_fsm___pip_1598_1_45) ? _d___pip_1598_1_44___stage___block_8_q_x : _d___pip_1598_1_45___stage___block_8_q_x;
_q___pip_1598_1_46___stage___block_8_q_x <= (_d__idx_fsm___pip_1598_1_46 == 1 && !_t__stall_fsm___pip_1598_1_46) ? _d___pip_1598_1_45___stage___block_8_q_x : _d___pip_1598_1_46___stage___block_8_q_x;
_q___pip_1598_1_0___stage___block_8_q_y <= _d___pip_1598_1_0___stage___block_8_q_y;
_q___pip_1598_1_1___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_1 == 1 && !_t__stall_fsm___pip_1598_1_1) ? _d___pip_1598_1_0___stage___block_8_q_y : _d___pip_1598_1_1___stage___block_8_q_y;
_q___pip_1598_1_2___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_2 == 1 && !_t__stall_fsm___pip_1598_1_2) ? _d___pip_1598_1_1___stage___block_8_q_y : _d___pip_1598_1_2___stage___block_8_q_y;
_q___pip_1598_1_3___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_3 == 1 && !_t__stall_fsm___pip_1598_1_3) ? _d___pip_1598_1_2___stage___block_8_q_y : _d___pip_1598_1_3___stage___block_8_q_y;
_q___pip_1598_1_4___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_4 == 1 && !_t__stall_fsm___pip_1598_1_4) ? _d___pip_1598_1_3___stage___block_8_q_y : _d___pip_1598_1_4___stage___block_8_q_y;
_q___pip_1598_1_5___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_5 == 1 && !_t__stall_fsm___pip_1598_1_5) ? _d___pip_1598_1_4___stage___block_8_q_y : _d___pip_1598_1_5___stage___block_8_q_y;
_q___pip_1598_1_6___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_6 == 1 && !_t__stall_fsm___pip_1598_1_6) ? _d___pip_1598_1_5___stage___block_8_q_y : _d___pip_1598_1_6___stage___block_8_q_y;
_q___pip_1598_1_7___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_7 == 1 && !_t__stall_fsm___pip_1598_1_7) ? _d___pip_1598_1_6___stage___block_8_q_y : _d___pip_1598_1_7___stage___block_8_q_y;
_q___pip_1598_1_8___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_8 == 1 && !_t__stall_fsm___pip_1598_1_8) ? _d___pip_1598_1_7___stage___block_8_q_y : _d___pip_1598_1_8___stage___block_8_q_y;
_q___pip_1598_1_9___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_9 == 1 && !_t__stall_fsm___pip_1598_1_9) ? _d___pip_1598_1_8___stage___block_8_q_y : _d___pip_1598_1_9___stage___block_8_q_y;
_q___pip_1598_1_10___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_10 == 1 && !_t__stall_fsm___pip_1598_1_10) ? _d___pip_1598_1_9___stage___block_8_q_y : _d___pip_1598_1_10___stage___block_8_q_y;
_q___pip_1598_1_11___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_11 == 1 && !_t__stall_fsm___pip_1598_1_11) ? _d___pip_1598_1_10___stage___block_8_q_y : _d___pip_1598_1_11___stage___block_8_q_y;
_q___pip_1598_1_12___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_12 == 1 && !_t__stall_fsm___pip_1598_1_12) ? _d___pip_1598_1_11___stage___block_8_q_y : _d___pip_1598_1_12___stage___block_8_q_y;
_q___pip_1598_1_13___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_13 == 1 && !_t__stall_fsm___pip_1598_1_13) ? _d___pip_1598_1_12___stage___block_8_q_y : _d___pip_1598_1_13___stage___block_8_q_y;
_q___pip_1598_1_14___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_14 == 1 && !_t__stall_fsm___pip_1598_1_14) ? _d___pip_1598_1_13___stage___block_8_q_y : _d___pip_1598_1_14___stage___block_8_q_y;
_q___pip_1598_1_15___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_15 == 1 && !_t__stall_fsm___pip_1598_1_15) ? _d___pip_1598_1_14___stage___block_8_q_y : _d___pip_1598_1_15___stage___block_8_q_y;
_q___pip_1598_1_16___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_16 == 1 && !_t__stall_fsm___pip_1598_1_16) ? _d___pip_1598_1_15___stage___block_8_q_y : _d___pip_1598_1_16___stage___block_8_q_y;
_q___pip_1598_1_17___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_17 == 1 && !_t__stall_fsm___pip_1598_1_17) ? _d___pip_1598_1_16___stage___block_8_q_y : _d___pip_1598_1_17___stage___block_8_q_y;
_q___pip_1598_1_18___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_18 == 1 && !_t__stall_fsm___pip_1598_1_18) ? _d___pip_1598_1_17___stage___block_8_q_y : _d___pip_1598_1_18___stage___block_8_q_y;
_q___pip_1598_1_19___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_19 == 1 && !_t__stall_fsm___pip_1598_1_19) ? _d___pip_1598_1_18___stage___block_8_q_y : _d___pip_1598_1_19___stage___block_8_q_y;
_q___pip_1598_1_20___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_20 == 1 && !_t__stall_fsm___pip_1598_1_20) ? _d___pip_1598_1_19___stage___block_8_q_y : _d___pip_1598_1_20___stage___block_8_q_y;
_q___pip_1598_1_21___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_21 == 1 && !_t__stall_fsm___pip_1598_1_21) ? _d___pip_1598_1_20___stage___block_8_q_y : _d___pip_1598_1_21___stage___block_8_q_y;
_q___pip_1598_1_22___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_22 == 1 && !_t__stall_fsm___pip_1598_1_22) ? _d___pip_1598_1_21___stage___block_8_q_y : _d___pip_1598_1_22___stage___block_8_q_y;
_q___pip_1598_1_23___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_23 == 1 && !_t__stall_fsm___pip_1598_1_23) ? _d___pip_1598_1_22___stage___block_8_q_y : _d___pip_1598_1_23___stage___block_8_q_y;
_q___pip_1598_1_24___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_24 == 1 && !_t__stall_fsm___pip_1598_1_24) ? _d___pip_1598_1_23___stage___block_8_q_y : _d___pip_1598_1_24___stage___block_8_q_y;
_q___pip_1598_1_25___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_25 == 1 && !_t__stall_fsm___pip_1598_1_25) ? _d___pip_1598_1_24___stage___block_8_q_y : _d___pip_1598_1_25___stage___block_8_q_y;
_q___pip_1598_1_26___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_26 == 1 && !_t__stall_fsm___pip_1598_1_26) ? _d___pip_1598_1_25___stage___block_8_q_y : _d___pip_1598_1_26___stage___block_8_q_y;
_q___pip_1598_1_27___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_27 == 1 && !_t__stall_fsm___pip_1598_1_27) ? _d___pip_1598_1_26___stage___block_8_q_y : _d___pip_1598_1_27___stage___block_8_q_y;
_q___pip_1598_1_28___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_28 == 1 && !_t__stall_fsm___pip_1598_1_28) ? _d___pip_1598_1_27___stage___block_8_q_y : _d___pip_1598_1_28___stage___block_8_q_y;
_q___pip_1598_1_29___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_29 == 1 && !_t__stall_fsm___pip_1598_1_29) ? _d___pip_1598_1_28___stage___block_8_q_y : _d___pip_1598_1_29___stage___block_8_q_y;
_q___pip_1598_1_30___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_30 == 1 && !_t__stall_fsm___pip_1598_1_30) ? _d___pip_1598_1_29___stage___block_8_q_y : _d___pip_1598_1_30___stage___block_8_q_y;
_q___pip_1598_1_31___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_31 == 1 && !_t__stall_fsm___pip_1598_1_31) ? _d___pip_1598_1_30___stage___block_8_q_y : _d___pip_1598_1_31___stage___block_8_q_y;
_q___pip_1598_1_32___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_32 == 1 && !_t__stall_fsm___pip_1598_1_32) ? _d___pip_1598_1_31___stage___block_8_q_y : _d___pip_1598_1_32___stage___block_8_q_y;
_q___pip_1598_1_33___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_33 == 1 && !_t__stall_fsm___pip_1598_1_33) ? _d___pip_1598_1_32___stage___block_8_q_y : _d___pip_1598_1_33___stage___block_8_q_y;
_q___pip_1598_1_34___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_34 == 1 && !_t__stall_fsm___pip_1598_1_34) ? _d___pip_1598_1_33___stage___block_8_q_y : _d___pip_1598_1_34___stage___block_8_q_y;
_q___pip_1598_1_35___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_35 == 1 && !_t__stall_fsm___pip_1598_1_35) ? _d___pip_1598_1_34___stage___block_8_q_y : _d___pip_1598_1_35___stage___block_8_q_y;
_q___pip_1598_1_36___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_36 == 1 && !_t__stall_fsm___pip_1598_1_36) ? _d___pip_1598_1_35___stage___block_8_q_y : _d___pip_1598_1_36___stage___block_8_q_y;
_q___pip_1598_1_37___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_37 == 1 && !_t__stall_fsm___pip_1598_1_37) ? _d___pip_1598_1_36___stage___block_8_q_y : _d___pip_1598_1_37___stage___block_8_q_y;
_q___pip_1598_1_38___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_38 == 1 && !_t__stall_fsm___pip_1598_1_38) ? _d___pip_1598_1_37___stage___block_8_q_y : _d___pip_1598_1_38___stage___block_8_q_y;
_q___pip_1598_1_39___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_39 == 1 && !_t__stall_fsm___pip_1598_1_39) ? _d___pip_1598_1_38___stage___block_8_q_y : _d___pip_1598_1_39___stage___block_8_q_y;
_q___pip_1598_1_40___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_40 == 1 && !_t__stall_fsm___pip_1598_1_40) ? _d___pip_1598_1_39___stage___block_8_q_y : _d___pip_1598_1_40___stage___block_8_q_y;
_q___pip_1598_1_41___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_41 == 1 && !_t__stall_fsm___pip_1598_1_41) ? _d___pip_1598_1_40___stage___block_8_q_y : _d___pip_1598_1_41___stage___block_8_q_y;
_q___pip_1598_1_42___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_42 == 1 && !_t__stall_fsm___pip_1598_1_42) ? _d___pip_1598_1_41___stage___block_8_q_y : _d___pip_1598_1_42___stage___block_8_q_y;
_q___pip_1598_1_43___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_43 == 1 && !_t__stall_fsm___pip_1598_1_43) ? _d___pip_1598_1_42___stage___block_8_q_y : _d___pip_1598_1_43___stage___block_8_q_y;
_q___pip_1598_1_44___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_44 == 1 && !_t__stall_fsm___pip_1598_1_44) ? _d___pip_1598_1_43___stage___block_8_q_y : _d___pip_1598_1_44___stage___block_8_q_y;
_q___pip_1598_1_45___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_45 == 1 && !_t__stall_fsm___pip_1598_1_45) ? _d___pip_1598_1_44___stage___block_8_q_y : _d___pip_1598_1_45___stage___block_8_q_y;
_q___pip_1598_1_46___stage___block_8_q_y <= (_d__idx_fsm___pip_1598_1_46 == 1 && !_t__stall_fsm___pip_1598_1_46) ? _d___pip_1598_1_45___stage___block_8_q_y : _d___pip_1598_1_46___stage___block_8_q_y;
_q_pix_r <= _d_pix_r;
_q_pix_g <= _d_pix_g;
_q_pix_b <= _d_pix_b;
_q__idx_fsm0 <= reset ? 0 : ( ~_autorun ? 1 : _d__idx_fsm0);
_autorun <= reset ? 0 : 1;
_q__idx_fsm___pip_1598_1_0 <= reset ? 0 : _d__idx_fsm___pip_1598_1_0;
_q__full_fsm___pip_1598_1_0 <= reset ? 0 : _d__full_fsm___pip_1598_1_0;
_q__idx_fsm___pip_1598_1_1 <= reset ? 0 : _d__idx_fsm___pip_1598_1_1;
_q__full_fsm___pip_1598_1_1 <= reset ? 0 : _d__full_fsm___pip_1598_1_1;
_q__idx_fsm___pip_1598_1_2 <= reset ? 0 : _d__idx_fsm___pip_1598_1_2;
_q__full_fsm___pip_1598_1_2 <= reset ? 0 : _d__full_fsm___pip_1598_1_2;
_q__idx_fsm___pip_1598_1_3 <= reset ? 0 : _d__idx_fsm___pip_1598_1_3;
_q__full_fsm___pip_1598_1_3 <= reset ? 0 : _d__full_fsm___pip_1598_1_3;
_q__idx_fsm___pip_1598_1_4 <= reset ? 0 : _d__idx_fsm___pip_1598_1_4;
_q__full_fsm___pip_1598_1_4 <= reset ? 0 : _d__full_fsm___pip_1598_1_4;
_q__idx_fsm___pip_1598_1_5 <= reset ? 0 : _d__idx_fsm___pip_1598_1_5;
_q__full_fsm___pip_1598_1_5 <= reset ? 0 : _d__full_fsm___pip_1598_1_5;
_q__idx_fsm___pip_1598_1_6 <= reset ? 0 : _d__idx_fsm___pip_1598_1_6;
_q__full_fsm___pip_1598_1_6 <= reset ? 0 : _d__full_fsm___pip_1598_1_6;
_q__idx_fsm___pip_1598_1_7 <= reset ? 0 : _d__idx_fsm___pip_1598_1_7;
_q__full_fsm___pip_1598_1_7 <= reset ? 0 : _d__full_fsm___pip_1598_1_7;
_q__idx_fsm___pip_1598_1_8 <= reset ? 0 : _d__idx_fsm___pip_1598_1_8;
_q__full_fsm___pip_1598_1_8 <= reset ? 0 : _d__full_fsm___pip_1598_1_8;
_q__idx_fsm___pip_1598_1_9 <= reset ? 0 : _d__idx_fsm___pip_1598_1_9;
_q__full_fsm___pip_1598_1_9 <= reset ? 0 : _d__full_fsm___pip_1598_1_9;
_q__idx_fsm___pip_1598_1_10 <= reset ? 0 : _d__idx_fsm___pip_1598_1_10;
_q__full_fsm___pip_1598_1_10 <= reset ? 0 : _d__full_fsm___pip_1598_1_10;
_q__idx_fsm___pip_1598_1_11 <= reset ? 0 : _d__idx_fsm___pip_1598_1_11;
_q__full_fsm___pip_1598_1_11 <= reset ? 0 : _d__full_fsm___pip_1598_1_11;
_q__idx_fsm___pip_1598_1_12 <= reset ? 0 : _d__idx_fsm___pip_1598_1_12;
_q__full_fsm___pip_1598_1_12 <= reset ? 0 : _d__full_fsm___pip_1598_1_12;
_q__idx_fsm___pip_1598_1_13 <= reset ? 0 : _d__idx_fsm___pip_1598_1_13;
_q__full_fsm___pip_1598_1_13 <= reset ? 0 : _d__full_fsm___pip_1598_1_13;
_q__idx_fsm___pip_1598_1_14 <= reset ? 0 : _d__idx_fsm___pip_1598_1_14;
_q__full_fsm___pip_1598_1_14 <= reset ? 0 : _d__full_fsm___pip_1598_1_14;
_q__idx_fsm___pip_1598_1_15 <= reset ? 0 : _d__idx_fsm___pip_1598_1_15;
_q__full_fsm___pip_1598_1_15 <= reset ? 0 : _d__full_fsm___pip_1598_1_15;
_q__idx_fsm___pip_1598_1_16 <= reset ? 0 : _d__idx_fsm___pip_1598_1_16;
_q__full_fsm___pip_1598_1_16 <= reset ? 0 : _d__full_fsm___pip_1598_1_16;
_q__idx_fsm___pip_1598_1_17 <= reset ? 0 : _d__idx_fsm___pip_1598_1_17;
_q__full_fsm___pip_1598_1_17 <= reset ? 0 : _d__full_fsm___pip_1598_1_17;
_q__idx_fsm___pip_1598_1_18 <= reset ? 0 : _d__idx_fsm___pip_1598_1_18;
_q__full_fsm___pip_1598_1_18 <= reset ? 0 : _d__full_fsm___pip_1598_1_18;
_q__idx_fsm___pip_1598_1_19 <= reset ? 0 : _d__idx_fsm___pip_1598_1_19;
_q__full_fsm___pip_1598_1_19 <= reset ? 0 : _d__full_fsm___pip_1598_1_19;
_q__idx_fsm___pip_1598_1_20 <= reset ? 0 : _d__idx_fsm___pip_1598_1_20;
_q__full_fsm___pip_1598_1_20 <= reset ? 0 : _d__full_fsm___pip_1598_1_20;
_q__idx_fsm___pip_1598_1_21 <= reset ? 0 : _d__idx_fsm___pip_1598_1_21;
_q__full_fsm___pip_1598_1_21 <= reset ? 0 : _d__full_fsm___pip_1598_1_21;
_q__idx_fsm___pip_1598_1_22 <= reset ? 0 : _d__idx_fsm___pip_1598_1_22;
_q__full_fsm___pip_1598_1_22 <= reset ? 0 : _d__full_fsm___pip_1598_1_22;
_q__idx_fsm___pip_1598_1_23 <= reset ? 0 : _d__idx_fsm___pip_1598_1_23;
_q__full_fsm___pip_1598_1_23 <= reset ? 0 : _d__full_fsm___pip_1598_1_23;
_q__idx_fsm___pip_1598_1_24 <= reset ? 0 : _d__idx_fsm___pip_1598_1_24;
_q__full_fsm___pip_1598_1_24 <= reset ? 0 : _d__full_fsm___pip_1598_1_24;
_q__idx_fsm___pip_1598_1_25 <= reset ? 0 : _d__idx_fsm___pip_1598_1_25;
_q__full_fsm___pip_1598_1_25 <= reset ? 0 : _d__full_fsm___pip_1598_1_25;
_q__idx_fsm___pip_1598_1_26 <= reset ? 0 : _d__idx_fsm___pip_1598_1_26;
_q__full_fsm___pip_1598_1_26 <= reset ? 0 : _d__full_fsm___pip_1598_1_26;
_q__idx_fsm___pip_1598_1_27 <= reset ? 0 : _d__idx_fsm___pip_1598_1_27;
_q__full_fsm___pip_1598_1_27 <= reset ? 0 : _d__full_fsm___pip_1598_1_27;
_q__idx_fsm___pip_1598_1_28 <= reset ? 0 : _d__idx_fsm___pip_1598_1_28;
_q__full_fsm___pip_1598_1_28 <= reset ? 0 : _d__full_fsm___pip_1598_1_28;
_q__idx_fsm___pip_1598_1_29 <= reset ? 0 : _d__idx_fsm___pip_1598_1_29;
_q__full_fsm___pip_1598_1_29 <= reset ? 0 : _d__full_fsm___pip_1598_1_29;
_q__idx_fsm___pip_1598_1_30 <= reset ? 0 : _d__idx_fsm___pip_1598_1_30;
_q__full_fsm___pip_1598_1_30 <= reset ? 0 : _d__full_fsm___pip_1598_1_30;
_q__idx_fsm___pip_1598_1_31 <= reset ? 0 : _d__idx_fsm___pip_1598_1_31;
_q__full_fsm___pip_1598_1_31 <= reset ? 0 : _d__full_fsm___pip_1598_1_31;
_q__idx_fsm___pip_1598_1_32 <= reset ? 0 : _d__idx_fsm___pip_1598_1_32;
_q__full_fsm___pip_1598_1_32 <= reset ? 0 : _d__full_fsm___pip_1598_1_32;
_q__idx_fsm___pip_1598_1_33 <= reset ? 0 : _d__idx_fsm___pip_1598_1_33;
_q__full_fsm___pip_1598_1_33 <= reset ? 0 : _d__full_fsm___pip_1598_1_33;
_q__idx_fsm___pip_1598_1_34 <= reset ? 0 : _d__idx_fsm___pip_1598_1_34;
_q__full_fsm___pip_1598_1_34 <= reset ? 0 : _d__full_fsm___pip_1598_1_34;
_q__idx_fsm___pip_1598_1_35 <= reset ? 0 : _d__idx_fsm___pip_1598_1_35;
_q__full_fsm___pip_1598_1_35 <= reset ? 0 : _d__full_fsm___pip_1598_1_35;
_q__idx_fsm___pip_1598_1_36 <= reset ? 0 : _d__idx_fsm___pip_1598_1_36;
_q__full_fsm___pip_1598_1_36 <= reset ? 0 : _d__full_fsm___pip_1598_1_36;
_q__idx_fsm___pip_1598_1_37 <= reset ? 0 : _d__idx_fsm___pip_1598_1_37;
_q__full_fsm___pip_1598_1_37 <= reset ? 0 : _d__full_fsm___pip_1598_1_37;
_q__idx_fsm___pip_1598_1_38 <= reset ? 0 : _d__idx_fsm___pip_1598_1_38;
_q__full_fsm___pip_1598_1_38 <= reset ? 0 : _d__full_fsm___pip_1598_1_38;
_q__idx_fsm___pip_1598_1_39 <= reset ? 0 : _d__idx_fsm___pip_1598_1_39;
_q__full_fsm___pip_1598_1_39 <= reset ? 0 : _d__full_fsm___pip_1598_1_39;
_q__idx_fsm___pip_1598_1_40 <= reset ? 0 : _d__idx_fsm___pip_1598_1_40;
_q__full_fsm___pip_1598_1_40 <= reset ? 0 : _d__full_fsm___pip_1598_1_40;
_q__idx_fsm___pip_1598_1_41 <= reset ? 0 : _d__idx_fsm___pip_1598_1_41;
_q__full_fsm___pip_1598_1_41 <= reset ? 0 : _d__full_fsm___pip_1598_1_41;
_q__idx_fsm___pip_1598_1_42 <= reset ? 0 : _d__idx_fsm___pip_1598_1_42;
_q__full_fsm___pip_1598_1_42 <= reset ? 0 : _d__full_fsm___pip_1598_1_42;
_q__idx_fsm___pip_1598_1_43 <= reset ? 0 : _d__idx_fsm___pip_1598_1_43;
_q__full_fsm___pip_1598_1_43 <= reset ? 0 : _d__full_fsm___pip_1598_1_43;
_q__idx_fsm___pip_1598_1_44 <= reset ? 0 : _d__idx_fsm___pip_1598_1_44;
_q__full_fsm___pip_1598_1_44 <= reset ? 0 : _d__full_fsm___pip_1598_1_44;
_q__idx_fsm___pip_1598_1_45 <= reset ? 0 : _d__idx_fsm___pip_1598_1_45;
_q__full_fsm___pip_1598_1_45 <= reset ? 0 : _d__full_fsm___pip_1598_1_45;
_q__idx_fsm___pip_1598_1_46 <= reset ? 0 : _d__idx_fsm___pip_1598_1_46;
_q__full_fsm___pip_1598_1_46 <= reset ? 0 : _d__full_fsm___pip_1598_1_46;
_q__idx_fsm___pip_1598_1_47 <= reset ? 0 : _d__idx_fsm___pip_1598_1_47;
_q__full_fsm___pip_1598_1_47 <= reset ? 0 : _d__full_fsm___pip_1598_1_47;
_q__idx_fsm___pip_1598_1_48 <= reset ? 0 : _d__idx_fsm___pip_1598_1_48;
_q__full_fsm___pip_1598_1_48 <= reset ? 0 : _d__full_fsm___pip_1598_1_48;
end

endmodule

