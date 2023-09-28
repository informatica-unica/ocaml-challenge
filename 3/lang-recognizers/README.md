# Simple language recognizers

Define recognizers for the following languages:
- L1 = { w in {0,1}* | w = x 0 y => |y|_0 = 0 } 
- L2 = { w in {0,1,2}* | w = x 1 y => |y|_0 = 0 }
- L3 = { w | w = x 0 y => exists y' . y = 1 1 y' }
- L4 = { w in {0,1}* | |w|_0 >= |w|_1 }
- L5 = { w in {0,1}* | |w|_0 = |w|_1 }
- L6 = { 0^n 1^n | n >= 0 }
- L7 = { 0^n 1 0^n | n >= 0 }
- L8 = { w in {0,1,2}* | w = x 1 y => |y|_2 = |y|_0 }
- L9 = { w | exists w0,w1 : w = w0 w1 and |w0|_0 = |w1|_1 and |w0|_1 = 0 = |w1|_0 }
