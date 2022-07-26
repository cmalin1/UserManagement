package edu.matc.entity;

import org.junit.jupiter.api.Test;

import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.*;

class UserTest {

    @Test
    void getAge() {
        // create the object that has the method I want to test
        User user = new User();

        // set birthdate for the user
        LocalDate birthDate = LocalDate.parse("1968-01-01");
        user.setDateOfBirth(birthDate);

        // create variable for the expected value
        int expectedAge = 54;

        // call the method, and get the actual value
        int actualAge = user.getAge();

        // compare the two, pass or fail
        assertEquals(expectedAge, actualAge);
    }
}
