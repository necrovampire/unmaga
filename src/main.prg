PROGRAM unmaga;
const:
	//constantes de debug
	DebugFull = 10;
	DegubPartial = 5;
	DebugNO = 0;
	DebugFile = "log/log.txt";

/*Declare:
END
*/	
typeDef
	type Archivo
		int identifcador;
		int tipo;
		string name;
		Archivo *Siguiente;
	end
end

global:
	//estado del debug
	debugStatus = DebugFull;
	//punteros a recursos
	archivo *Archivos;
	archivo *Fuentes;
	archivo *Sonidos;
	archivo *Graficos;
end
	
BEGIN
	DebugSetUp();

	mode_set(800,600,32);
    LOOP
        FRAME;
    END
	
END

FUNCTION DebugSetUp()
private:
	Archivo aux;
end

BEGIN
	if( debugStatus == DebugNO )
		exit();
	end
END
