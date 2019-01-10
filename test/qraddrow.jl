Random.seed!(0)

# facts("qraddrow") do

    m, n = 3, 3
    A = randn(m,m)
    Q, R = qr(A)
    for i in 1:100
        a = randn(m)'
        global A = [A; a]
        global R = qraddrow(R, a)
        @assert norm( R'R - A'*A ) <  1e-5
    end

# end
