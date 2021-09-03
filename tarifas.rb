class Tarifa
    def initialize
        @nombre = nombre
        @docentes = Array.new
    end 

    def nuevoDocente(rut, nombre, apellido, grado, antiguedad, horas_trabajadas,minutos_tardanzas)
        docente =Docente.new(rut, nombre, apellido, grado, antiguedad, horas_trabajadas,minutos_tardanzas)
        @docentes.push(docente)
    end 

    def procentajeAumento(antiguedad)
        porcentaje = 0

        case antiguedad
        when 0..3
            porcentaje = 0.03
        when 4..6
            porcentaje = 0.04
        when 7..10
            porcentaje = 0.05
        when 11..15 
            porcentaje = 0.07
        else
            porcentaje = 0.1
        end 
        return porcentaje
    end

    def bonoPorAtraso(minutos_tardanzas)
        bono = 0

        case minutos_tardanzas
        when 0
            bono = 120
        when 1..5
            bono = 80
        when 6..10 
            bono = 40
        when 11..15
            bono = 0
        else
            bono = -40
        end
        return bono
    end

    def pagoGrado(grado)
        sueldoHora = 0

        case grado
            when 'Bachiller'
                sueldoHora = 40
            when 'Titulado'
                sueldoHora = 80
            when 'Maestría'
                sueldoHora = 100
            when 'Doctorado'
                sueldoHora = 180
            else 
                sueldoHora = 0
        end
            return sueldoHora
    end

            