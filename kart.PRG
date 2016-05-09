program kart;


global


pids[120];


kartid=0;
racing = false;

pipegraph[] = 1,700;

pacanim[4];


playergraph[12*30];

mariograph[]=28,
8, // right
7,6,5,4,3,2,
1 // up
,-2,-3,-4,-5,-6,-7,
-8, // left
-9,-9,-10,-10,-11,-11,
12, // down
11,11,10,10,9,9;


ashgraph[]=8,
-1,  // right
6,
5,// up
4,
1, // left
2,
3,// down
-2;


pikagraph[]=8,
7,8,9,-8,
-7,10,11,-10;


turbograph[]=8,
-12,-13,14,13,
12,15,16,-15;


tetris1[]=4,
17,18,19,20;


tetris2[]=4,
21,22,23,24;


tetris3[]=4,
25,26,27,28;


samus[]=4,
-29,31,29,30;


subzero[]=4,
32,33,-32,34;


scorpion[]=4,
36,37,-36,38;


kirby[]=4,
40,41,-40,42;


megaman[]=8,
-43,-44,45,44,
43,46,47,-46;


masterchief[]=4,
48,49,-48,50;


petey[]=4,
55,53,-55,54;


littlemac[]=8,
-56,-57,58,57,
56,56,59,-56;


honeyqueen[]=4,
60,61,-60,62;


across1[]=8,
63,64,65,-64,
-63,-63,66,63;


across2[]=8,
67,68,69,-68,
-67,-67,70,67;


across3[]=8,
71,72,73,-72,
-71,-71,74,71;


cjgraph[]=4,
75,76,-75,77;


eggman[]=4,
-78,79,78,80;


gngarthur[]=8,
-81,-82,83,82,
81,81,84,-81;


nathendrake[]=8,
88,89,90,-89,
-88,-88,91,88;


babymario[]=8,
92,93,94,-93,
-92,95,96,-95;


babyluigi[]=8,
97,98,99,-98,
-97,100,101,-100;


kamek[]=8,
102,103,104,-103,
-102,105,106,-105;


sonic[]=8,
107,108,109,-108,
-107,110,111,-110;


tails[]=8,
112,113,114,-113,
-112,115,116,-115;


steve[]=8,
117,118,119,-118,
-117,120,121,-120;


bomberman[]=8,
122,123,124,-123,
-122,125,126,-125;


bigdaddy[]=8,
127,128,129,129,
130,130,131,127;


bowserjr[]=8,
132,133,134,-133,
-132,-135,136,135;


srageaxel[]=8,
137,138,139,-138,
-137,137,140,137;


srageskate[]=8,
141,142,143,-142,
-141,-141,144,141;


solidsnake[]=4,
146,145,
-146,147;


ratchetclank[]=8,
148,149,150,-149,
-148,-148,151,148;


alexkidd[]=8,
152,153,154,-153,
-152,-152,155,152;


banjograph[]=8,
156,157,158,-157,
-156,-156,159,156;


catpeach[]=8,
160,161,162,-161,
-160,163,164,-163;


crashb[]=12,
165,166,167,168,-167,-166,
-165,-165,169,169,169,165;


diddykong[]=8,
170,171,172,-171,
-170,-170,173,170;


donkeykong[]=12,
-174,175,176,177,-176,-175,
174,178,178,179,-178,-178;


drybones[]=8,
180,181,182,-181,
-180,183,182,-183;


drybonesbowser[]=8,
185,186,187,-186,
-185,188,189,-188;


dukenukem[]=8,
191,192,193,-192,
-191,-192,194,191;


earthwormjim[]=4,
195,196,
-195,197;


echograph[]=8,
199,200,201,-200,-201,
-199,-199,202,199;


funkykong[]=8,
283,284,284,-284,
-203,206,207,-206;

ghostblue[]=8,
208,209,210,-209,
-208,211,212,-211;


gilius[]=8,
213,214,215,-214,
-213,216,217,-216;


gokugraph[]=8,
218,219,220,-219,
-218,221,222,-221;


goldpeach[]=8,
223,224,225,-224,
-223,226,227,-226;


hammerbros[]=8,
228,229,230,-229,
-228,231,232,-231;


iggy[]=8,
233,234,235,-234,
-233,236,237,-236;


king[]=4,
238,239,
-238,240;

kingboo1[]=8,
242,243,244,-243,
-242,245,246,-245;


kingboo2[]=8,
248,243,247,-243,
-248,245,249,-245;


kingboo3[]=8,
251,243,250,-243,
-251,245,252,-245;

kingboo4[]=8,
254,243,253,-243,
-254,245,255,-245;


kratos[]=8,             // GOD OF WAR
256,257,258,259,
260,260,261,256;


laracroft[]=8,          // TOMB RAIDER
262,263,264,-263,
-262,265,266,267;


larrykoopa[]=8,
268,269,270,-269,
-268,271,272,-271;


lemmykoopa[]=8,
273,274,275,-274,
-273,276,277,-276;


link[]=8,
278,279,280,281,
282,283,284,285;


ludwigkoopa[]=8,
286,287,288,-287,
-286,289,290,-289;


metalmario[]=8,
291,292,293,-292,
-291,294,295,-294;


mortonkoopa[]=8,
296,297,298,-297,
-296,-296,299,296;


ness[]=8,             // EARTHBOUND
300,301,302,303,
304,304,305,300;


oli[]=8,
306,307,308,-307,
-306,309,310,-309;


pacman1[]=8,
311,312,313,-312,
-311,-311,314,311;

pacman2[]=8,
319,320,313,-320,
-319,-319,321,319;

pacman3[]=8,
322,323,313,-323,
-322,-322,324,322;


parapa[]=12,
315,316,317,318,-317,-316,
-315,-315,325,325,325,315,315;


paratroopa1[]=8,
326,327,328,-327,
-326,329,330,-329;

paratroopa2[]=8,
331,327,332,-327,
-331,329,333,-329;


peach[]=8,
334,335,336,-335,
-334,337,338,-337;


pit[]=8,
346,347,348,-347,
-346,-346,349,346;


pongb[]=4,
350,351,
-350,352;

pongr[]=4,
353,354,
-353,355;

pongball[]=4,
357,357,357,357;


qbert[]=4,
358,359,
-358,360;


rabbid[]=8,
361,362,363,-362,
-361,364,365,-364;


rayman[]=4,
366,367,
-366,368;


ghostred1[]=4,
369,370,
-369,371;

ghostred2[]=4,
372,373,
-372,371;

ghostred3[]=4,
374,375,
-374,371;


yoshired[]=12,
376,377,377,378,-377,-377,
-376,-379,380,381,-380,379;


rob[]=8,
382,383,384,-383,
-382,-382,385,382;


ros[]=8,
386,387,388,-387,
-386,390,391,-390;


roykoopa[]=8,
392,393,394,-393,
-392,-392,395,392;


ryu[]=8,
396,397,398,-397,
-396,-396,399,396;


sack[]=8,
400,401,402,-401,
-400,-400,403,400;


shyguy[]=8,
404,405,406,-405,
-404,-404,407,404;


spyro[]=8,
408,409,410,-409,
-408,-408,411,408;


starfox[]=8,
412,413,414,-413,
-412,-412,415,412;


tanooki[]=4,
416,417,
-416,418;


toadette[]=8,
419,420,421,-420,
-419,422,423,-422;


tyrisflare[]=8,
424,425,426,-425,
-424,427,428,-427;


waluigi[]=8,
429,430,431,-430,
-429,432,433,-432;


wario[]=8,
434,435,436,-435,
-434,437,438,-437;


wendykoopa[]=8,
439,440,441,-440,
-439,442,443,-442;


wriggler1[]=4,
-444,445,
444,446;

wriggler2[]=4,
-447,448,
447,446;

wriggler3[]=4,
-449,450,
449,446;


//,3,2,1,4,5,6;
//1,2,3,4,5,6;

// 900 = mario circuit 1
// 901 =
// 902 = ghost house level
// 903 = bowsers castle
coursemap = 906;
back1=801;
back2=0;
// 863 = bowsers castle
// 852 = mario circuit
// 856 = black *ghost house)
courseback=852;
ps=7;

file1;
file2;
bstate=0;
bstopped=0;
butt7;
butt3;
bstoppin=0;
ammo=0;
bammo;
btime;
c_coin = 143;
coins=0;
introfile=0;
local

dist=0;

lap=0;

speed;

accel=0;

position=0;

target_point=0;


private

a=0;
b=0;
w=256;
h=224;
point = 0;
//mult=1;
p1=0;
begin

// Load graphics
file1=load_fpg("kart101/kart2.FPG");
file2=load_fpg("kart101/ash.fpg");
introfile = load_fpg("kart101/intro.fpg");
load_fnt("numbers.fnt");

pacanim[0]=&pacman1;
pacanim[1]=&pacman2;
pacanim[2]=&pacman3;
pacanim[3]=&pacman2;







fade_on();
set_fps(30,0);


// setup graphics
for(a=0;a<12;a++)
    // 28 frames per player
    playergraph[a*30]=28;

    for(b=1;b<29;b++)

        // if not mirrored
        if(mariograph[b]>0)
            playergraph[(a*30)+b]=mariograph[b]+(a*17);
        else
            playergraph[(a*30)+b]=0-(abs(mariograph[b])+(a*17));
        end

    end

end



// set graphics mode
set_mode(w*1000+h);

// setup region player 1
define_region(1,0,3,w,27);
define_region(2,0,3,w,104);

start_scroll(0,file1,back1,back2,1,5);
start_mode7(0,file1,coursemap,courseback,2,25);

m7.height=96;
//m7.camera=player(0,912,684,90000);
get_point(file1, coursemap, 8, &x , &y);

m7.camera=player(-1,x,y,90000);


m7.distance=60;

//setup region (player 2)
define_region(3,0,115,w,27);
define_region(4,0,115,w,104);

start_scroll(1,file1,3,2,3,5);
start_mode7(1,file1,coursemap,courseback,4,27);

m7[1].height=32;
m7[1].distance=100;
m7.color=1;
m7[1].color=1;


//m7[1].camera=
//while(!key(_space))
frame;
//end

FROM point = 1 to 8;
//point =1 ;
get_point(file1, coursemap, point, &x , &y);

y-=20;


//FROM point = 1 to 4;
y+=20;
//x=926;//
//x-=30;
x-=5;

player(graph,x-15,y,90000);
player(graph+1,x-10,y,90000);
player(graph+2,x-5,y,90000);
player(graph+3,x,y,90000);
player(graph+4,x+5,y,90000);
player(graph+5,x+10,y,90000);
player(graph+6,x+15,y,90000);
player(graph+7,x+20,y,90000);
player(graph+8,x+25,y,90000);
player(graph+9,x+30,y,90000);
player(graph+10,x+35,y,90000);
player(graph+11,x+40,y,90000);
player(graph+12,x+45,y,90000);
player(graph+13,x+50,y,90000);
player(graph+14,x+55,y,90000);



//y+=20;

graph +=15;
IF ( graph > 100 )
graph = 0;
break;

END

/*
player(graph,x-10,y,90000);
player(graph+1,x-5,y,90000);
player(graph+2,x,y,90000);
player(graph+3,x+5,y,90000);
player(graph+4,x+10,y,90000);



graph += 5;
*/
end

FROM point = 10 to 17;// to 255;

get_point(file1, coursemap, point, &x, &y);
pipe(x,y);

end

pong_ball();


/*
player(14,981,625,90000);
player(15,976,625,90000);
player(16,971,625,90000);
player(17,966,625,90000);


player(2,952,648,90000);
player(18,947,648,90000);
player(19,942,648,90000);
player(20,937,648,90000);


player(3,981,672,90000);
player(21,976,672,90000);
player(22,971,672,90000);
player(23,966,672,90000);

player(4,952,696,90000);
player(24,947,696,90000);
player(25,942,696,90000);
player(26,937,696,90000);

player(5,981,720,90000);
player(27,976,720,90000);
player(28,971,720,90000);
player(29,966,720,90000);


player(6,952,744,90000);
player(30,947,744,90000);
player(31,942,744,90000);
player(32,937,744,90000);

player(33,952,603,90000);
player(7,947,603,90000);
player(34,942,603,90000);
player(35,937,603,90000);

player(8,976,768,90000);
player(9,971,768,90000);
player(10,966,768,90000);
player(36,966,768,90000);

*/


m7[1].camera=map();

// main loop

p1=m7.camera;
loop
//if(p1!=0)
//map_xput(file1,coursemap,505,(p1.x%10240)/10,(p1.y%10240)/10,p1.angle-90000,200,4);

//if(m7.camera!=0)

//stop_mode7(0);
//stop_mode7(1);

//start_mode7(0,file1,coursemap,courseback,2,27);
//start_mode7(1,file1,coursemap,courseback,4,27);
//m7.height=48;
//m7.camera=player(0,912,684,90000);
//m7.camera=p1;
//layer(-1,981,768,90000);
//m7.distance=36;
//end

//p1=m7.camera;

//    frame;
//end

if(key(_f1))
x=rand(0,100);
for( point = 0 ;point<x;point++)

m7.camera=get_id(type player);
//frame;
end

end

if ( key (_space))
racing = true;
end
file=introfile;
z=1024;

x=w/2;
y=h/2;
graph=2;



frame;

end

end

PROCESS pipe(x,y);

begin

ctype = c_m7;
x=x*10;
y=y*10;
resolution=10;

xgraph = offset pipegraph;
cnumber = c_0;
mapchar();

loop

frame;
end

end


process player(mid,x,y,angle)


private

playernum=0;//false;
p1;
cpu = false;
pixel = 0;
point = 0;
px=0;
py=0;
fangle;
cangle;
dangle;
kid=0;
c_dist;
colour_check;
c_qblock=140;

can_pickup_bonus=1;
track=900;

anim=0;
pid =0 ;
tx=0;
ty=0;
newlap=0;
last_point=0;

count=0;
 STRUCT points[100]
      x,y;
    END
num_points=0;
fx=0;
fy=0;

begin
    kartid++;
    position=kartid;

    kid=kartid;
    pids[kid]=id;

   cnumber=c_0;
  //  x=x-24;
  //  y=y-16;

    x=x*10;
    y=y*10;

    get_point(file1,coursemap,99,&fx,&fy);


  //  if(mid&1)
  if(mid==-1)
    playernum=1;
    mid=43;//rand(0,42);

    //file = file2;
    //xgraph=offset playergraph[mid*30];//mariograph;
    write_int(0,0,40,0,&num_points);

    write_int(0,0,50,0,&dist);

    write_int(1,245,85,5,&position);

    write_int(0,0,70,0,&lap);

    write_int(0,0,80,0,&target_point);



    if(mid!=0)
        ps=0;
    end

  else
    cpu = 1;
    point = 100;
    get_point(file1, coursemap, point, &px, &py );

    px=px+rand(-10,10);
    py=py+rand(-10,10);

    px=px*10;
    py=py*10;

  end
  //  file = file2;
    if(mid<8)
        xgraph=offset playergraph[mid*30];//mariograph;
    else
        file = file2;

        switch(mid)

            case 8:
                xgraph = offset ashgraph;
            end

            case 9:
                xgraph = offset pikagraph;
            end

            case 10:
                xgraph = offset turbograph;
            end

            case 11:
                xgraph = offset tetris1;
            end

            case 12:
                xgraph = offset tetris2;
            end

            case 13:
                xgraph = offset tetris3;
            end

            case 14:
                xgraph = offset samus;
            end

            case 15:
                xgraph = offset subzero;
            end

            case 16:
                xgraph = offset scorpion;
            end

            case 17:
                xgraph = offset kirby;
            end

            case 18:
                xgraph = offset megaman;
            end

            case 19:
                xgraph = offset masterchief;
            end

            case 20:
                xgraph = offset petey;
            end

            case 21:
                xgraph = offset littlemac;
            end

            case 22:
                xgraph = offset honeyqueen;
            end

            case 23:
                xgraph = offset across1;
            end

            case 24:
                xgraph = offset across2;
            end

            case 25:
                xgraph = offset across3;
            end

            case 26:
                xgraph = offset cjgraph;
            end

            case 27:
                xgraph = offset eggman;
            end

            case 28:
                xgraph = offset gngarthur;
            end

            case 29:
                xgraph = offset nathendrake;
            end

            case 30:
                xgraph = offset babymario;
            end

            case 31:
                xgraph = offset babyluigi;
            end

            case 32:
                xgraph = offset kamek;
            end

            case 33:
                xgraph = offset sonic;
            end

            case 34:
                xgraph = offset tails;
            end

            case 35:
                xgraph = offset steve;
            end

            case 36:
                xgraph = offset bomberman;
            end

            case 37:
                xgraph = offset bigdaddy;
            end

            case 38:
                xgraph = offset bowserjr;
            end

            case 39:
                xgraph = offset srageaxel;
            end

            case 40:
                xgraph = offset srageskate;
            end

            case 41:
                xgraph = offset solidsnake;
            end

            case 42:
                xgraph = offset ratchetclank;
            end

            case 43:
                xgraph = offset alexkidd;
            end

            case 44:
                xgraph = offset banjograph;
            end

            case 45:
                xgraph = offset catpeach;
            end

            case 46:
                xgraph = offset crashb;
            end

            case 47:
                xgraph = offset diddykong;
            end

            case 48:
                xgraph = offset donkeykong;
            end

            case 49:
                xgraph = offset drybones;
            end

            case 50:
                xgraph = offset drybonesbowser;
            end

            case 51:
                xgraph = offset dukenukem;
            end

            case 52:
                xgraph = offset earthwormjim;
            end

            case 53:
                xgraph = offset echograph;
            end

            case 54:
                xgraph = offset king;
            end

            case 55:
                xgraph = offset funkykong;
            end

            case 56:
                xgraph = & ghostblue;
            end

            case 57:
                xgraph = & gilius;
            end

            case 58:
                xgraph = & gokugraph;
            end

            case 59:
                xgraph = & goldpeach;
            end

            case 60:
                xgraph = & hammerbros;
            end

            case 61:
                xgraph = & iggy;
            end

            case 62:
                xgraph = & king;
            end

            case 63:
                xgraph = & kingboo1;
            end

            case 64:
                xgraph = & kratos;
            end

            case 65:
                xgraph = &laracroft;
            end

            case 66:
                xgraph = &larrykoopa;
            end

            case 66:
                xgraph = &lemmykoopa;
            end

            case 67:
                xgraph = &link;
            end

            case 68:
                xgraph = &ludwigkoopa;
            end

            case 69:
                xgraph = &metalmario;
            end

            case 70:
                xgraph = &mortonkoopa;
            end

            case 71:
                xgraph = &oli;
            end

            case 72:
                xgraph = &pacman1;
            end

            case 73:
                xgraph = &parapa;
            end

            case 74:
                xgraph = &paratroopa1;
            end

            case 75:
                xgraph = &peach;
            end

            case 76:
                xgraph = &pit;
            end

            case 77:
                xgraph = &pongb;
            end

            case 78:
                xgraph = &pongr;
            end

            case 79:
                xgraph = &qbert;
            end

            case 80:
                xgraph = &rabbid;
            end

            case 81:
                xgraph = &rayman;
            end

            case 82:
                xgraph = &ghostred1;
            end

            case 83:
                xgraph = &yoshired;
            end

            case 84:
                xgraph = &rob;
            end

            case 85:
                xgraph = &ros;
            end

            case 86:
                xgraph = &roykoopa;
            end

            case 87:
                xgraph = &ryu;
            end

            case 88:
                xgraph = &sack;
            end

            case 89:
                xgraph = &shyguy;
            end

            case 90:
                xgraph = &spyro;
            end

            case 91:
                xgraph = &starfox;
            end

            case 92:
                xgraph = &tanooki;
            end

            case 93:
                xgraph = &toadette;
            end

            case 94:
                xgraph = &tyrisflare;
            end

            case 95:
                xgraph = &waluigi;
            end

            case 96:
                xgraph = &wario;
            end

            case 97:
                xgraph = &wendykoopa;
            end

            case 98:
                xgraph = &wriggler1;
            end





        end



  //  xgraph=offset playergraph[mid*30];//
  end

 /*write_int(0,0,mid*10,0,&angle);
  write_int(0,60,mid*10,0,&fangle);
  write_int(0,120,mid*10,0,&cangle);
   */
  //  else
 //       xgraph=offset peachgraph;
 //   end

    resolution=10;
    ctype=c_m7;
    size=100;

    if(mid==1)
        flags=0;
    end

    mapchar();

p1=m7.camera;
loop

if(mid==72)
anim++;
if(anim==9);
anim=0;
end

xgraph = pacanim[anim/2];

end


//if(x>10240) x-=10240; end
//if(y>10240) y-=10240; end
//if(x<0) x+=10240; end
//if(y<0) y+=10240; end



//frame;
if ( cpu == false )
if(key(_w) && playernum==1)
height+=2;
m7.height+=2;
end

if(key(_s) && playernum==1 && height>0)
height--;
m7.height--;
end



if( (key(_left) && playernum==1) || (key(_tab) && playernum==2))
    angle+=3000;
    scroll[playernum-1].x0-=(3600/256);
    scroll[playernum-1].x1-=(3600/512);
end

if( (key(_right) && playernum==1) || (key(_backspace) && playernum==2))
    angle-=3000;
    scroll[playernum-1].x0+=(3600/256);
    scroll[playernum-1].x1+=(3600/512);
end


if(( (key(_alt) || key(_up)) && playernum==1) || (key(_space) && playernum==2))
    if(accel<40 + 40 * (key(_space)));
    accel+=2;
    end;
    //advance(50);
else

if(accel>0 && height==0)
    accel--;
end





end

if(height>0)
height--;
m7.height--;
end

speed = accel;



//bonus catcher//////////////////////////////
from point=70 to 83;
 get_point(0,coursemap,point,&px,&py); px*=10;py*=10;
 c_dist=fget_dist(x,y,px,py);
 colour_check=map_get_pixel(0,coursemap,(px/10-1),py/10-3);
 if(colour_check==c_qblock and c_dist<90 and can_pickup_bonus)
  can_pickup_bonus=false;bonus_spinner();
  if(track==900)map_put(0,coursemap,890,px/10+1,py/10+1);else
  if(track==901)map_xput(0,coursemap,890,px/10-1,py/10-1,0,100,3);else
  if(track==902)map_xput(0,coursemap,890,px/10-1,py/10-1,0,100,3);else
  if(track==903)map_put(0,coursemap,891,px/10,py/10+1);else
  if(track==904)map_put(0,coursemap,891,px/10,py/10+1);else
  end end end end end
 end
end//////////////////////////////////////




//coin collector//////////////////////////////
from point=20 to 80;
 get_point(file1,track,point,&px,&py);px*=10;py*=10;
 c_dist=fget_dist(x,y,px,py);
 colour_check=map_get_pixel(file1,coursemap,px/10,py/10);
 if(colour_check==c_coin and c_dist<60)
  coins++;//20to54coins //60to71bonus's
  coin_flip(x,y);
  if(track==900)map_put(file1,coursemap,854,px/10,py/10);else
  if(track==901)map_put(file1,coursemap,855,px/10,py/10);else
  if(track==902)
   if((point>28 and point<32)or(point>38))map_put(file1,coursemap,862,px/10+1,py/10+1);else
   map_put(file1,coursemap,861,px/10+1,py/10+1);end
  else
  if(track==903)map_put(file1,coursemap,854,px/10,py/10);else
  if(track==904)map_put(file1,coursemap,854,px/10,py/10);else
  end end end end end
 end
end//////////////////////////////////////


ELSE  // CPU CONTROLS

//px=px*10;
//py=py*10;

//debug;

if (fget_dist(x,y,px,py) < accel*10)
    //debug;
    point = point +1;
    get_point(file1, coursemap, point, &px, &py );
    if (px<0 )
        point = 100;
    end

    get_point(file1, coursemap, point, &px, &py );


    px=px+rand(-accel/10,accel/10);
    py=py+rand(-accel/10,accel/10);
    px=px*10;
    py=py*10;

end



IF ( accel < 40 +kid/5 )
    accel++;
END

fangle = fget_angle(x,y,px,py);

angle = near_angle( angle, fangle ,3000 +accel*10);

/*IF ( (fangle - angle + 360000) % 360000 < 180000)

        angle +=3000;

    END


    IF ( (fangle - angle + 360000) % 360000 > 180000)

        angle -=3000;

    END

*/
//cangle = fangle - angle;
//cangle = ( ( cangle + 180000) % 360000 ) - 180000;

/*
if ( angle != fangle )


if ( cangle > 0 )
angle +=3000;
END

if (cangle < 0 )
// > fget_angle(x,y,px,py)+720000)
angle -=3000;
END

end

if ( angle > 360000)
    angle -=360000;
end

if ( angle < 0 )
    angle +=360000;
end



*/

END

target_point = map_get_pixel(file1,coursemap+30,x/80,y/80);

if(target_point == 1 && last_point == 13)
//if(cpu==false)
//debug;
//end
lap++;
end

if(target_point >= 12 && target_point <2)
lap--;
end

if(target_point!=last_point)
last_point = target_point;
end

//num_points=path_find(0,file1,coursemap+30,80,fx*10,fy*10,OFFSET points,sizeof(points));
//debug;
/*
if(num_points>0)
    dist=0;

    for(point=0;point<num_points;point++)
        dist+=fget_dist(x,y,points[point].x,points[point].y);
    end

end
*/

//frame(50);

get_point(file1,coursemap+30,target_point,&tx,&ty);

target_point+=lap*50;

tx=tx*80;
ty=ty*80;
dist = fget_dist(x,y,tx,ty);

frame(50);

for(count=kid+1;count<102;count++)
// ( (pid = get_id ( type player )))

pid=pids[count];

if(pid !=0 && pid !=id)
if( ( pid.target_point > target_point && pid.position > position ) ||
    ( pid.target_point < target_point && pid.position < position ) ||
    ( pid.target_point == target_point && dist < pid.dist && pid.position<position) ||
    ( pid.target_point == target_point && dist > pid.dist && pid.position>position ) )
    if ( pid.lap == lap)
    fangle = pid.position;
    pid.position=position;
    position=fangle;
    end
//    debug;
end


//fangle = get_angle ( pid );
fangle = pid.accel;

IF ( get_dist(pid) < fangle && fangle > 5 )
xadvance(pid.angle,fangle);
pid.accel/=2;
accel = fangle;

end
end

end



if ( racing )

advance(accel);

end

pixel = map_get_pixel(file1,coursemap+50,x/80,y/80);

if ( pixel==232)
    advance (-accel);
end

if ( pixel == 108 )
    IF ( accel>=10)
        accel-=4;
    END
END


frame(50);

end

end

process map()

private
mult=1;

begin

write_int(0,0,0,0,&m7[1].focus);
write_int(0,0,20,0,&m7[1].distance);

x=512;
y=512;
angle=-270000;
height=-512;
m7[1].height=768*3;
m7[1].focus=300;//1408;
m7[1].distance=1408;//393;//1408;
m7[1].horizon=-66;

//m7[1].focus=512;

loop

if(shift_status>0)
mult=10;
else
mult=1;
end

if(key(_i))
m7[1].focus+=mult;
end

if(key(_k))
m7[1].focus-=mult;
end

if(key(_u))
m7[1].height+=mult;
end

if(key(_j))
m7[1].height-=mult;
end

if(key(_y))
x+=mult;
end
if(key(_h))
x-=mult;
end
if(key(_t))
y+=mult;
end
if(key(_g))
y-=mult;
end
if(key(_r))
m7[1].distance+=mult;
end
if(key(_f))
m7[1].distance-=mult;
end
if(key(_e))
m7[1].horizon+=mult;
end
if(key(_d))
m7[1].horizon-=mult;
end

//m7[1].height=mouse.x*32;
//m7[1].distance=mouse.y*16;
//m7[1].horizon=mouse.y;
//m7[1].focus=mouse.x*2;
//m7[1].distance=mouse.y*16;
frame;//(1000);

end

end


process mapchar()

begin
cnumber=c_1;

ctype=c_m7;
resolution=father.resolution;
size=1000;

xgraph=father.xgraph;
flags=father.flags;

if ( xgraph == offset eggman )
    size=500;
end

if ( xgraph == offset pongball )
    height = 100;
end



loop
x=father.x;
y=father.y;
z=father.z;
file = father.file;
angle=father.angle;
if(xgraph != offset pongball )
height=father.height;
end

xgraph = father.xgraph;

frame;

end

end



process bonus_spinner();
private bspin=32;

begin x=320;y=100;z=-200;graph=580;size=200;region=3;
      bstate=rand(0,13);bstopped=0;

region=1;

z=-2048;

loop
 if(bstate>13)bstate=1;end y+=bspin;
 if(y>150)y=0;bstate+=1;end

 switch(bstate)
  case 1: graph=580;size=200;end
  case 2: graph=581;size=200;end
  case 3: graph=582;size=200;end
  case 4: graph=583;size=200;end
  case 5: graph=589;size=225;end
  case 6: graph=593;size=200;end
  case 7: graph=586;size=200;end
  case 8: graph=587;size=200;end
  case 9: graph=580;size=200;end
  case 10: graph=589;size=225;end
  case 11: graph=590;size=125;end
  case 12: graph=591;size=170;end
  case 13: graph=592;size=100;end
 end

 IF(key(_b))bstate+=1;frame(1000);end


 if(butt7 or butt3)bstoppin=true;end
 if(bstoppin)bspin--;end

 if(bspin<0)y=52;
  if(ammo==0)bstopped=true; /*pcar.canfire=true;*/end
  if(bstate==8)bammo=10;btime=300;end
 end

frame;end end
///////////////////////////////


process coin_flip(x,y);
private coin_move;
begin ctype=c_m7;graph=500;resolution=10;size=50;
      coin_move=rand(-10,10);
repeat //X=FATHER.X; Y=FATHER.Y;
 height+=5+father.speed/10;flags=rand(0,3);//size+=3;
 x+=coin_move;y+=coin_move;
frame;until(height>80);end
/////////////////////////////////////


process pong_ball();

private

pid;
rpid;
bpid;

tx;
ty;
fdist;


BEGIN
file = file2;

xgraph = offset pongball;
//graph=357;
ctype = c_m7;
cnumber=c_0;
size=100;
angle=90000;

pid = get_id(type player);

x=pid.x;
y=pid.y;


while ( pid.xgraph != OFFSET pongb )

pid = get_id(type player);

end

bpid = pid;

frame;

pid = get_id(type player);

while ( pid.xgraph != OFFSET pongr )

pid = get_id(type player);

end

rpid = pid;



tx = pid.x;
ty = pid.y;

//pid = get_id(type player);


resolution = 10;

height=15;


mapchar();
//debug;

loop
//pid = get_id(type player);
fdist = get_dist(pid);

if ( fdist < 100 )

    if ( pid == rpid )
        pid = bpid;
     else
        pid = rpid;
        //debug;
    end

end

angle = get_angle(pid);

advance(100);



//x=pid.x;
//y=pid.y;

frame;

end

end


