module Exercise where

--area d = pi * (r * r)
--r = d / 2
-- d, is out of scope. Module fails to load

area2 d = pi * (r * r)
  where r = d/2
-- r and d are in scope for area, module loads and function runs perfectly


