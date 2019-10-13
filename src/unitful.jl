using .Unitful

struct QuantityConstructor{D,U} end
QuantityConstructor{D,U}(x::T) where {T,D,U} = Quantity{T,D,U}(x)

ConstructionBase.constructorof(::Type{Quantity{T,D,U}}) where {T,D,U} = 
    QuantityConstructor{D,U}
