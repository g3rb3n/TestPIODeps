#include "TheLib.h"

#include <Wire.h>

TheLib::TheLib()
{
  Wire.begin(9600);
}