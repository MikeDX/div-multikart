PROGRAM kartintro;

global

file1;
file2;
coinsound;
introsound1;
introsound2;
vol=256;


BEGIN
set_mode(256224);
set_fps(60,0);

mkintro();

END


PROCESS mkintro()

PRIVATE
s=0;
introfile = 0;

BEGIN

file1=load_fpg("kart101/kart2.FPG");
file2=load_fpg("kart101/ash.fpg");
coinsound=load_wav("kart101/intro/coin.wav",0);
introsound1=load_wav("kart101/intro/intro1.wav",0);
introsound2=load_wav("kart101/intro/main.wav",1);

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
s=sound(introsound1,256,256);

fade_on();
scroll[0].x0=0;
karts();

while(scroll[0].x0<1992)

if(!is_playing_sound(s));
sound(introsound2,256,256);
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


BEGIN

file = file1;
graph = 8;

x=-256;
y=166;

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


    frame;

//frame(200);

end



END
