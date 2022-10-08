package usermanagement

class User {
    Long id
    String firstName
    String lastName
    String email
    String password
    String address
    Boolean active

    static constraints = {
        lastName maxSize: 100, blank: false
        firstName maxSize: 100, blank: false
        address maxSize: 100, blank: false
        email email: true, blank: false, unique: true
        password size: 5..15, blank: false
        active()

    }

//    String toString() {
//        lastName
//    }


}
