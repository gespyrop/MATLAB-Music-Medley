f = 32.70320;
C = zeros(1,8);

%Initializing C frequency matrix
for octave = 1:8
    C(octave) = f;
    f = f*2;
end

%Initializing frequency matrices for all the other notes
Cs = C * 2.^(1/12);
D = Cs * 2.^(1/12);
Ds = D * 2.^(1/12);
E = Ds * 2.^(1/12);
F = E * 2.^(1/12);
Fs = F * 2.^(1/12);
G = Fs * 2.^(1/12);
Gs = G * 2.^(1/12);
A = Gs * 2.^(1/12);
As = A * 2.^(1/12);
B = As * 2.^(1/12);

pause = 0;

pirates = [key(A(5),1/8) key(C(6),1/8) key(D(6),1/4) key(D(6),1/4) key(D(6),1/8) key(E(6),1/8) key(F(6),1/4) key(F(6),1/4) key(F(6),1/8) key(G(6),1/8) key(E(6),1/4) key(E(6),1/4) key(D(6),1/8) key(C(6),1/8) key(C(6),1/8) key(D(6),1/4) key(pause, 1/8) key(A(5),1/8) key(C(6),1/8) key(D(6),1/4) key(D(6),1/4) key(D(6),1/8) key(E(6),1/8) key(F(6),1/4) key(F(6),1/4) key(F(6),1/8) key(G(6),1/8) key(E(6),1/4) key(E(6),1/4) key(D(6),1/8) key(C(6),1/8) key(D(6),1/4) key(pause,1/4) key(A(5),1/8) key(C(6),1/8) key(D(6),1/4) key(D(6),1/4) key(D(6),1/8) key(F(6),1/8) key(G(6),1/4) key(G(6),1/4) key(G(6),1/8) key(A(6),1/8) key(As(6),1/4) key(As(6),1/4) key(A(6),1/8) key(G(6),1/8) key(A(6),1/8) key(D(6),1/4) key(pause, 1/8) key(D(6), 1/8) key(E(6), 1/8) key(F(6), 1/4) key(F(6), 1/4) key(G(6), 1/4) key(A(6), 1/8) key(D(6), 1/4) key(pause, 1/8) key(D(6), 1/8) key(F(6), 1/8) key(E(6), 1/4) key(E(6), 1/4) key(D(6), 1/8) key(C(6), 1/8) key(D(6), 1/2)];
fur_elise = [key(E(6),1/8) key(Ds(6),1/8) key(E(6),1/8) key(Ds(6),1/8) key(E(6),1/8) key(B(5),1/8) key(D(6),1/8) key(C(6),1/8) key(A(5),1/4) key(pause, 1/16) key(C(5),1/8) key(E(5),1/8) key(A(5),1/8) key(B(5),1/4) key(pause, 1/16) key(E(5),1/8) key(Gs(5),1/8) key(B(5),1/8) key(C(6),1/4) key(pause, 1/16) key(E(5),1/8) key(E(6),1/8) key(Ds(6),1/8) key(E(6),1/8) key(Ds(6),1/8) key(E(6),1/8) key(B(5),1/8) key(D(6),1/8) key(C(6),1/8) key(A(5),1/4) key(pause, 1/16) key(C(5),1/8) key(E(5),1/8) key(A(5),1/8) key(B(5),1/4) key(pause, 1/16) key(E(5),1/8) key(C(6),1/8) key(B(5),1/8) key(A(5),1/4) key(pause, 1/16) key(pause, 1/8)];
rondo_alla_turca = [key(B(5),1/8) key(A(5),1/8) key(Gs(5),1/8) key(A(5),1/8) key(C(6),1/4) key(pause, 1/4) key(D(6),1/8) key(C(6),1/8) key(B(5),1/8) key(C(6),1/8) key(E(6),1/4) key(pause, 1/4) key(F(6),1/8) key(E(6),1/8) key(Ds(6),1/8) key(E(6),1/8) key(B(6),1/8) key(A(6),1/8) key(Gs(6),1/8) key(A(6),1/8) key(B(6),1/8) key(A(6),1/8) key(Gs(6),1/8) key(A(6),1/8) key(C(7),1/2) key(A(6),1/4) key(C(7),1/4) key(B(6),1/4) key(A(6),1/4) key(G(6),1/4) key(A(6),1/4) key(B(6),1/4) key(A(6),1/4) key(G(6),1/4) key(A(6),1/4) key(B(6),1/4) key(A(6),1/4) key(G(6),1/4) key(Fs(6),1/4) key(E(6),1/2)];

medley = [pirates fur_elise rondo_alla_turca]; 

soundsc(medley)

%Accepts the frequency and the duration of a note
%and produces the corresponding sine wave
function wave = key(frequency, note_length)
    Ts = 1/8000;
    t = 0:Ts:note_length;
    A = fliplr(floor(10000*t)); %for fade-out effect
    
    wave = A.*sin(2*pi*frequency*t);
end