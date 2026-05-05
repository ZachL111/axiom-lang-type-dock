include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(92, 100, 25, 15, 5)
@assert score(signal_case_1) == 109
@assert classify(signal_case_1) == "review"
signal_case_2 = Signal(95, 106, 8, 17, 11)
@assert score(signal_case_2) == 195
@assert classify(signal_case_2) == "accept"
signal_case_3 = Signal(73, 70, 20, 15, 4)
@assert score(signal_case_3) == 58
@assert classify(signal_case_3) == "review"
