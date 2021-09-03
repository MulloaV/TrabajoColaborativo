class Docentes
    attr_accessor : :rut, :nombre, :apellido, :grado, :antiguedad, :horas_trabajadas, :minutos_tardanzas
     def initialize(rut, nombre, apellido, grado, antiguedad, horas_trabajadas,minutos_tardanzas)
        @rut = rut
        @nombre = nombre
        @apellido = apellido
        @grado = grado
        @antiguedad = antiguedad
        @horas_trabajadas = horas_trabajadas
        @minutos_tardanzas = minutos_tardanzas
     end
end
