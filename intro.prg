PROGRAM kartintro;

global

file1;
file2;
coinsound;
introsound1;
introsound2;
vol=256;
introfile = 0;

spin[]=
8,9,10,11,
12,-11,-10,-9,
-8,-6,-5,-4,-3,-2,
1,2,3,4,5,6;


mode = 0;


BEGIN
set_mode(256224);
set_fps(60,0);

mkintro();

END


PROCESS mkintro()

PRIVATE
s=0;

BEGIN

file1=load_fpg("kart101/kart2.FPG");
file2=load_fpg("kart101/ash.fpg");
coinsound=load_wav("kart101/intro/coin.wav",0);
introsound1=load_song("kart101/intro/intro1.ogg",0);
introsound2=load_song("kart101/intro/main.ogg",1);

introfile = load_fpg("kart101/intro.fpg");

put_screen(introfile,2);

timer=0;

while(timer<100);
frame;
end


sound(coinsound,256,256);


while ( timer<200)
    frame;
end

fade(0,0,0,5);

while (fading);
    frame;
end

loop

start_scroll(0,introfile,1,0,0,1);
file = introfile;

graph=3;
x=128;
y=112;
s=song(introsound1);

fade_on();
scroll[0].x0=0;

karts(0);

while(scroll[0].x0<1700)

if(!is_playing_song());
s=song(introsound2);
end

scroll[0].x0++;

frame;
end

mode=0;

fade(0,0,0,3);
vol=256;

while (fading)
    scroll[0].x0++;
    change_sound(s,vol,256);
    vol-=16;

    frame;
end

stop_sound(s);


frame(10000);

end


END




process karts(mtype)

private



BEGIN

file = file1;
graph = 8;

x=-256;
y=167;

switch(mtype)
case 0:

    kart(x,y,graph);   // mario

    graph = 76; // luigi
    x-=64;
    y+=8;

    kart (x,y,graph);

    graph = 25;  // princess
    x-=64;
    y-=8;

    kart (x,y,graph);

    graph = 127;  // toad
    x-=64;
    y+=8;

    kart (x,y,graph);

    graph = 42;   // bowser
    x-=96;

    kart (x,y,graph);
end

case 1:
    x+=224;

    y+=8;

    graph = 110; // dkjr
    kart(x,y,graph);
    x-=128;

    graph = 93; // yoshi
    kart(x,y,graph);
end

case 2:
    mode = 2;

    graph = 8; // mario
    x+=152;
    y+=8;
    kart(x,y,graph);

end

case 3:

    mode = 3;

    x+=208;

    y+=8;

    graph = 76; //luigi
    kart(x,y,graph);

    x-=32;
    graph = 59; // troppa;
    kart(x,y,graph);


    x-=32;
    graph = 42; // bowser
    kart(x,y,graph);

    x-=32;
    graph = 25; // princess
    kart(x,y,graph);


end

end  // end case

end

process kart(x,y,graph)
private
counter=0;
ograph = 0;

BEGIN


while ( !out_region(id,0) || x< 0)

    x++;
    counter++;

    if(counter==10);
        y--;
    end

    if(counter==2);
        y++;
    end

    if(counter>10)
        counter=0;
    end

    if ( graph == 42 && mode == 0 )

        if ( x == 32 )
            shell();
        END

        if ( x == 270)

            karts(1);

            signal ( type karts, s_kill);
            frame;
            return;

        end


    END

    if ( graph == 127 )

    if ( collision (type shell))
        ograph = graph-8;

        spark();

        spinkart(200,-2);
        return;

     end

    end

    if ( graph == 110 )
        if ( x == 208)
        banana(x,y+8);
        END
    END

    IF ( graph == 8 && mode == 2)

        IF ( x >=32)

            signal(type banana , s_kill);

            spinkart(200,0);

            karts(3);


            return;
        END


    END


    if ( graph == 93 )

        frame(80);

        if(x>=170)//collision(type banana))
          // debug;
           karts(2);

           spinkart(200,-4);
           return;

        end

    else

    if ( graph == 25 && mode == 3 && x == 64)
        supermario();
    end

    if ( collision(type supermario))
        spinkart(200,-2);
        return;
    end

    frame;

    end
//frame(200);

end



END

PROCESS shell()

private

count;

BEGIN

z=256;

file = introfile;

//debug;


x=father.x;
y=father.y+8;
graph=4;

LOOP
count ++;
x=x+3;

if (count < 3 )
graph = 4;
else
graph=5;
end

if ( count > 5)
count =0;
end


FRAME;



END

END

PROCESS spark()

BEGIN
file = introfile;

graph = 6;
x=father.x-16;
y=father.y+8;

FRAME(400);
signal(get_id(type shell),s_kill);

END


PROCESS banana(x,y)

BEGIN
file = introfile;

graph=7;

LOOP
x--;
FRAME;

END

END


process spinkart (framerate, xoff)

private
counter;
ograph;


begin
x=father.x;
y=father.y;
graph=father.graph;

 ograph=graph-8;
 WHILE ( !out_region(id,0))
 FROM counter = 0 to 19;

                if ( spin[counter]<0)
                    flags=1;
                else
                    flags = 0;
                end

                graph = abs(spin[counter])+ograph;

                frame(framerate);
            x+=xoff;
        end
    END


END

process supermario()

begin

x=32;
y=father.y;

graph = 8;

signal ( type spinkart, s_kill);

while(!out_region(id,0));

x+=3;


frame;

end

debug;

end
