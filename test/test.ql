?*
  @kind problem
*/

import cpp

// Find direct calls to unsafe functions
from FunctionCall call, Function f
where (f.getName() = "strcpy" or f.getName() = "sprintf" or f.getName() = "gets" or f.getName() = "scanf")
      and call.getTarget() = f
select call, call.getLocation(), "Potential buffer overflow due to unsafe function."
