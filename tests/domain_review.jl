include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(72, 53, 11, 67)
@assert score(item) == 231
@assert lane(item) == "ship"
