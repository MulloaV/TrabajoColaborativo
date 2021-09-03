require ('./tarifas.rb')

class Informacion < Tarifa

    def initialize(nombre)
        @nombre = nombre
    end

    def mostrarDocentes(docentes)
        for docentes in docentes
            mostrarDocente(docente)
        end 
    end

    def mostrarDocente(docente)
        puts "Nombre #{docente.nombre} \s #{docente.apellido}"
        puts "RUT #{docente.rutado}"
        puts "Grado #{docente.grado}"
        puts "Antiguedad #{docente.antiguedad}"
        puts "Horas totales #{docente.horas_trabajadas}"
        puts "Minutos de Atraso #{docente.minutos_tardanzas}"
    end
end


#{}informacion = informacion.new 
tarifa = Tarifa.new('Docentes y sus pagos')
tarifa.nuevoDocente('999999-k', 'Juan', 'Silva', 'Bachiller', 2, 100, 2)
tarifa.nuevoDocente('888888-9', 'Pedro', 'Tapia', 'Maestria',5 , 80, 19)
tarifa.nuevoDocente('777777-8', 'Carla', 'Contreras','Titulado',3 ,75 ,0)
tarifa.nuevoDocente('6666666-7', 'Alicia', 'Gonzalez', 'Doctorado',7, 90, 12)



docentes = tarifa.nominaDocentes
informacion.mostrarDocentes(docentes)


#{}docentes = tarifa.docentesGrado('Bachiller')

#{}grado = 'Bachiller'
#{}sueldoHora = tarifa.pagoGrado(grado)


#{}pagos = tarifa.docentesGrado(grado)

