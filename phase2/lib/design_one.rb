def time_manager(material)
    minutes = material.split(" ").length *  0.005
    seconds = minutes * 60
    
    return "It will take you #{seconds} seconds to read the material"
end 
