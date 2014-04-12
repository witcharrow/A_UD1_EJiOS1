
#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Persona.h"
#import "Grupo.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        
        Persona *p1 = [[Persona alloc] initWithNombre:@"Paco" departamento:@"Departamento 1" andDNI:@"12345678-H"];
        Persona *p2 = [[Persona alloc] initWithNombre:@"María" departamento:@"Departamento 1" andDNI:@"67271829-A"];
        Persona *p3 = [[Persona alloc] initWithNombre:@"Carlos" departamento:@"Departamento 2" andDNI:@"81726371-Y"];
        Persona *p4 = [[Persona alloc] initWithNombre:@"Alex" departamento:@"Informatica" andDNI:@"12345678-X"];
        
        Grupo *listaExcursion = [[Grupo alloc] init];
        
        [listaExcursion addPersona:p1];
        [listaExcursion addPersona:p2];
        [listaExcursion addPersona:p3];
        [listaExcursion addPersona:p4];
        [p2 setHaPagado:YES];
        [p4 setHaPagado:NO];
        
        
        NSLog(@"Lista total de personas:");
        [listaExcursion listarPersonas];
        
        NSArray *personasSinPagar = [listaExcursion listaPersonasSinPagar];
        if ([personasSinPagar count]) {
            NSMutableString *salida = [NSMutableString stringWithString:@"Esta es la lista de personas sin pagar\n"];
            for (Persona *persona in personasSinPagar) {
                [salida appendFormat:@"%@", persona];
                [salida appendFormat:@"--> MOROSA\n"];
            }
            NSLog(@"%@", salida);
        }
        

        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
