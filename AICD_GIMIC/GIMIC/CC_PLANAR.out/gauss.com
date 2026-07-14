%chk=opt.chk
%mem=90GB
%nprocshared=40
#p wb97xD/aug-cc-pvdz opt SCF=(Tight,MaxCycle=512) Int=UltraFine

ACID calculation from xyz coordinates

0 1
@structure.coords


--Link1--
%oldchk=opt.chk
%chk=acid.chk
%mem=90GB
%nprocshared=40
#p wb97xD/aug-cc-pvdz Geom=AllCheck Guess=Read NMR=CSGT IOp(10/93=1) SCF=(Tight,MaxCycle=512) Int=UltraFine

ACID_GRID.txt

0 1

ACID_GRID.txt

--Link1--
%oldchk=opt.chk
%chk=gimic.chk
%mem=90GB
%nprocshared=40
#p wb97xD/aug-cc-pvdz Geom=AllCheck Guess=Read NMR=giao IOp(10/33=2) SCF=(Tight) Int=nobasistransform

GIMIC calculation from xyz coordinates

0 1



