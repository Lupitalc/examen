import Ejemplo.Domicilio
import Ejemplo.Persona
import spring.security.RequestMap
import spring.security.Usuario
import spring.security.Rol
import spring.security.UsuarioRol

class BootStrap {
    def sessionFactory
    //se crea en grails si devolvemos esta session
    def init = { servletContext ->
        def admin=new Usuario(username:'admin',
                              password: 'admin',
                              accountExpired: false,
                              accountLocked: false,
                              enabled: true,
                              passwordExpired: false).save(flush: true, failOnError: true)
        def rol=new Rol (authority:"ROLE_ADMIN").save(flush: true, failOnError: true)

        UsuarioRol.create(admin,rol,true)


        def requestMap=new RequestMap(url:"/js/**", configAttribute:     "IS_AUTHENTICATED_ANONYMOUSLY").save(flush:true)
            requestMap=new RequestMap(url:"/css/**",configAttribute:     "IS_AUTHENTICATED_ANONYMOUSLY").save(flush: true)
            requestMap=new RequestMap(url:"/images/**",configAttribute:  "IS_AUTHENTICATED_ANONYMOUSLY").save(flush: true)
            requestMap=new RequestMap(url:"/login/**",configAttribute:   "IS_AUTHENTICATED_ANONYMOUSLY").save(flush: true)
            requestMap=new RequestMap(url:"/logout/**",configAttribute:  "IS_AUTHENTICATED_ANONYMOUSLY").save(flush: true)
            requestMap=new RequestMap(url:"/admin/dbconsole/**",configAttribute:  "IS_AUTHENTICATED_ANONYMOUSLY").save(flush: true)
            requestMap=new RequestMap(url:"/*",configAttribute:  "IS_AUTHENTICATED_FULLY").save(flush: true)
            requestMap=new RequestMap(url:"/usuario/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/rol/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/operaciones/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/persona/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/domicilio/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/pais/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/municipio/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/estado/**",configAttribute:  "ROLE_ADMIN").save(flush: true)

            requestMap=new RequestMap(url:"/articulo/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/cliente/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/direccion/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/distribuidor/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/fabrica/**",configAttribute:  "ROLE_ADMIN").save(flush: true)
            requestMap=new RequestMap(url:"/pedido/**",configAttribute:  "ROLE_ADMIN").save(flush: true)


                Domicilio domicilio = new Domicilio (calle:'Priv. jardines de juriquilla',
                                                     colonia:'juriquilla' ,
                                                     numero:'32-A').save(flush: true, failOnError: true)

                Domicilio domicilio2= new Domicilio (calle:'Mendiola',
                                                     colonia:'Las Americas' ,
                                                     numero:'170').save(flush: true, failOnError: true)

                Persona persona=new Persona(nombre:'Maria Guadalupe',
                                            apellidoPaterno:'Lopez',
                                            apellidoMaterno:'Corona',
                                            curp:'LOCG850322MQTPRD01',
                                            descripcion:'desc')


        //Ejemplo addTo
        persona.addToDomicilios(domicilio)
        persona.addToDomicilios(domicilio2)
        persona.save(flush: true, failOnError: true)

       def session = sessionFactory.getCurrentSession()
           session.clear()

        println("domicilio:"+domicilio.isAttached())
        println("domicilio2:"+domicilio2.isAttached())
        println("persona:"+persona.isAttached())
        println("requestMap:"+requestMap.isAttached())

        try{
            println(persona.domicilios)

        }catch (Exception e){
            println(e.getMessage())
        }

        print(persona.domicilios)
        if (persona.isAttached())
        {
            persona.attach()
            println (persona.isAttached())
            println (persona.domicilios)

        }

    }

    def destroy = {
    }
}
