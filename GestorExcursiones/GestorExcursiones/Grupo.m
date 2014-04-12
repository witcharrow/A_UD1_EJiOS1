#import "Grupo.h"

@implementation Grupo

- (id) init {
    self = [super init];
    if (self != nil) {
        lista = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) addPersona:(Persona*)persona {
    [lista addObject:persona];
}

- (void) listarPersonas {
    for (Persona *persona in lista) {
        NSLog(@"%@", persona);
    }
}

- (NSArray*) listaPersonasSinPagar {
    NSMutableArray *personasSinPagar = [[NSMutableArray alloc] init];
    for (Persona *persona in lista) {
        if (![persona haPagado]) {
            [personasSinPagar addObject:persona];
        }
    }
    
    return personasSinPagar;
}


@end
