require './docentes.rb'



class Tarifa < Docentes
    attr_accessor :nombre

    def initialize(nombre)
        @nombre = nombre
        @docentes = Array.new
        
    end 

    def nuevoDocente(rut, nombre, apellido, grado, antiguedad, horas_trabajadas,minutos_tardanzas)
        docente =Docentes.new(rut, nombre, apellido, grado, antiguedad, horas_trabajadas,minutos_tardanzas)
        @docentes.push(docente)
    end 

    def porcentajeAumento(antiguedad)
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

    def pagoMensual (docente)
        sueldo = pagoGrado(docente.grado) + porcentajeAumento(docente.antiguedad)+ bonoPorAtraso(docente.minutos_tardanzas)
        return sueldo
    end
    
    def nominaDocentes
        return @docentes
    end

    def docentesGrado(grado)
        docentesPorGrado = Array.new
    

        for docente in @docentes 
        if docente.grado == grado.downcase
            docentesPorGrado.push(docente)
        end
    end

    return docentesPorGrado
    end

    def pagoDocentes
        pagos = Array.new
        for docente in @docentes 
        pagos.push({'docente': docente, 'pago': sueldo(docente)})
        end
        return pagos
    end


end

