struct Unit
    nInputs::UInt
    nOutputs::UInt
end

Inputs = Array{Float}
Outputs = Array{Float}
Parameters = Array{Float}

Create{T<:Unit} = Parameters -> Unit

TimeInH = Float
AdvanceTo{T<:Unit} = (T, TimeInH, Inputs) -> Outputs

struct TrnsysType{T<:Unit}
    getTypeNumber::UInt
    create::Create{T}
    advanceTo::AdvanceTo{T}
end
