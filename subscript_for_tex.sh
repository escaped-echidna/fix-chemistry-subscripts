#This changes all N<sub>2</sub>O, NO<sub>3</sub><sup>-</sup> etc in all .txt files in a directory (e.g. my tex file directories) with the proper subscripting for latex:

date >> ~/Dropbox/automated_scripts/subscript_tex_log.txt

cd ~/Dropbox/post_PhD/transect_paper/marine_chemistry_submission/tex_files/text_sections/

sed -ie 's:d15N-N2O:\$\updelta\$\\ce{^{15}N-N2O}:g' *.tex
sed -ie 's:d15N-NO3-:\$\updelta\$\\ce{^{15}N-NO3-}:g' *.tex
sed -ie 's:d15N-DIN:\$\updelta\$\\ce{^{15}N-DIN}:g' *.tex
sed -ie 's:"N2O":\\ce{N2O}:g' *.tex
sed -ie 's:"NO3-":\\ce{NO3-}:g' *.tex
sed -ie 's:"O2":\\ce{O2}:g' *.tex
sed -ie 's:"H2O":\\ce{H2O}:g' *.tex
sed -ie 's:"NO2-":\\ce{NO2-}:g' *.tex
sed -ie 's:"N2":\\ce{N2}:g' *.tex
sed -ie 's:"NH4+":\\ce{NH4+}:g' *.tex
sed -ie 's:"%":\\%:g' *.tex
sed -ie 's:"%)":\\%):g' *.tex
sed -ie 's:umol m-2 d-1:\$\\upmu\$mol \\ce{m^{-2}} \\ce{d^{-1}}:g' *
sed -ie 's:umol L-1:\$\\upmu\$mol \\ce{L^{-1}}:g' *
sed -ie 's:222Rn:\\ce{^{222}Rn}:g' *.tex
sed -ie 's:mol day-1:mol \\ce{d^{-1}}:g' *
sed -ie 's:"umol":$\\upmu\$mol:g' *
sed -ie 's:d15N:\$\\updelta\$\\ce{^{15}N}:g' *.tex
sed -ie 's:nmol L-1:nmol \\ce{L^{-1}}:g' *
sed -ie 's:r2=:\\ce{r^{2}}=:g' *
sed -ie 's:"day-1":d-1:g' *
sed -ie 's:day^{-1}:d^{-1}:g' *
sed -ie 's:‰:\\textperthousand:g' *
sed -ie 's:"m2":\\ce{m^{2}}:g' *.tex
sed -ie 's:"m3":\\ce{m^{3}}:g' *.tex
sed -ie 's:"km2":\\ce{km^{2}}:g' *.tex
sed -ie 's:porewater:pore water:g' *.tex
sed -ie 's:headspace:head-space:g' *.tex
sed -ie 's:pore-water:pore water:g' *.tex
sed -ie 's:super-saturat:supersaturat:g' *.tex
sed -ie 's:under-saturat:undersaturat:g' *.tex
sed -ie 's: \\%:\\%:g' *.tex
sed -ie 's: \\%):\\%):g' *.tex

#$upmu$mol \ce{L^{-1}}





#Removing erroneous substitutions...

#sed -ie 's:"d15N-\\ce{NO3-}":\\ce{\delta ^{15}N-NO3-}:g' *.tex


sed -ie 's:\\ce{\\ce{\delta ^{15}N-NO3-}}:\\ce{\delta ^{15}N-NO3-}:g' *.tex 
sed -ie 's:\\ce{\\ce{\delta ^{15}N-N2O}}:\\ce{\delta ^{15}N-N2O}:g' *.tex 
sed -ie 's:\\ce{\\ce{N2O}}:\\ce{N2O}:g' *.tex 
sed -ie 's:\\ce{\\ce{NO3-}}:\\ce{NO3-}:g' *.tex 
sed -ie 's:\\ce{\\ce{NH4+}}:\\ce{NH4+}:g' *.tex 
sed -ie 's:"\\%":\\%:g' *.tex 


rm *.texe* #removing automatically generated back-up files
#rm .*.tex.swp #removing troublesome swap files
