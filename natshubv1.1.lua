--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v84=v2(v0(v30,16));if v19 then local v90=v5(v84,v19);v19=nil;return v90;else return v84;end end end);local function v20(v31,v32,v33) if v33 then local v85=(v31/((5 -3)^(v32-1)))%((5 -3)^(((v33-(1 -0)) -(v32-(2 -1))) + (620 -(555 + 64)))) ;return v85-(v85%(932 -(857 + 74))) ;else local v86=(570 -(367 + 51 + 150))^(v32-1) ;return (((v31%(v86 + v86))>=v86) and (928 -(214 + 113 + 600))) or 0 ;end end local function v21() local v34=877 -(282 + 595) ;local v35;while true do if (v34==(1066 -(68 + 997))) then return v35;end if (v34==(1637 -(1523 + 114))) then v35=v1(v16,v18,v18);v18=v18 + 1 + (1270 -(226 + 1044)) ;v34=1 -0 ;end end end local function v22() local v36,v37=v1(v16,v18,v18 + (119 -(32 + 85)) );v18=v18 + 2 + 0 ;return (v37 * (1114 -858)) + v36 ;end local function v23() local v38=0 + 0 ;local v39;local v40;local v41;local v42;while true do if (v38==((697 + 260) -(892 + 65))) then v39,v40,v41,v42=v1(v16,v18,v18 + (7 -4) );v18=v18 + (6 -2) ;v38=3 -2 ;end if (v38==(1 -0)) then return (v42 * (16777566 -(87 + 263))) + (v41 * (176444 -(111905 -(915 + 82)))) + (v40 * (436 -(67 + 113))) + v39 ;end end end local function v24() local v43=(0 + 0) -0 ;local v44;local v45;local v46;local v47;local v48;local v49;while true do if (v43==(2 + 1)) then if (v48==(0 -0)) then if (v47==((2072 -(261 + 624)) -((1899 -830) + 118))) then return v49 * (0 -0) ;else local v98=0;while true do if (v98==(0 -0)) then v48=(3 -2) + 0 ;v46=0 -0 ;break;end end end elseif (v48==(3127 -(1020 + 60))) then return ((v47==((0 -0) + 0)) and (v49 * ((792 -(368 + 423))/0))) or (v49 * NaN) ;end return v8(v49,v48-(3214 -2191) ) * (v46 + (v47/((20 -(10 + 8))^((1058 -(814 + 45)) -147)))) ;end if (v43==(443 -(416 + (1449 -(630 + 793))))) then v46=3 -2 ;v47=(v20(v45,(3 -2) + 0 ,35 -15 ) * (2^(470 -(145 + 293)))) + v44 ;v43=432 -(44 + 386) ;end if (v43==(1488 -((4725 -3727) + 488))) then v48=v20(v45,7 + 14 ,13 + 18 );v49=((v20(v45,(92 -65) + 5 )==1) and  -(773 -((495 -294) + 571))) or (1139 -(116 + 1022)) ;v43=1 + 2 ;end if (v43==((1747 -(760 + 987)) -0)) then v44=v23();v45=v23();v43=1 + 0 ;end end end local function v25(v50) local v51;if  not v50 then local v87=1913 -(1789 + (486 -362)) ;while true do if (v87==(766 -(745 + 21))) then v50=v23();if (v50==0) then return "";end break;end end end v51=v3(v16,v18,(v18 + v50) -(1 + 0 + 0) );v18=v18 + v50 ;local v52={};for v67=2 -1 , #v51 do v52[v67]=v2(v1(v3(v51,v67,v67)));end return v6(v52);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v53=(function() return 0;end)();local v54=(function() return;end)();local v55=(function() return;end)();local v56=(function() return;end)();local v57=(function() return;end)();local v58=(function() return;end)();local v59=(function() return;end)();local v60=(function() return;end)();while true do local v69=(function() return 0 + 0 ;end)();while true do if (0==v69) then local v91=(function() return 0;end)();while true do if (v91~=(1905 -(1881 + 24))) then else if ((4 -2)==v53) then v58[ #"19("]=(function() return v21();end)();for v105= #"{",v23() do local v106=(function() return v21();end)();if (v20(v106, #",", #":")~=0) then else local v142=(function() return 1763 -(454 + 1309) ;end)();local v143=(function() return;end)();local v144=(function() return;end)();local v145=(function() return;end)();while true do if (v142==0) then v143=(function() return v20(v106,2, #"-19");end)();v144=(function() return v20(v106, #"xnxx",6);end)();v142=(function() return 1;end)();end if (v142==(1 + 0)) then local v162=(function() return 0;end)();local v163=(function() return;end)();while true do if (v162~=(0 -0)) then else v163=(function() return 0 -0 ;end)();while true do if (v163~=(0 -0)) then else v145=(function() return {v22(),v22(),nil,nil};end)();if (v143==(285 -(134 + 151))) then local v173=(function() return 1665 -(970 + 695) ;end)();local v174=(function() return;end)();while true do if (v173~=0) then else v174=(function() return 0 -0 ;end)();while true do if (v174==0) then v145[ #"91("]=(function() return v22();end)();v145[ #".dev"]=(function() return v22();end)();break;end end break;end end elseif (v143== #"]") then v145[ #"asd"]=(function() return v23();end)();elseif (v143==(1992 -(582 + 1408))) then v145[ #"asd"]=(function() return v23() -((6 -4)^16) ;end)();elseif (v143~= #"19(") then else local v179=(function() return 0 -0 ;end)();local v180=(function() return;end)();while true do if (v179==0) then v180=(function() return 0 -0 ;end)();while true do if (v180~=0) then else v145[ #"nil"]=(function() return v23() -((1826 -(1195 + 629))^(20 -4)) ;end)();v145[ #"0313"]=(function() return v22();end)();break;end end break;end end end v163=(function() return 1;end)();end if (v163==1) then v142=(function() return 243 -(187 + 54) ;end)();break;end end break;end end end if (v142==3) then if (v20(v144, #"19(", #"nil")== #"}") then v145[ #"xnxx"]=(function() return v60[v145[ #"asd1"]];end)();end v55[v105]=(function() return v145;end)();break;end if (v142==(782 -(162 + 618))) then if (v20(v144, #"|", #":")== #" ") then v145[2 + 0 ]=(function() return v60[v145[2 + 0 ]];end)();end if (v20(v144,3 -1 ,2 -0 )~= #">") then else v145[ #"91("]=(function() return v60[v145[ #"91("]];end)();end v142=(function() return 3;end)();end end end end for v107= #"\\",v23() do v56,v107,v28=(function() return v54(v56,v107,v28);end)();end return v58;end if (v53==(0 + 0)) then v54=(function() return function(v108,v109,v110) local v111=(function() return 0;end)();local v112=(function() return;end)();while true do if (v111==(1636 -(1373 + 263))) then v112=(function() return 1000 -(451 + 549) ;end)();while true do if (v112==0) then v108[v109-#" " ]=(function() return v110();end)();return v108,v109,v110;end end break;end end end;end)();v55=(function() return {};end)();v56=(function() return {};end)();v57=(function() return {};end)();v53=(function() return 1 + 0 ;end)();end v91=(function() return 1;end)();end if (v91~=1) then else v69=(function() return 1 -0 ;end)();break;end end end if (v69==1) then if (v53~=1) then else v58=(function() return {v55,v56,nil,v57};end)();v59=(function() return v23();end)();v60=(function() return {};end)();for v99= #":",v59 do local v100=(function() return 0;end)();local v101=(function() return;end)();local v102=(function() return;end)();local v103=(function() return;end)();while true do if (v100~=0) then else v101=(function() return 0;end)();v102=(function() return nil;end)();v100=(function() return 1 -0 ;end)();end if (v100~=1) then else v103=(function() return nil;end)();while true do if (v101==(1385 -(746 + 638))) then if (v102== #"]") then v103=(function() return v21()~=(0 + 0) ;end)();elseif (v102==(2 -0)) then v103=(function() return v24();end)();elseif (v102== #"91(") then v103=(function() return v25();end)();end v60[v99]=(function() return v103;end)();break;end if (v101~=0) then else local v152=(function() return 341 -(218 + 123) ;end)();while true do if (1==v152) then v101=(function() return 1582 -(1535 + 46) ;end)();break;end if (v152==0) then v102=(function() return v21();end)();v103=(function() return nil;end)();v152=(function() return 1 + 0 ;end)();end end end end break;end end end v53=(function() return 1 + 1 ;end)();end break;end end end end local function v29(v61,v62,v63) local v64=v61[1];local v65=v61[562 -(306 + 254) ];local v66=v61[1 + 2 ];return function(...) local v70=v64;local v71=v65;local v72=v66;local v73=v27;local v74=1 -0 ;local v75= -((3951 -2483) -(899 + (1148 -(361 + 219))));local v76={};local v77={...};local v78=v12("#",...) -(2 -1) ;local v79={};local v80={};for v88=(923 -(53 + 267)) -(268 + 335) ,v78 do if (v88>=v72) then v76[v88-v72 ]=v77[v88 + 1 ];else v80[v88]=v77[v88 + (291 -(60 + 230)) ];end end local v81=(v78-v72) + (573 -(426 + 146)) ;local v82;local v83;while true do local v89=0 + 0 ;while true do if ((1432<3555) and (v89==(1457 -(282 + 1174)))) then if (v83<=(814 -(129 + 440 + 242))) then if (v83<=(2 -1)) then if (v83>(0 + 0)) then v80[v82[1026 -(706 + 318) ]]();else local v113=0;local v114;local v115;while true do if (v113==(1251 -(721 + 530))) then v114=v82[2];v115=v80[v82[3]];v113=1272 -(945 + 326) ;end if ((2 -1)==v113) then v80[v114 + 1 + (413 -(15 + 398)) ]=v115;v80[v114]=v115[v82[704 -(271 + 429) ]];break;end end end elseif (v83>((984 -(18 + 964)) + 0)) then local v116;local v117,v118;local v119;local v120;v80[v82[(5653 -4151) -(816 + 592 + 92) ]]={};v74=v74 + (1087 -(461 + 625)) ;v82=v70[v74];v80[v82[1290 -(993 + 295) ]]=v63[v82[1 + 2 ]];v74=v74 + (1172 -(418 + 753)) ;v82=v70[v74];v80[v82[2]]=v63[v82[2 + 1 ]];v74=v74 + 1 + 0 ;v82=v70[v74];v120=v82[1 + 1 ];v119=v80[v82[1 + 2 ]];v80[v120 + (530 -(406 + 123)) ]=v119;v80[v120]=v119[v82[1773 -(1749 + 20) ]];v74=v74 + 1 + 0 ;v82=v70[v74];v80[v82[(835 + 489) -(1249 + 73) ]]=v82[3];v74=v74 + 1 ;v82=v70[v74];v120=v82[2];v117,v118=v73(v80[v120](v13(v80,v120 + 1 ,v82[2 + 1 ])));v75=(v118 + v120) -((1996 -(20 + 830)) -(466 + 679)) ;v116=0 -0 ;for v146=v120,v75 do local v147=0 + 0 ;while true do if (v147==(0 -(126 -(116 + 10)))) then v116=v116 + (1901 -(106 + 133 + 1661)) ;v80[v146]=v117[v116];break;end end end v74=v74 + (739 -(542 + 196)) ;v82=v70[v74];v120=v82[1 + 1 ];v80[v120]=v80[v120](v13(v80,v120 + 1 + 0 ,v75));v74=v74 + (2 -(1 -0)) ;v82=v70[v74];v80[v82[5 -(1 + 2) ]]();v74=v74 + (115 -(3 + 1 + 110)) ;v82=v70[v74];do return;end else v80[v82[2]]=v82[587 -(57 + 527) ];end elseif ((v83<=(1432 -(41 + 1386))) or (1065>3578)) then if ((v83>4) or (4795<1407)) then local v137=v82[105 -(17 + 86) ];local v138,v139=v73(v80[v137](v13(v80,v137 + 1 + 0 ,v82[6 -3 ])));v75=(v139 + v137) -(2 -1) ;local v140=0 + 0 ;for v148=v137,v75 do v140=v140 + (167 -(122 + 44)) ;v80[v148]=v138[v140];end else do return;end end elseif (v83<=(10 -4)) then v80[v82[(15 -9) -4 ]]={};elseif ((1853<4813) and (v83>7)) then v80[v82[4 -2 ]]=v63[v82[3 + 0 ]];else local v155=0 + 0 ;local v156;while true do if (v155==(0 -0)) then v156=v82[67 -(30 + 35) ];v80[v156]=v80[v156](v13(v80,v156 + (1552 -(1126 + 425)) + 0 ,v75));break;end end end v74=v74 + (1258 -(1043 + 214)) ;break;end if (v89==(0 -0)) then v82=v70[v74];v83=v82[1213 -(323 + 889) ];v89=1;end end end end;end return v29(v28(),{},v17)(...);end return v15("LOL!043Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403613Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F4E61747572616C4E6931332F4E61747572616C732D5363726970742D4875622F726566732F68656164732F6D61696E2F6E61747368756276312E302E6C756100094Q00037Q00122Q000100013Q00122Q000200023Q00202Q00020002000300122Q000400046Q000200046Q00013Q00024Q0001000100016Q00017Q00",v9(),...);