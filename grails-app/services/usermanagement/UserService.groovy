package usermanagement

import grails.gorm.transactions.Transactional
import groovy.json.JsonBuilder

@Transactional
class UserService {

    HashMap jsonMap = new HashMap()

    def serviceMethod() {

    }

    def get(id) {
        User.get(id)
    }

    def list() {

        User.list()
//        def user = User.list().collect {
//            user ->
//                [firstName: user.firstName,
//                 lastName : user.lastName,
//                 email    : user.email,
//                 password : user.password,
//                 address  : user.address,
//                 active   : user.active]
//        }
//        new JsonBuilder(user)

    }

    def save(id, userProperties) {
        if (id == null) {
            def newUser = new User(userProperties)
            newUser.save()
            return newUser
        } else {
            def modUser = User.get(id)
            if (modUser != null) {
                modUser.setFirstName(userProperties.firstName)
                modUser.setLastName(userProperties.lastName)
                modUser.setEmail(userProperties.email)
                modUser.setAddress(userProperties.address)
                userProperties.active == "on" ? modUser.setActive(true) : modUser.setActive(false)
                modUser.save(flush: true)
                return modUser
            }

        }

    }

    def update(id, params) {
        def user = User.get(id)
        user
    }

    def delete(id) {
        User.get(id).delete()
    }
}
