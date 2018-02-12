# This changes all N<sub>2</sub>O, NO<sub>3</sub><sup>-</sup> etc in all 
#.txt files in a directory (e.g. my notational velocity directory) with 
# the proper subscripting

# optionally add the current date to a log file to keep track of when 
# the script is run:

# date >> /Users/path/to/file

# This only modifies the files that are listed as “modified” or “untracked” by git
# You can add other chemical formulas (e.g. CO2, CH4)

git ls-files -o -m -z | xargs -0 sed -i '' 's/NO2-/NO<sub>2<\/sub><sup>-<\/sup>/g'
git ls-files -o -m -z | xargs -0 sed -i '' 's/NO3-/NO<sub>3<\/sub><sup>-<\/sup>/g'
git ls-files -o -m -z | xargs -0 sed -i '' 's/N2O/N<sub>2<\/sub>O/g'
git ls-files -o -m -z | xargs -0 sed -i '' 's/NH4+/NH<sub>4<\/sub><sup>+<\/sup>/g'
git ls-files -o -m -z | xargs -0 sed -i '' 's/d15N/𝛿<sup>15<\/sup>N/g'
git ls-files -o -m -z | xargs -0 sed -i '' 's/d18O/𝛿<sup>18<\/sup>O/g'
git ls-files -o -m -z | xargs -0 sed -i '' 's/18O/<sup>18<\/sup>O/g'
git ls-files -o -m -z | xargs -0 sed -i '' 's/14N/<sup>14<\/sup>N/g'
git ls-files -o -m -z | xargs -0 sed -i '' 's/15N/<sup>15<\/sup>N/g'


#rm *.txt-e #removing automatically generated back-up files
