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
karts();

while(scroll[0].x0<1992)

if(!is_playing_song());
s=song(introsound2);
end

scroll[0].x0++;

frame;
end
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




process karts()

private

counter=0;
ograph = 0;


BEGIN

file = file1;
graph = 8;

x=-256;
y=167;

clone
    graph = 76; // luigi
    x-=64;
    y+=8;

    clone
        graph = 127;  // toad
        x-=128;
    end


end

if(graph==8);
    clone
        graph = 25;  // princess
        x-=128;
    end
end

if ( graph == 127 )
    clone
        graph = 42;   // bowser
        x-=96;
    end
end



loop

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

    if ( graph == 42 )
        if ( x == 32)
            shell();
        END

        if ( x > 270)
            debug;
            signal ( type karts, s_kill);
        end


    END

    if ( graph == 127 )

    if ( collision (type shell))
        ograph = graph-8;

        spark();

        LOOP

        FROM counter = 0 to 19;
            if ( spin[counter]<0)
            flags=1;
            else
            flags = 0;
            end

            graph = abs(spin[counter])+ograph;

            frame(200);
            x-=2;
        end

        END

    end

    end


    frame;

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

