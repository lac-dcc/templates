check' : Vect n Bit -> Vect n Bit -> Result
check' []       []        = Accept
check' (a :: g) (b :: pw) = ctsel (r && r') Accept Reject
    where r  = check' g pw == Accept
          r' = a == b