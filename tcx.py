from tcxreader.tcxreader import TCXReader, TCXTrackPoint
import re
import sys

tcx_reader = TCXReader()
file_location = str(sys.argv[1])

data: TCXTrackPoint = tcx_reader.read(file_location)

time_list = re.findall(r"\d+",str(data.start_time))
object = ""
for i in time_list:
  object += str(i)
  object += "_"

object = object[:-1] + ".tcx"
print(object)
