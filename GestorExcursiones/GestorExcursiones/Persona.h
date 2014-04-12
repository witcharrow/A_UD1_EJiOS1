#import <Foundation/Foundation.h>


@interface Persona : NSObject

@property(strong) NSString *nombre;
@property(strong) NSString *departamento;
@property(strong) NSString *DNI;
@property BOOL haPagado;


- (id) initWithNombre:(NSString*)nombre departamento:(NSString*)departamento andDNI:(NSString*)DNI;

@end
