package jitrak.dev.jpa

import org.springframework.data.repository.CrudRepository

interface CustomerRepository: CrudRepository<Customer, Integer> {

    fun findCustomerById(id: Int): Customer
}