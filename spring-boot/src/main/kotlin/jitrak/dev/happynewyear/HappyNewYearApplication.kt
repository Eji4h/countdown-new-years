package jitrak.dev.happynewyear

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import java.time.LocalDateTime

import jitrak.dev.jpa.DemoController

@SpringBootApplication
@RestController
class HappyNewYearApplication {

	@GetMapping("new-year")
	fun newYear(@RequestParam(value = "year", defaultValue = "2021") year: Int): String {
		val current = LocalDateTime.now()
		if (current.year >= year) {
			return "Happy New Year ${year}! ${System.lineSeparator()}"
		}
		return "$current ${System.lineSeparator()}"
	}
}

fun main(args: Array<String>) {
	runApplication<DemoController>(*args)
}
