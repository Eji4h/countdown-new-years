package jitrak.dev.jpa

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.web.bind.annotation.*

@SpringBootApplication
@RestController
class DemoController {

    @Autowired
    private lateinit var customerRepository: CustomerRepository

    @PostMapping("/add")
    fun addCustomer(@RequestParam first: String, @RequestParam last: String): String {

        val customer = Customer()
        customer.firstName = first
        customer.lastName = last
        customerRepository.save(customer)
        return "Added new customer to repo!"
    }

    @GetMapping("/list")
    fun getCustomer(): Iterable<Customer> {
        return customerRepository.findAll()
    }

    @GetMapping("/find/{id}")
    fun findCustomerById(@PathVariable id: Int): Customer {
        return customerRepository.findCustomerById(id)
    }
}