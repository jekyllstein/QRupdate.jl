using QRupdate
using Random
using LinearAlgebra
# using FactCheck

tests = ["qraddcol",
         "qraddrow",
         "qrdelcol"]

for t in tests
    include("$(t).jl")
end
