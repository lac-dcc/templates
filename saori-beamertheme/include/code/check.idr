check : Vect n Bit -> Vect n Bit -> Result
check []          []           = Accept
@\tikzmark{sc:st}@check (One  :: g) (Zero :: pw) = Reject
check (Zero :: g) (One  :: pw) = Reject@\tikzmark{sc:end}@
check (_    :: g) (_    :: pw) = check g pw