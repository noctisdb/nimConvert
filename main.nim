# Celcius to Fahrenheit Converter

from strutils import parseInt

var
  baseDegree: string
  baseTemp: float

proc convertF(temp:float): float =
  result = (temp - 32) * (5/9)

proc convertC(temp:float): float =
  result = temp * (9/5) + 32

echo "What is the temperature?"
var temps = readLine(stdin)
while temps == "":
  echo "What is the temperature?"
  temps = readLine(stdin)
baseTemp = toFloat(parseInt(temps))

echo "What are you converting from, F or C"
baseDegree = readLine(stdin)
case baseDegree
  of "c", "C":
    echo "The temperature is ", convertC(baseTemp), "F"
  of "f", "F":
    echo "The temperature is ", convertF(baseTemp), "C"
  else:
    echo "What are you converting from, F or C"
    baseDegree = readLine(stdin)
