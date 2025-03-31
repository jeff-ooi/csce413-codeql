/**
 * @name Buffer Overflow
 * @description Use of one of the scanf functions without a specified length.
 * @kind problem
 * @problem.severity warning
 * @id cpp/memory-unsafe-function-scan
 * @tags security
 */

import cpp

// Find direct calls to unsafe functions
from FunctionCall call, Function f
where (f.getName() = "strcpy" or f.getName() = "sprintf" or f.getName() = "gets" or f.getName() = "scanf")
      and call.getTarget() = f
select call, "Potential buffer overflow due to unsafe function."
