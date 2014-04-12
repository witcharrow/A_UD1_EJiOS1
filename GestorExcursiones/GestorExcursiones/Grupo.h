#import <Foundation/Foundation.h>

#import "Persona.h"

@interface Grupo : NSObject {
    NSMutableArray *lista;
}

- (void) addPersona:(Persona*)persona;
- (void) listarPersonas;
- (NSArray*) listaPersonasSinPagar;

@end
