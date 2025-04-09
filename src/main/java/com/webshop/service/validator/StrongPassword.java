package com.webshop.service.validator;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

@Constraint(validatedBy = StrongPasswordValidator.class)
@Target({ElementType.METHOD, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface StrongPassword {
    String message() default "Must be at least 8 characters long and combination of uppercase and lowercase";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
