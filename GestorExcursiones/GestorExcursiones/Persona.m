#import "Persona.h"


@implementation Persona


- (id) initWithNombre:(NSString*)nombre departamento:(NSString*)departamento andDNI:(NSString*)DNI {
    self = [super init];
    if (self != nil) {
        self.nombre = nombre;
        self.departamento = departamento;
        self.DNI = DNI;
    }
    
    return self;
}

- (NSString*)description {
    return [NSString stringWithFormat:@"%@ (DNI %@) del departamento %@", self.nombre, self.DNI, self.departamento];
}

@end
