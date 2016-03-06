program kart;


global

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


//,3,2,1,4,5,6;
//1,2,3,4,5,6;

// 900 = mario circuit 1
// 901 =
// 902 = ghost house level
// 903 = bowsers castle
coursemap = 900;
back1=805;
back2=0;
// 863 = bowsers castle
// 852 = mario circuit
// 856 = black *ghost house)
courseback=852;
ps=7;

file1;
file2;

private

a=0;
b=0;
w=256;
h=224;
//mult=1;
p1=0;
begin

// Load graphics
file1=load_fpg("kart2.FPG");
file2=load_fpg("ash.fpg");


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
set_mode(256224);

// setup region player 1
define_region(1,0,0,w,27);
define_region(2,0,0,w,h/2);

start_scroll(0,file1,back1,back2,1,5);
start_mode7(0,file1,coursemap,coursemap,2,27);

m7.height=48;
//m7.camera=player(0,912,684,90000);
m7.camera=player(-1,981,768,90000);
m7.distance=36;

//setup region (player 2)
define_region(3,0,h/2,w,27);
define_region(4,0,h/2,w,h/2);

start_scroll(1,file1,3,2,3,5);
start_mode7(1,file1,coursemap,courseback,4,27);

m7[1].height=32;
m7[1].distance=24;
m7.color=1;
m7[1].color=1;

//m7[1].camera=
player(1,943,704,90000);
player(11,938,704,90000);
player(12,933,704,90000);
player(13,928,704,90000);


player(14,981,625,90000);
player(15,976,625,90000);
player(16,971,625,90000);
player(17,966,625,90000);


player(2,952,648,90000);
player(18,947,648,90000);
player(19,942,648,90000);
player(20,937,648,90000);


player(3,981,672,90000);
player(4,952,696,90000);
player(5,981,720,90000);
player(6,952,744,90000);
player(ps,952,603,90000);
player(7,981,768,90000);
player(8,976,768,90000);
player(9,971,768,90000);
player(10,966,768,90000);



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
frame;

end

end


process player(mid,x,y,angle)


private
    accel=0;
    playernum=0;//false;
p1;

begin

    cnumber=c_0;

    x=x*10;
    y=y*10;

  //  if(mid&1)
  if(mid==-1)
    playernum=1;
    mid=rand(0,7);

    file = file2;
    xgraph=offset pikagraph;//playergraph[mid*30];//mariograph;

    if(mid!=0)
        ps=0;
    end
  else
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



        end
    end


  //  xgraph=offset playergraph[mid*30];//
  end

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

if(x>10240) x-=10240; end
if(y>10240) y-=10240; end
if(x<0) x+=10240; end
if(y<0) y+=10240; end



//frame;

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
    if(accel<40);
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



advance(accel);

frame;

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
height=-640;
m7[1].height=768*3;
m7[1].focus=224;
m7[1].distance=1408;
m7[1].horizon=-44;

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
size=2000;
xgraph=father.xgraph;
flags=father.flags;

loop
x=father.x;
y=father.y;
z=father.z;
file = father.file;
angle=father.angle;
height=father.height;

frame;

end

end
